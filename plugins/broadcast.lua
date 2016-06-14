local function run(msg, matches)
	if matches[1] == 'pmsp' and is_owner1(msg) then
		local response = matches[3]
		--send_large_msg("chat#id"..matches[2], response)
		send_large_msg("channel#id"..matches[2], response)
	end
end
return {
  patterns = {
    "^[#!/](pmsp) (%d+) (.*)$"
  },
  run = run
}
-- :-)
