package com.oh.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.oh.util.Massage;

@Controller
@RequestMapping("/upload")
public class FileUploadCtrl {
	
	String uploadFolder = "D:\\GJH\\jsp3\\web05\\src\\main\\webapp\\resources\\upload";
	
	@GetMapping("/uploadFormAjax")			
	public String uploadFormAjax() {		//업로드폼으로 이동
		return "/upload/uploadAjax";
	}
	
	@ResponseBody
	@RequestMapping(value="/uploadAjax", method = RequestMethod.POST) //자료 등록 폼 로딩
	public Massage uploadAjax(MultipartFile[] uploadFile, Model model) throws UnsupportedEncodingException, Exception {
		Massage ms = new Massage();
		for(MultipartFile multipartFile : uploadFile) {
				String uploadFileName = multipartFile.getOriginalFilename();
				uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
				File saveFile = new File(uploadFolder, uploadFileName);
			try {
				multipartFile.transferTo(saveFile);
				ms.setMs("파일 업로드 성공");
			} catch(Exception e) {
				ms.setMs("파일 업로드 실패");
				e.printStackTrace();
			}
		}
		return ms;
	}
	@ResponseBody
	@RequestMapping(value="/uploadImg", method = RequestMethod.POST) //자료 등록 폼 로딩
	public Massage uploadImg(MultipartFile[] uploadFile, Model model) throws UnsupportedEncodingException, Exception {
		Massage ms = new Massage();
		for(MultipartFile multipartFile : uploadFile) {
				String uploadFileName = multipartFile.getOriginalFilename();
				uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
				ms.setImgName(uploadFileName);
				ms.setImgSave("/resources/upload/"+uploadFileName);
				File saveFile = new File(uploadFolder, uploadFileName);
			try {
				multipartFile.transferTo(saveFile);
				ms.setMs("파일 업로드 성공");
			} catch(Exception e) {
				ms.setMs("파일 업로드 실패");
				e.printStackTrace();
			}
		}
		return ms;
	}
}
