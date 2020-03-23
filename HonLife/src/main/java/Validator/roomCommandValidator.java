package Validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import Command.Stay.Room.RoomCommand;

public class roomCommandValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return RoomCommand.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "roomNo", "필수입력 항목입니다");
		ValidationUtils.rejectIfEmpty(errors, "rentalFee", "필수입력 항목입니다");
		ValidationUtils.rejectIfEmpty(errors, "callNum", "필수입력 항목입니다");
		
	}

}
