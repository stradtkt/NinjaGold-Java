package com.codingdojo.ninjagold.models;


import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;

@Getter
@Setter
public class MessageList {
    public String color;
    public String message;

    public static ArrayList<MessageList> messageLists = new ArrayList<>();
    public MessageList(String color, String message) {
        setColor(color);
        setMessage(message);
    }
    public static void addMessage(String color, String message) {
        MessageList messageList = new MessageList(color, message);
        messageLists.add(messageList);
    }
}
