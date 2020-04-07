package repository.care;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.DTO.care.CleanFeeDTO;
import Model.DTO.care.CleanItemDTO;
import Model.DTO.care.CleanOrderDTO;
import Model.DTO.care.CleanRevDTO;
import Model.DTO.care.CleanitemInsert;
import Model.DTO.care.EmployeeDTO;
import Model.DTO.care.EmptoItemOrderDTO;
import Model.DTO.care.RecruitDTO;
import command.care.clean.ItemCommand;

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
	
	public List<CleanOrderDTO> orderList() {
		String statement = namespace + ".orderListSelect";
	
		return sqlSession.selectList(statement);
	}
	
	public List<CleanitemInsert> orderList(String orderNo) {
		String statement = namespace + ".orderTableList";		
		return sqlSession.selectList(statement,orderNo);
	
	}
	
	public Integer orderChk(CleanOrderDTO dto) {
		String statement = namespace + ".orderChk";
		
		return sqlSession.update(statement, dto);
	}
	
	public void empDetail(EmployeeDTO dto) {
		
		String statement = namespace + ".empDetail";
		sqlSession.selectOne(statement,dto);
	}
	
	public void itemInsert(CleanItemDTO dto) {
		
	
		
		String statement = namespace + ".itemInsert";
	
        for(int i = 0 ; i < dto.getCleanitemPrice().size(); i++) {
        	CleanitemInsert	 in = new CleanitemInsert();
        	in.setCleanorderNo(dto.getCleanorderNo());
        	 in.setEmployeeNo(dto.getEmployeeNo());
        	in.setCleanitemPrice(dto.getCleanitemPrice().get(i));
        	in.setCleanitemName(dto.getCleanitemName().get(i));
        	in.setCleanitemQty(dto.getCleanitemQty().get(i));
        	in.setCleanitemSumprice(dto.getCleanitemSumprice().get(i));
              	
        	sqlSession.insert(statement,in);
        	}
        
				 
	
	}
	
	public List<CleanFeeDTO> fee() {
		String statement = namespace + ".fee";
		return sqlSession.selectList(statement);
			
		
	}
	
	public void revIn(CleanRevDTO cr) {
		
		String statement = namespace + ".revIn";
		
		sqlSession.insert(statement,cr);
		
	}
	public CleanRevDTO revDetail(CleanRevDTO cr) {
		String statement = namespace + ".revDetail";
		return sqlSession.selectOne(statement,cr);
	}
	
	public void revDel(CleanRevDTO cr) {
		String statement = namespace + ".revDel";
		sqlSession.delete(statement,cr);
		
		
	}

	
	
}
