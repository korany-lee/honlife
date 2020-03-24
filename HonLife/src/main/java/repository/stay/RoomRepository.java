package repository.stay;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.DTO.RoomDTO;

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
	
	public List<RoomDTO> floorSelect(String SmallType){
		String statement = namespace + ".floorSelect";
		return sqlSession.selectList(statement,SmallType );
	}
	
	public List<RoomDTO> sizeSelect(String SmallType){
		String statement = namespace + ".sizeSelect";
		return sqlSession.selectList(statement,SmallType );
	}
}
