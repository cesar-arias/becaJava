package com.accenture.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.sql.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.junit.runner.Request;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.accenture.model.Exercise;


@Controller
public class MinutesController {

	@RequestMapping(value = "/addMinutes")
	public String addMinutes(@ModelAttribute ("exercise") Exercise exercise) {
		return "addMinutes";
	}
	
	@RequestMapping(value = "/buyMovies", method = RequestMethod.GET)
    public @ResponseBody
    String getTime(HttpServletRequest request, HttpServletResponse response, Exercise oo) throws ServletException, IOException {
    	String name = request.getParameter("names");
    	String price = request.getParameter("price");
    	String total = request.getParameter("total");
    	oo.setTheBill(Integer.parseInt(price));
    	String finish = request.getParameter("finish");
    	
    	System.out.println("---------------------");
        System.out.println("Movie: "+name.toUpperCase());
        System.out.println("Price: "+price);
        System.out.println("Total: $"+total);
        System.out.println("---------------------");
        
        if(finish.equals("true")){
        	return "Exito al comprar "+name;
        }else{
        	return "Total a pagar: $"+total;
        }
    }	
}
