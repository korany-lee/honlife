package service.stay.room;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import Model.DTO.RoomDTO;
import repository.stay.RoomRepository;
import command.stay.room.RoomCommand;

@Service
public class RoomInsertService {
	@Autowired
	RoomRepository roomRepository;
	
	public String roomInsert(RoomCommand roomCommand,HttpServletRequest request) {
		RoomDTO dto = new RoomDTO();
		dto.setRoomNo(roomCommand.getRoomNo());
		dto.setRoomSize(roomCommand.getRoomSize());
		dto.setRoomFee(roomCommand.getRentalFee());
		dto.setRoomManageFee((int)(roomCommand.getRentalFee()*0.1));
		dto.setRoomView(roomCommand.getRoomView());
		dto.setRoomCallNum(roomCommand.getCallNum());
		dto.setRoomUsage(roomCommand.getRoomExtra());
		dto.setRoomExplantion(roomCommand.getRoomContent());
		
		//사진저장 위해서
		String storeTotal = "";
		
		for(MultipartFile mf :roomCommand.getRoomImage()) {
			String original = mf.getOriginalFilename();// 파일 업로드할때 탐색창에서 나오는 이름
			String originalFileExtension = original.substring(original.lastIndexOf("."));
			String store = UUID.randomUUID().toString().replace("-", "") + originalFileExtension;   //시스템에 저장되는거
		
			storeTotal += store+"-";
			
			String path = request.getServletContext().getRealPath("/");  // webapp까지만...
			path +="common\\manager\\update\\";
			
			File file = new File(path+store);
			try {
				mf.transferTo(file);   //파일객체를 생성해서 파일을 저장
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}    
		}
		dto.setRoomPhoto(storeTotal);
		roomRepository.roomInsert(dto);
		
		return null;
	}
	
}
