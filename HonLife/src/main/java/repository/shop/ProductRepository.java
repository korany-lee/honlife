package repository.shop;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.DTO.ProductDTO;

@Repository
public class ProductRepository {
	@Autowired
	private SqlSession sqlSession;
	
	private final String namespace = "productMapper";
	
	public void productInsert(ProductDTO dto) {
		String statement = namespace + ".insertProduct";
		sqlSession.insert(statement, dto);
	}
}
