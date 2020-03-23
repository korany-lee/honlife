package repository.stay;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.DTO.MaterialDTO;

public class MaterialRepository {
	@Autowired
	private SqlSession sqlSession;	
	private final String namespace="materialMapper";
	
	public void materialInsert(MaterialDTO dto) {
		String statement = namespace + ".materialInsert";
		sqlSession.insert(statement, dto);
	}
}
