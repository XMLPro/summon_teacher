class SummonChannel < ApplicationCable::Channel
  def subscribed
    stream_from "summon_channnel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def summon(data)
    ActionCable.server.broadcast "summon_channnel", position: data['position']
  end
end
