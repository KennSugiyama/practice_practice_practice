def destroy_message(message)
  regex = /^.*:/
  message.match(regex) ? message.match(regex)[0] : message
end

def destroy_message!(message)
  message = message.replace(destroy_message(message))
end
