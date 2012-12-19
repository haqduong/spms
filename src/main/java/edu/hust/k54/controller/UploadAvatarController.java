package edu.hust.k54.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;

import edu.hust.k54.model.UploadItem;
import edu.hust.k54.persistence.Taikhoandangnhap;

@Controller
@RequestMapping(value = "/uploadavatar.spms")
public class UploadAvatarController {
	@RequestMapping(method = RequestMethod.GET)
	public String getUploadForm(HttpServletRequest request, Model model) {
		Taikhoandangnhap account = (Taikhoandangnhap) request.getSession()
				.getAttribute("user");

		model.addAttribute(new UploadItem());
		model.addAttribute("form_type", "Avatar");

		if (account != null) {
			model.addAttribute("loggedIn", true);
			System.err.println(account.getUsername());
		} else {
			model.addAttribute("err", "You must login to do this action");
			return "upload/uploadForm";
		}

		return "upload/uploadForm";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String create(UploadItem uploadItem, BindingResult result,
			HttpServletRequest request, Model model) {
		if (result.hasErrors()) {
			for (ObjectError error : result.getAllErrors()) {
				System.err.println("Error: " + error.getCode() + " - "
						+ error.getDefaultMessage());
			}
			return "upload/uploadForm";
		}
		
		model.addAttribute("form_type", "Avatar");

		InputStream sIn = null;
		OutputStream sOut = null;

		Taikhoandangnhap account = (Taikhoandangnhap) request.getSession()
				.getAttribute("user");

		if (account != null) {
			System.err.println(account.getUsername());
		} else {
			model.addAttribute("err", "You must login to do this action");
			return "upload/uploadForm";
		}

		try {
			MultipartFile file = uploadItem.getFileData();
			String fileName = null;
			System.out.println(file);
			if (file.getSize() > 0) {
				sIn = file.getInputStream();
				System.out.println("Size: " + file.getSize());
				Date now = new Date();
				fileName = request.getRealPath("") + "/uploadContent/avatar/"
						+ now.getTime() + "-" + file.getOriginalFilename();
				System.err.println(fileName);
				System.err.println(file.getContentType());
				String type = file.getContentType();
				if (!type.startsWith("image")) {
					model.addAttribute("err", "You must upload an image");
				}
				sOut = new FileOutputStream(fileName);
				System.out.println("fileName:" + file.getOriginalFilename());

				int readBytes = 0;
				byte[] buffer = new byte[10000];
				while ((readBytes = sIn.read(buffer, 0, 10000)) != -1) {
					sOut.write(buffer, 0, readBytes);
				}
				sOut.close();
				sIn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("flash", "Upload successfully");

		return "upload/uploadForm";
	}
}
