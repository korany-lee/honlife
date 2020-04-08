package Model.DTO;

import java.io.Serializable;
import java.sql.Timestamp;

@SuppressWarnings("serial")
public class ReviewDTO implements Serializable {
	String roomRevNo;
	String userNo;
	String roomNo;
	String review;
	Timestamp reviewDate;
	String writer;
	Integer score;
	String roomReviewNo;
	
	public String getRoomReviewNo() {
		return roomReviewNo;
	}
	public void setRoomReviewNo(String roomReviewNo) {
		this.roomReviewNo = roomReviewNo;
	}
	public String getRoomRevNo() {
		return roomRevNo;
	}
	public void setRoomRevNO(String roomRevNo) {
		this.roomRevNo = roomRevNo;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public Timestamp getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Timestamp reviewDate) {
		this.reviewDate = reviewDate;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}
	
}
