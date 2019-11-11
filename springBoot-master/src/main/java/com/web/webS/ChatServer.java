package com.web.webS;//package com.web.webS;
//
//import javax.websocket.server.ServerEndpoint;
//
//import org.json.JSONObject;
//import org.springframework.web.context.ContextLoader;
//import org.springframework.web.socket.server.standard.SpringConfigurator;
//
//import javax.websocket.*;
//import javax.websocket.server.ServerEndpoint;
//import java.awt.*;
//import java.text.SimpleDateFormat;
//
///**
// * Created by 456 on 2019/7/5.
// */
////一对一聊天控制器
//@ServerEndpoint(value="/chatServer", configurator=SpringConfigurator.class, encoders = {SystemMessageEncoder.class, CommonMessageEncoder.class, HistoryMessageEncoder.class})
//public class ChatServer {
//    private ChatRoomDao chatRoomDao = (ChatRoomDao) ContextLoader.getCurrentWebApplicationContext().getBean("chatRoomDao");
//    private ChatSessionStorageDao chatSessionStorageDao = (ChatSessionStorageDao)ContextLoader.getCurrentWebApplicationContext().getBean("chatSessionStorageDao");
//    private HistoryMessageDao historyMessageDao = (HistoryMessageDao)ContextLoader.getCurrentWebApplicationContext().getBean("historyMessageDao");
//
//    public ChatServer() {
//    }
//
//    @OnOpen
//    public void onOpen(Session session) {
//    }
//
//    @OnClose
//    public void onClose(Session session) {
//        chatSessionStorageDao.closeSession(session);
//    }
//
//    @OnMessage
//    public void onMessage(String message, Session session) {
//        JSONObject messageObject = new JSONObject(message);
//        String messageType = messageObject.getString("messageType");
//        String from = messageObject.getString("from");
//        String to = messageObject.getString("to");
//
//        if (messageType.equals(TrayIcon.MessageType.SYS_MSG)) {
//            chatSessionStorageDao.save(from, to, from, session);
//            List<ChatMessage> historyMessages = historyMessageDao.get(from, to);
//            if (historyMessages.size() > 0) {
//                try {
//                    sendMsg(session, new HistoryMessageResponse(TrayIcon.MessageType.HIS_MSG, historyMessages));
//                } catch (Exception e) {
//                    e.printStackTrace();
//                }
//            }
//        } else if (messageType.equals(MessageType.COM_MSG)) {
//            String sendMessage = messageObject.getString("message");
//
//            //先从一对一session存储Map中查找session
//            Session toSession = chatSessionStorageDao.getSession(from, to, to);
//
//            if (toSession == null) {
//                //没找到就从所有的session列表中查找
//                toSession = chatRoomDao.getSession(to);
//            }
//
//            if (toSession == null) {
//                try {
//                    sendMsg(session, new SystemMessageResponse(MessageType.SYS_MSG, to, "", null));
//                } catch (Exception e) {
//                    e.printStackTrace();
//                }
//            } else {
//                Date time = new Date();
//                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//
//                try {
//                    historyMessageDao.save(from, to, new ChatMessage(sdf.format(time), from, sendMessage));
//                    sendMsg(session, new CommonMessageResponse(MessageType.COM_MSG, sdf.format(time), from, sendMessage));
//                    sendMsg(toSession, new CommonMessageResponse(MessageType.COM_MSG, sdf.format(time), from, sendMessage));
//                } catch (Exception e) {
//                    e.printStackTrace();
//                }
//            }
//        }
//    }
//
//    @OnError
//    public void onError(Session session, Throwable error) {
//        error.printStackTrace();
//    }
//
//    private void sendMsg(Session session, Object message) throws Exception {
//        session.getBasicRemote().sendObject(message);
//    }
//}
