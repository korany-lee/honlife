package repository.stay;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.DTO.FurnitureDTO;


@Repository
public class FurnitureRepository {
	@Autowired
	private SqlSession sqlSession;	
	private final String namespace="furnitureMapper";
	
	public void furnitureInsert(FurnitureDTO dto) {
		String statement = namespace + ".furnitureInsert";
		sqlSession.insert(statement, dto);
	}
	
	public List<FurnitureDTO> furnitureList() {
		String statement = namespace +".furnitureList";
		return sqlSession.selectList(statement);
	}
}
