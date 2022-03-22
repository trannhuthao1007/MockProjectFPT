package edu.fa.mock;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {
	@Autowired
	public OrderRepository repoder;

	public List<Orders> listAll() {
		// TODO Auto-generated method stub
		return (List<Orders>) repoder.findAll();
	}
	
	
	/*
	 * public List<Order> listAll(){ return (List<Order>) repoder.findAll(); }
	 * 
	 * 
	 * public void delete(long id) { repoder.deleteById(id);
	 * 
	 * }
	 */
	 
	
	
}

