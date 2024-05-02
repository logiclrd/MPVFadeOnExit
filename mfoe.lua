socket = require "socket"

function fade_out()
  for i=0,-100,-5 do
    mp.set_property("contrast", i)
    socket.sleep(0.03)
  end

  mp.command("quit")
end

mp.add_key_binding("ctrl+q", fade_out)
