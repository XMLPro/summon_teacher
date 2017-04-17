class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chat_channnel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speech(data)
    ActionCable.server.broadcast 'chat_channnel', message: data['message']
  end
end
