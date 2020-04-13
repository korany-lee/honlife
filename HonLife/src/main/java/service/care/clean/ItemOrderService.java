package service.care.clean;


import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.care.CleanItemDTO;
import Model.DTO.care.CleanOrderDTO;
import command.care.clean.ItemCommand;
import command.care.clean.ItemOrderCommand;
import repository.care.RegistRepository;

@Service
public class ItemOrderService {
@Autowired
RegistRepository registRepository;

public void orderInsert(ItemOrderCommand itemOrderCommand, Model model) {
	
	
	
	CleanOrderDTO dto = new CleanOrderDTO();	
	dto.setCleanorderNo(itemOrderCommand.getCleanorderNo());
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

	
	
	
	
	dto.setMoveHow(itemOrderCommand.getMoveHow());
	dto.setMovePay(itemOrderCommand.getMovePay());


	registRepository.orderInsert(dto);
	
}

public void itemInsert(ItemCommand itemCommand, ItemOrderCommand itemOrderCommand ) {
	CleanItemDTO dto1 = new CleanItemDTO();
	dto1.setCleanorderNo(itemOrderCommand.getCleanorderNo());
	dto1.setEmployeeNo(itemOrderCommand.getEmployeeNo());
	dto1.setCleanitemName(itemCommand.getCleanitemName());		
	dto1.setCleanitemPrice( itemCommand.getCleanitemPrice());
	dto1.setCleanitemQty(itemCommand.getCleanitemQty());		
	dto1.setCleanitemSumprice( itemCommand.getCleanitemSumprice());
	dto1.setCleanitemrealQty(itemCommand.getCleanitemrealQty());
	System.out.println("dto1==="+dto1.getCleanitemPrice());
	System.out.println("dto1==="+dto1.getCleanitemName());
	System.out.println("dto1==="+dto1.getCleanitemQty());
	System.out.println("dto1==="+dto1.getCleanitemSumprice());
	System.out.println("insertService=" + dto1.getEmployeeNo());
	
	registRepository.itemInsert(dto1);
}
	
	
}
