local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['chat'] then
                lock_chat = data[tostring(msg.to.id)]['settings']['chat']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_chat == "yes" then
       delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
"[Aa](.*)",
"[Bb](.*)",
"[Cc](.*)",
"[Dd](.*)",
"[Ee](.*)",
"[Ff](.*)",
"[Gg](.*)",
"[Hh](.*)",
"[Ii](.*)",
"[Jj](.*)",
"[Kk](.*)",
"[Ll](.*)",
"[Mm](.*)",
"[Nn](.*)",
"[Oo](.*)",
"[Pp](.*)",
"[Qq](.*)",
"[Rr](.*)",
"[Ss](.*)",
"[Tt](.*)",
"[Uu](.*)",
"[Vv](.*)",
"[Ww](.*)",
"[Xx](.*)",
"[Yy](.*)",
"[Zz](.*)",
"[ص](.*)",
"[ث](.*)",
"[ق](.*)",
"[ف](.*)",
"[ع](.*)",
"[غ](.*)",
"[ض](.*)",
"[ه](.*)",
"[خ](.*)",
"[ح](.*)",
"[ج](.*)",
"[چ](.*)",
"[ش](.*)",
"[س](.*)",
"[ی](.*)",
"[ب](.*)",
"[ل](.*)",
"[ا](.*)",
"[ت](.*)",
"[ن](.*)",
"[م](.*)",
"[پ](.*)",
"[ط](.*)",
"[ظ](.*)",
"[ز](.*)",
"[ژ](.*)",
"[ر](.*)",
"[د](.*)",
"[ذ](.*)",
"[و](.*)",
"[ک](.*)",
"[گ](.*)",
  },
  run = run
}
