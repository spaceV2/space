

































































































































































































local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local FlatIdent_76979 = 0;
	local result;
	while true do
		if (FlatIdent_76979 == 1) then
			return obf_tableconcat(result);
		end
		if (FlatIdent_76979 == 0) then
			result = {};
			for i = 1, #LUAOBFUSACTOR_STR do
				obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
			end
			FlatIdent_76979 = 1;
		end
	end
end
game.ReplicatedFirst:ClearAllChildren();
repeat
	task.wait();
until game:IsLoaded() 
game.ReplicatedFirst:ClearAllChildren();
task.spawn(function()
	while task.wait() do
		local FlatIdent_24A02 = 0;
		local Old;
		while true do
			if (FlatIdent_24A02 == 1) then
				game.ReplicatedFirst:RemoveDefaultLoadingScreen();
				break;
			end
			if (FlatIdent_24A02 == 0) then
				Old = nil;
				Old = hookfunction(setmetatable, function(...)
					local FlatIdent_89ECE = 0;
					while true do
						if (FlatIdent_89ECE == 0) then
							if tostring(getcallingscript()):find(LUAOBFUSACTOR_DECRYPT_STR_0("\243\226\248\26", "\126\177\163\187\69\134\219\167")) then
								return function()
								end;
							end
							return Old(...);
						end
					end
				end);
				FlatIdent_24A02 = 1;
			end
		end
	end
end);
print(LUAOBFUSACTOR_DECRYPT_STR_0("\14\251\25\225\188\34\195\62\204\255\43\200\43\209\188\48\197\37\208\240\39\141\40\192\188\33\212\58\196\239\48\200\46", "\156\67\173\74\165"));
print(LUAOBFUSACTOR_DECRYPT_STR_0("\56\182\93\19\175\50\6\55\191\72\24\187\35\28\116\190\9\25\172\50\79\57\190\83\19\184\102\85\55\165\64\6\168\102\28\16", "\38\84\215\41\118\220\70"));
