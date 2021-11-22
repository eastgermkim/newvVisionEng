package com.newvisioneng.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.newvisioneng.service.EmployService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/employ/*")
//New Vision ENG 탭 
public class EmployController {
	public static HashMap<String, String> map;

	@Setter(onMethod_=@Autowired)
	private EmployService service;
	
	//고용안내 페이지 연결
	@SuppressWarnings("deprecation")
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list(Model model) throws IOException {
		/*public String startCrawl(Model model) throws IOException {*/
			
			/*SimpleDateFormat formatter = new SimpleDateFormat("yyyy.MM.dd", Locale.KOREA);
			Date currentTime = new Date();
			
			String dTime = formatter.format(currentTime);
			String e_date = dTime;
			
			currentTime.setDate(currentTime.getDate() - 1);
			String s_date = formatter.format(currentTime);
			
			String query = "김동균";
			String s_from = s_date.replace(".", "");
			String e_to = e_date.replace(".", "");
			int page = 1;
			ArrayList<String> al1 = new ArrayList<>();
			ArrayList<String> al2 = new ArrayList<>();
			
			while (page < 20) {
				String address = "https://search.naver.com/search.naver?where=news&query=" + query + "&sort=1&ds=" + s_date
						+ "&de=" + e_date + "&nso=so%3Ar%2Cp%3Afrom" + s_from + "to" + e_to + "%2Ca%3A&start="
						+ Integer.toString(page);
				Document rawData = Jsoup.connect(address).timeout(5000).get();
				System.out.println(address);
				Elements blogOption = rawData.select("ul li");
				String realURL = "";
				String realTITLE = "";
				
				for (Element option : blogOption) {
					realURL = option.select("a").attr("href");
					realTITLE = option.select("a").attr("title");
					al1.add(realURL);
					al2.add(realTITLE);
					System.out.println(al1);
					System.out.println(al2);
				}
				page += 1;
			}
			model.addAttribute("urls", al1);
			model.addAttribute("titles", al2);

			
			*/
			return "employ/list";
		}
	

}
