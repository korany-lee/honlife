package repository.care;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.DTO.care.RecruitDTO;

@Repository
public class RegistRepository {
	@Autowired
	 private SqlSession sqlSession;
	private final String namespace="mappers.careMapper";
	public void regist(RecruitDTO DTO) {
		
		String statement = namespace + ".insertRegist";
		
		sqlSession.insert(statement,DTO);
		
	}
	
}
