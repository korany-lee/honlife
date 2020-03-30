package repository.care;

import java.util.List;

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
	
	public List<RecruitDTO> list() {
		String statement = namespace + ".reclistSelect";
		
		return 	sqlSession.selectList(statement);
	}
	
	public void recDel(RecruitDTO dto) {
		String statement = namespace + ".recruitDelete";
		
		 sqlSession.delete(statement,dto);
	}
	
	public RecruitDTO oneSelect(RecruitDTO dto) {
		String statement = namespace + ".recruitOneSelect";
		
		return sqlSession.selectOne(statement,dto);
	}
	
	public List<RecruitDTO> interviewList() {
		String statement = namespace + ".interviewListSelect";
		
		return 	sqlSession.selectList(statement);
	}
	
	public Integer updatePoint(RecruitDTO dto) {
		String statement = namespace + ".upPoint";
		
		return sqlSession.update(statement,dto);
	}
	
	public void intChkUp(RecruitDTO dto) {
		String statement = namespace + ".intChkUp";
		
		sqlSession.update(statement, dto);
	}

	
	
}
