package repository.stay;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.DTO.ReviewDTO;

@Repository
public class ReviewRepository {
	@Autowired
	private SqlSession sqlSession;	
	private final String namespace="reviewMapper";
	
	public void reviewInsert(ReviewDTO dto) {
		String statement = namespace + ".reviewInsert";
		sqlSession.insert(statement, dto);
	}
	
	public List<ReviewDTO> roomReview(String roomNo) {
		String statement = namespace + ".reviewList";
		return sqlSession.selectList(statement, roomNo);
	}
	public Integer total(String roomNo) {
		String statement = namespace + ".totalReview";
		return sqlSession.selectOne(statement, roomNo);
	}
	public Integer five(String roomNo) {
		String statement = namespace + ".fiveReview";
		return sqlSession.selectOne(statement, roomNo);
	}
	public Integer four(String roomNo) {
		String statement = namespace + ".fourReview";
		return sqlSession.selectOne(statement, roomNo);
	}
	public Integer three(String roomNo) {
		String statement = namespace + ".threeReview";
		return sqlSession.selectOne(statement, roomNo);
	}
	public Integer two(String roomNo) {
		String statement = namespace + ".twoReview";
		return sqlSession.selectOne(statement, roomNo);
	}
	public Integer one(String roomNo) {
		String statement = namespace + ".oneReview";
		return sqlSession.selectOne(statement, roomNo);
	}
	
	public List<Integer> sumScore(String roomNo) {
		String statement = namespace + ".totalScore";
		return sqlSession.selectList(statement, roomNo);
	}
	
}
