package edu.fa.mock;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class OrderController {

	@Autowired
	private OrderService o_service;
	
	@RequestMapping("order_list")
	public ModelAndView listo() {
		 List<Orders> listOrder = o_service.listAll();
	    ModelAndView mav = new ModelAndView("order_list");
	   
	     mav.addObject("listOrder", listOrder);
	    return mav;
	}
}
