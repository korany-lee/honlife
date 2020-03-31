package repository.shop;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.DTO.ProductDTO;

@Repository
public class ShopListRepository {
	@Autowired
	private SqlSession sqlSession;

	private final String namespace = "productMapper";

	public List<ProductDTO> listProducts() {
		String statement = namespace+".selectPro";
		return sqlSession.selectList(statement);
	}
}
