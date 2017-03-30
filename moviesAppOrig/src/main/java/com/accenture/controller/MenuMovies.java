package com.accenture.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.accenture.model.Shopping;


@Controller
public class MenuMovies {
	
	@RequestMapping(value = "/MoviesMenu")
	public void logIn(){
		System.out.println("Logged: ");
	}
	
	@RequestMapping(value = "/buyMovies", method = RequestMethod.GET)
    public @ResponseBody
    String getTime(HttpServletRequest request, HttpServletResponse response, Shopping oo) throws ServletException, IOException {
    	String name = request.getParameter("names");
    	String price = request.getParameter("price");
    	String total = request.getParameter("total");
    	String finish = request.getParameter("finish");
    	oo.setTheBill(Integer.parseInt(price));
    	
    	System.out.println("---------------------");
        System.out.println("Movie: "+name.toUpperCase());
        System.out.println("Price: "+price);
        System.out.println("Total: $"+total);
        System.out.println("---------------------");
        
        System.out.println("(POJO) TOTAL--> "+oo.getTheBill());
        
        if(finish.equals("true")){
        	return "Exito al comprar "+name.toUpperCase();
        }else{
        	return "Total a pagar: $"+total;
        }
    }

}
