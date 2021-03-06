package com.web.webS;//package com.web.webS;
//
//import org.springframework.web.context.ContextLoader;
//import org.springframework.web.socket.server.standard.SpringConfigurator;
//
//import javax.websocket.*;
//import javax.websocket.server.ServerEndpoint;
//import java.awt.*;
//
///**
// * Created by 456 on 2019/7/5.
// */
////在线好友列表控制器
//@ServerEndpoint(value="/websocketServer", configurator=SpringConfigurator.class)//这边的session会被websocket中调用发送commonmessage，所以需要引入CommonMessageEncoder
////, encoders = {SystemMessageEncoder.class, CommonMessageEncoder.class, HistoryMessageEncoder.class}
//public class WebsocketServer {
//    private ChatRoomDao chatRoomDao = (ChatRoomDao)ContextLoader.getCurrentWebApplicationContext().getBean("chatRoomDao");
//    private ChatroomMemberDao chatroomMemberDao = (ChatroomMemberDao)ContextLoader.getCurrentWebApplicationContext().getBean("chatroomMemberDao");
//
//    public WebsocketServer() {
//    }
//
//    @OnOpen
//    public void onOpen(Session session) {
//    }
//
//    @OnClose
//    public void onClose(Session session) {
//        String username = chatRoomDao.getUname(session);
//        chatroomMemberDao.remove(username);
//        chatRoomDao.remove(session);
//
//        for (Session sesion : chatRoomDao.getSessionKeys()) {
//            try {
//                sendMsg(sesion, new SystemMessageResponse(TrayIcon.MessageType.SYS_MSG, username, "exit", chatroomMemberDao.getAll()));
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//        }
//    }
//
//    @OnMessage
//    public void onMessage(String message, Session session) {
//        JSONObject messageObject = new JSONObject(message);
//        String content = messageObject.getString("message");
//        String messageType = messageObject.getString("messageType");
//
//        if (messageType.equals(MessageType.SYS_MSG)) {
//            chatRoomDao.save(session, content);
//            chatroomMemberDao.save(content);
//
//            for (Session sesion : chatRoomDao.getSessionKeys()) {
//                try {
//                    sendMsg(sesion, new SystemMessageResponse(MessageType.SYS_MSG, content, "enter", chatroomMemberDao.getAll()));
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
