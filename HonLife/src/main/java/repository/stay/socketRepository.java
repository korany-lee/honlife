package repository.stay;



import java.util.ArrayList;
import java.util.List;

import Model.DTO.RoomRevDTO;

public class socketRepository extends DataBaseInfo{
	
	
	private String sql;
	String columns="ROOMREV_NO,USER_NO,ROOM_NO,ROOMREV_REVNAME,ROOMREV_LIVEUSER,ROOMREV_STARTDATE," + 
			"	ROOMREV_ENDDATE,ROOMREV_STATE,ROOMREV_PRICE,ROOMREV_PH,ROOMREV_EMAIL,ROOMREV_REVIEWCHK,ROOMREV_FREVCHK";

	
	public void insert(RoomRevDTO dto) {
		getConnection();
		sql = "insert into roomrev(" + columns+ ") values(roomrev_seq.nextval,?,?,?,?,?,?,'사용대기',?,?,?,'N','해당없음')";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserNo());
			pstmt.setString(2, dto.getRoomNo() );
			pstmt.setString(3, dto.getRoomRevName());
			pstmt.setString(4, dto.getRoomLiveName());
			pstmt.setTimestamp(5, dto.getRoomRevStartDate());
			pstmt.setTimestamp(6, dto.getRoomRevEndDate());
			pstmt.setInt(7, dto.getRoomRevPrice());
			pstmt.setString(8, dto.getRoomRevPh());
			pstmt.setString(9, dto.getRoomRevEmail());
			
			pstmt.executeUpdate();
			System.out.println("pstmt로 값 다 넣음");
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
	
	}
	public List<RoomRevDTO> allRoomRev() {
		getConnection();
		sql = "select " + columns +  " from roomrev order by ROOMREV_NO desc";
		List list = new ArrayList();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				RoomRevDTO dto = new RoomRevDTO();
				dto.setRoomRevNo(rs.getString(1));
				dto.setUserNo(rs.getString(2));
				dto.setRoomNo(rs.getString(3));
				dto.setRoomRevName(rs.getString(4));
				dto.setRoomLiveName(rs.getString(5));
				dto.setRoomRevStartDate(rs.getTimestamp(6));
				dto.setRoomRevEndDate(rs.getTimestamp(7));
				dto.setRoomRevState(rs.getString(8));
				dto.setRoomRevPrice(Integer.parseInt(rs.getString(9)));
				dto.setRoomRevPh(rs.getString(10));
				dto.setRoomRevEmail(rs.getString(11));
				dto.setRoomRevReviewChk(rs.getString(12));
				dto.setRoomRevFrevchk(rs.getString(13));
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
}
