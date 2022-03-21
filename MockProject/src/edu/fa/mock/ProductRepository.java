package edu.fa.mock;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface ProductRepository extends CrudRepository<Product, Long>{
	
	@Query(value = "SELECT c FROM Product c WHERE c.code LIKE '%' || :keyword || '%'"
            + " OR c.name LIKE '%' || :keyword || '%'"
            + " OR c.price LIKE '%' || :keyword || '%'")
	public List<Product> search(@Param("keyword") String keyword);

}
