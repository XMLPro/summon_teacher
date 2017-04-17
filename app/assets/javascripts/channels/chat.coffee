App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    console.log(data)
    chats = document.getElementById "chats"
    chat = document.createElement('div')
    chat.innerHTML = data['message']
    chats.appendChild chat


  speech: (message) ->
    @perform 'speech', message: message
