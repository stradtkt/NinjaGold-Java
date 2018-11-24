package com.codingdojo.ninjagold.controllers;

import com.codingdojo.ninjagold.models.MessageList;
import com.codingdojo.ninjagold.models.RandomNumber;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@Controller
public class LocationController {

    @GetMapping("/")
    public String index(Model model, HttpSession session) {
        if(session.getAttribute("totalGold") == null) {
            int totalGold = 0;
            session.setAttribute("totalGold", totalGold);
        }
        return "index.jsp";
    }

    @PostMapping("/submit")
    public String place(Model model, HttpSession session, @RequestParam(value = "location", required = true) String location) {
        int totalGold = (int) session.getAttribute("totalGold");
        String time = new SimpleDateFormat("MMMM dd YYYY hh:mm a").format(Calendar.getInstance().getTime());
        int random;
        String message = "";
        String color = "";

        if(location.equals("farm")) {
            random = RandomNumber.getRandomNumber(10, 20);
        } else if(location.equals("house")) {
            random = RandomNumber.getRandomNumber(2,5);
        } else if(location.equals("cave")) {
            random = RandomNumber.getRandomNumber(5,10);
        } else if(location.equals("casino")) {
            random = RandomNumber.getRandomNumber(-50, 50);
        } else {
            return "redirect:/";
        }
        if(random >= 0) {
            color = "green";
            message = "You entered " + location + " and earned " + random + " gold. (" + time + ")";
        } else {
            color = "red";
            message = "You entered " + location + " and lost " + random + " gold (" + time + ")";
        }
        totalGold+=random;
        session.setAttribute("totalGold", totalGold);

        MessageList.addMessage(color, message);
        session.setAttribute("messageLists", MessageList.messageLists);
        System.out.println(message);
        System.out.println(MessageList.messageLists);
        return "redirect:/";
    }
}
