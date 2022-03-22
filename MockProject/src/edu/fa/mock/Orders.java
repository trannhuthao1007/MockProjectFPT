
  package edu.fa.mock;
  
  import javax.persistence.Entity; 
  import javax.persistence.GeneratedValue;
  import javax.persistence.GenerationType;
  import javax.persistence.Id;
  
  @Entity 
  public class Orders {
  
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY) 
  
  private long id;
  private long custom_id;
  private long product_id;
  private long number;
  private long total; 
  private String status;
  
  
  
  
  
  public Orders() {
  
  }
  
  
  
  
  
  public long getId() {
	return id;
}





public void setId(long id) {
	this.id = id;
}





public long getCustom_id() { 
	  return custom_id; 
	  } 
  
  public void setCustom_id(long custom_id) { 
	  this.custom_id = custom_id; 
	  } 
  
  public long getProduct_id() { 
	  return product_id; 
	  } 
  
  public void setProduct_id(long product_id) { 
	  this.product_id = product_id; 
	  } 
  
  public long getNumber() {
  return number; 
  } 
  
	  public void setNumber(long number) {
	  this.number = number; 
	  }
	  
  public long getTotal() { 
	  return total; 
	  } 
  
  public void setTotal(long total) {
  this.total = total; 
  } 
  
  public String getStatus() { 
	  return status; 
	  }
  
  
  
  public void setStatus(String status) {
	  	  this.status = status; 
	  	  }
  
  
  
  
  }
 