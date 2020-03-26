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
		System.out.println("size=" + DTO.getFileSize());
		System.out.println("email" + DTO.getRecruitEmail());
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
	
	public void mailChkUpdate(RecruitDTO dto) {
		String statement = namespace + ".chkUp";
		
		sqlSession.update(statement, dto);
		
	}
	
	
}
