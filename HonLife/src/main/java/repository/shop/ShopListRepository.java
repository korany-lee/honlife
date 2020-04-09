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

	//리스트 출력
	public List<ProductDTO> listProducts() {
		String statement = namespace+".selectPro";
		return sqlSession.selectList(statement);
	}
	
	//디테일 출력
	public ProductDTO detail(String ProductNo) {
		String statement = namespace + ".detailPro";
		return sqlSession.selectOne(statement, ProductNo);
	}
	
}
