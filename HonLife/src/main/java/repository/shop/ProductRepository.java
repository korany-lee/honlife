package repository.shop;

import java.util.List;

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
		System.out.println("실행3---------");
		sqlSession.insert(statement, dto);
	}
	
	public List<String> selectNo(String userNo) {
		String statement = namespace + ".selectNum";
		return sqlSession.selectList(statement, userNo);
	}
}
