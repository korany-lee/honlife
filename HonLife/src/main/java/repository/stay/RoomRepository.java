package repository.stay;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.DTO.RoomDTO;
import Model.DTO.TimeCheckDTO;

@Repository
public class RoomRepository {
	
	@Autowired
	private SqlSession sqlSession;	
	private final String namespace="roomMapper";
	
	public void roomInsert(RoomDTO dto) {
		String statement = namespace + ".roomInsert";
		sqlSession.insert(statement, dto);
	}
	public List<RoomDTO> viewSelect(String SmallType){
		String statement = namespace + ".viewSelect";
		return sqlSession.selectList(statement,SmallType );
	}
	
	public List<RoomDTO> floorSelect(String floor){
		System.out.println("floor =" + floor);
		String statement = namespace + ".floorSelect";
		return sqlSession.selectList(statement,floor );
	}
	
	public List<RoomDTO> sizeSelect(String SmallType){
		String statement = namespace + ".sizeSelect";
		return sqlSession.selectList(statement,SmallType );
	}
	
	public RoomDTO oneSelect(String num) {
		String statement = namespace + ".oneSelect";
		return sqlSession.selectOne(statement, num);
	}
	

	public String dateCheck(TimeCheckDTO dto) {
		String statement = namespace +".dateCheck"; 
		return sqlSession.selectOne(statement,dto);
	}
	
	public void changeState(String roomNo) {
		String statement = namespace +".stateChange";
		sqlSession.update(statement, roomNo);
	}
	
	public void changeState1(String roomNo) {
		String statement = namespace +".stateChange1";
		sqlSession.update(statement, roomNo);
	}
	
	
}
