class ChatroomsChannel < ApplicationCable::Channel
  def subscribed
  current_user.chatrooms.each do |chatroom|
    stream_from "chatroom:#{chatroom.id}"
    # stream_from "some_channel"
    end
  end

  def unsubscribed
    stop_all_streams
  end
end
