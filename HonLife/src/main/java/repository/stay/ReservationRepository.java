package repository.stay;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.DTO.FurnitureRevDTO;
import Model.DTO.RoomRevDTO;

@Repository
public class ReservationRepository {
	@Autowired
	private SqlSession sqlSession;	
	private final String namespace="revMapper";
	
	
	public void roomRevInsert(RoomRevDTO dto) {
		String statement = namespace + ".roomRevInsert";
		sqlSession.insert(statement, dto);
	}
	
	public List<RoomRevDTO> revState(String roomNo) {
		String statement = namespace + ".selectRevList";
		return sqlSession.selectList(statement, roomNo);
	}
	
	public List<FurnitureRevDTO> frevState(String furnitureNo){
		String statement = namespace + ".selectfRevList";
		return sqlSession.selectList(statement, furnitureNo);
	}
	
	
	public RoomRevDTO revChk(String userNo) {
		String statement = namespace + ".revChk";
		return sqlSession.selectOne(statement,userNo);
	}
	
	
	
	public List<RoomRevDTO> userRev(String userNo) {
		String statement = namespace + ".userRev"; 
		return sqlSession.selectList(statement, userNo);
	}
	
}
