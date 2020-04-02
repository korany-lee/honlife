package service.care.clean;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.care.CleanOrderDTO;
import command.care.clean.ItemOrderCommand;
import repository.care.RegistRepository;

@Service
public class ItemOrderService {
@Autowired
RegistRepository registRepository;

public void orderInsert(ItemOrderCommand itemOrderCommand,Model model) {

	CleanOrderDTO dto = new CleanOrderDTO();	
	
	dto.setEmployeeNo(itemOrderCommand.getEmployeeNo());
	Date orderDate = new Date(itemOrderCommand.getCleanorderDate().getTime());
	System.out.println("orderDate= " + orderDate);
	Date receiveDate = new Date(itemOrderCommand.getCleanorderReceiveDate().getTime());
	System.out.println("receiveDate= " + receiveDate);
	dto.setCleanorderDate(orderDate);
	dto.setCleanorderReceiveDate(receiveDate);

	dto.setCleanorderCompanyName(itemOrderCommand.getCleanorderCompanyName());
	dto.setCleanorderAddress(itemOrderCommand.getCleanorderAddress());
	dto.setCleanorderCompanyPh(itemOrderCommand.getCleanorderCompanyPh());
	dto.setCleanorderCompanyFax(itemOrderCommand.getCleanorderCompanyFax());
	dto.setCleanorderPostcode(itemOrderCommand.getCleanorderPostcode());
	dto.setCleanorderAddrdetail(itemOrderCommand.getCleanorderAddrdetail());
	dto.setAllsum(itemOrderCommand.getAllsum());
	
	String allName= "";
	for (String itemName : itemOrderCommand.getCleanitemName()  ) {		
		allName += itemName + ",";
	}
	dto.setCleanitemName(allName);
	
	String allPrice = "";
	for(String itemPrice : itemOrderCommand.getCleanitemPrice()) { 		
		allPrice += itemPrice+",";	
	}
	dto.setCleanitemPrice(allPrice);
	
	String allQty = "";
	for(String itemQty : itemOrderCommand.getCleanitemQty()) {
		allQty += itemQty + ",";	
	}
	dto.setCleanitemQty(allQty);
	
	String allSum ="";
	for(String itemSum : itemOrderCommand.getCleanitemSum()) {
		allSum += itemSum + ",";	
	}
	dto.setCleanitemSumprice(allSum);
	
	
	dto.setMoveHow(itemOrderCommand.getMoveHow());
	dto.setMovePay(itemOrderCommand.getMovePay());


	registRepository.orderInsert(dto);
	

	
	

	
}
	
	
}
