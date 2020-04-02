package repository.care;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.DTO.care.CleanOrderDTO;
import Model.DTO.care.EmployeeDTO;
import Model.DTO.care.EmptoItemOrderDTO;
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
	
	public void empRegist(EmployeeDTO dto) {
	String statement = namespace + ".empRegist";
		
		sqlSession.insert(statement,dto);
		
	}
	
	public List<EmployeeDTO> empList() {
		String statement = namespace + ".empListSelect";
		
		return sqlSession.selectList(statement);
		
	}
	
	public void orderInsert(CleanOrderDTO dto) {
		
		String statement = namespace + ".orderInsert";
		sqlSession.insert(statement,dto);
	}
	
	public List<EmptoItemOrderDTO>  orderList() {
		String statement = namespace + ".orderListSelect";
		
		return sqlSession.selectList(statement);
	}
	
	public CleanOrderDTO orderDetail(CleanOrderDTO dto) {
		String statement = namespace + ".orderTableDetail";
	
		return sqlSession.selectOne(statement, dto);
	}


	
	
}
