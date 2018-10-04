package com.niit.controller;

import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDAO;
import com.niit.dao.OrderDAO;
import com.niit.model.CartItem;
import com.niit.model.OrderDetail;
import com.niit.model.User;

@Controller
public class OrderController 
{
	@Autowired
	CartDAO cartDAO;
	
	@Autowired 
	OrderDAO orderDAO;
	public long calcGrandTotalValue(List<CartItem> listCartItems)
	{
		int count=0;
		long grandTotalPrice=0;
		while(count<listCartItems.size())
		{
			grandTotalPrice+=(listCartItems.get(count).getQuantity()*listCartItems.get(count).getPrice());
			count++;	
		}
		return grandTotalPrice;
	}
	
	@RequestMapping(value="/Payment")
	public String showPaymentPage(@ModelAttribute("cartItem")CartItem cartItem,HttpSession session,Model m)
	{
		return "Payment";
	}
	
	@RequestMapping(value="/PaymentProcess",method=RequestMethod.POST)
	public String paymentProcess(@RequestParam("pmode")String pmode,@ModelAttribute("user")User user,HttpSession session,Model m)
	{
		
		
		String username=(String)session.getAttribute("username");
		
		List<CartItem> listCartItems=cartDAO.retrieveCartItems("username");
		m.addAttribute("cartItems",listCartItems);
		m.addAttribute("grandTotal",this.calcGrandTotalValue(listCartItems));
		
		OrderDetail orderDetail=new OrderDetail();
		
		orderDetail.setUsername(username);
		orderDetail.setOrderDate(new java.util.Date());
		orderDetail.setPmode(pmode);
		orderDetail.setTotalShoppingAmount((int)this.calcGrandTotalValue(listCartItems));
		orderDAO.insertOrderDetail(orderDetail);
		
		return "ThankYou";
	}
	@RequestMapping(value="/Invoice")
	public String showInvoice(@ModelAttribute("user")User user,HttpSession session,Model m)
	{
		CartItem cartItem=new CartItem();
		m.addAttribute("cartItem",cartItem);
		
		String username=(String)session.getAttribute("username");
		
		List<OrderDetail> orderList=orderDAO.retrieveOrder(username);
		m.addAttribute("orderList",orderList);
		return "Invoice";
	}
	
	
	public LinkedHashMap<Integer,String> getOrderList(List<OrderDetail> orderlist)
	{
		LinkedHashMap<Integer,String> orderData=new LinkedHashMap<Integer,String>();
		
		int count=0;
		while(count<orderlist.size())
		{
			orderData.put(orderlist.get(count).getOrderId(),orderlist.get(count).getUsername());
			count++;
		}
		return orderData;
	}
	
}