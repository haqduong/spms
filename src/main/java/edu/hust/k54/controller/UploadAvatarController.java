package edu.hust.k54.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
 
import edu.hust.k54.model.UploadAvatar;

@Controller
@RequestMapping(value = "/upload.spms")
public class UploadAvatarController {
	@RequestMapping(method = RequestMethod.GET)
	public String getUploadForm(Model model) {
		System.err.println("----- UploadAvatarController is processing GET request");
		model.addAttribute(new UploadAvatar());
		return "upload/uploadForm";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String create(UploadAvatar uploadItem, BindingResult result) {
		if (result.hasErrors())
	    {
	      for(ObjectError error : result.getAllErrors())
	      {
	        System.err.println("Error: " + error.getCode() +  " - " + error.getDefaultMessage());
	      }
	      return "upload/uploadForm";
	    }
	 
	    // Some type of file processing...
	    System.err.println("-------------------------------------------");
	    System.err.println("Test upload: " + uploadItem.getName());
	    System.err.println("Test upload: " + uploadItem.getFileData().getOriginalFilename());
	    System.err.println("-------------------------------------------");
	 
	    return "homepage";
	}
}
