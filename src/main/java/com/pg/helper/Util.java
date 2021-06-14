package com.pg.helper;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class Util {

	
/*	public static Resident convertResidentEntity(ResidentEntity re) {
		Resident r = new Resident();
		r.setFullName(re.getFullName());
		r.setMobileNumber(re.getMobileNumber());
		r.setAdvanceAmount(re.getAdvanceAmount());
		r.setRentAmount(re.getRentAmount());
		r.setTcSubmitted(re.getTcSubmitted() == true ? "Yes" : "No");
		r.setInductionComplete(re.getInductionComplete() == true ? "Yes" : "No");
		r.setRoomNumber(re.getRoomNumber());
		r.setMaritalStatus(re.getMaritalStatus());
		r.setEmail(re.getEmail());
		r.setAddress(re.getAddress());
		return r;
	}*/

	public static void saveFiles(CommonsMultipartFile file,	HttpServletRequest request) {
		

		String realPath = request.getServletContext().getRealPath("images/") + file.getOriginalFilename();

		try (FileOutputStream fos = new FileOutputStream(realPath);) {

			byte[] fileByte = file.getBytes();
			fos.write(fileByte);
			
			System.out.println(realPath);

		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
