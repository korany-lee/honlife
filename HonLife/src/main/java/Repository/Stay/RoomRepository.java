package Repository.Stay;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.DTO.RoomDTO;

@Repository
public class RoomRepository {
	@Autowired
	SqlSession sqlSession;
	
	private final String namespace="roomMapper";
	
	public void roomInsert(RoomDTO dto) {
		String statement = namespace + ".roomInsert";
		sqlSession.insert(statement, dto);
	}
}
