App.summon = App.cable.subscriptions.create "SummonChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    calls = document.getElementById "calls"
    call = document.createElement('div')
    if (calls != null)
      call.innerHTML = data['seat_id'] + 'の人が呼んでいます'
      calls.appendChild call
      if (teach_flag)
        alert data['seat_id'] + 'の人が呼んでいます'


  summon: (seat_id)->
    @perform 'summon', seat_id: seat_id
