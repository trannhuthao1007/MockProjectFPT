package edu.fa.mock;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MockController {
	
	@Autowired
	private ProductService service;
	
	@RequestMapping("/")
	public ModelAndView home() {
	   
	    ModelAndView mav = new ModelAndView("index");
	    List<Product> listProduct = service.listAll();
	    
	    
	    mav.addObject("listProduct", listProduct);
	    return mav;
	}
	
	@RequestMapping(value= "new")
	public String newProductForm(Map<String, Object> model) {
	    Product product = new Product();
	    model.put("product", product);
	    return "new_product";
	}
	
	
	
	@RequestMapping(value= "back")
	public String backHome(Map<String, Object> model) {
	    Product product = new Product();
	    model.put("product", product);
	    return "redirect:/";
	}
	
	
	  @RequestMapping(value= "update", method = RequestMethod.POST) public String
	  UpdateProduct(@ModelAttribute("product") Product product) {
	  service.save(product);
	  return "new_product"; }
	 
	
	@RequestMapping(value= "/save", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute("product") Product product) {
		service.save(product);
		return "redirect:/";
	}
	
	@RequestMapping(value="edit")
	public ModelAndView editProductForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("edit_product");
		Product product = service.get(id);
		mav.addObject("product", product);
		return mav;
	}
	
	@RequestMapping(value="delete")
	public String deleteProduct(@RequestParam long id) {
		service.delete(id);
		
		return "redirect:/";
			
	}
	@RequestMapping(value="search")
	public ModelAndView search (@RequestParam String keyword ) {
		ModelAndView mav = new ModelAndView("search");
		List<Product> result = service.search(keyword);
		mav.addObject("result", result );
		return mav;
	}

}
