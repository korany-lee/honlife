package repository.shop;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.DTO.ProductDTO;
import command.shop.OrderListVO;
import command.shop.OrdershopCMD;
import command.shop.OrdershopDetailsCMD;

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
	//주문 정보
	public void orderInfo(OrdershopCMD order) {
		String statement = namespace + ".orderInfo";
		sqlSession.insert(statement, order);
	}
	
	//주문 상세정보
	public void orderInfoDetail(OrdershopDetailsCMD orderDetail) {
		String statement = namespace + ".orderInfoDetail";
		sqlSession.insert(statement, orderDetail);
	}
	
	//카트 비우기
	public void cartAllDelete(String userNo) {
		String statement = namespace + ".cartAllDelete";
		sqlSession.delete(statement, userNo);
	}
	
	//특정 유저의 주문 목록
	public List<OrdershopCMD> orderList(OrdershopCMD order) {
		String statement = namespace + ".orderList";
		return sqlSession.selectList(statement, order);
	}
	
	//특정 주문 목록
	public List<OrderListVO> orderView(OrdershopCMD order) {
		String statement = namespace + ".orderView";
		return sqlSession.selectList(statement, order);
	}
}
