function run(msg, matches)
if msg.text == matches[1] then
local chat = 'chat#id' ..msg.to.id
local user = 'user#id' ..msg.from.id
chat_del_user(chat, user, ok_cb, true)
end
end
return {
  patterns = {
    "^(.*)$"
  },
  run = run
}
