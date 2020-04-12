package repository.stay;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import Model.DTO.FurnitureRevDTO;
import Model.DTO.RoomRevDTO;



@Repository
public class ReservationRepository {
	@Autowired
	private SqlSession sqlSession;	
	private final String namespace="revMapper";
	
	
	public void roomRevInsert(RoomRevDTO dto) {
		String statement = namespace + ".roomRevInsert";
		sqlSession.insert(statement, dto);
	}
	
	public List<RoomRevDTO> revState(String roomNo) {
		String statement = namespace + ".selectRevList";
		return sqlSession.selectList(statement, roomNo);
	}
	
	public List<FurnitureRevDTO> frevState(String furnitureNo){
		String statement = namespace + ".selectfRevList";
		return sqlSession.selectList(statement, furnitureNo);
	}
	
	
	public RoomRevDTO revChk(String userNo) {
		String statement = namespace + ".revChk";
		return sqlSession.selectOne(statement,userNo);
	}
	
	
	
	public List<RoomRevDTO> userRev(String userNo) {
		String statement = namespace + ".userRev"; 
		return sqlSession.selectList(statement, userNo);
	}
	
	public List<RoomRevDTO> userRev1(String userNo) {
		String statement = namespace + ".userRev1"; 
		return sqlSession.selectList(statement, userNo);
	}
	
	public RoomRevDTO oneRev(String revNum) {
		String statement = namespace + ".oneRev";
		return sqlSession.selectOne(statement,revNum);
	}
	
	public List<RoomRevDTO> oneRev1(String revNum) {
		String statement = namespace + ".oneRev1";
		return sqlSession.selectList(statement,revNum);
	}
	
	public String makeSeq() {
		String statement = namespace + ".makeSeq";
		sqlSession.insert(statement);
		statement = namespace + ".selectSeq";
		return sqlSession.selectOne(statement);
				
	}
	
	public void furnitureRevInsert(FurnitureRevDTO dto) {
		String statement = namespace + ".frevInsert";
		sqlSession.insert(statement, dto);
	}
	
	public void wishDelete(String userNo) {
		String statement = namespace + ".deleteWish";
		sqlSession.delete(statement, userNo);
	}
	
	public List<String> selectFrevNo(String roomRevNo){
		String statement = namespace + ".selectFrevNo";
		return sqlSession.selectList(statement, roomRevNo);
	}
	
	public List<String> selectFurnitureNo(String roomRevNo){
		String statement = namespace + ".selectFno";
		return sqlSession.selectList(statement, roomRevNo);
	}
	
	public void oneFrevCancel(FurnitureRevDTO dto) {  //하나의 가구 예약 취소
		String statement = namespace + ".onefrevCancel";
		sqlSession.delete(statement, dto);
	}
	
	public void roomrevCancel(String no) {  //방 예약 취소
		String statement = namespace + ".roomrrevDelete";
		sqlSession.delete(statement, no);
	}
	
	public void frevCancel(String no) {
		String statement = namespace + ".frevDelete";
		sqlSession.delete(statement, no);
		
	}
	
	public void updateReviewChk(String num) {
		String statement = namespace +".updateReviewChk"; 
		sqlSession.update(statement,num);
	}
	
	public List<RoomRevDTO> allRoomRev(){
		String statement = namespace +".allRoomRev";
		return sqlSession.selectList(statement);
	}
	
	public List<FurnitureRevDTO> allFurnitureRev() {
		String statement = namespace +".allFurnitureRev";
		return sqlSession.selectList(statement);
	}
	
	public void checkIn(String revNo) {
		String statement = namespace +".chkIn";
		sqlSession.update(statement, revNo);
	}
	
	public void checkOut(String revNo) {
		String statement = namespace +".chkOut";
		sqlSession.update(statement, revNo);
	}
	
	public void frevTrue(String revNo) {
		String statement = namespace +".frevTrue";
		sqlSession.update(statement, revNo);
	}
	
	public List<RoomRevDTO> today() {
		String statement = namespace +".todayRev";
		return sqlSession.selectList(statement);
	}
	
	public void settingOk(String revNum) {
		String statement = namespace +".setting";
		sqlSession.update(statement, revNum);
	}
	
	public RoomRevDTO roomsRev(String num) {
		String statement = namespace +".roomsRev";
		return sqlSession.selectOne(statement, num);
	}
}
