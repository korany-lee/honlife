package Repository.Stay;

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
		System.out.println(dto.getRoomNo());
		System.out.println(dto.getRoomSize());
		System.out.println(dto.getRoomFee());
		System.out.println(dto.getRoomManageFee());
		System.out.println(dto.getRoomView());
		System.out.println(dto.getRoomExplantion());
		System.out.println(dto.getRoomPhoto());
		System.out.println(dto.getRoomUsage());
		System.out.println(dto.getRoomCallNum());
		sqlSession.insert(statement, dto);
	}
}
