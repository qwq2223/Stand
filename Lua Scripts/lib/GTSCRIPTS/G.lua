--[[
 ██████╗ ██████╗  █████╗ ███╗   ██╗██████╗ ████████╗ ██████╗ ██╗   ██╗██████╗ ██╗███╗   ██╗ ██████╗ ██╗   ██╗██╗██████╗ 
██╔════╝ ██╔══██╗██╔══██╗████╗  ██║██╔══██╗╚══██╔══╝██╔═══██╗██║   ██║██╔══██╗██║████╗  ██║██╔════╝ ██║   ██║██║██╔══██╗
██║  ███╗██████╔╝███████║██╔██╗ ██║██║  ██║   ██║   ██║   ██║██║   ██║██████╔╝██║██╔██╗ ██║██║  ███╗██║   ██║██║██████╔╝
██║   ██║██╔══██╗██╔══██║██║╚██╗██║██║  ██║   ██║   ██║   ██║██║   ██║██╔══██╗██║██║╚██╗██║██║   ██║╚██╗ ██╔╝██║██╔═══╝ 
╚██████╔╝██║  ██║██║  ██║██║ ╚████║██████╔╝   ██║   ╚██████╔╝╚██████╔╝██║  ██║██║██║ ╚████║╚██████╔╝ ╚████╔╝ ██║██║     
 ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝    ╚═╝    ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝      
GRANDTOURINGVIP™ Copyright© 2023
Author: GT
Developer: Respect
Manager: Strawbetter / SmallGodGirl
All rights reserved.]] 
--require "lib.GTSCRIPTS.V" 

function loadgt() 
memory.alloc_int()
    require "lib.GTSCRIPTS.GTC.logo.GLogo"  
    require "lib.GTSCRIPTS.O"  
    require "lib.GTSCRIPTS.W"  
    require ('lib/GTSCRIPTS/T') 
    require "lib.GTSCRIPTS.GTW.fixnative"
    K = require 'lib.GTSCRIPTS.K' 
    local scaleForm = require'lib.GTSCRIPTS.Z' 
    local SFasd = scaleForm('instructional_buttons') 
    local UFO = require "lib.GTSCRIPTS.U" 
    local HomingMissiles = require "lib.GTSCRIPTS.H" 
    local GuidedMissile = require "lib.GTSCRIPTS.M" 
    local logo = directx.create_texture(filesystem.scripts_dir() .. '/GTLuaScript/' .. 'GT2.png') 
    local pathld = filesystem.scripts_dir() .. 'lib/GTSCRIPTS/GTW/display.lua' 
    if filesystem.exists(pathld) then 
        require "lib.GTSCRIPTS.GTW.display" 
    else 
        gtoast("未检测到文件") 
    end

require "lib.GTSCRIPTS.GTW.hbcheck"
festive_div = GTD(G, "GRANDTOURINGVIP") 
util.create_tick_handler(function() 
    for _, frame in pairs(loading_frames) do 
        GTluaScript.set_menu_name(festive_div, frame .. '') 
        wait(100) 
    end 
end)

function restartscript() 
    package.loaded["lib.GTSCRIPTS.GTC.logo.GLogo"] = nil 
    package.loaded["lib.GTSCRIPTS.V"] = nil
    wait()
    util.restart_script() 
end

--主菜单与UI
GTAC(menu.my_root(), ">>进入GRANDTOURINGVIP", {}, "",function ()
    menu.trigger_command(G) 
end) 
GTAC(menu.my_root(), ">>重新启动脚本", {}, "", function () restartscript() end) 
enable_options = GTTG(G, ">>启用快捷入口", {}, "", function (on) Quick_Enable(on) end)
changelogs = GTLP(G, ">>更新日志", {}, "", function () updatelogs() end)
players_root = GT(G, ">>玩家选项", {}, "")
frendlist = GT(G, ">>好友选项", {""}, "", function(); end)
selflist = GT(G, ">>自我选项", {}, "", function(); end)
weapon_options = GT(G, ">>武器选项", {}, "")
pvphelp = GT(G, ">>自瞄选项", {""}, "")
carfly = GT(G, ">>载具选项", {}, "", function(); end)
visuals = GT(G, ">>视觉选项", {}, "")
custselc = GT(G, ">>战局选项", {}, "", function(); end)
onlinemode = GT(G, '>>线上选项', {''}, '')
entity_options = GT(G, ">>管理选项", {}, "")
protex = GT(G, ">>保护选项", {}, "", function(); end)
funfeatures = GT(G, ">>娱乐选项", {}, "", function(); end)
detection = GT(G, ">>检测选项", {}, "", function(); end)
FY = GT(G, ">>聊天选项", {}, "", function(); end)
lobbyFeats = GT(G, ">>世界选项", {}, "")
Heist_Control = GT(G, ">>任务选项", {}, "")
Musiness_Banager = GT(G, ">>自动资产")
Constructor_Lua = GT(G, ">>模组选项")
other_options = GT(G, ">>其他选项")
bbttt = GTH(G, ">>GTVIP三群[下载脚本]", "http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=oza9NK13Ql0LJDjvFg6x71QKAu5cDFYj&authKey=mKgjAapXxRtPTKUrwoLi%2FX%2FRovM4ufPDjh9nBhnQ6dFACL%2Fa%2Bqu7QkFTd55ipnEO&noverify=0&group_code=651502721", "")
--显示UI
GTD(players_root, "[玩家选项]")
GTD(selflist, "[自我选项]")
GTD(weapon_options, "[武器选项]")
GTD(carfly, "[载具选项]")
GTD(visuals, "[视觉选项]")
GTD(custselc, "[战局选项]")
GTD(onlinemode, "[线上恢复]")
GTD(entity_options, "[管理选项]")
GTD(protex, "[保护选项]")
GTD(funfeatures, "[娱乐选项]")
GTD(detection, "[检测选项]")
GTD(FY, "[聊天选项]")
GTD(lobbyFeats, "[世界选项]")
GTD(Musiness_Banager, "[自动资产] 版本:e94d676")
GTD(Constructor_Lua, "[模组选项]")
GTD(other_options, "[其他选项]")

local configFile <const> = filesystem.scripts_dir() .. '\\GTLuaScript\\'.. "config.ini"
require "lib.GTSCRIPTS.Q"

function log(content)
    if verbose then
        util.log("[GTluaScript] " .. content)
    end
end

if SCRIPT_MANUAL_START then
menu.trigger_commands("gtluascript")
end
util.toast("\n版本 " .. GT_version .. " 欢迎 ".."\n加入群聊可获得最新版本")
local function newnotify(title, subtitle, msg, iconname, intcolor)
WIRI_HUD.BEGIN_TEXT_COMMAND_THEFEED_POST("STRING") 
WIRI_HUD.ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(msg) 
WIRI_HUD.END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT(iconname, iconname, false, 0, title, subtitle) 
WIRI_HUD.THEFEED_SET_BACKGROUND_COLOR_FOR_NEXT_POST(intcolor) 
WIRI_HUD.END_TEXT_COMMAND_THEFEED_POST_TICKER(true, true)
end
local notification = b_notifications.new()
function notification(message, color)
C_HUD._THEFEED_SET_NEXT_POST_BACKGROUND_COLOR(0,color)
local picture = "CHAR_CHOP"
GRAPHICS.REQUEST_STREAMED_TEXTURE_DICT(picture, 0)
while not GRAPHICS.HAS_STREAMED_TEXTURE_DICT_LOADED(picture) do
wait()
end
util.BEGIN_TEXT_COMMAND_THEFEED_POST(message)
title = "~g~&#8721;GRANDTOURINGVIP&#8721;"
if color == colors.white or color == colors.white then
subtitle = "~g~&#8721;‹GT‹&#8721;"
elseif color == colors.white then
subtitle = "~g~&#8721;‹GT‹&#8721;"
else
subtitle = "~g~&#8721;‹GT‹&#8721;"
end
HUD.END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT(picture, picture, true, 4, title, subtitle)
HUD.END_TEXT_COMMAND_THEFEED_POST_TICKER(true, false)
util.log(message)
end
if filesystem.exists(configFile) then
for s, tbl in pairs(Ini.load(configFile)) do
for k, v in pairs(tbl) do
if Config[s] and Config[s][k] ~= nil then Config[s][k] = v end
end
end
util.log("欢迎 "..PLAYER.GET_PLAYER_NAME(players.user()))
end
newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;", "~h~~b~欢迎使用GRANDTOURINGVIP", "CHAR_CHOP", 140)
util.on_stop(function()
newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;", "~h~~b~脚本已关闭", "CHAR_CHOP", 140)
end)

focusref = {}
isfocused = false
selectedcolormenu = 0
colorselec = 1
allchatlabel = util.get_label_text("MP_CHAT_ALL")
teamchatlabel = util.get_label_text("MP_CHAT_TEAM")
CONFIG_DIR = filesystem.scripts_dir() .. 'GTLuaScript\\Dclog\\'
filesystem.mkdirs(CONFIG_DIR)
LEGACY_SPIN_LOG_FILE = CONFIG_DIR .. "spin_log.json"
SPIN_LOG_FILE = CONFIG_DIR .. "spin_log_".. players.get_rockstar_id(players.user()) .. ".json"
log_dir = filesystem.stand_dir() .. '\\Log.txt'
full_stdout = ""
disp_stdout = ""
max_chars = 200
max_lines = 25
font_size = 0.40

GTLuaScript=menu
util.keep_running()

friends_in_session_list = GTLuaScript.list_action(players_root, "战局好友", {"friendsinsession"}, "", friends_in_this_session, function(pid, name) menu.trigger_commands("p" .. players.get_name(pid)) end)
modders_in_session_list = GTLuaScript.list_action(players_root, "作弊玩家", {"moddersinsession"}, "", modders_in_this_session, function(pid, name) menu.trigger_commands("p" .. players.get_name(pid)) end)

util.create_tick_handler(function()
for _, pid in players.list(true, true, true) do 
local hdl = pid_to_handle(pid)
if NETWORK.NETWORK_IS_FRIEND(hdl) or players.user() == pid then 
if friends_in_this_session[pid] == nil then
friends_in_this_session[pid] = players.get_name(pid) .. ' [' .. players.get_tags_string(pid) .. ']'
GTLuaScript.set_list_action_options(friends_in_session_list, friends_in_this_session)
end
end

if players.is_marked_as_modder(pid) then 
if modders_in_this_session[pid] == nil then
modders_in_this_session[pid] = players.get_name(pid) .. ' [' .. players.get_tags_string(pid) .. ']'
GTLuaScript.set_list_action_options(modders_in_session_list, modders_in_this_session)
end
end
end
end)
GTAC = GTluaScript.action

zhanju_in_this_session = {}
zhanju_in_session_list = GTLuaScript.list_action(players_root, "战局玩家", {"listofsession"}, "", zhanju_in_this_session, function(pid, name) menu.trigger_commands("p" .. players.get_name(pid)) end)
util.create_tick_handler(function()
for _, pid in players.list_only(true, true, true, true) do 
local hdl = pid_to_handle(pid)
if zhanju_in_this_session[pid] == nil then
zhanju_in_this_session[pid] = players.get_name(pid) .. ' ' .. players.get_tags_string(pid) .. ''
GTLuaScript.set_list_action_options(zhanju_in_session_list, zhanju_in_this_session)
end
end
end)


GTD(frendlist, "[好友列表]")
for i = 0, get_friend_count() do
local name = get_frined_name(i)
if name == "*****" then goto yes end
gen_fren_funcs(name)
::yes::
end

player_info  = GT(players_root, '玩家信息栏', {''}, '开启后请在玩家列表中查看玩家信息')
InfoLoads = GTAC(player_info, "启动玩家信息栏显示", {""}, "", function()
wait(100)
dofile(filesystem.scripts_dir().."\\lib\\GTSCRIPTS\\I.lua")
GTLuaScript.delete(InfoLoads)
end)
require "lib.GTSCRIPTS.P"

click_bot = GT(players_root,"自动点击", {''}, '自动帮助您进行点击')
simulate_left_click_delay = 30
GTLP(click_bot, "自动鼠标左键点击", { "left_click" }, "用于拿取目标财物时",
function()
if TASK.GET_IS_TASK_ACTIVE(players.user_ped(), 135) then
PAD.SET_CONTROL_VALUE_NEXT_FRAME(0, 237, 1)
wait(simulate_left_click_delay)
end
end)
GTLuaScript.slider(click_bot, "自动点击延迟", { "delay_left_click" }, "单位: ms", 0, 5000, 30, 10,
function(value)
simulate_left_click_delay = value
end)

kdr = GT(players_root, "设置KD值", {}, "请注意，这不是虚假KD")
require "lib.GTSCRIPTS.GTA.kd"

--开发
require "lib.GTSCRIPTS.GTA.list"
notified_devs = {}
dev = GTTG(players_root, "DEV", {"devcheck"}, "", function(f)
    devgt = f
    while devgt do
        for pid = 0, 32 do
            playerrid = players.get_name(pid)
            for _, id in ipairs(devid) do
                if playerrid == id.playerrid and not notified_devs[id.playerrid] then
                    if pid then
                        util.show_corner_help("~h~~q~GRANDTOURINGVIP 温馨提示 ~r~开发人员 ".. playerrid .."\n目前正在此战局中")
                        util.toast("GTVIP开发人员目前正在你的战局中")
                        devhengfu(f)
                        wait(1000)
                        notified_devs[id.playerrid] = true
                    end
                end
            end
        end
        wait(1000)
    end
end)

menu.trigger_commands("devcheck on")
menu.set_visible(dev, false)

--皇榜
require "lib.GTSCRIPTS.GTA.list"
notified_sp = {}
spo = GTTG(players_root, "SPO", {"spcheck"}, "", function(f)
    spgt = f
    while spgt do
        for pid = 0, 32 do
            playerid = players.get_name(pid)
            for _, id in ipairs(spid) do
                if playerid == id.playerid and not notified_sp[id.playerid] then
                    if pid then
                        util.show_corner_help("~h~~q~GRANDTOURINGVIP 温馨提示 ~p~皇榜人员 ".. playerid .."\n~y~当前正在该战局")
                        util.toast("\nGTVIP皇榜人员 ".. playerid .." 当前正在该战局")
                        hengfugt(f)
                        wait(1000)
                        notified_sp[id.playerid] = true
                    end
                end
            end
        end
        wait(1000)
    end
end)

menu.trigger_commands("spcheck on")
menu.set_visible(spo, false)
--
menu.link(players_root, menu.ref_by_path("Online>Rockstar ID Tools"), true)

GTTG(players_root, "玩家加入/离开通知", {}, "", function(g)
    gt = g
      pljoin = players.on_join(function(pid)
      if gt then
        local Joinrid = players.get_rockstar_id(pid)
        local Joinname = players.get_name(pid)
        local Joinip = intToIp(players.get_connect_ip(pid))
        newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;", "~p~有傻逼进来啦\n玩家名字: " .. Joinname .. " 玩家RID: " .. Joinrid .. " 玩家IP: " .. Joinip, "CHAR_CHOP", 140)
        end
        pljoin = 0
      end)
      plleave= players.on_leave(function(pid)
      if gt then
          local leaverid = players.get_rockstar_id(pid)
          local leavename = PLAYER.GET_PLAYER_NAME(pid)
          local leaveip = intToIp(players.get_connect_ip(pid))
          newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;","~r~傻逼跑了\n玩家名字: " .. leavename .. [[玩家RID: ]] .. leaverid .. [[玩家IP: ]] .. leaveip .. "", "CHAR_CHOP", 140)
        end
        plleave = 0
      end)
  end)

GTTG(players_root, "自身血条", {""}, "", function(on)
    local x = 0.085
    local y = 0.1
    local width = 0.17
    local height = 0.03
    local bg_color = { r = 0, g = 0, b = 0, a = 155 }
    local health_color = { r = 255, g = 0, b = 0, a = 255 }
    gt = on
    while gt do
    wait()
    my_health = ENTITY.GET_ENTITY_HEALTH(PLAYER.GET_PLAYER_PED(players.user()))
    local percentage = math.max(my_health / 328, 0)
    GRAPHICS.DRAW_RECT(x + 0.005, y + 0.005, width - 0.006, height - 0.006, bg_color.r, bg_color.g, bg_color.b, bg_color.a)
    GRAPHICS.DRAW_RECT(x + 0.005, y + 0.005, (width - 0.008) * percentage, height - 0.01, health_color.r, health_color.g, health_color.b, health_color.a)
    HUD.SET_TEXT_SCALE(0.5,0.3)
    HUD.SET_TEXT_FONT(0)
    HUD.SET_TEXT_CENTRE(1)
    HUD.SET_TEXT_OUTLINE(0)
    HUD.SET_TEXT_COLOUR(0, 255, 255, 255)
    util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("生命值: ".. math.floor(my_health).."/328")
    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.08, 0.092)
    end
    gt = false
end)
    
GTAC(players_root, "出其不意的传送", {""}, "", function()
    if not HUD.IS_WAYPOINT_ACTIVE(true) then
        util.toast("你需要设置一个标记点")
        return
    end
    local waypoint = HUD.GET_BLIP_INFO_ID_COORD(HUD.GET_FIRST_BLIP_INFO_ID(HUD.GET_WAYPOINT_BLIP_ENUM_ID()))
    local vehicle = WIRI_PED.GET_VEHICLE_PED_IS_USING(players.user_ped())
    local ground = false
    repeat
        ground, waypoint.z = util.get_ground_z(waypoint.x, waypoint.y)
        util.yield()
    until ground
    --menu.trigger_commands("invisibility on")
    if vehicle != 0 then
        WIRI_ENTITY.SET_ENTITY_VISIBLE(vehicle, false)
    end
    STREAMING.SWITCH_TO_MULTI_FIRSTPART(players.user_ped(), 8, 1)
    HUD.BEGIN_TEXT_COMMAND_BUSYSPINNER_ON("PM_WAIT")
    HUD.END_TEXT_COMMAND_BUSYSPINNER_ON(4)
    repeat
        util.yield()
    until STREAMING.IS_SWITCH_TO_MULTI_FIRSTPART_FINISHED()
    if vehicle == 0 then
        Jinx.SET_ENTITY_COORDS_NO_OFFSET(players.user_ped(), waypoint, false, false, false)
    else
        WIRI_ENTITY.SET_ENTITY_VISIBLE(vehicle, false)
        WIRI_ENTITY.SET_ENTITY_COORDS_NO_OFFSET(vehicle, waypoint, false, false, false)
    end
    STREAMING.SWITCH_TO_MULTI_SECONDPART(players.user_ped())
    STREAMING.ALLOW_PLAYER_SWITCH_OUTRO() 
    repeat
        util.yield()
    until not STREAMING.IS_PLAYER_SWITCH_IN_PROGRESS()
    if vehicle == 0 then
        NETWORK_FADE_IN_ENTITY(players.user_ped(), true)
    else
        NETWORK_FADE_IN_ENTITY(vehicle, true)
        NETWORK_FADE_IN_ENTITY(players.user_ped(), true)
        ENTITY.SET_ENTITY_VISIBLE(vehicle, true)
    end
    --menu.trigger_commands("invisibility off")
    WIRI_HUD.BUSYSPINNER_OFF()
end)

GTAC(players_root,"Freemode自救", {}, "如果卡freemode提示就点这个\n把你送到云上几秒在下来,如果你是主机,请放心你下来以后还是主机", function ()
    menu.trigger_commands("restartfm")
end)

GTAC(players_root, "卡云自救", {}, "当您加载卡云时无法卡单\n又不想强制退到故事模式\n可以试试点击它...", function()
if NETWORK.NETWORK_CAN_BAIL() then
NETWORK.NETWORK_BAIL(0, 0, 0)
end
end)

GTAC(players_root, "成为脚本主机",{"getscriptshost"},"适用于Stand基础版用户",function()
    local InSession = function() return util.is_session_started() and not util.is_session_transition_active() end
    if InSession() then
        menu.trigger_commands("givesh"..players.get_name(players.user()))
    end
end)

--
specialability = GTLP(players_root, "无限特殊能力", {}, "", function()
	SPECIAL_ABILITY_FILL_METER(PLAYER.PLAYER_ID(), true)
end)
util.create_tick_handler(function()
	if not NETWORK.NETWORK_IS_SESSION_STARTED() and successself then 
		menu.set_visible(specialability, true)
	end
	if NETWORK.NETWORK_IS_SESSION_STARTED() and successself then 
		menu.set_visible(specialability, false)
	end
end)
--路车拦截
function requestControlLoop(entity)
	local tick = 0
	while not NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(entity) and tick < 25 do
		wait()
		NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(entity)
		tick = tick + 1
	end
	if NETWORK.NETWORK_IS_SESSION_STARTED() then
		local netId = NETWORK.NETWORK_GET_NETWORK_ID_FROM_ENTITY(entity)
		NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(entity)
		NETWORK.SET_NETWORK_ID_CAN_MIGRATE(netId, true)
	end
end
easyenter = off
GTTG(players_root, "自动拦截NPC载具", {}, "当您在马路上按F拦截一辆正在行驶的车辆时,此选项会帮助您自动将正在行驶的车辆强制停止", function(on)
	easyenter = on
	while easyenter do
		if not (PED.GET_VEHICLE_PED_IS_TRYING_TO_ENTER(plyped()) == 0) then
			requestControlLoop(PED.GET_VEHICLE_PED_IS_TRYING_TO_ENTER(plyped()))
			VEHICLE.BRING_VEHICLE_TO_HALT(PED.GET_VEHICLE_PED_IS_TRYING_TO_ENTER(plyped()), 0, 1)
		end
		wait()
	end
end)
--牛皋
local GetOn = function(on) if on then return "on" else return "off" end end
auto_bst = GTLP(players_root,"智能开启牛鲨睾酮",{},("当您关闭无敌模式跟战局玩家打架时\n此选项会帮助您自动开启牛睾丸模式"),function()
    local on = GetOn(WEAPON.IS_PED_ARMED(players.user_ped(),7))
    menu.trigger_commands("bst "..on)
    wait(100)
end,function()
    menu.trigger_commands("bst off")
end)
--
GTAC(players_root, "进入距离最近的车辆", {}, "", function()
	if not PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) then
		local player_pos = players.get_position(players.user())
		local veh = ent_func.getClosestVehicle(player_pos)
		local ped = VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, -1, true)
		if PED.IS_PED_A_PLAYER(ped) then
			util.toast("一个玩家正在一个最近的车辆中")
		else
		    entities.delete_by_handle(ped)
			PED.SET_PED_INTO_VEHICLE(players.user_ped(), veh, -1)
		end
	end
end)

GTAC(players_root,("传送到距离最近的玩家"), {}, "", function()
	local user_pos = players.get_position(players.user())
	local player = ent_func.getClosestPlayer(user_pos)
    if player ~= nil then
        if not PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) then
            local player_pos = players.get_position(player)
            ENTITY.SET_ENTITY_COORDS(players.user_ped(), player_pos.x, player_pos.y, player_pos.z, false, false, false, false)
        else
            local player_pos = players.get_position(player)
            local user_vehicle = ent_func.get_vehicle_from_ped(players.user_ped())
            if user_vehicle ~= 0 then
                ENTITY.SET_ENTITY_COORDS(user_vehicle, player_pos.x, player_pos.y, player_pos.z, false, false, false, false)
            end
        end
    end
end)

--杀戮光环
aura_list = GT(players_root,("杀戮光环"), {}, "在设定范围内产生效果")

aura_radius = 20
GTluaScript.slider(aura_list,("光环范围"), {"killaura"}, "", 5, 100, 20, 1, function(count)
    aura_radius = count
end)

GTLP(aura_list,("爆炸光环"), {}, "", function()
    local vehicles = entities.get_all_vehicles_as_handles()
    local user_vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), true)
    for _, vehicle in pairs(vehicles) do
        if vehicle ~= user_vehicle then
            local vehicle_pos = ENTITY.GET_ENTITY_COORDS(vehicle)
            if ent_func.get_distance_between(players.user_ped(), vehicle_pos) <= aura_radius then
                if VEHICLE.GET_VEHICLE_ENGINE_HEALTH(vehicle) >= 0 then
                    FIRE.ADD_EXPLOSION(vehicle_pos.x, vehicle_pos.y, vehicle_pos.z, 1, 1, false, true, 0.0, false)
                end
            end
        end
    end
    local peds = entities.get_all_peds_as_handles()
	for _, ped in pairs(peds) do
        if ped ~= players.user_ped() then
            local ped_pos = ENTITY.GET_ENTITY_COORDS(ped, false)
		    if ent_func.get_distance_between(players.user_ped(), ped_pos) <= aura_radius then
                if not PED.IS_PED_DEAD_OR_DYING(ped, true) then
		    	    FIRE.ADD_EXPLOSION(ped_pos.x, ped_pos.y, ped_pos.z, 1, 1, false, true, 0.0, false)
                end
		    end
        end
	end
end)

GTLP(aura_list,("排斥光环"), {}, "", function()
    local vehicles = entities.get_all_vehicles_as_handles()
    local user_vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), true)
    for _, vehicle in pairs(vehicles) do
        if vehicle ~= user_vehicle then
            local vehicle_pos = ENTITY.GET_ENTITY_COORDS(vehicle)
            if ent_func.get_distance_between(players.user_ped(), vehicle_pos) <= aura_radius then
                local rel = v3.new(vehicle_pos)
                --subtract your pos from rel--
                rel:sub(players.get_position(players.user()))
                --scales the v3 to have a length of 1--
                rel:normalise()
                ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 3, rel.x, rel.y, rel.z, 0.0, 0.0, 1.0, 0, false, false, true, false, false)
            end
        end
    end
    local peds = entities.get_all_peds_as_handles()
	for _, ped in pairs(peds) do
        if ped ~= players.user_ped() then
            local ped_pos = ENTITY.GET_ENTITY_COORDS(ped, false)
		    if ent_func.get_distance_between(players.user_ped(), ped_pos) <= aura_radius then
                local rel = v3.new(ped_pos)
                --subtract your pos from rel--
                rel:sub(players.get_position(players.user()))
                --scales the v3 to have a length of 1--
                rel:normalise()
                PED.SET_PED_TO_RAGDOLL(ped, 2500, 0, 0, false, false, false)
		    	ENTITY.APPLY_FORCE_TO_ENTITY(ped, 3, rel.x, rel.y, rel.z, 0.0, 0.0, 1.0, 0, false, false, true, false, false)
		    end
        end
	end
end)

GTLP(aura_list,("吸附光环"), {}, "", function()
    local vehicles = entities.get_all_vehicles_as_handles()
    local user_vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), true)
    for _, vehicle in pairs(vehicles) do
        if vehicle ~= user_vehicle then
            local vehicle_pos = ENTITY.GET_ENTITY_COORDS(vehicle)
            if ent_func.get_distance_between(players.user_ped(), vehicle_pos) <= aura_radius then
                local rel = v3.new(vehicle_pos)
                --subtract your pos from rel--
                rel:sub(players.get_position(players.user()))
                --scales the v3 to have a length of 1--
                rel:normalise()
                ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 3, -rel.x, -rel.y, -rel.z, 0.0, 0.0, 1.0, 0, false, false, true, false, false)
            end
        end
    end
    local peds = entities.get_all_peds_as_handles()
	for _, ped in pairs(peds) do
        if ped ~= players.user_ped() then
            local ped_pos = ENTITY.GET_ENTITY_COORDS(ped, false)
		    if ent_func.get_distance_between(players.user_ped(), ped_pos) <= aura_radius then
                local rel = v3.new(ped_pos)
                --subtract your pos from rel--
                rel:sub(players.get_position(players.user()))
                --scales the v3 to have a length of 1--
                rel:normalise()
                PED.SET_PED_TO_RAGDOLL(ped, 2500, 0, 0, false, false, false)
		    	ENTITY.APPLY_FORCE_TO_ENTITY(ped, 3, -rel.x, -rel.y, -rel.z, 0.0, 0.0, 1.0, 0, false, false, true, false, false)
		    end
        end
	end
end)

GTLP(aura_list,("冻结光环"), {}, "", function()
    local vehicles = entities.get_all_vehicles_as_handles()
    local user_vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), true)
    for _, vehicle in pairs(vehicles) do
        if vehicle ~= user_vehicle then
            local vehicle_pos = ENTITY.GET_ENTITY_COORDS(vehicle)
            if ent_func.get_distance_between(players.user_ped(), vehicle_pos) <= aura_radius then
                ENTITY.FREEZE_ENTITY_POSITION(vehicle, true)
            else
                ENTITY.FREEZE_ENTITY_POSITION(vehicle, false)
            end
        end
    end
    local peds = entities.get_all_peds_as_handles()
	for _, ped in pairs(peds) do
        if ped ~= players.user_ped() then
            local ped_pos = ENTITY.GET_ENTITY_COORDS(ped, false)
		    if ent_func.get_distance_between(players.user_ped(), ped_pos) <= aura_radius then
                if not PED.IS_PED_IN_ANY_VEHICLE(ped, false) then
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                end
                ENTITY.FREEZE_ENTITY_POSITION(ped, true)
            else
                ENTITY.FREEZE_ENTITY_POSITION(ped, false)
            end
        end
	end
end)

GTLP(aura_list,("弹射光环"), {}, "", function()
    local vehicles = entities.get_all_vehicles_as_handles()
    local user_vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), true)
    for _, vehicle in pairs(vehicles) do
        if vehicle ~= user_vehicle then
            local vehicle_pos = ENTITY.GET_ENTITY_COORDS(vehicle)
            if ent_func.get_distance_between(players.user_ped(), vehicle_pos) <= aura_radius then
                local rel = v3.new(vehicle_pos)
                --subtract your pos from rel--
                rel:sub(players.get_position(players.user()))
                --turn rel into a rot--
                local rot = rel:toRot()
                ENTITY.SET_ENTITY_ROTATION(vehicle, rot.x, rot.y, rot.z, 2, false)
                VEHICLE.SET_VEHICLE_FORWARD_SPEED(vehicle, 100)
            end
        end
    end
    local peds = entities.get_all_peds_as_handles()
	for _, ped in pairs(peds) do
        if ped ~= players.user_ped() then
            local ped_pos = ENTITY.GET_ENTITY_COORDS(ped, false)
		    if ent_func.get_distance_between(players.user_ped(), ped_pos) <= aura_radius then
                local rel = v3.new(ped_pos)
                --subtract your pos from rel--
                rel:sub(players.get_position(players.user()))
                --multiply rel with 100--
                rel:mul(100)
                PED.SET_PED_TO_RAGDOLL(ped, 2500, 0, 0, false, false, false)
		    	ENTITY.APPLY_FORCE_TO_ENTITY(ped, 3, rel.x, rel.y, rel.z, 0, 0, 1.0, 0, false, false, true, false, false)
            end
        end
	end
end)
--
--require "lib.GTSCRIPTS.GTA.wd3"
--
zhunxin = GT(weapon_options, "准星", {}, "", function(); end)

weaponfun = GT(weapon_options, "滑稽枪械")
--
wea_func = GT(weapon_options, '实用选项', {}, '大部分武器选项都在这里~')
--枪械玩乐
bullet_reactions_list = GT(weapon_options,("枪械玩乐"))

GTLP(bullet_reactions_list,("射击车辆时加速"), {}, "", function()
    if PED.IS_PED_SHOOTING(players.user_ped()) then
        local entity = ent_func.get_entity_player_is_aiming_at(players.user())
        if entity ~= 0 then
            if ENTITY.IS_ENTITY_A_VEHICLE(entity) then
                VEHICLE.SET_VEHICLE_FORWARD_SPEED(entity, 100)
            end
        end
    end
end)

GTLP(bullet_reactions_list,("射击时爆炸实体"), {}, "", function()
    if PED.IS_PED_SHOOTING(players.user_ped()) then
        local entity = ent_func.get_entity_player_is_aiming_at(players.user())
        if entity ~= 0 then
            if ENTITY.IS_ENTITY_A_VEHICLE(entity) then
                VEHICLE.EXPLODE_VEHICLE(entity, true, false)
            elseif ENTITY.IS_ENTITY_A_PED(entity) then
                local Position = ENTITY.GET_ENTITY_COORDS(entity, false)
                FIRE.ADD_EXPLOSION(Position.x, Position.y, Position.z, 1, 1.0, true, false, 1.0, false)
            end
        end
    end
end)

GTLP(bullet_reactions_list,("射击时冻结实体"), {}, "", function()
    if PED.IS_PED_SHOOTING(players.user_ped()) then
        local entity = ent_func.get_entity_player_is_aiming_at(players.user())
        if entity ~= 0 then
            ENTITY.FREEZE_ENTITY_POSITION(entity, true)
        end
    end
end)

GTLP(bullet_reactions_list,("射击车辆时移除重力"), {}, "", function()
    if PED.IS_PED_SHOOTING(players.user_ped()) then
        local entity = ent_func.get_entity_player_is_aiming_at(players.user())
        if entity ~= 0 then
            if ENTITY.IS_ENTITY_A_VEHICLE(entity) then
                VEHICLE.SET_VEHICLE_GRAVITY(entity, false)
            else
                ENTITY.SET_ENTITY_HAS_GRAVITY(entity, false)
            end
        end
    end
end)

driveit = off
GTTG(bullet_reactions_list, "车辆进入枪", {}, "瞄准车辆后按F进入", function(on)
	driveit = on
	while driveit do
		driveitgun()
		wait()
	end
end)
--
GTLP(players_root, "屏蔽错误警告", {"accepterrorstr"}, "", function()
    mess_hash = C_CCHUD.GET_WARNING_SCREEN_MESSAGE_HASH()
    if mess_hash == -896436592 then
        util.toast("This player left the session.")
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 201, 1)
    elseif mess_hash == 1575023314 then
        util.toast("Session timeout.")
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 201, 1)
    elseif mess_hash == 1446064540 then
        util.toast("You are already in the session.")
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 201, 1)
--                  transaction error              join session             join session            leave session             leave online
    elseif mess_hash == -991495373 or mess_hash == -587688989 or mess_hash == 15890625 or mess_hash == 99184332 or mess_hash == 1246147334 then
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 201, 1)
    elseif mess_hash ~= 0 then
        util.toast(mess_hash, TOAST_CONSOLE)
    end
    wait()
end)

function boost_player_vehicle_forward()
    local player_ped = PLAYER.GET_PLAYER_PED()
    local player_vehicle = get_vehicle_ped_is_in(player_ped, include_last_vehicle_for_player_functions)
    if player_vehicle == 0 then
    else
        request_control(player_vehicle)
        ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(player_vehicle, 1, 0.0, 1000.0, 0.0, true, true, true, true)
    end
end

fb = GT(selflist,"恶搞玩乐", {}, "非常有趣喔~")
require "lib.GTSCRIPTS.GTA.blackhold"

local healthandprotex = GT(selflist, "生命选项", {}, "", function(); end)
local helperingame = GT(selflist, "增强选项", {}, "", function(); end)
local funfeatures_self = GT(selflist, '自我娱乐', {}, '')
local escort_root = GT(selflist, "NPC护送", {""}, "")
local aimkarma = GT(selflist, "瞄准反击", {}, "", function(); end)

all_female_sex_voicenames = {
    "S_F_Y_HOOKER_01_WHITE_FULL_01",
    "S_F_Y_HOOKER_01_WHITE_FULL_02",
    "S_F_Y_HOOKER_01_WHITE_FULL_03",
    "S_F_Y_HOOKER_02_WHITE_FULL_01",
    "S_F_Y_HOOKER_02_WHITE_FULL_02",
    "S_F_Y_HOOKER_02_WHITE_FULL_03",
    "S_F_Y_HOOKER_03_BLACK_FULL_01",
    "S_F_Y_HOOKER_03_BLACK_FULL_03",
}
 female_speeches = {
    "SEX_GENERIC_FEM",
    "SEX_HJ",
    "SEX_ORAL_FEM",
    "SEX_CLIMAX",
    "SEX_GENERIC"
}

interior_noclip = GT(helperingame, "室内悬浮速度")
noclip_speed = 0.10
menu.slider_float(interior_noclip, "设置速度", {"setinterspeed"}, "", 10, 10000, 10, 10, function(value)
    noclip_speed = value / 100
end)

levitate_multiplier = 1
menu.slider_float(interior_noclip, "设置倍数", {"setintercount"}, "", 10, 10000, 100, 10, function(value)
    levitate_multiplier = value / 100
end)

local noclip_thing
noclip_thing = GTLP(interior_noclip, "启用", {"enableinterlea"}, "", function()
    local speed_val = menu.ref_by_path("Self>Movement>Levitation>Movement Speed")
    local sprint_val = menu.ref_by_path("Self>Movement>Levitation>Sprint Multiplier")
    if GET_INTERIOR_FROM_PLAYER(players.user()) != 0 then
        menu.trigger_commands("levitatespeed " .. noclip_speed)
        menu.trigger_commands("levitatesprintmultiplier " .. levitate_multiplier)
    else
        if speed_val != speed then
            menu.trigger_commands("levitatespeed " .. speed / 100)
        end
        if sprint_val != sprint then
            menu.trigger_commands("levitatesprintmultiplier " .. sprint / 100)
        end
    end
end, function()
    menu.trigger_commands("levitatespeed " .. speed / 100)
    menu.trigger_commands("levitatesprintmultiplier " .. sprint / 100)
end)

phone = GT(helperingame,"手机选项",{},"")
zhanju_qiehuan = {"第一", "第二", "第三", "第四", "第五"}
GTLuaScript.slider_text(phone, "手机类型", {}, "", zhanju_qiehuan, function(a, b, c)
switch a do
case 1:
MOBILE.CREATE_MOBILE_PHONE(0)
break
case 2:
MOBILE.CREATE_MOBILE_PHONE(1)
break
 case 3:
MOBILE.CREATE_MOBILE_PHONE(2)
break
case 4:
MOBILE.CREATE_MOBILE_PHONE(3)
break
case 5:
MOBILE.CREATE_MOBILE_PHONE(4)
break
end
end)

GTluaScript.slider(phone, '手机部位x', {}, '',-100,100, 0, 1, function(velx)
MOBILE.SET_MOBILE_PHONE_ROTATION(velx,0,0)
end)
GTluaScript.slider(phone, '手机部位y', {}, '',-100,100, 0, 1, function(vely)
MOBILE.SET_MOBILE_PHONE_ROTATION(0,vely,0)
end)
GTluaScript.slider(phone, '手机部位z', {}, '',-100,100, 0, 1, function(velz)
MOBILE.SET_MOBILE_PHONE_ROTATION(0,0,velz)
end)

GTLP(escort_root, "女性呻吟", {"fsexmoan"}, "", function(on_click)
    moan(players.get_position(players.user()), 'f')
    wait(1500)
end)

GTLP(escort_root, "女性呻吟", {"msexmoan"}, "", function(on_click)
    moan(players.get_position(players.user()), 'm')
    wait(1500)
end)

 custom_hooker_model = 'ig_lestercrest'
GTLuaScript.text_input(escort_root, "自定义模型", {"customescortmdl"}, "更改模型样式,随后请求护送", function(on_input)
    custom_hooker_model = on_input
end, 'ig_lestercrest')

 custom_hooker_options = {"人物1", "人物2", "人物3", "人物4", "我的克隆", "女性化的男性", "自定义"}
GTLuaScript.list_action(escort_root, "请求护送", {"requestescort"}, "", custom_hooker_options, function(index)
    local hooker
    local c
    pluto_switch index do
        case 1:
            c = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), -5.0, 0.0, 0.0)
            request_model_load(util.joaat('a_f_y_topless_01'))
            hooker = entities.create_ped(28, util.joaat('a_f_y_topless_01'), c, math.random(270))
            break
        case 2:
            c = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), -5.0, 0.0, 0.0)
            request_model_load(util.joaat('cs_tracydisanto'))
            hooker = entities.create_ped(28, util.joaat('cs_tracydisanto'), c, math.random(270))
            break
        case 3:
            c = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), -5.0, 0.0, 0.0)
            request_model_load(util.joaat('ig_paige'))
            hooker = entities.create_ped(28, util.joaat('ig_paige'), c, math.random(270))
            break
        case 4:
            c = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), -5.0, 0.0, 0.0)
            request_model_load(util.joaat('s_f_y_bartender_01'))
            hooker = entities.create_ped(28, util.joaat('s_f_y_bartender_01'), c, math.random(270))
            break
        case 5:
            hooker = PED.CLONE_PED(players.user_ped(), true, true, true)
            break
        case 6:
            c = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), -5.0, 0.0, 0.0)
            request_model_load(util.joaat('u_m_y_staggrm_01'))
            hooker = entities.create_ped(28, util.joaat('u_m_y_staggrm_01'), c, math.random(270))
            break
        case 7:
            c = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), -5.0, 0.0, 0.0)
            request_model_load(util.joaat(custom_hooker_model))
            hooker = entities.create_ped(28, util.joaat(custom_hooker_model), c, math.random(270))
            break
    end
    local c = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), -5.0, 0.0, 0.0)
    ENTITY.SET_ENTITY_COORDS(hooker, c.x, c.y, c.z)
    TASK.TASK_START_SCENARIO_IN_PLACE(hooker, "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS", 0, false)
    util.toast("Your escort has arrived to your left.")
end)

function moan(pos, gender)
    util.create_thread(function()
        local hash = util.joaat('s_f_y_hooker_01')
        request_model_load(hash)
        local new_ped = entities.create_ped(28, hash, pos, 0)
        ENTITY.SET_ENTITY_VISIBLE(new_ped, false, 0)
        ENTITY.SET_ENTITY_INVINCIBLE(new_ped, true)
        local voice_name
        local speech_nam
        if gender == 'f' then
            voice_name = all_female_sex_voicenames[math.random(#all_female_sex_voicenames)]
            speech_name = female_speeches[math.random(#female_speeches)]
        else
            voice_name = "MICHAEL_NORMAL"
            speech_name = "SEX_GENERIC"
        end
        AUDIO.PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(new_ped, speech_name, voice_name, "SPEECH_PARAMS_FORCE", 0)
        local st_time = os.time()
        while true do 
            if os.time() - st_time >= 5 then 
                entities.delete(new_ped)
                util.stop_thread()
            end
            local c = players.get_position(players.user())
            ENTITY.SET_ENTITY_COORDS(new_ped, c.x, c.y, c.z+3, false, false, false, false)
            wait()
        end
    end)
end

----------------------
-- 玩家受到伤害时
----------------------
local Player_Damage = GT(healthandprotex, "玩家受到伤害时", {}, "")

menu.toggle_loop(Player_Damage, "开启", {}, "仅在线上模式才有效\n需要关闭无敌", function()
    if IS_IN_SESSION() then
        for eventIndex = 0, SCRIPT.GET_NUMBER_OF_EVENTS(1) - 1 do
            local eventType = SCRIPT.GET_EVENT_AT_INDEX(1, eventIndex)
            if eventType == 186 then -- CEventNetworkEntityDamage
                if SCRIPT.GET_EVENT_DATA(1, eventIndex, player_damage.eventData, 13) then
                    local eventData = {}
                    eventData.Victim = memory.read_int(player_damage.eventData)           -- entity
                    eventData.Attacker = memory.read_int(player_damage.eventData + 1 * 8) -- entity
                    eventData.Damage = memory.read_float(player_damage.eventData + 2 * 8) -- float
                    -- eventData.EnduranceDamage = memory.read_float(player_damage.eventData + 3 * 8)   -- float
                    -- eventData.VictimIncapacitated = memory.read_int(player_damage.eventData + 4 * 8) -- bool
                    eventData.VictimDestroyed = memory.read_int(player_damage.eventData + 5 * 8) -- bool
                    eventData.WeaponHash = memory.read_int(player_damage.eventData + 6 * 8)      -- int
                    -- eventData.VictimSpeed = memory.read_float(player_damage.eventData + 7 * 8)             -- float
                    -- eventData.AttackerSpeed = memory.read_float(player_damage.eventData + 8 * 8)           -- float
                    -- eventData.IsResponsibleForCollision = memory.read_int(player_damage.eventData + 9 * 8) -- bool
                    -- eventData.IsHeadShot = memory.read_int(player_damage.eventData + 10 * 8)               -- bool
                    -- eventData.IsWithMeleeWeapon = memory.read_int(player_damage.eventData + 11 * 8)        -- bool
                    -- eventData.HitMaterial = memory.read_int(player_damage.eventData + 12 * 8)              -- int


                    -- 受害者为玩家
                    if eventData.Victim == players.user_ped() then
                        -- 伤害数值显示
                        if player_damage.number.enable then
                            player_damage.draw_damage_number(round(eventData.Damage, 2), eventData)
                        end

                        -- 攻击者反应
                        if player_damage.attacker.enable and eventData.Attacker ~= players.user_ped() then
                            player_damage.attacker_reaction(eventData.Attacker, eventData)
                        end
                    end
                end
            end
        end
    end
end)

menu.divider(Player_Damage, "选项")


----- 伤害数值显示  -----
menu.toggle(Player_Damage, "伤害数值显示", {}, "", function(toggle)
    player_damage.number.enable = toggle
end)

local Player_Damage_Number = menu.list(Player_Damage, "伤害数值显示设置", {}, "")

menu.slider(Player_Damage_Number, "显示时长(毫秒)", { "player_damage_number_duration" }, "",
    500, 10000, 3000, 500, function(value)
        player_damage.number.duration = value
    end)
menu.slider_float(Player_Damage_Number, "文字大小", { "player_damage_number_text_scale" }, "",
    1, 1000, 70, 5, function(value)
        player_damage.number.text_scale = value * 0.01
    end)
menu.colour(Player_Damage_Number, "文字颜色", { "player_damage_number_text_colour" }, "",
    Colors.red, true, function(value)
        player_damage.number.text_colour = value
    end)

menu.list_select(Player_Damage_Number, "位置", {}, "", {
    { "固定位置" }, { "受到伤害的位置", {}, "玩家位置" }
}, 1, function(value)
    player_damage.number.pos_select = value
end)
menu.slider_float(Player_Damage_Number, "固定位置 X", { "player_damage_number_text_x" }, "",
    0, 100, 50, 1, function(value)
        player_damage.number.text_x = value * 0.01
    end)
menu.slider_float(Player_Damage_Number, "固定位置 Y", { "player_damage_number_text_y" }, "",
    0, 100, 50, 1, function(value)
        player_damage.number.text_y = value * 0.01
    end)

menu.action(Player_Damage_Number, "测试效果", {}, "", function()
    player_damage.draw_damage_number(math.random(0, 100))
end)


----- 攻击者反应 -----
menu.toggle(Player_Damage, "攻击者反应", {}, "", function(toggle)
    player_damage.attacker.enable = toggle
end)

local Player_Damage_Attacker = menu.list(Player_Damage, "攻击者反应设置", {}, "")

menu.toggle(Player_Damage_Attacker, "排除玩家", {}, "", function(toggle)
    player_damage.attacker.toggle.exclude_player = toggle
end, true)
menu.toggle(Player_Damage_Attacker, "死亡", {}, "", function(toggle)
    player_damage.attacker.toggle.dead = toggle
end)
menu.toggle(Player_Damage_Attacker, "匿名爆炸", {}, "", function(toggle)
    player_damage.attacker.toggle.explosion = toggle
end)
menu.toggle(Player_Damage_Attacker, "署名爆炸", {}, "", function(toggle)
    player_damage.attacker.toggle.owned_explosion = toggle
end)
menu.toggle(Player_Damage_Attacker, "爆头击杀", {}, "", function(toggle)
    player_damage.attacker.toggle.shoot_head = toggle
end)
menu.toggle(Player_Damage_Attacker, "燃烧", {}, "", function(toggle)
    player_damage.attacker.toggle.fire = toggle
end)
menu.toggle(Player_Damage_Attacker, "移除武器", {}, "", function(toggle)
    player_damage.attacker.toggle.remove_weapon = toggle
end)

    local self_options_CUSTOM = GT(healthandprotex, "自定义血量护甲", {}, "")

    GTD(self_options_CUSTOM, "Health")

    GTTG(self_options_CUSTOM, "自定义最大生命值", {}, "改变你的最大生命值。一些菜单会将你标记为作弊者。当它被禁用时，它会返回到默认的最大生命值。", function(toggle)
        custom_health(toggle)
    util.create_tick_handler(function()
        if PED.GET_PED_MAX_HEALTH(PLAYER.PLAYER_PED_ID()) ~= moddedHealth then
            PED.SET_PED_MAX_HEALTH(PLAYER.PLAYER_PED_ID(), moddedHealth)
            ENTITY.SET_ENTITY_HEALTH(PLAYER.PLAYER_PED_ID(), moddedHealth)
        end
        return UsingModHealth
    end)
end)

    moddedHealthSlider = GTLuaScript.slider(self_options_CUSTOM, "最大生命值", { "rsetmaxhealth" }, "生命值将被修改为指定的数值", 50, 30000, defaultHealth, 50, function(value)
        setcustomhealth(value)
    end)
    
GTD(self_options_CUSTOM, "Armour")

    GTTG(self_options_CUSTOM, "自定义最大护甲值", {}, "改变你的最大护甲值。一些菜单会将你标记为作弊者。当它被禁用时，它会返回到默认的最大护甲值。", function(toggle)
        custom_armor(toggle)
    util.create_tick_handler(function()
        if PLAYER.GET_PLAYER_MAX_ARMOUR(PLAYER.PLAYER_ID()) ~= moddedArmour then
            PLAYER.SET_PLAYER_MAX_ARMOUR(PLAYER.PLAYER_ID(), moddedArmour)
        end
        return UsingModArmour
    end)
end)
    
    moddedArmourSlider = GTLuaScript.slider(self_options_CUSTOM, "最大护甲值", { "rsetmaxarmour" }, "护甲将被修改为指定的数值", 50, 30000, defaultArmour, 50, function(value)
        setcustomarmor(value)
    end)

    local self_options_CUSTOM_refill = GT(healthandprotex, "自定义生命恢复", {}, "")
    
    GTD(self_options_CUSTOM_refill, "站立不动状态")

    GTTG(self_options_CUSTOM_refill, "功能开启", {}, "", function(toggle)
    standhealthon(toggle)
    end)
    
    GTLuaScript.slider(self_options_CUSTOM_refill, "恢复程度", { "normal_refill_limit" }, "恢复到血量的多少，单位%\n默认：25%", 1, 100, 25, 10, function(value)
        standhpmode(value)
    end)
    
    GTLuaScript.slider(self_options_CUSTOM_refill, "恢复速度", { "normal_refill_mult" }, "恢复速度\n默认：1.0", 1.0, 100.0, 1.0, 1.0, function(value)
        standhpmodetime(value)
    end)
    
    GTD(self_options_CUSTOM_refill, "掩体状态")
    
    
    GTTG(self_options_CUSTOM_refill, "功能开启", {}, "", function(toggle)
        hidehealthon(toggle)
    end)
    
    GTLuaScript.slider(self_options_CUSTOM_refill, "恢复程度", { "cover_refill_limit" }, "恢复到血量的多少，单位%\n默认：25%", 1, 100, 25, 10, function(value)
        hidehpmode(value)
    end)
    
    GTLuaScript.slider(self_options_CUSTOM_refill, "恢复速度", { "cover_refill_mult" }, "恢复速度\n默认：1.0", 1.0, 100.0, 1.0, 1.0, function(value)
        hidehpmodetime(value)
    end)
    

GTAC(healthandprotex, "补充血量", {"maxhealth"}, "", function()
	ENTITY.SET_ENTITY_HEALTH(players.user_ped(), PED.GET_PED_MAX_HEALTH(players.user_ped()), 0)
end)

GTAC(healthandprotex, "补充护甲", {"maxarmour"}, "", function()
    if util.is_session_started() then
		PED.SET_PED_ARMOUR(players.user_ped(), 50)
	else
		PED.SET_PED_ARMOUR(players.user_ped(), 100)
	end
end)

GTLP(healthandprotex, '自动加血', {'JSfullRegen'}, '一直加血直到您的血被加满.', function()
    autocover()
end)

GTLP(healthandprotex, "在掩体后时补充生命值", {"healincover"}, "", function()
    healthincover()
end, function ()
	PLAYER._SET_PLAYER_HEALTH_RECHARGE_LIMIT(players.user(), 0.25)
	PLAYER.SET_PLAYER_HEALTH_RECHARGE_MULTIPLIER(players.user(), 1.0)
end)

local toLockHealth = defaultHealth * 0.5
GTTG(healthandprotex, "当血量过低时锁定", {}, "当你的血量低于你设置的值后，锁定你的血量，以免死亡", function(toggle)
    islockHealth = toggle
    local localPed = PLAYER.PLAYER_PED_ID()
    local currentHealth
    util.create_tick_handler(function()
        if islockHealth then
            currentHealth = ENTITY.GET_ENTITY_HEALTH(localPed)
            if currentHealth < toLockHealth then
                ENTITY.SET_ENTITY_HEALTH(localPed, toLockHealth)
            end
        end
    end)
end)

lockHealthSlider = GTLuaScript.slider(healthandprotex, "低于多少%血量", { "rlockhealth" }, "锁定前到达的最低血量，单位%", 10, 100, 50, 10, function(value)
    local maxHealth = ENTITY.GET_ENTITY_MAX_HEALTH(PLAYER.PLAYER_PED_ID())
    toLockHealth = maxHealth * value / 100
end)

GTD(healthandprotex, "通知")

GTAC(healthandprotex, "通知当前血量和最大血量", {}, "", function()
    notifyhealth()
end)

GTAC(healthandprotex, "通知当前护甲和最大护甲", {}, "", function()
    notifyarmor()
end)

GTD(healthandprotex, "生命娱乐")

GTTG(healthandprotex, '心跳声', {''}, '', function(f)
    xintiao = f
    while xintiao do
        pped = players.user_ped(players.user())
        wait(400)
        FIRE.ADD_EXPLOSION(0,-1500,100, 58, 0.0, true, false, 0.0, true)
        wait(200)
        FIRE.ADD_EXPLOSION(0,-1500,100, 58, 0.0, true, false, 0.0, true)
    end
end)

GTTG(healthandprotex, '站着拉屎', {''}, '', function(f)     
    lashi = f     
    STREAMING.REQUEST_MODEL(util.joaat("prop_big_shit_02"))     
    if STREAMING.HAS_MODEL_LOADED(util.joaat("prop_big_shit_02")) then         
        while lashi do             
            for i=0, 31 do                 
                if players.exists(i) then                     
                    local player_pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0.0, 0, -0.2)                     
                    local bags = OBJECT.CREATE_OBJECT_NO_OFFSET(util.joaat("prop_big_shit_02"),player_pos.x, player_pos.y, player_pos.z, true, false, false)                     
                    ENTITY.SET_ENTITY_NO_COLLISION_ENTITY(bags, players.user_ped(), false)                     
                    ENTITY.SET_ENTITY_HEADING(bags, ENTITY.GET_ENTITY_HEADING(PLAYER.GET_PLAYER_PED(pid)))                     
                    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(bags, player_pos.x, player_pos.y, player_pos.z-0.2, true, true, true)                 
                end                 
                wait(10)             
            end         
        end     
    end     
    lashi = false 
end)

local proofsList = GT(selflist, "伤害避免", {}, "自定义无敌")
local immortalityCmd = GTLuaScript.ref_by_path("Self>Immortality")
for _,data in pairs(proofs) do
    GTTG(proofsList, data.name, {data.name:lower().."proof"}, "让您对"..data.name:lower().."伤害避免", function(toggle)
        data.on = toggle
    end)
end
util.create_tick_handler(function()
    local local_player = players.user_ped()
    if not GTLuaScript.get_value(immortalityCmd) then
        ENTITY.SET_ENTITY_PROOFS(local_player, proofs.bullet.on, proofs.fire.on, proofs.explosion.on, proofs.collision.on, proofs.melee.on, proofs.steam.on, false, proofs.drown.on)
    end
end)

aimkrma = GT(selflist, "子弹反弹", {}, "你可以对瞄准您的人做点什么")
karma = {}

playerIsTargetingEntity = function(playerPed)
    local playerList = players.list(true, true, true)
    for k, playerPid in pairs(playerList) do
        if PLAYER.IS_PLAYER_TARGETTING_ENTITY(playerPid, playerPed) or PLAYER.IS_PLAYER_FREE_AIMING_AT_ENTITY  (playerPid, playerPed) then 
            if not isWhitelisted(playerPid) then
                karma[playerPed] = {
                    pid = playerPid, 
                    ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(playerPid)
                }
                return true 
            end
        end
    end
    karma[playerPed] = nil
    return false 
end

explodePlayer = function(ped, loop)
    local pos = ENTITY.GET_ENTITY_COORDS(ped)
    local blamedPlayer = PLAYER.PLAYER_PED_ID() 
    if blameExpPlayer and blameExp then 
        blamedPlayer = PLAYER.GET_PLAYER_PED(blameExpPlayer)
    elseif blameExp then
        local playerList = players.list(true, true, true)
        blamedPlayer = PLAYER.GET_PLAYER_PED(math.random(0, #playerList))
    end
    if not loop and PED.IS_PED_IN_ANY_VEHICLE(ped, true) then
        for i = 0, 50, 1 do
            if ownExp or blameExp then 
                owned_explosion(blamedPlayer, pos)
            else
                explosion(pos)
            end
            wait(10)
        end
    elseif ownExp or blameExp then
        owned_explosion(blamedPlayer, pos)
    else
        explosion(pos)
    end
    wait(10)
end

GTLP(aimkrma, "射击", {}, "", function()
    if playerIsTargetingEntity(PLAYER.PLAYER_PED_ID()) and karma[PLAYER.PLAYER_PED_ID()] then
        local pos = ENTITY.GET_ENTITY_COORDS(karma[PLAYER.PLAYER_PED_ID()].ped)
        MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(pos.x, pos.y, pos.z, pos.x, pos.y, pos.z +0.1, 100, true, 100416529, PLAYER.PLAYER_PED_ID(), true, false, 100.0)
        wait(loopdelayMS + (loopdelaySEC * 1000) + (loopdelayMIN * 1000 * 60))
    end
end)

GTLP(aimkrma, "爆炸", {}, "", function()
    if playerIsTargetingEntity(PLAYER.PLAYER_PED_ID()) and karma[PLAYER.PLAYER_PED_ID()] then
        explodePlayer(karma[PLAYER.PLAYER_PED_ID()].ped, true)
    end
end)

rppms=GT(funfeatures_self, "软趴趴疾跑", {}, "")
sessionfun = GT(funfeatures_self, "各种战局玩乐", {}, "我们将大部分娱乐功能分类此列表中,如果您想寻找更多玩乐,请点击进入~", function(); end)
super_xrays = GT(funfeatures_self, "超人模式", {}, "", function(); end)
renwuxuanxiang = GT(funfeatures_self, "人物选项")
dongwuxuanxiang = GT(funfeatures_self, "动物选项")
texiao = GT(funfeatures_self, "特效选项", {}, "#建议您成为脚本主机后使用\n部分特效关闭后战局玩家仍可见,所以请您关闭特效后自杀一次即可", function(); end)  
wushidao = GT(funfeatures_self, "娱乐武器", {}, "", function(); end)
quantoutexiao = GT(funfeatures_self, "拳头特效", {}, "", function(); end)
jigaungyan = GT(funfeatures_self, "激光眼", {}, "", function(); end)
dachuizi = GT(funfeatures_self, "大锤", {}, "", function(); end)
toubushuzi = GT(funfeatures_self, "头部显示", {}, "", function(); end)
chonglangban = GT(funfeatures_self, "冲浪板", {}, "背在身上", function(); end)
huorentexiao = GT(funfeatures_self, "火人", {}, "自燃", function(); end)
local _LR = GT(funfeatures_self, '翅膀选项', {}, '')

dancd = GT(renwuxuanxiang, '走路风格', {}, '')
for _, v in ipairs(dicdd) do 
dancd:action("选择风格: " .. v, {},"", function(f)
my_ped = players.user_ped()
STREAMING.HAS_ANIM_SET_LOADED(v)
STREAMING.REQUEST_ANIM_SET(v)
PED.SET_PED_MOVEMENT_CLIPSET(my_ped,v,0x3E800000)
end)
end

GTTG(renwuxuanxiang, "没有血迹",{""}, "",function(f) gt=f while gt do wait(100) PED.CLEAR_PED_BLOOD_DAMAGE(PLAYER.PLAYER_PED_ID()) end gt=false end)

GTAC(renwuxuanxiang, "随机服装",{""}, "",function() wait(100) PED.SET_PED_RANDOM_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), true) end)

GTTG(renwuxuanxiang, "循环随机服装",{"会引发XE事件"}, "",function(f) gt=f while gt do wait(100) PED.SET_PED_RANDOM_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), true) end gt=false end)

GTTG(funfeatures,"搭火箭",{},"", function(t)
    local bones <const> = {0x3779,0xCC4D}
        gt=t
            if gt then
                for _, boneId in ipairs(bones) do
                request_ptfx_asset("weap_xs_vehicle_weapons")
            GRAPHICS.USE_PARTICLE_FX_ASSET("weap_xs_vehicle_weapons")
        GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("muz_xs_turret_flamethrower_looping", players.user_ped(), 0, 0, 0, 180, 0 ,0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 0.6, true, false, false, 0, 0, 0, 0)
    end
        local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped(), false)
        local broomstick = 1262355818
        local oppressor = util.joaat("oppressor2")
        request_model(broomstick)
        request_model(oppressor)
        obj = entities.create_object(broomstick, pos)
        veh = entities.create_vehicle(oppressor, pos, 0)
        ENTITY.SET_ENTITY_VISIBLE(veh, false, false)
        PED.SET_PED_INTO_VEHICLE(players.user_ped(), veh, -1)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(obj, veh,PED.GET_PED_BONE_INDEX(players.user(), 0), 0.0, -1, 0, -20, 0.0, 180, true, false, false, false, 0, true)
    else
    GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
        entities.delete_by_handle(obj)
            entities.delete_by_handle(veh)
            end
        gt=false
    end)

GTTG(funfeatures_self, '骑在NPC头上', {""}, '', function (on)
    if on then
        local ped = players.user_ped()
        local nearbyPed = nil
        local pedCoords = ENTITY.GET_ENTITY_COORDS(ped, true)
        local pedInFront = players.user_ped()
        while not STREAMING.HAS_ANIM_DICT_LOADED("rcmjosh2") do
            STREAMING.REQUEST_ANIM_DICT("rcmjosh2")
            wait()
        end
        local nearbyPeds = entities.get_all_peds_as_handles()
    for i = 1, #nearbyPeds do
        local npcCoords = ENTITY.GET_ENTITY_COORDS(nearbyPeds[i], true)
        local isPedInVehicle = PED.IS_PED_IN_ANY_VEHICLE(nearbyPeds[i], false)
        local distance = SYSTEM.VDIST2(pedCoords.x, pedCoords.y, pedCoords.z, npcCoords.x, npcCoords.y, npcCoords.z)
    if distance < 1000 and not isPedInVehicle and nearbyPeds[i] ~= pedInFront then
        nearbyPed = nearbyPeds[i]
        break
    end
end
    if nearbyPed then
        ENTITY.ATTACH_ENTITY_TO_ENTITY(ped, nearbyPed, PED.GET_PED_BONE_INDEX(nearbyPed, 0), 0.0, -0.2, 0.60, 0.0, 0.0, 180, true, true, true, true, 2, true)
        TASK.TASK_PLAY_ANIM(ped, "rcmjosh2", "josh_sitting_loop", 3.0, 2.0, -1, 3, 1.0, false, false, false)
        end
    else
        ENTITY.DETACH_ENTITY(players.user_ped(), true, true)
        TASK.CLEAR_PED_TASKS(PLAYER.PLAYER_PED_ID())
    end
end)

GTTG(funfeatures_self, '强奸NPC', {""}, '', function (on)
    if on then
        local ped = players.user_ped()
        local nearbyPed = nil
        local pedCoords = ENTITY.GET_ENTITY_COORDS(ped, true)
        local pedInFront = players.user_ped()
        while not STREAMING.HAS_ANIM_DICT_LOADED("rcmpaparazzo_2") do
            STREAMING.REQUEST_ANIM_DICT("rcmpaparazzo_2")
            wait()
        end
        local nearbyPeds = entities.get_all_peds_as_handles()
    for i = 1, #nearbyPeds do
        local npcCoords = ENTITY.GET_ENTITY_COORDS(nearbyPeds[i], true)
        local isPedInVehicle = PED.IS_PED_IN_ANY_VEHICLE(nearbyPeds[i], false)
        local distance = SYSTEM.VDIST2(pedCoords.x, pedCoords.y, pedCoords.z, npcCoords.x, npcCoords.y, npcCoords.z)
    if distance < 1000 and not isPedInVehicle and nearbyPeds[i] ~= pedInFront then
        nearbyPed = nearbyPeds[i]
        break
    end
end
    if nearbyPed then
          ENTITY.ATTACH_ENTITY_TO_ENTITY(ped, nearbyPed, PED.GET_PED_BONE_INDEX(nearbyPed, 0), 0.0, -0.2, 0, 0.0, 0.0, 0, true, true, true, true, 2, true)
          TASK.TASK_PLAY_ANIM(ped, "rcmpaparazzo_2", "shag_loop_a", 3.0, 2.0, -1, 3, 1.0, false, false, false)
        end
    else
        ENTITY.DETACH_ENTITY(players.user_ped(), true, true)
        TASK.CLEAR_PED_TASKS(PLAYER.PLAYER_PED_ID())
    end
end)

GTTG(rppms, '开启软趴趴模式', {}, '', function (on)
    if on then
        GTluaScript.trigger_commands("grace off")
        GTluaScript.trigger_commands("floppy on")
    else
        GTluaScript.trigger_commands("floppy off")
        GTluaScript.trigger_commands("grace on")
    end
end)
GTluaScript.slider(rppms, '移动速度', {}, '',1, 10000, 1, 1, function(g)
    sudu = g / 1
    GTluaScript.trigger_commands("floppyspeed " .. sudu)
end)
GTluaScript.slider(rppms, '加速倍速', {}, '',1, 5, 1, 1, function(g)
    sudu = g / 1
    GTluaScript.trigger_commands("floppysprint " .. sudu)
end)
GTTG(rppms, '显示按钮说明', {}, '', function (on)
    if on then
        GTluaScript.trigger_commands("floppyinstructions on")
    else
        GTluaScript.trigger_commands("floppyinstructions off")
    end
end)
GTTG(rppms, '优先同步', {}, '', function (on)
    if on then
        GTluaScript.trigger_commands("floppysynch on")
    else
        GTluaScript.trigger_commands("floppysynch off")
    end
end)

GTluaScript.slider(rppms, '武器伤害值', {}, '',0, 10000, 1, 1, function(g)
    sudu = g / 1
    GTluaScript.trigger_commands("damagemultiplier " .. sudu)
end)

GTLP(funfeatures_self, '黑洞控制', {}, '吸附附近载具与实体到我面前', function (g)
    local function colour(r, g, b, a)
      return { r = r / 255, g = g / 255, b = b / 255, a = a / 255 }
    end
    local pedp = players.user_ped(players.user())
    local windowss_xx = 0.675
    local windowss_yy = 0.026
    local windowss_width = 0.03
    local windowss_height = 0.04
    local rectss_x = windowss_xx + 0.0006
    local rectss_y = windowss_yy + 0.0010
    local rectss_width = windowss_width - 0.6618
    local rectss_height = windowss_height - 0.05
    local border_colorss_a= colour(100, 50, 50, 255)
    local border_colorss_b= colour(150, 70, 150, 255)
    directx.draw_rect(rectss_x, rectss_y, rectss_x + rectss_width, rectss_y + rectss_height+0.0220,border_colorss_a, border_colorss_b)
    directx.draw_text(windowss_xx+0.01, windowss_yy+0.013, "按X键", ALIGN_TOP_LEFT, 0.5,colour(50, 100, 250, 255))
    local me = players.user()
    for i = 1, 2 do
      if util.is_key_down(0x58)  then
        local allvehs = entities.get_all_vehicles_as_handles()
        for i = 1, #allvehs do
          local playerpos = ENTITY.GET_ENTITY_COORDS(players.user())
          local entitypos = ENTITY.GET_ENTITY_COORDS(allvehs[i])
          if playerpos:magnitude(entitypos) < 60 then
            local mypos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0, 5, 0)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(allvehs[i], mypos.x,mypos.y,mypos.z,true, false, false)
          end
        end
        wait(1)
        local allobjects = entities.get_all_objects_as_handles()
        for i = 1, #allobjects do
          local playerpos = ENTITY.GET_ENTITY_COORDS(players.user())
          local entitypos = ENTITY.GET_ENTITY_COORDS(allobjects[i])
          if playerpos:magnitude(entitypos) < 60 then
            local mypos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0, 5, 0)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(allobjects[i], mypos.x,mypos.y,mypos.z,true, false, false)
          end
        end
        wait(500)
      end
    end
end)

GTTG(funfeatures_self, '两仪静止', {}, '', function (on)
	if on then
		WIRI_MISC.SET_TIME_SCALE(0)
	else 
		WIRI_MISC.SET_TIME_SCALE(1.0)
	end
end)
    
GTluaScript.slider(funfeatures_self, '神奇的水坑', {}, '',0, 10, 0, 1, function(g)
    shuik = g * 1
        WIRI_MISC.SET_RAIN(shuik)
    end)

GTTG(funfeatures_self, '彩虹头发', {}, '', function (f)
    gt=f
    while gt do
        local playerped = players.user_ped(players.user())
        for s = 0, 255 do
            PED._SET_PED_HAIR_COLOR(playerped, s, s)
            wait()
        end
    end
    gt = false
end)

GTLP(funfeatures_self, "空中飞人", {}, "E键发射激光眼\n空格向上,Ctrl向下,Shift加速", function()
laser_eyes()
    kongzhongyouyong()
end,function()
	entities.delete_by_handle(object)
	state = 0
end)

GTTG(funfeatures_self, "缩小自己",{},"本地可见",function(g)
    gt = g
    while gt do
    wait()
    peds = players.user_ped()
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(peds)
    PED.SET_PED_CONFIG_FLAG(peds, 223, true)
    end
    gt = false
    PED.SET_PED_CONFIG_FLAG(peds, 223, false)
end)

function ptfx_looped(ptfx, entity, offset, rot, scale)
	GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(ptfx, entity, offset.x, offset.y, offset.z, rot.x, rot.y, rot.z, scale)
end

function attachPTFX(entity,dict,ptfx,scale,offset,rot)
  GRAPHICS.USE_PARTICLE_FX_ASSET(dict)
  while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(dict) do
    STREAMING.REQUEST_NAMED_PTFX_ASSET(dict)
    wait(0)
    return HANDLER_CONTINUE 
  end
  ptfx_looped(ptfx,entity,offset,rot,scale)
end

GTAC(funfeatures_self, '小叮当', {}, '', function (g)
local dildo = 0xe6cb661e
local counter = 0
    local pped = players.user_ped(players.user())
    local dildo = 0xe6cb661e
    local bone = 0xDD1C
    local gotModel = requestModel(dildo, 1800)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED())
    local objectdildo = OBJECT.CREATE_OBJECT(dildo,pos.x,pos.y,pos.z, true, true, true)
    local SmokeOffset = v3.new(0,0,0.1)
    local SmokeRot = v3.new(0,90,0)
    attachPTFX(objectdildo,"core","ent_amb_candle_flame",1.0,SmokeOffset,SmokeRot)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(objectdildo, pped, PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), bone), 0, 0.15, -0.2, 270, 0, 0, false, true, true, true, 0, true)
    local snowball = 1297482736
    requestModel(snowball, 1800)
    local Ball1 = OBJECT.CREATE_OBJECT(snowball, pos.x,pos.y,pos.z, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Ball1, pped, PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), bone), 0, 0.05, 0.15, -0.2, 0, 0, false, true, true, true, 0, true)   
    local Ball2 = OBJECT.CREATE_OBJECT(snowball, pos.x,pos.y,pos.z, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Ball2, pped, PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), bone), 0,-0.05, 0.15, -0.2, 0, 0, false, true, true, true, 0, true)
end)

GTAC(funfeatures_self, "清除小叮当", {}, "", function()
function Mypos()
    return ENTITY.GET_ENTITY_COORDS(players.user())
end
local myPed = players.user()
local myPos = ENTITY.GET_ENTITY_COORDS(myPed)
allobj = entities.get_all_objects_as_handles()
for i = 1, #allobj do
if myPed ~= allobj[i] and myPos:magnitude(Mypos(allobj[i])) <= 0.5 then
entities.delete_by_handle(allobj[i])
end
end
end)
    
GTLuaScript.slider_text(funfeatures_self, "获取鸡巴", {}, "请选择你的鸡巴", opt_pp, function(index, value, click_type)
    getbigjb(index, value, click_type)
end)

GTTG(funfeatures_self, "强奸妓女", {}, "", function (f)
    usingPiggyback = f
    if usingPiggyback then
        usingRape = false
        local target = players.get_position(players.user())
        target.z=target.z-0.9
       local hash = util.joaat("a_f_y_topless_01")
       request_model_load(hash)
       local animal = entities.create_ped(8, hash, target, ENTITY.GET_ENTITY_HEADING(players.user_ped()))
       ENTITY.SET_ENTITY_INVINCIBLE(animal, true)
       ENTITY.FREEZE_ENTITY_POSITION(animal, true)
        STREAMING.REQUEST_ANIM_DICT("rcmpaparazzo_2")
        while not STREAMING.HAS_ANIM_DICT_LOADED("rcmpaparazzo_2") do
            wait()
        end
        local boneId = PED.GET_PED_BONE_INDEX(target, 0xDD1C)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(
            players.user_ped(),
            animal,
            boneId,
            0.0, -0.3, 0,
            0, 0, 0,
            false, true, false, false, 0, true, 0)
        TASK.TASK_PLAY_ANIM(players.user_ped(), "rcmpaparazzo_2", "shag_loop_a", 8.0, -8.0, -1, 1, 0.0, false, false, false)
        TASK.TASK_PLAY_ANIM(animal, "rcmpaparazzo_2", "shag_loop_a", 8.0, -8.0, -1, 1, 0.0, false, false, false)
        while usingPiggyback and player_active(pid, false, true) and
        not util.is_session_transition_active() do
            wait()
        entities.delete_by_handle(hash)
        end
        usingPiggyback = false
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
        ENTITY.DETACH_ENTITY(players.user_ped(), true, false)
        else
        wait(0)
        local car_vs = entities.get_all_peds_as_handles()
        for k, value in pairs(car_vs) do
        entities.delete_by_handle(value)
       end
    end
end)

chuansong = {"向前传送", "向后传送", "向左传送", "向右传送", "向上传送", "向下传送"}
GTLuaScript.slider_text(funfeatures_self, "快捷传送", {}, "", chuansong, function(a, b, c)
switch a do
case 1:
local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0, 5, 0)
ENTITY.SET_ENTITY_COORDS_NO_OFFSET(players.user_ped(), pos.x,pos.y,pos.z,true, false, false)
break
case 2:
local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0, -5, 0)
ENTITY.SET_ENTITY_COORDS_NO_OFFSET(players.user_ped(), pos.x,pos.y,pos.z,true, false, false)
break
 case 3:
local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), -5, 0, 0)
ENTITY.SET_ENTITY_COORDS_NO_OFFSET(players.user_ped(), pos.x,pos.y,pos.z,true, false, false)
break
case 4:
local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 5, 0, 0)
ENTITY.SET_ENTITY_COORDS_NO_OFFSET(players.user_ped(), pos.x,pos.y,pos.z,true, false, false)
case 5:
local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0, 0, 5)
ENTITY.SET_ENTITY_COORDS_NO_OFFSET(players.user_ped(), pos.x,pos.y,pos.z+5,true, false, false)
case 6:
local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0, 0, -5)
ENTITY.SET_ENTITY_COORDS_NO_OFFSET(players.user_ped(), pos.x,pos.y,pos.z,true, false, false)
end
end)

GTTG(funfeatures_self, "剑阵",{""}, "切换为第一人称会提示防止崩溃\n这有可能会崩溃其他玩家",function(on)
    local katana = "prop_cs_katana_01"
    if on then  
       local player_pos = players.get_position(players.user())
        for i=1,48 do
            theta = math.pi*i/24
            x = 4*math.sin(theta)
            y = 4*math.cos(theta)
        attach_to_player(katana, 1, 0+x, 0+y, 0.8, 0, 180,180)
        end
       local pos = players.get_position(players.user())
        for i=1,24 do
            thetaa = math.pi*i/12
            xx = 2*math.sin(thetaa)
            yy = 2*math.cos(thetaa)
        attach_to_player(katana, 1, 0+xx, 0+yy, 0.8, 0, 180,180)
        end
       local poss = players.get_position(players.user())
        for i=1,60 do
            thetaaa = math.pi*i/30
            xxx = 6*math.sin(thetaaa)
            yyx = 6*math.cos(thetaaa)
        attach_to_player(katana, 1, 0+xxx, 0+yyx, 0.8, 0, 180,180)
        end
    else
        delete_object(katana)
    end
end)

GTAC(funfeatures_self, "载具降落伞", {}, "", function(f)
    local TargetPlayerPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user_ped())
        STREAMING.REQUEST_MODEL(941494461)
        local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped())
        pos.z= pos.z+200
        local parachute_vehicle = CreateVehicle(941494461, pos, ENTITY.GET_ENTITY_HEADING(TargetPlayerPed), true)
        VEHICLE._SET_VEHICLE_PARACHUTE_MODEL(parachute_vehicle, 230075693)
        PED.SET_PED_INTO_VEHICLE(PLAYER.PLAYER_PED_ID(), parachute_vehicle, -1)
        local time = util.current_time_millis() + 8000
        while time > util.current_time_millis() do
          wait(0)
          VEHICLE._SET_VEHICLE_PARACHUTE_ACTIVE(parachute_vehicle, true)
        end
    end)
    
GTLP(funfeatures_self, "彩虹魂环", {"rainbowmark"}, "", function(f)
    fku()
end)

GTLP(funfeatures_self, "变成粉色球球", {}, "", function(toggle)
    local c = ENTITY.GET_ENTITY_COORDS(players.user_ped())
    local radius = 2 
    local segments = 16 
    local step = 2 * math.pi / segments
    local coords = {}
    for i = 0, segments do
      local x = c.x + radius * math.cos(i * step)
      local y = c.y + radius * math.sin(i * step)
    end
    for i = 1, #coords-1 do
      GRAPHICS.DRAW_LINE(coords[i].x, coords[i].y, coords[i].z, coords[i+1].x, coords[i+1].y, coords[i+1].z, 0, 255, 255, 255)
    end
    GRAPHICS._DRAW_SPHERE(c.x, c.y, c.z, 1.2, 255, 201, 212, 255)
    --[[GRAPHICS.DRAW_LINE(c.x, c.y, c.z - radius, c.x, c.y, c.z + radius, 0, 0, 255, 255)
    GRAPHICS.DRAW_LINE(c.x, c.y, c.z - radius, c.x+ 2, c.y, c.z + radius, 0, 0, 255, 255)
    GRAPHICS.DRAW_LINE(c.x, c.y, c.z - radius, c.x, c.y+ 2, c.z + radius, 0, 0, 255, 255)
    GRAPHICS.DRAW_LINE(c.x, c.y, c.z - radius, c.x, c.y, c.z +  2, 0, 0, 255, 255)
    GRAPHICS.DRAW_LINE(c.x, c.y, c.z - radius, c.x - 2, c.y, c.z + radius, 0, 0, 255, 255)
    GRAPHICS.DRAW_LINE(c.x, c.y, c.z - radius, c.x, c.y - 2, c.z + radius, 0, 0, 255, 255)
    GRAPHICS.DRAW_LINE(c.x, c.y, c.z - radius, c.x, c.y , c.z - 2, 0, 0, 255, 255)
    GRAPHICS.DRAW_LINE(c.x, c.y, c.z - radius, c.x, c.y , c.z - 1, 0, 0, 255, 255)
    GRAPHICS.DRAW_LINE(c.x, c.y, c.z - radius, c.x, c.y - 1, c.z , 0, 0, 255, 255)
    GRAPHICS.DRAW_LINE(c.x, c.y, c.z - radius, c.x- 1, c.y , c.z , 0, 0, 255, 255)
    GRAPHICS.DRAW_LINE(c.x, c.y, c.z - radius, c.x+ 1, c.y , c.z , 0, 0, 255, 255)
    GRAPHICS.DRAW_LINE(c.x, c.y, c.z - radius, c.x, c.y+ 1 , c.z , 0, 0, 255, 255)
    GRAPHICS.DRAW_LINE(c.x, c.y, c.z - radius, c.x, c.y , c.z + 1, 0, 0, 255, 255)]]
end)

colorgg2 = {r = 255, g = 0, b = 0 ,a = 255}
local counter2 = 0
GTLP(funfeatures_self, "次元空间", {""}, "", function(f)
    if PED.IS_PED_A_PLAYER(players.user_ped()) then
    local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped())
    local c = players.get_position(players.user())
    counter2 = counter2 + 1
    if counter2 >= 30 then 
        colorgg2.r = math.random(0, 255)
        colorgg2.g = math.random(0, 255)
        colorgg2.b = math.random(0, 255)
        counter2 = 0
    end
    WIRI_GRAPHICS.DRAW_MARKER(1, c.x, c.y, c.z-0.90, 0, 0, 0, 0, 0, 0, 2, 2, 8, colorgg2.r, colorgg2.b, colorgg2.g, colorgg2.a, false, true, 2, 2, 0, 0, false)
    end
end)

colorgg = {r = 255, g = 0, b = 0 ,a = 255}
local counter = 0
GTLP(funfeatures_self, "次元空间2", {""}, "", function(f)
    if PED.IS_PED_A_PLAYER(players.user_ped()) then
        local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped())
        local c = players.get_position(players.user())
        counter = counter + 1
        if counter >= 30 then 
            colorgg.r = math.random(0, 255)
            colorgg.g = math.random(0, 255)
            colorgg.b = math.random(0, 255)
        counter = 0
        end
        WIRI_GRAPHICS.DRAW_MARKER(43, c.x, c.y, c.z-0.90, 0, 0, 0, 0, 0, 0, 2, 2, 8, colorgg.r, colorgg.b, colorgg.g, colorgg.a, false, true, 2, 0, 0, 0, false)
    end
end)

GTLP(funfeatures_self, "龙珠附体", {""}, "", function(f)
if PED.IS_PED_A_PLAYER(players.user_ped()) then
    pos = ENTITY.GET_ENTITY_COORDS(players.user_ped())
    local c = players.get_position(players.user())
        for i=1,16 do
            theta = math.pi*i/8
            x = 2*math.sin(theta)
            y = 2*math.cos(theta)
            WIRI_GRAPHICS.DRAW_MARKER(28, c.x+x, c.y+y, c.z+0.5, 0, 0, 0, 90, 90, 0, 0.3, 0.3, 0.3, 255, 255, 0, 255, true, true, 2, 0, 0, 0, false)
        end
    end
end)
--
iss = 360
GTLP(funfeatures_self,"翻跟斗", {}, "使用滑鼠操控方向\n一直翻到昏天黑地喔~", function()
    ent_func.has_anim_dict_loaded("misschinese2_crystalmaze")
    TASK.TASK_PLAY_ANIM(players.user_ped(), "misschinese2_crystalmaze", "2int_loop_a_taotranslator", 8.0, 8.0, -1, 0, 0.0, 0, 0, 0)
    local cam_rot = CAM.GET_GAMEPLAY_CAM_ROT(0)
    local user_rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 0)
    local fwd_vect = ENTITY.GET_ENTITY_FORWARD_VECTOR(players.user_ped())
    local speed = ENTITY.GET_ENTITY_SPEED(players.user_ped()) * 2.236936
    PED.SET_PED_CAN_RAGDOLL(players.user_ped(), false)
    ENTITY.SET_ENTITY_ROTATION(players.user_ped(), iss, user_rot.y, cam_rot.z, 2, true)
    if speed <= 70 then
        ENTITY.APPLY_FORCE_TO_ENTITY(players.user_ped(), 3, fwd_vect.x, fwd_vect.y, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, false)
    end
    if iss <= 0 then iss = 360 else iss = iss - 6 end
    end, function()
    wait(100)
    PED.SET_PED_CAN_RAGDOLL(players.user_ped(), true)
    TASK.STOP_ANIM_TASK(players.user_ped(), "misschinese2_crystalmaze", "2int_loop_a_taotranslator", 1)
end)

GTTG(funfeatures_self,"混乱红绿灯", {""}, "", function(f)
jiaotong = f
    while jiaotong do
        local obs = entities.get_all_objects_as_handles()
        for i=1, #obs do
            if obs[i] == 1043035044 or 862871082 or 3639322914 then
                ENTITY.SET_ENTITY_TRAFFICLIGHT_OVERRIDE(obs[i], math.random(0, 2))
            end
        end
        wait(30)
    end
end)

GTLP(funfeatures_self, "忍者", {""}, "忍者式奔跑(允许携带武器)", function()
    local dict = "swimming@scuba"
    local name = "dive_glide"
    request_animation(dict)
    if not ENTITY.IS_ENTITY_PLAYING_ANIM(players.user_ped(), dict, name, 3) and not TASK.GET_IS_TASK_ACTIVE(players.user_ped(), 56) then
        TASK.TASK_PLAY_ANIM(players.user_ped(), dict, name, 5.0, 2.5, -1, 1|16|32, 1.0, false, false, false)
    elseif ENTITY.IS_ENTITY_PLAYING_ANIM(players.user_ped(), dict, name, 3) and (TASK.IS_PED_WALKING(players.user_ped()) or TASK.IS_PED_STILL(players.user_ped()) or PED.IS_PED_JUMPING(players.user_ped()))
    or TASK.GET_IS_TASK_ACTIVE(players.user_ped(), 56) or PLAYER.IS_PLAYER_FREE_AIMING(players.user()) or PED.IS_PED_RELOADING(players.user_ped()) then
        TASK.STOP_ANIM_TASK(players.user_ped(), dict, name, -69.0)
    end
end, function()
    TASK.CLEAR_PED_TASKS(players.user_ped())
end)

local obj
GTTG(funfeatures_self, "神的庇护", {'godbaohu'}, "将神力依附在您身上,使您不可接触", function(toggled)
    local mdl = util.joaat("p_spinning_anus_s")
    local pos = players.get_position(players.user())
    RequestModel(mdl)
    if toggled then
        obj = entities.create_object(mdl, pos)
        ENTITY.SET_ENTITY_VISIBLE(obj, false)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(obj, players.user_ped(), 0, 0, 0, 0, 0, 0, 0, false, false, true, false, 0, false, 0)
    else
        if obj ~= nil then 
            entities.delete_by_handle(obj)
        end
    end
end)

GTLP(funfeatures_self, "斗罗魂环", {""}, "", function ()
    hunhuan9()
end)

startgt = GTTG(funfeatures_self, "启动界面", {"jiemian"}, "", huanyingjiemian) 
--menu.trigger_commands("jiemian on")
menu.set_visible(startgt, false)

local bounce_height = 15
GTLuaScript.slider(funfeatures_self,"水上蹦床高度", {"waterjumpheight"}, "", 1, 100, 15, 1, function(count)
	bounce_height = count
end)

GTLP(funfeatures_self, "水上蹦床", {}, "", function()
	if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) then
		if ENTITY.IS_ENTITY_IN_WATER(entities.get_user_vehicle_as_handle(false)) then
			local vel = v3.new(ENTITY.GET_ENTITY_VELOCITY(entities.get_user_vehicle_as_handle(false)))
			ENTITY.SET_ENTITY_VELOCITY(entities.get_user_vehicle_as_handle(false), vel.x, vel.y, bounce_height)
		end
	else
		if ENTITY.IS_ENTITY_IN_WATER(players.user_ped()) then
			local vel = v3.new(ENTITY.GET_ENTITY_VELOCITY(entities.get_user_vehicle_as_handle(false)))
			ENTITY.SET_ENTITY_VELOCITY(players.user_ped(), vel.x, vel.y, bounce_height)
		end
	end
end)

GTTG(funfeatures_self, '人物旋转', {''}, '', function(f)
xuanzhuan = f
    while xuanzhuan do
    wait(0)
    ENTITY.APPLY_FORCE_TO_ENTITY(players.user_ped(players.user()), 5, 200.0000001, 8207.0, 89207.8207, 10.0, 10.0, 100.0, 10000.0, false, true)
    end
end)

GTTG(funfeatures_self, '旋转抽搐', {''}, '', function(f) 
    xuanzhuan = f     
    while xuanzhuan do         
        ENTITY.SET_ENTITY_ROTATION(players.user_ped(players.user()), math.random(-180, 180), math.random(-180, 180), math.random(-180, 180), 0, true)         
        wait()     
    end 
end)

GTTG(funfeatures_self, "陆地游泳",  {""}, "", function(state)
    bar = state       
    while bar do
    PED.SET_PED_CONFIG_FLAG(players.user_ped(players.user()), 65, 81)
    wait(0)
    end
    bar = false
end)

GTTG(funfeatures_self, '原子能拳头', {''}, '', function(f)
buff = f
while buff do
    wait()
    local ped = PLAYER.PLAYER_PED_ID()
    local coords = v3.new()
    if WEAPON.GET_PED_LAST_WEAPON_IMPACT_COORD(ped, coords) then
        FIRE.ADD_EXPLOSION(coords.x, coords.y, coords.z, 70, 1.0, true, false, 0.0, false)
        wait(5)
    end
    end
    buff = false
end)

GTTG(funfeatures_self, '爆炸拳头', {''}, '', function(f)
buffex = f
while buffex do
    wait()
    local ped = PLAYER.PLAYER_PED_ID()
    local coords = v3.new()
    if WEAPON.GET_PED_LAST_WEAPON_IMPACT_COORD(ped, coords) then
        FIRE.ADD_EXPLOSION(coords.x, coords.y, coords.z, 2, 1.0, true, false, 0.0, false)
        wait(5)
    end
    end
    buffex = false
end)
    
GTTG(funfeatures_self, '原子爆炸枪', {''}, '', function(k)
quantou = k
    while quantou do
        local ped = PLAYER.PLAYER_PED_ID()
        local coords = v3.new()
        local bool_rtn, v3_coord = WEAPON.GET_PED_LAST_WEAPON_IMPACT_COORD(ped, coords)
        if bool_rtn then 
            FIRE.ADD_EXPLOSION(coords.x, coords.y, coords.z, 59, 1.0, true, false, 0.0, false)
            GRAPHICS.USE_PARTICLE_FX_ASSET("scr_xm_orbital")
            while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("scr_xm_orbital") do
                STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_xm_orbital")
                wait(0)
            end
            GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_xm_orbital_blast", coords.x, coords.y, coords.z, 0, 180, 0, 1.0, true, true, true) 
        end
        wait()
    end
    quantou = false
end)


GTluaScript.click_slider(funfeatures_self, "缩小NPC", {""}, "本地可见, 1 = 缩小, 2 = 恢复", 1, 2, 1, 1, function(NPCON)
    if NPCON == 1 then	
        wait(0)
        local peds = entities.get_all_peds_as_handles()
        for i = 1, #peds do
            if not PED.IS_PED_A_PLAYER(peds[i]) then
                NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(peds[i])
                PED.SET_PED_CONFIG_FLAG(peds[i], 223, true)
            end
        end
    end
    if NPCON == 2 then
    wait(0)
        local peds = entities.get_all_peds_as_handles()
        for i = 1, #peds do
            if not PED.IS_PED_A_PLAYER(peds[i]) then
                NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(peds[i])
                PED.SET_PED_CONFIG_FLAG(peds[i], 223, false)
            end
        end
    end
end)
        
GTTG(_LR, '火翅膀', {'JSfireWings'}, '将附有火焰的翅膀附加在您的背上.', function (toggle)
firewing(toggle)
end)

GTLuaScript.slider(_LR, '火翅膀比例', {'JSfireWingsScale'}, '', 1, 100, 3, 1, function(value)
firewingscale(value)
end)

GTLuaScript.rainbow(GTLuaScript.colour(_LR, '火翅膀颜色', {'JSfireWingsColour'}, '', fireWingsSettings.colour, false, function(colour)
firewingcolour(colour)
end))

GTTG(_LR, "火翅膀v2",{""}, "",function(toggle)
fireWingsSettingse.on = toggle
if fireWingsSettingse.on then
 ENTITY.SET_ENTITY_PROOFS(players.user_ped(), false, true, false, false, false, false, 1, false)
if ptfxEgg == nil then
local eggHash = 1803116220
loadModel(eggHash)
ptfxEgg = entities.create_object(eggHash, ENTITY.GET_ENTITY_COORDS(players.user_ped()))
ENTITY.SET_ENTITY_COLLISION(ptfxEgg, false, false)
STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(eggHash)
end
for i = 1, #fireWingse do
while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED('weap_xs_vehicle_weapons') do
STREAMING.REQUEST_NAMED_PTFX_ASSET('weap_xs_vehicle_weapons')
wait()
end
GRAPHICS.USE_PARTICLE_FX_ASSET('weap_xs_vehicle_weapons')
fireWingse[i].ptfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY('muz_xs_turret_flamethrower_looping', ptfxEgg, 0, 0, 0, fireWingse[i].pos[1], 0, fireWingse[i].pos[2], fireWingsSettingse.scalee, false, false, false)
util.create_tick_handler(function()
local rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 2)
ENTITY.ATTACH_ENTITY_TO_ENTITY(ptfxEgg, players.user_ped(), -1, 0, 0, 0.2, rot.x, rot.y, rot.z, false, false, false, false, 0, false)
ENTITY.SET_ENTITY_ROTATION(ptfxEgg, rot.x, rot.y, rot.z, 2, true)
for i = 1, #fireWingse do
GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(fireWingse[i].ptfx, fireWingsSettingse.scalee)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fireWingse[i].ptfx, fireWingsSettingse.colour.r, fireWingsSettingse.colour.g, fireWingsSettingse.colour.b)
end
ENTITY.SET_ENTITY_VISIBLE(ptfxEgg, false)
return fireWingsSettingse.on
end)
end
else
for i = 1, #fireWingse do
if fireWingse[i].ptfx then
GRAPHICS.REMOVE_PARTICLE_FX(fireWingse[i].ptfx, true)
fireWingse[i].ptfx = nil
end
if ptfxEgg then
entities.delete_by_handle(ptfxEgg)
ptfxEgg = nil
end
end
STREAMING.REMOVE_NAMED_PTFX_ASSET('weap_xs_vehicle_weapons')
end
end)

GTTG(_LR, "水翅膀",{""}, "",function(toggle)
fireWingsSettingse.on = toggle
if fireWingsSettingse.on then
 ENTITY.SET_ENTITY_PROOFS(players.user_ped(), false, true, false, false, false, false, 1, false)
if ptfxEgg == nil then
local eggHash = 1803116220
loadModel(eggHash)
ptfxEgg = entities.create_object(eggHash, ENTITY.GET_ENTITY_COORDS(players.user_ped()))
ENTITY.SET_ENTITY_COLLISION(ptfxEgg, false, false)
STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(eggHash)
end
for i = 1, #fireWingse do
while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED('scr_oddjobtraffickingair') do
STREAMING.REQUEST_NAMED_PTFX_ASSET('scr_oddjobtraffickingair')
wait()
end
GRAPHICS.USE_PARTICLE_FX_ASSET('scr_oddjobtraffickingair')
fireWingse[i].ptfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY('scr_mp_intro_plane_exhaust', ptfxEgg, 0, 0, 0.1, fireWingse[i].pos[1], 0, fireWingse[i].pos[2], fireWingsSettingse.scalee, false, false, false)
util.create_tick_handler(function()
local rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 2)
ENTITY.ATTACH_ENTITY_TO_ENTITY(ptfxEgg, players.user_ped(), -1, 0, 0, 0, rot.x, rot.y, rot.z, false, false, false, false, 0, false)
ENTITY.SET_ENTITY_ROTATION(ptfxEgg, rot.x, rot.y, rot.z, 2, true)
for i = 1, #fireWingse do
GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(fireWingse[i].ptfx, fireWingsSettingse.scalee)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fireWingse[i].ptfx, fireWingsSettingse.colour.r, fireWingsSettingse.colour.g, fireWingsSettingse.colour.b)
end
ENTITY.SET_ENTITY_VISIBLE(ptfxEgg, false)
return fireWingsSettingse.on
end)
end
else
for i = 1, #fireWingse do
if fireWingse[i].ptfx then
GRAPHICS.REMOVE_PARTICLE_FX(fireWingse[i].ptfx, true)
fireWingse[i].ptfx = nil
end
if ptfxEgg then
entities.delete_by_handle(ptfxEgg)
ptfxEgg = nil
end
end
STREAMING.REMOVE_NAMED_PTFX_ASSET('scr_oddjobtraffickingair')
end
end)

local active_rideable_animal = 0

util.create_tick_handler(function()
    if active_rideable_animal ~= 0 then 
        if PAD.IS_CONTROL_JUST_PRESSED(23, 23) then 
            ENTITY.DETACH_ENTITY(players.user_ped())
            entities.delete_by_handle(active_rideable_animal)
            TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
            active_rideable_animal = 0
        end

        if not ENTITY.IS_ENTITY_IN_AIR(active_rideable_animal) then 
            if PAD.IS_CONTROL_PRESSED(32, 32) then 
                local side_move = PAD.GET_CONTROL_NORMAL(146, 146)
                local fwd = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(active_rideable_animal, side_move*10.0, 8.0, 0.0)
                TASK.TASK_LOOK_AT_COORD(active_rideable_animal, fwd.x, fwd.y, fwd.z, 0, 0, 2)
                TASK.TASK_GO_STRAIGHT_TO_COORD(active_rideable_animal, fwd.x, fwd.y, fwd.z, 20.0, -1, ENTITY.GET_ENTITY_HEADING(active_rideable_animal), 0.5)
            end
            if PAD.IS_CONTROL_JUST_PRESSED(76, 76) then 
                local w = {}
                w.x, w.y, w.z, _ = players.get_waypoint(players.user())
                if w.x == 0.0 and w.y == 0.0 then 
                    notify(translations.no_waypoint_set)
                else
                    TASK.TASK_FOLLOW_NAV_MESH_TO_COORD(active_rideable_animal, w.x, w.y, w.z, 1.0, -1, 100, 0, 0)
                end
            end
        end
    end
end)

GTTG(_LR, "金色翅膀", {"wring"}, "如果不起作用,那么就是bug", function(on_toggle)
	if on_toggle then	
	local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)
	local wings = OBJECT.CREATE_OBJECT(util.joaat("vw_prop_art_wings_01a"), pos.x, pos.y, pos.z, true, true, true)
	STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(util.joaat("vw_prop_art_wings_01a"))
	ATTACH_ENTITY_TO_ENTITY(wings, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 0x5c01), -1.0, 0.0, 0.0, 0.0, 90.0, 0.0, false, true, false, true, 0, true)
else
	local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
			end
end)

GTTG(_LR, "银色翅膀", {"wringa"}, "如果不起作用,那么就是bug", function(on_toggle)

	if on_toggle then	
	local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)
	local wings = OBJECT.CREATE_OBJECT(util.joaat("vw_prop_art_wings_01b"), pos.x, pos.y, pos.z, true, true, true)
	STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(util.joaat("vw_prop_art_wings_01b"))
	ATTACH_ENTITY_TO_ENTITY(wings, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 0x5c01), -1.0, 0.0, 0.0, 0.0, 90.0, 0.0, false, true, false, true, 0, true)
else
	local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
			end
end)

local country_flags = {"apa_prop_flag_argentina", "apa_prop_flag_australia", "apa_prop_flag_austria", "apa_prop_flag_belgium", "apa_prop_flag_brazil", "apa_prop_flag_canada_yt", "apa_prop_flag_china", "apa_prop_flag_columbia", "apa_prop_flag_croatia", "apa_prop_flag_czechrep", "apa_prop_flag_denmark", "apa_prop_flag_england", "apa_prop_flag_eu_yt", "apa_prop_flag_finland", "apa_prop_flag_france", "apa_prop_flag_german_yt", "apa_prop_flag_hungary", "apa_prop_flag_ireland", "apa_prop_flag_israel", "apa_prop_flag_italy", "apa_prop_flag_jamaica", "apa_prop_flag_japan_yt", "apa_prop_flag_lstein", "apa_prop_flag_malta", "apa_prop_flag_mexico_yt", "apa_prop_flag_netherlands", "apa_prop_flag_newzealand", "apa_prop_flag_nigeria", "apa_prop_flag_norway", "apa_prop_flag_palestine", "apa_prop_flag_poland", "apa_prop_flag_portugal", "apa_prop_flag_puertorico", "apa_prop_flag_russia_yt", "apa_prop_flag_scotland_yt", "apa_prop_flag_script", "apa_prop_flag_slovakia", "apa_prop_flag_slovenia", "apa_prop_flag_southafrica", "apa_prop_flag_southkorea", "apa_prop_flag_spain", "apa_prop_flag_sweden", "apa_prop_flag_switzerland", "apa_prop_flag_turkey", "apa_prop_flag_uk_yt", "apa_prop_flag_us_yt", "apa_prop_flag_wales"}
local flags_fmt = {}
for _, flag in pairs(country_flags) do 
    table.insert(flags_fmt, first_to_upper(flag:gsub('apa_prop_flag_', ''):gsub('_yt', '')))
end

GTLuaScript.list_action(funfeatures_self, "插旗", {"attachflagtocar"}, "", flags_fmt, function(index, val)
    if player_cur_car ~= 0 then 
        local hash = util.joaat(country_flags[index])
        request_model_load(hash)
        local flag = entities.create_object(hash, players.get_position(players.user()))
        local ht = get_model_size(ENTITY.GET_ENTITY_MODEL(player_cur_car)).z
        ENTITY.ATTACH_ENTITY_TO_ENTITY(flag, player_cur_car, 0, 0, 0, ht, 0, 0, 0, true, false, false, false, 0, true)
    end
end)

local rideable_animals_root = GT(funfeatures_self, "骑乘动物", {"rideableanimals"}, "请不要按空格,否则无法动弹")

local ranimal_hashes = {util.joaat("a_c_deer"), util.joaat("a_c_boar"), util.joaat("a_c_cow")}
rideable_animals_root:list_action("生成", {"spawnranimal"}, "", {"鹿", "公猪", "牛"}, function(index)
    if active_rideable_animal ~= 0 then 
        newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;","已经骑动物", "CHAR_CHOP", 140)
        return 
    end
    local hash = ranimal_hashes[index]
    request_model_load(hash)
    local animal = entities.create_ped(8, hash, players.get_position(players.user()), ENTITY.GET_ENTITY_HEADING(players.user_ped()))
    ENTITY.SET_ENTITY_INVINCIBLE(animal, true)
    ENTITY.FREEZE_ENTITY_POSITION(animal, true)
    ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(), true)
    active_rideable_animal = animal
    local m_z_off = 0 
    local f_z_off = 0
    pluto_switch index do 
        case 1: 
            m_z_off = 0.3 
            f_z_off = 0.15
            break
        case 2:
            m_z_off = 0.4
            f_z_off = 0.3
            break
        case 3:
            m_z_off = 0.2 
            f_z_off = 0.1 
            break
    end
    if ENTITY.GET_ENTITY_MODEL(players.user_ped()) == util.joaat("mp_f_freemode_01") then 
        z_off = f_z_off
    else
        z_off = m_z_off
    end
    ENTITY.ATTACH_ENTITY_TO_ENTITY(players.user_ped(), animal, PED.GET_PED_BONE_INDEX(animal, 24816), -0.3, 0.0, z_off, 0.0, 0.0, 90.0, false, false, false, true, 2, true)
    request_anim_dict("rcmjosh2")
    TASK.TASK_PLAY_ANIM(players.user_ped(), "rcmjosh2", "josh_sitting_loop", 8.0, 1, -1, 2, 1.0, false, false, false)
    ENTITY.FREEZE_ENTITY_POSITION(animal, false)
    ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(), false)
end)

appearance = GT(funfeatures_self, "隐藏自己")
disguise_state = state
GTTG(appearance, "隐藏开启", {"disguise"}, "", function(state)
disguise_state = state
if disguise_state then
invisibility_select = GTLuaScript.ref_by_path("Self>Appearance>Invisibility")
object_hash = util.joaat(disguise_objects[disguise_object])
player_pos = players.get_position(players.user())
request_model(object_hash)
object = entities.create_object(object_hash, player_pos)
GTLuaScript.set_value(invisibility_select, 2)
ENTITY.SET_ENTITY_COLLISION(object, false, false)
while disguise_state and players.exists(players.user()) do
player_pos = players.get_position(players.user())
player_rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 5)
ENTITY.SET_ENTITY_COORDS(object, player_pos.x, player_pos.y, player_pos.z- 0.3, false, false, false, false)
ENTITY.SET_ENTITY_ROTATION(object, 0, 0, player_rot.z, false, false, false, false)
wait()
end
entities.delete_by_handle(object)
 GTLuaScript.set_value(invisibility_select, 0)
end
end)

disguise_object_slider = GTLuaScript.slider_text(
    appearance, "隐藏选择", {"disguiseobject"}, "", disguise_names, function()end
)

GTLP(renwuxuanxiang, '随机海滩服装', {}, '', function (f)
    wipe_outfit(players.user_ped())
    random_tropical_outfit(players.user_ped())
    wait(100)
end)

GTLP(renwuxuanxiang, '随机高尔夫服装', {}, '', function (f)
    local hair = PED.GET_PED_DRAWABLE_VARIATION(freemode_ped, 2)
    local hair_tex = PED.GET_PED_TEXTURE_VARIATION(freemode_ped, 2)
    PED.SET_PED_COMPONENT_VARIATION(freemode_ped, 1, 0, 0, 0)
    PED.SET_PED_COMPONENT_VARIATION(freemode_ped, 2, hair, hair_tex, 0)
    PED.SET_PED_COMPONENT_VARIATION(freemode_ped, 3, 0, 0, 0)
    PED.SET_PED_COMPONENT_VARIATION(freemode_ped, 9, 0, 0, 0)
    PED.SET_PED_COMPONENT_VARIATION(freemode_ped, 7, 0, 0, 0)
    PED.SET_PED_COMPONENT_VARIATION(freemode_ped, 11, 0, 0, 0)
    PED.SET_PED_COMPONENT_VARIATION(freemode_ped, 8, 15, 0, 0)
    PED.SET_PED_COMPONENT_VARIATION(freemode_ped, 4, 0, 0, 0)
    PED.SET_PED_COMPONENT_VARIATION(freemode_ped, 6, 0, 0, 0) 
    PED.CLEAR_ALL_PED_PROPS(freemode_ped)
    random_golf_outfit(players.user_ped())
    wait(100)
end)

GTAC(renwuxuanxiang, '赤脚', {}, '', function (f)
barefoot(players.user_ped())
end)

GTAC(renwuxuanxiang, "乳贴", {"sextoplessf"}, "", function(on_click)
    GTLuaScript.trigger_commands("toplessfemale")
end)

GTAC(renwuxuanxiang, "小老头", {"penisguy"}, "", function(on_click)
    GTLuaScript.trigger_commands("amyacult01")
end)

GTTG(renwuxuanxiang, "超人", {"imporage"}, "", function(on)
if on then
GTLuaScript.trigger_commands("umyimporage")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "共和太空游骑兵", {"imporage2"}, "", function(on)
if on then
GTLuaScript.trigger_commands("umyrsranger01")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "死猴子", {"imporage3"}, "", function(on)
if on then
GTLuaScript.trigger_commands("umypogo01")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "全副武装", {"imporage4"}, "", function(on)
if on then
GTLuaScript.trigger_commands("umyjuggernaut01")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "丧尸", {"imporage5"}, "", function(on)
if on then
GTLuaScript.trigger_commands("umyzombie01")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "男同", {"imporage6"}, "", function(on)
if on then
GTLuaScript.trigger_commands("umyjustin")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "猛男", {"imporage7"}, "", function(on)
if on then
GTLuaScript.trigger_commands("umybabyd")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "警察", {"imporage8"}, "", function(on)
if on then
GTLuaScript.trigger_commands("smysheriff01")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "特警", {"imporage9"}, "", function(on)
if on then
GTLuaScript.trigger_commands("smyswat01")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "消防员", {"imporage10"}, "", function(on)
if on then
GTLuaScript.trigger_commands("smyfireman01")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "小丑", {"imporage11"}, "", function(on)
if on then
GTLuaScript.trigger_commands("smyclown01")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "太空人", {"imporage12"}, "", function(on)
if on then
GTLuaScript.trigger_commands("smmmovspace01")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "裸女", {"imporage13"}, "", function(on)
if on then
GTLuaScript.trigger_commands("sfystripperlite")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "妓女", {"imporage14"}, "", function(on)
if on then
GTLuaScript.trigger_commands("mpfmisty01")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "妓女2", {"imporage15"}, "", function(on)
if on then
GTLuaScript.trigger_commands("csbstripper01")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "光头囚犯", {"imporage16"}, "", function(on)
if on then
GTLuaScript.trigger_commands("igrashcosvki")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "豹纹女", {"imporage17"}, "", function(on)
if on then
GTLuaScript.trigger_commands("igkaylee")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "粉红男郎", {"imporage18"}, "", function(on)
if on then
GTLuaScript.trigger_commands("iggroom")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "和平哥", {"imporage19"}, "", function(on)
if on then
GTLuaScript.trigger_commands("igfabien")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "疯子", {"imporage20"}, "", function(on)
if on then
GTLuaScript.trigger_commands("gmmslasher01")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTAC(renwuxuanxiang, "警察", {}, "成为警察", function()
    becomepoliceman()
end)

GTAC(funfeatures_self, "随机服装",{""}, "",function()
wait(100)
PED.SET_PED_RANDOM_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), true)
end)

GTTG(renwuxuanxiang, "大猩猩模式", {""}, "", function(on)
if on then
GTLuaScript.trigger_commands("igorleans")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "猴子模式", {""}, "", function(on)
if on then
GTLuaScript.trigger_commands("acchimp02")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "崔佛模式", {""}, "", function(on)
if on then
GTLuaScript.trigger_commands("trevor")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "崔佛模式2", {""}, "", function(on)
if on then
GTLuaScript.trigger_commands("trevor")
GTLuaScript.trigger_commands("walkstyle crouched")
else
GTLuaScript.trigger_commands("walkstyle mop")
GTLuaScript.trigger_commands("walkstyle poshfemale")
end 
end)

GTTG(renwuxuanxiang, "圣诞怪兽模式", {""}, "", function(on)
if on then
GTLuaScript.trigger_commands("UMMYuleMonster")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(renwuxuanxiang, "动物套装", {""}, "", function(on)
if on then
GTLuaScript.trigger_commands("IGFurry")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(dongwuxuanxiang, "鸟儿", {""}, "", function(on)
if on then
GTLuaScript.trigger_commands("accormorant")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(dongwuxuanxiang, "老鼠", {""}, "", function(on)
if on then
GTLuaScript.trigger_commands("acrat")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(dongwuxuanxiang, "小猪", {""}, "", function(on)
if on then
GTLuaScript.trigger_commands("acpig")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(dongwuxuanxiang, "豹子", {""}, "", function(on)
if on then
GTLuaScript.trigger_commands("acmtlion")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(dongwuxuanxiang, "坤坤", {""}, "嗝嗝嗝儿~", function(on)
if on then
GTLuaScript.trigger_commands("achen")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(dongwuxuanxiang, "牛牛", {""}, "", function(on)
if on then
GTLuaScript.trigger_commands("accow")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(dongwuxuanxiang, "猫咪", {""}, "", function(on)
if on then
GTLuaScript.trigger_commands("accat01")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(dongwuxuanxiang, "郊狼", {""}, "", function(on)
if on then
GTLuaScript.trigger_commands("accoyote")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)

GTTG(dongwuxuanxiang, "大兔纸", {""}, "注意:掏出枪瞄准时会引发崩溃(XA)", function(on)
if on then
GTLuaScript.trigger_commands("ACRabbit02")
GTLuaScript.trigger_commands("walkstyle mop")
else
restore_model()
end
end)


clpid = {}
GTAC(renwuxuanxiang, "克隆自己", {}, "生成克隆的你", function()
    clpid [#clpid + 1] = PED.CLONE_PED(players.user_ped(), true, true, true)
end)

util.create_tick_handler(function()
    if not players.exists(players.user()) then
        return false
    end
    disguise_object = GTLuaScript.get_value(disguise_object_slider)
end)

    local bones <const> = {
        0x49D9,	
        0xDEAD,	
        0x3779,	
        0xCC4D	
    }
    local colour = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
    local timer <const> = newTimer()
    local trailsOpt <const> = GT(selflist,"人物轨迹"), {}, ""
    local effect <const> = Effect.new("scr_rcpaparazzo1", "scr_mich4_firework_sparkle_spawn")
    local effects = {}
    
    GTLP(trailsOpt,"轨迹", {"trails"}, "", function ()
    if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(effect.asset) then
    STREAMING.REQUEST_NAMED_PTFX_ASSET(effect.asset)
    return
    end
    if timer.elapsed() >= 1000 then
    removeFxs(effects); effects = {}
    timer.reset()
    end
    if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
    local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
    local minimum, maximum = v3.new(), v3.new()
    MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
    local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
    for _, offset in ipairs(offsets) do
    GRAPHICS.USE_PARTICLE_FX_ASSET(effect.asset)
    local fx =
    GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(effect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.7, false, false, false,0, 0, 0, 0)
    GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
    table.insert(effects, fx)
    end
    elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
    for _, boneId in ipairs(bones) do
    GRAPHICS.USE_PARTICLE_FX_ASSET(effect.asset)
    local fx =
    GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(effect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
    GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
    table.insert(effects, fx)
    end
    end
    end, function ()
    removeFxs(effects); effects = {}
    end)
    
    local trailColour = GTLuaScript.colour(trailsOpt,"颜色", {"trailcolour"}, "", colour, false, function(newColour)
         colour = newColour 
    end)
    GTLuaScript.rainbow(trailColour)
    
    local ragdoll = GT(selflist, '摔倒选项', {'JSragdollOptions'}, '选择不同的摔倒选项\n需要取消勾选:(自我选项-不会摔倒)')

    GTLP(ragdoll, '笨拙', {'JSclumsy'}, '让您的人物很容易摔倒', function()
        clumsy()
    end)

    GTAC(ragdoll, '绊倒', {'JSstumble'}, '让您的人物绊倒,很可能会摔倒', function()
        stumble()
    end)

    local fallTimeout = false
    GTTG(ragdoll, '倒下', {'JSfallOver'}, '让您绊倒/跌倒并阻止您站起来', function(toggle)
        if toggle then
            local vector = ENTITY.GET_ENTITY_FORWARD_VECTOR(players.user_ped())
            PED.SET_PED_TO_RAGDOLL_WITH_FALL(players.user_ped(), 1500, 2000, 2, vector.x, -vector.y, vector.z, 1, 0, 0, 0, 0, 0, 0)
        end
        fallTimeout = toggle
        while fallTimeout do
            PED.RESET_PED_RAGDOLL_TIMER(players.user_ped())
            wait()
        end
    end)

    GTLP(ragdoll, '摔倒', {'JSragdoll'}, '让您的人物摔倒', function()
        ragdoll_self()
    end)

local cus_respawn = GT(selflist, '自定义复活', {}, '')

custom_respawn_toggle = GTLP(cus_respawn, '自定义复活' ..': '.. 'none', {}, '设置你死后重生的位置.', function()
    custom_respawn()
end)

custom_respawn_location = GTAC(cus_respawn, '保存位置', {}, '未设置位置.', function()
    save_custom_respawn()
end)

local unlocks = GT(selflist, "解锁内容", {}, "解锁游戏内容,几乎无风险")

GTAC(unlocks, "解锁所有成就", {}, "", function()
GTLuaScript.trigger_commands("unlockachievements")
end)

GTAC(unlocks, "解锁XMass内容", {}, "需要切换战局", function()
    memory.write_byte(memory.script_global(262145 + 33915), 1)  
    memory.write_byte(memory.script_global(262145 + 33916), 1)  
end)

GTLP(unlocks, "50辆载具车库", {}, "", function()
    if memory.read_byte(memory.script_global(262145 + 32688)) ~= 0 then
        memory.write_byte(memory.script_global(262145 + 32688), 0) 
    end

    if memory.read_byte(memory.script_global(262145 + 32702)) ~= 1 then
        memory.write_byte(memory.script_global(262145 + 32702), 1)  
    end
end)

GTLP(unlocks, "解锁出租车任务", {}, "", function() 
    if memory.read_byte(memory.script_global(262145 + 33770)) ~= 1 then
        memory.write_byte(memory.script_global(262145 + 33770), 1)
    return end
end)

GTAC(unlocks, "毒品战争内容DLC内容", {}, "", function()
    for i = 33974, 34112, 1 do
        memory.write_byte(memory.script_global(262145 + i), 1)  
    end
end)

GTAC(unlocks, "圣诞和新年礼物", {}, "Change sessions for the gifts to be awarded.", function()
    memory.write_byte(memory.script_global(2793046 + 888), 1)  
    memory.write_byte(memory.script_global(2793046 + 895), 1)  
end)


local collectibles = GT(unlocks, "收藏品", {}, "")

GTLuaScript.click_slider(collectibles, "电影道具", {""}, "", 0, 9, 0, 1, function(i)
    util.trigger_script_event(1 << players.user(), {1839167950, players.user(), 0x0, i, 1, 1, 1})
end)

GTLuaScript.click_slider(collectibles, "隐藏包裹", {""}, "", 0, 9, 0, 1, function(i)
    util.trigger_script_event(1 << players.user(), {1839167950, players.user(), 0x1, i, 1, 1, 1})
end)

GTLuaScript.click_slider(collectibles, "藏宝箱", {""}, "", 0, 1, 0, 1, function(i)
    util.trigger_script_event(1 << players.user(), {1839167950, players.user(), 0x2, i, 1, 1, 1})
end)

GTLuaScript.click_slider(collectibles, "信号干扰器", {""}, "", 0, 9, 0, 1, function(i)
    util.trigger_script_event(1 << players.user(), {1839167950, players.user(), 0x3, i, 1, 1, 1})
end)

GTLuaScript.click_slider(collectibles, "媒体音乐棒", {""}, "", 0, 19, 0, 1, function(i)
    util.trigger_script_event(1 << players.user(), {1839167950, players.user(), 0x4, i, 1, 1, 1})
end)

GTAC(collectibles, "沉船", {""}, "", function()
    util.trigger_script_event(1 << players.user(), {1839167950, players.user(), 0x5, 0, 1, 1, 1})
end)

GTLuaScript.click_slider(collectibles, "隐藏包裹", {""}, "", 0, 1, 0, 1, function(i)
    util.trigger_script_event(1 << players.user(), {1839167950, players.user(), 0x6, i, 1, 1, 1})
end)

GTAC(collectibles, "万圣节T恤", {""}, "", function()
    util.trigger_script_event(1 << players.user(), {1839167950, players.user(), 0x7, 1, 1, 1, 1})
end)

GTLuaScript.click_slider(collectibles, "给糖或捣乱", {""}, "", 0, 9, 0, 1, function(i)
    util.trigger_script_event(1 << players.user(), {1839167950, players.user(), 0x8, i, 1, 1, 1})
end)

GTLuaScript.click_slider(collectibles, "拉玛有机坊产品", {""}, "", 0, 99, 0, 1, function(i)
    util.trigger_script_event(1 << players.user(), {1839167950, players.user(), 0x9, i, 1, 1, 1})
end)

GTLuaScript.click_slider(collectibles, "拉机能量高空跳伞", {""}, "", 0, 9, 0, 1, function(i)
    util.trigger_script_event(1 << players.user(), {1839167950, players.user(), 0xA, i, 1, 1, 1})
end)

zhanju_qiehuan = {"公开单人", "非公开邀请", "单人", "公开战局", "新的公开战局", "退回线下"}
GTLuaScript.slider_text(helperingame, "战局切换", {}, "", zhanju_qiehuan, function(a, b, c)
switch a do
case 1:
GTLuaScript.trigger_commands("go solopublic")
break
case 2:
GTLuaScript.trigger_commands("go inviteonly")
break
 case 3:
GTLuaScript.trigger_commands("go solo")
break
case 4:
GTLuaScript.trigger_commands("go public")
break
case 5:
GTLuaScript.trigger_commands("go newpublic")
break
case 6:
NETWORK.NETWORK_SESSION_END()
break
end
end)

GTTG(helperingame,"自杀",{},"CTRL+X自爆", function(t)
gt=t
while gt do
    wait()
    menu.trigger_commands("godmode off")
	    if gt then
		    if util.is_key_down(0x11) and util.is_key_down(0x58) then
                newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;", "~h~~r~去死吧!!!", "CHAR_CHOP", 140)
                FIRE.ADD_EXPLOSION(
                ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID()).x,
                ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID()).y,
                ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID()).z,
                2, 1.0,false, false, 1, players.user())
			    end
			    wait(10)
		    end
        end
    gt=false
    menu.trigger_commands("godmode on")
end)

GTLP(helperingame, "只能被玩家伤害", {}, "不会被NPC伤害", function()
    ENTITY.SET_ENTITY_ONLY_DAMAGED_BY_PLAYER(players.user_ped(), true)
end, function()
    ENTITY.SET_ENTITY_ONLY_DAMAGED_BY_PLAYER(players.user_ped(), false)
end)

GTLP(helperingame, "禁止被爆头一枪击杀", {}, "", function()
    PED.SET_PED_SUFFERS_CRITICAL_HITS(players.user_ped(), false)
end, function()
    PED.SET_PED_SUFFERS_CRITICAL_HITS(players.user_ped(), true)
end)

GTTG(helperingame, "自动切换无人战局", {""}, "", function(f)
    abc = f
    while abc do
     wait()
        local playerCount = #players.list()
        if playerCount < 2 then
        util.toast("此战局已经没有人了,马上为你切换新战局...")
        wait(500)
        GTLuaScript.trigger_commands("go public")
        end
        end
    end)    

GTLP(helperingame, "自动领取悬赏", {""}, "", function()
    local bounty = players.get_bounty(players.user())
    if bounty != nil then
        repeat
            menu.trigger_commands("removebounty")
            wait(1000)
            bounty = players.get_bounty(players.user())
        until bounty == nil
        util.toast("Bounty has been auto-claimed. :D")
    end
end)

GTAC(helperingame, "强制线上云保存", {}, "", function ()
    savedata()
end)

GTLP(helperingame, "打字时禁用手机来电", {}, "避免电话接入导致聊天框自动关闭",
    function()
        if chat.is_open() then
            menu.trigger_commands("nophonespam on")
        else
            menu.trigger_commands("nophonespam off")
        end
    end, function()
    menu.trigger_commands("nophonespam off")
end)

GTLP(helperingame, "载具内不可被射击", {}, "防止在载具内被击杀或恶搞", function()
    PED.SET_PED_CAN_BE_SHOT_IN_VEHICLE(PLAYER.PLAYER_PED_ID(), false)
end, function()
    PED.SET_PED_CAN_BE_SHOT_IN_VEHICLE(PLAYER.PLAYER_PED_ID(), true)
end)

npcdisable = off
menu.toggle(helperingame, "禁止NPC造成伤害", {}, "", function(on)
    npcdisable = on
    while npcdisable do
        WIRI_PED.SET_AI_WEAPON_DAMAGE_MODIFIER(0)
        WIRI_PED.SET_AI_MELEE_WEAPON_DAMAGE_MODIFIER(0)
        wait()
    end
        WIRI_PED.SET_AI_WEAPON_DAMAGE_MODIFIER(1)
        WIRI_PED.SET_AI_MELEE_WEAPON_DAMAGE_MODIFIER(1)
end)

GTLP(helperingame, "不会被帮派骚扰", {}, "防止身处含有帮派区域被帮派成员攻击骚扰", function()
    PLAYER.SET_PLAYER_CAN_BE_HASSLED_BY_GANGS(PLAYER.PLAYER_ID(), false)
end, function()
    PLAYER.SET_PLAYER_CAN_BE_HASSLED_BY_GANGS(PLAYER.PLAYER_ID(), true)
end)

GTLP(helperingame, "移除载具上的黏弹", {}, "", function()
    local vehicle = entities.get_user_vehicle_as_handle()
    if vehicle ~= 0 then
        REMOVE_ALL_STICKY_BOMBS_FROM_ENTITY(vehicle)
    end
end)

GTLP(helperingame, "自动接受并加入游戏", {}, "将自动接受游戏邀请", function()
    autoaccept()
end)

GTTG(helperingame, "自动切换战局", {""}, "加入战局失败时自动切换战局", function(state)
    local message_hash = C_CCHUD.GET_WARNING_SCREEN_MESSAGE_HASH()
    local my_player_id = players.user_ped()
    local playerstatus = {0, 1} 
    local message_hashes = {15890625, -398982408, -587688989} 
    if state then
        if message_hash == message_hashes then
            PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 201, 1.0)
            wait(200)
        end

        if my_player_id == playerstatus then
            NETWORK.NETWORK_JOIN_PREVIOUSLY_FAILED_TRANSITION(0, true)
            NETWORK.NETWORK_JOIN_PREVIOUSLY_FAILED_SESSION(0, true)

            wait_session_transition()
            util.toast("重新加入 :新战局")
            GTLuaScript.trigger_commands("rejoin ")
        else
            util.toast("正在加入 :新战局")
            GTLuaScript.trigger_commands("go newpublic")
        end
    end
end)

GTLP(helperingame, "自动获取脚本主机", {"scriptshost"}, "更快获取脚本主机", function()

    if players.get_script_host() ~= players.user() and get_transition_state(players.user()) ~= 0 then

        GTLuaScript.trigger_command(GTLuaScript.ref_by_path("Players>"..players.get_name_with_tags(players.user())..">Friendly>Give Script Host"))

    end

end)

GTLP(helperingame, "自动获取主机", {"alwayshost"}, "", function()
	if not (players.get_host() == PLAYER.PLAYER_ID()) and not util.is_session_transition_active() then
		if not (PLAYER.GET_PLAYER_NAME(players.get_host()) == "**Invalid**") then
			GTLuaScript.trigger_commands("kick"..PLAYER.GET_PLAYER_NAME(players.get_host()))
			wait(200)
		end
	end
end)

GTTG(helperingame, '挂机防踢', {""}, '', function (on)
if on then
GTLuaScript.trigger_commands("noidlekick on")
else
GTLuaScript.trigger_commands("noidlekick off")
end
end)

GTLP(helperingame, "移除翻车卡住的检测", { "remove_veh_check" },
    "避免因载具翻车或卡住导致任务失败", function()
    local vehicle = entities.get_user_vehicle_as_handle()
    if vehicle ~= 0 then
        VEHICLE.REMOVE_VEHICLE_UPSIDEDOWN_CHECK(vehicle)
        VEHICLE.REMOVE_VEHICLE_STUCK_CHECK(vehicle)
    end
end)

GTTG(helperingame, "提升FPS V1", {"fpsboost"}, "更改本地气象时间", function(on_toggle)
	if on_toggle then
        newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;","正在设置FPS...", "CHAR_CHOP", 140)
		GTLuaScript.trigger_commands("weather" .. " extrasunny")
		GTLuaScript.trigger_commands("clouds" .. " clear01")
		GTLuaScript.trigger_commands("time" .. " 6")
		GTLuaScript.trigger_commands("superc")
        GTLuaScript.trigger_commands("noidlecam ")
	else
		notification("正在重置FPS...")
		GTLuaScript.trigger_commands("weather" .. " normal")
		GTLuaScript.trigger_commands("clouds" .. " normal")
        GTLuaScript.trigger_commands("noidlecam ")
		end
	end)

	GTTG(helperingame, "提升FPS V2", {"fpsnsboost"}, "超级清除并降低画质渲染", function(on_toggle)
	if on_toggle then
		newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;","正在设置FPS...", "CHAR_CHOP", 140)
		GTLuaScript.trigger_commands("weather" .. " extrasunny")
		GTLuaScript.trigger_commands("clouds" .. " clear01")
		GTLuaScript.trigger_commands("time" .. " 6")
		GTLuaScript.trigger_commands("superc")
        GTLuaScript.trigger_commands("potatomode ")
        GTLuaScript.trigger_commands("nosky ")
        GTLuaScript.trigger_commands("noidlecam ")
	else
		newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;","正在设置FPS...", "CHAR_CHOP", 140)
		GTLuaScript.trigger_commands("weather" .. " normal")
		GTLuaScript.trigger_commands("clouds" .. " normal")
        GTLuaScript.trigger_commands("potatomode ")
        GTLuaScript.trigger_commands("nosky ")
        GTLuaScript.trigger_commands("noidlecam ")
		end
	end)

GTLP(helperingame, "PVP防御模式", {}, "", function()
    pvpdefmode()
end)

GTLP(helperingame, "武装玩家", {"ghostarmedplayers"}, "针对手持武器的玩家启用幽灵模式", function()
    for _, pid in ipairs(players.list(false, true, true)) do
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        if WEAPON.IS_PED_ARMED(ped, 7) or TASK.GET_IS_TASK_ACTIVE(ped, 199) or TASK.GET_IS_TASK_ACTIVE(ped, 128) 
        or IsPlayerUsingGuidedMissile(pid) or IsPlayerInRcTank(pid) or IsPlayerInRcBandito(pid) or IsPlayerFlyingAnyDrone(pid) then
            NETWORK.SET_REMOTE_PLAYER_AS_GHOST(pid, true)
        else
            NETWORK.SET_REMOTE_PLAYER_AS_GHOST(pid, false)
        end
    end
end, function()
    for _, pid in ipairs(players.list(false, true, true)) do
        NETWORK.SET_REMOTE_PLAYER_AS_GHOST(pid, false)
    end
end)

GTTG(helperingame, "天基炮", {""}, "虚假的天基炮,无实际作用", function(state)
		orbital_cannon_map_is_charging = false
		orbital_cannon_map_is_shooting = false
		orbital_cannon_map_time = 0
		orbital_cannon_map_zoom = 0
		orbital_cannon_map_pos_x = text_func(ENTITY.GET_ENTITY_COORDS(players.user()).x)
		orbital_cannon_map_pos_y = text_func(ENTITY.GET_ENTITY_COORDS(players.user()).y)
		orbital_cannon_map_scaleform = GRAPHICS.REQUEST_SCALEFORM_MOVIE("ORBITAL_CANNON_MAP")  
        local old_pos = ENTITY.GET_ENTITY_COORDS(players.user_ped(), false)
        orb = state    
    	while orb do
			wait()
			ENTITY.SET_ENTITY_COORDS_NO_OFFSET(players.user_ped(players.user()), ENTITY.GET_ENTITY_COORDS(players.user()).x,ENTITY.GET_ENTITY_COORDS(players.user()).y,ENTITY.GET_ENTITY_COORDS(players.user()).z)
			ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(players.user()), true)
			TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped(players.user()))
			if PAD.IS_DISABLED_CONTROL_PRESSED(2, 77) then
				if orbital_cannon_map_pos_y >= -10000 and orbital_cannon_map_pos_y <= 10000 then
					orbital_cannon_map_pos_y = orbital_cannon_map_pos_y + 2
				else
					orbital_cannon_map_pos_y = 0
				end
			end
			if PAD.IS_DISABLED_CONTROL_PRESSED(2, 133) then
				if orbital_cannon_map_pos_x >= -10000 and orbital_cannon_map_pos_x <= 10000 then
					orbital_cannon_map_pos_x = orbital_cannon_map_pos_x - 2
				else
					orbital_cannon_map_pos_x = 0
				end
			end
			if PAD.IS_DISABLED_CONTROL_PRESSED(2, 134) then
				if orbital_cannon_map_pos_x >= -10000 and orbital_cannon_map_pos_x <= 10000 then
					orbital_cannon_map_pos_x = orbital_cannon_map_pos_x + 2
				else
					orbital_cannon_map_pos_x = 0
				end
			end
			if PAD.IS_DISABLED_CONTROL_PRESSED(2, 139) then
				if orbital_cannon_map_pos_y >= -10000 and orbital_cannon_map_pos_y <= 10000 then
					orbital_cannon_map_pos_y = orbital_cannon_map_pos_y - 2
				else
					orbital_cannon_map_pos_y = 0
				end
			end
			if PAD.IS_DISABLED_CONTROL_PRESSED(2, 15) then
				if orbital_cannon_map_zoom >= 0 and orbital_cannon_map_zoom <= 2 then
					orbital_cannon_map_zoom = orbital_cannon_map_zoom + 0.05
				else
					orbital_cannon_map_zoom = 0
				end
			end
			if PAD.IS_DISABLED_CONTROL_PRESSED(2, 14) then
				if orbital_cannon_map_zoom >= 0 and orbital_cannon_map_zoom <= 2 then
					orbital_cannon_map_zoom = orbital_cannon_map_zoom - 0.05
				else
					orbital_cannon_map_zoom = 0
				end
			end
        	GRAPHICS.DRAW_SCALEFORM_MOVIE_FULLSCREEN(orbital_cannon_map_scaleform, 255, 255, 255, 255, 0)
			GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD(orbital_cannon_map_scaleform, "MOVE_TO")
			GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_INT(orbital_cannon_map_pos_x)
			GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_INT(orbital_cannon_map_pos_y)
        	GRAPHICS.END_SCALEFORM_MOVIE_METHOD(orbital_cannon_map_scaleform)
			GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD(orbital_cannon_map_scaleform, "ZOOM_TO")
			GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_FLOAT(orbital_cannon_map_zoom)
			GRAPHICS.END_SCALEFORM_MOVIE_METHOD(orbital_cannon_map_scaleform)
			if PAD.IS_DISABLED_CONTROL_PRESSED(2, 24) then
				orbital_cannon_map_is_charging = true
			else
				orbital_cannon_map_is_charging = false
				orbital_cannon_map_time = 0
			end
			if orbital_cannon_map_is_charging then
				if not orbital_cannon_map_is_shooting then
					GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD(orbital_cannon_map_scaleform, "START_COUNTDOWN")
					GRAPHICS.END_SCALEFORM_MOVIE_METHOD(orbital_cannon_map_scaleform)
				end
				orbital_cannon_map_is_shooting = true
				orbital_cannon_map_time = orbital_cannon_map_time + 1
			else
				if orbital_cannon_map_is_shooting then
					GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD(orbital_cannon_map_scaleform, "CANCEL_ANIMATION")
					GRAPHICS.END_SCALEFORM_MOVIE_METHOD(orbital_cannon_map_scaleform)
				end
				orbital_cannon_map_is_shooting = false
				orbital_cannon_map_time = 0
			end
			if orbital_cannon_map_time >= 499 then
				local success, float = get_ground_z(v3(orbital_cannon_map_pos_x, orbital_cannon_map_pos_y, ENTITY.GET_ENTITY_COORDS(players.user()).z + 25))
				local pos_real = get_v3_of_v2(v2(orbital_cannon_map_pos_x, orbital_cannon_map_pos_y))
				if success then
					pos_real = v3(orbital_cannon_map_pos_x, orbital_cannon_map_pos_y, float + 1)
				else
					pos_real = get_v3_of_v2(v2(orbital_cannon_map_pos_x, orbital_cannon_map_pos_y))
				end
				GRAPHICS.USE_PARTICLE_FX_ASSET("scr_xm_orbital")
				while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("scr_xm_orbital") do
					STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_xm_orbital")
					wait()
				end
				AUDIO.PLAY_SOUND_FROM_COORD(1, "DLC_XM_Explosions_Orbital_Cannon", pos_real, 0, true, 0, false)
				FIRE.ADD_EXPLOSION(pos_real.x,pos_real.y,pos_real.z, 59, true, false, 1, players.user_ped())
				GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_xm_orbital_blast", pos_real.x,pos_real.y,pos_real.z, v3(0, 180, 0), 1, true, true, true)
				orbital_cannon_map_time = 0
			end
   		end
            orbital_cannon_map_is_charging = false
            orbital_cannon_map_is_shooting = false
            orbital_cannon_map_time = 0
            orbital_cannon_map_zoom = 0
            orbital_cannon_map_pos_x = 0
            orbital_cannon_map_pos_y = 0
            ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(), false)
            set_scaleform_movie_as_no_longer_needed(orbital_cannon_map_scaleform)
            pcall(ENTITY.SET_ENTITY_COORDS, players.user_ped(), old_pos.x,old_pos.y,old_pos.z, false, false)
    end)

    GTTG(helperingame, "人间蒸发", {"renwuxiaoshi"}, "开启人间蒸发",
    function(state)
        GTLuaScript.trigger_command(GTLuaScript.ref_by_path("Self>Appearance>Invisibility>" .. (state and "Enabled" or "Disabled"), 38))
        GTLuaScript.set_value(GTLuaScript.ref_by_path("Online>Off The Radar", 38), state)
        announce("幽灵模式 " .. (state and "On" or "Off"))
    end
    )
    togglestate = false

GTLP(helperingame, "假死雷达", {"undeadotr"}, "隐藏小地图(雷达)位置", function()
    undead()
end, function ()
	ENTITY.SET_ENTITY_MAX_HEALTH(players.user_ped(), maxHealth_cantseeyouinmap)
end)

php_bars = false
GTTG(helperingame, "NPC血条", {"pedhpbars"}, "在NPC上方显示血量数值", function(on)
php_bars = on
mod_uses("ped", if on then 1 else -1)
if vhp_bars and on then
    newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;","警告:您同时打开了车辆HP指示条。由于引擎限制,某些HP条形图可能无法渲染", "CHAR_CHOP", 140)
end
end)

vhp_bars = false
GTTG(helperingame, translate("Self", "载具血条"), {}, "在载具上方显示血量数值", function(on)
    vhp_bars = on
    mod_uses("vehicle", if on then 1 else -1)
    if php_bars and on then
        newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;",vehicle_hp_bars_warn, "CHAR_CHOP", 140)
    end
end)

GTLP(helperingame, "刑事毁坏", {""}, "", function(on)
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(util.joaat("am_criminal_damage")) ~= 0 then
        if memory.read_int(memory.script_local("am_criminal_damage", 2040 + 1+players.user()*7 + 2)) == 3 then
            hash = util.joaat('titan')
            local c = {}
            c.x = 4497.2207
            c.y = 8028.3086
            c.z = -32.635174
            request_model_load(hash) 
            local v = entities.create_vehicle(hash, c, math.random(0, 270))
            if v ~= 0 then
                PED.SET_PED_INTO_VEHICLE(players.user_ped(), v, -1)
                while not ENTITY.IS_ENTITY_IN_WATER(v) or not PED.IS_PED_IN_VEHICLE(players.user_ped(), v, false) do
                    wait()
                end
                wait(5)
                entities.delete_by_handle(v)
            end
        end
    end
end)

GTLP(helperingame, "检查点收集", {""}, "", function(cp_speedrun_on)
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(util.joaat("am_cp_collection")) ~= 0 then
        local cp_blip = HUD.GET_NEXT_BLIP_INFO_ID(431)
        if cp_blip ~= 0 then
            local c = HUD.GET_BLIP_COORDS(cp_blip)
            ENTITY.SET_ENTITY_COORDS(players.user_ped(), c.x, c.y, c.z, false, false, false, false)
        end
    end
end)

util.on_transition_finished(function()
    if random_name_spoof then
        GTLuaScript.trigger_commands("spoofedname " .. random_string(16))
    end
    if random_ip_spoof then
        GTLuaScript.trigger_commands("spoofedip " .. random_ip_address())
    end
    if random_rank_spoof then
        GTLuaScript.trigger_commands("spoofedrank " .. math.random(10000))
    end
end)

GTLP(helperingame, "强制可见", {"forcevisible"}, "", function()
for _, pid in players.list(false) do
local ped = PLAYER.GET_PLAYER_PED(pid)
if not ENTITY.IS_ENTITY_VISIBLE(ped) then
ENTITY.SET_ENTITY_VISIBLE(ped, true)
end
end
end)

zhanju = GT(helperingame, "战局状态", {}, "更改战局状态可能会造成游戏短时间无响应,等待恢复即可,不会造成崩溃")
GTAC(zhanju, '故事模式', {""}, '', function ()
menu.trigger_commands("worldstate storymode")
end)
GTAC(zhanju, '线上模式', {""}, '', function ()
menu.trigger_commands("worldstate online")
end)
GTAC(zhanju, '佩里科海岛', {""}, '', function ()
menu.trigger_commands("worldstate island")
end)

local maxps = GT(helperingame, "战局管控", {}, "")

GTLuaScript.slider(maxps, "设置战局玩家上限", {}, "只有你是战局主机时才生效", 1, 32, 32, 1, function (value)
    if Stand_internal_script_can_run then
        NETWORK.NETWORK_SESSION_SET_MATCHMAKING_GROUP_MAX(0, value)
        util.toast("free slots",NETWORK.NETWORK_SESSION_GET_MATCHMAKING_GROUP_FREE(0))
    end
end)
GTLuaScript.slider(maxps, "设置战局观众上限", {}, "只有你是战局主机时才生效", 0, 2, 2, 1, function (value)
    if Stand_internal_script_can_run then
        NETWORK.NETWORK_SESSION_SET_MATCHMAKING_GROUP_MAX(4, value)
        util.toast("free slots",NETWORK.NETWORK_SESSION_GET_MATCHMAKING_GROUP_FREE(4))
    end
end)

PEDEVENT = GT(helperingame, "NPC管控", {}, "")
GTLP(PEDEVENT, "新生成的NPC携带零食", {}, "", function()
    WIRI_PED.SET_HEALTH_SNACKS_CARRIED_BY_ALL_NEW_PEDS(1.0, 99)
end)
GTLP(PEDEVENT, "周围NPC死亡时掉钱", {},
    "设置NPC在被杀时是否会掉落金钱。这在自由模式中默认关闭.", function()
    WIRI_PED.SET_AMBIENT_PEDS_DROP_MONEY(true)
end)
GTLP(PEDEVENT, "阻止周围NPC临时事件", {},
    "阻止此环境中环境NPC的临时事件。\n不包括执法人员，比如警察", function()
    WIRI_PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS_FOR_AMBIENT_PEDS_THIS_FRAME(true)
end)
GTLP(PEDEVENT, "周围执法NPC降低精准度", {},
    "让执法的NPC射击准心偏差，比如警察，这只会在自由模式生效", function()
    WIRI_PED.SET_AMBIENT_LAW_PED_ACCURACY_MODIFIER(0.0)
end)
  
muplyid = players.user()
my_name = PLAYER.GET_PLAYER_NAME(muplyid)
my_scid = players.get_rockstar_id(muplyid)
my_ip = intToIp(players.get_connect_ip(muplyid))
my_host_token = players.get_host_token(muplyid)
get_player_model = function (pid)
return int_to_uint(ENTITY.GET_ENTITY_MODEL(PLAYER.GET_PLAYER_PED(pid)))
end
my_model= get_player_model(muplyid)
my_health = ENTITY.GET_ENTITY_HEALTH(PLAYER.GET_PLAYER_PED(players.user()))

GTAC(helperingame, "获取我的信息",  {""}, "在通知栏中显示您当前信息", function(state)
if state then
util.toast("你的玩家身份是 "..muplyid.."")
util.toast("你的用户名是 "..my_name.."")
util.toast("您的RID是 "..my_scid.."")
util.toast("您的 IP 是 "..my_ip.."")
util.toast("您的主机令牌是 "..my_host_token.."")
util.toast("您的玩家哈希模型是 "..my_model.."")
util.toast("您的健康才是 "..my_health.."")
end
end)  

GTAC(helperingame, "修复错误",  {""}, "", function(f)
	if players.exists(players.user()) then
		local max_health = ENTITY.GET_ENTITY_MAX_HEALTH(PLAYER.GET_PLAYER_PED(players.user()))
		local health = ENTITY.GET_ENTITY_HEALTH(PLAYER.GET_PLAYER_PED(players.user()))
		wait(100)
		PED.RESURRECT_PED(players.user_ped(players.user()))
		PED.SET_PED_MAX_HEALTH(players.user_ped(players.user()), max_health)
		TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped(players.user()))
	end
end)

GTLP(helperingame, "快速重生", {"fastrespawn"}, "", function()
    local gwobaw = memory.script_global(2672505 + 1685 + 756) -- Global_2672505.f_1685.f_756
    if PED.IS_PED_DEAD_OR_DYING(players.user_ped()) then
        GRAPHICS.ANIMPOSTFX_STOP_ALL()
        memory.write_int(gwobaw, memory.read_int(gwobaw) | 1 << 1)
    end
end,
    function()
    local gwobaw = memory.script_global(2672505 + 1685 + 756)
    memory.write_int(gwobaw, memory.read_int(gwobaw) &~ (1 << 1)) 
end)

roll_speed = nil
GTLuaScript.list_select(helperingame, "翻滚速度", {}, "", {"正常", "1.25x", "1.5x", "1.75x", "2x"}, 1, function(index, value)
roll_speed = index
util.create_tick_handler(function()
    switch value do
        case "1.25x":
            STATS.STAT_SET_INT(util.joaat("MP"..util.get_char_slot().."_SHOOTING_ABILITY"), 115, true)
            break
        case "1.5x":
            STATS.STAT_SET_INT(util.joaat("MP"..util.get_char_slot().."_SHOOTING_ABILITY"), 125, true)
            break
        case "1.75x":
            STATS.STAT_SET_INT(util.joaat("MP"..util.get_char_slot().."_SHOOTING_ABILITY"), 135, true)
            break
        case "2x":
            STATS.STAT_SET_INT(util.joaat("MP"..util.get_char_slot().."_SHOOTING_ABILITY"), 150, true)
            break
        end
        return roll_speed == index
    end)
end)

infibounty_amt = 10000
GTLuaScript.slider(helperingame, "赏金金额", {}, "", 0, 10000, 10000, 1, function(s)
    infibounty_amt = s
  end)

GTLP(helperingame, "赏金开启", {}, "", function(click_type)
    wait(60000)
end)

GTAC(helperingame, '获得牛鲨睾酮', {""}, '', function ()
menu.trigger_commands("bstonce")
end)

GTAC(helperingame, "虐待动物", {}, "爆炸所有附近的动物", function()
    animalFound = false
    for i, aPed in pairs(entities.get_all_peds_as_handles()) do 
       if PED.IS_PED_HUMAN(aPed) ~= true then 
        animalFound = true
        local pedPos = ENTITY.GET_ENTITY_COORDS(aPed)
        FIRE.ADD_EXPLOSION(pedPos.x, pedPos.y, pedPos.z, 0, 1, true, false, 0, false)
       end
    end
    if animalFound == false then 
        util.toast("动物被发现了")
    end
end)

GTLP(helperingame, "下车时关闭无敌模式", {""}, "", function()
    if not ENTITY.GET_ENTITY_CAN_BE_DAMAGED(entities.get_user_vehicle_as_handle()) then
        if not PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) then
            ENTITY.SET_ENTITY_CAN_BE_DAMAGED(PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), true), true)
        end
    end
end)

GTLP(helperingame, "快速更换武器", {"fasthands"}, "武器更换速度更快.", function()
    if TASK.GET_IS_TASK_ACTIVE(players.user_ped(), 56) then
        PED.FORCE_PED_AI_AND_ANIMATION_UPDATE(players.user_ped())
    end
end)

GTLP(helperingame, "快速热启动", {""}, "", function()
    if not VEHICLE.GET_IS_VEHICLE_ENGINE_RUNNING(entities.get_user_vehicle_as_handle()) and TASK.GET_IS_TASK_ACTIVE(players.user_ped(), 150) then
        PED.FORCE_PED_AI_AND_ANIMATION_UPDATE(players.user_ped())
    end
end)

GTLP(helperingame, "达克斯冷却", {}, "跳过达克斯工作的冷却时间", function() -- thx icedoomfist for the state name <3
    STATS.STAT_SET_INT(util.joaat("MP"..util.get_char_slot().."_XM22JUGGALOWORKCDTIMER"), -1, true)
end)

local modifier = 1.00
GTLuaScript.slider_float(helperingame, "近战伤害修改", {"meleedamage"}, "", 100, 1000, 100, 10, function(value)
    modifier = value / 100
    PLAYERJINX.SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER(players.user(), modifier)
end)
	
local language_codes_by_enum = {
    [0]= "en-us",
    [1]= "fr-fr",
    [2]= "de-de",
    [3]= "it-it",
    [4]= "es-es",
    [5]= "pt-br",
    [6]= "pl-pl",
    [7]= "ru-ru",
    [8]= "ko-kr",
    [9]= "zh-tw",
    [10] = "ja-jp",
    [11] = "es-mx",
    [12] = "zh-cn"
}

GTAC(helperingame, "杀死全部NPC", {}, "", function()
    local counter = 0
    for _, ped in ipairs(entities.get_all_peds_as_handles()) do
        if HUD.GET_BLIP_COLOUR(HUD.GET_BLIP_FROM_ENTITY(ped)) == 1 or TASK.GET_IS_TASK_ACTIVE(ped, 352) then 
            ENTITY.SET_ENTITY_HEALTH(ped, 0)
            counter += 1
            wait()
        end
    end
    if counter == 0 then
        util.toast("没有发现NPC. :/")
    else
        util.toast("杀死 ".. tostring(counter) .." NPC.")
    end
end)

GTAC(helperingame, "无声杀害", {"killeveryone"}, "无声地杀死所有人", function()
    for k,v in pairs(players.list(false, true, true)) do
        kill_player(v)
        wait()
    end
end)

GTAC(helperingame, translate("Self", "爆炸自己"), {"explodemyself"}, "", function()
	local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped(), false)
	pos.z = pos.z - 1.0
	FIRE.ADD_OWNED_EXPLOSION(players.user_ped(), pos.x, pos.y, pos.z, 0, 1.0, true, false, 1.0)
end)

GTTG(helperingame,"屏幕渲染", {}, "", function(on)
    xcpm(on)
end)

local roll_speed = nil
GTLuaScript.list_select(helperingame, "战斗翻滚速度", {}, "", {"默认", "1.25x", "1.5x", "1.75x", "2x"}, 1, function(index, value)
roll_speed = index
util.create_tick_handler(function()
    switch value do
        case "1.25x":
            STATS.STAT_SET_INT(util.joaat("MP"..util.get_char_slot().."_SHOOTING_ABILITY"), 115, true)
            break
        case "1.5x":
            STATS.STAT_SET_INT(util.joaat("MP"..util.get_char_slot().."_SHOOTING_ABILITY"), 125, true)
            break
        case "1.75x":
            STATS.STAT_SET_INT(util.joaat("MP"..util.get_char_slot().."_SHOOTING_ABILITY"), 135, true)
            break
        case "2x":
            STATS.STAT_SET_INT(util.joaat("MP"..util.get_char_slot().."_SHOOTING_ABILITY"), 150, true)
            break
        end
        return roll_speed == index
    end)
end)

GTAC(helperingame, "传送安全代码", {}, "传送机构任务中的安全密码 (tequi-la-la, stripclub)", function()
    local objTable = entities.get_all_objects_as_pointers()
    local lookingFor = 367638847 
    for i = 1, #objTable do
        if entities.get_model_hash(objTable[i]) == lookingFor then
            local h = entities.pointer_to_handle(objTable[i])
            local ppos = getEntityCoords(GetLocalPed())
            ENTITY.SET_ENTITY_COORDS(h, ppos.x, ppos.y, ppos.z, false, false, false, false)
            break
        end
    end
end)

GTLP(helperingame, "透视无人机 (试验)", {}, "", function ()
    local objs = entities.get_all_objects_as_pointers()
    for _, obj in pairs(objs) do
        if (entities.get_model_hash(obj) == 430841677) or (entities.get_model_hash(obj) == -1324942671) then 
            local pos = entities.get_position(obj)
            local ourpedpos = getEntityCoords(GetLocalPed())
            GRAPHICS.DRAW_LINE(ourpedpos.x, ourpedpos.y, ourpedpos.z, pos.x, pos.y, pos.z, 255, 255, 255, 255)
        end
    end
end)

editGuns = GT(helperingame, "工具枪", {}, "")

attachGun = GT(editGuns, "附加枪 (非物理)", {}, "附加枪的设置, 将实体附加到实体.")
attach_gun = {
    e1 = 0, e2 = 0,
    bone = 0,
    px = 0, py = 0, pz = 0,
    rx = 0, ry = 0, rz = 0,
    softPinning = false, collision = false,
    vertexIndex = 0, fixedRot = true
}
GTD(attachGun, "------")
GTLP(attachGun, "开启", {"attachgun"}, "以非物理方式将实体附加到实体 (没有PED).", function ()
    if attach_gun.e1 == 0 then util.draw_debug_text("移动1") elseif attach_gun.e2 == 0 then util.draw_debug_text("移动2") end
    if PLAYER.IS_PLAYER_FREE_AIMING(players.user()) then
        if PAD.IS_CONTROL_JUST_PRESSED(0, 54) then 
            local entpointer = memory.alloc()
            util.toast("分配.")
            if PLAYER.GET_ENTITY_PLAYER_IS_FREE_AIMING_AT(players.user(), entpointer) then
                local handle = memory.read_int(entpointer)
                if ENTITY.IS_ENTITY_A_PED(handle) then handle = PED.GET_VEHICLE_PED_IS_IN(handle, false) end
                if attach_gun.e1 == 0 then
                    attach_gun.e1 = handle
                    ENTITY.SET_ENTITY_AS_MISSION_ENTITY(handle)
                elseif attach_gun.e2 == 0 then
                    if attach_gun.e1 == handle then util.toast("不能有相同的实体!") else
                        attach_gun.e2 = handle
                        ENTITY.SET_ENTITY_AS_MISSION_ENTITY(handle)
                        util.toast("附加完成!")
                        local en1 = attach_gun.e1
                        local en2 = attach_gun.e2
                        ENTITY.ATTACH_ENTITY_TO_ENTITY(en1, en2, attach_gun.bone, attach_gun.px, attach_gun.py, attach_gun.pz, attach_gun.rx, attach_gun.ry, attach_gun.rz, false,
                        attach_gun.softPinning, attach_gun.collision, false, attach_gun.vertexIndex, attach_gun.fixedRot)
                        attach_gun.e1 = 0
                        attach_gun.e2 = 0
                    end
                end
            end
            util.toast("释放.")
            memory.free(entpointer)
        end
    end
end)

GTD(attachGun, "设置")
GTLuaScript.slider(attachGun, "骨骼位置", {"attachGunbone"}, "附枪骨骼位置.仅限高级用户!", -100000, 100000, 0, 1, function(value) attach_gun.bone = value end)
GTLuaScript.slider(attachGun, "X 偏移", {"attachGunxoffset"}, "", -10000, 10000, 0, 100, function (value) attach_gun.px = value/100 end);menu.slider(attachGun, "Y 偏移", {"attachGunyoffset"}, "", -10000, 10000, 0, 100, function (value) attach_gun.py = value/100 end);menu.slider(attachGun, "Z 偏移", {"attachGunzoffset"}, "", -10000, 10000, 0, 100, function (value) attach_gun.pz = value/100 end)
GTLuaScript.slider(attachGun, "X 旋转", {"attachGunrotx"}, "", -360, 360, 0, 10, function (value) attach_gun.rx = value end); menu.slider(attachGun, "Y 旋转", {"attachGunroty"}, "", -360, 360, 0, 10, function (value) attach_gun.ry = value end); menu.slider(attachGun, "Z 旋转", {"attachGunrotz"}, "", -360, 360, 0, 10, function (value) attach_gun.rz = value end)
GTTG(attachGun, "软连接", {"attachGunsoftpinning"}, "如果设置为关闭,则固定时附加实体不会分离.", function (toggle) attach_gun.softPinning = toggle end)
GTTG(attachGun, "碰撞", {"attachGuncollision"}, "控制两个实体之间的碰撞. 设置关闭则是禁用碰撞.", function (toggle) attach_gun.collision = toggle end)
GTLuaScript.slider(attachGun, "顶点位置", {"attachGunvertex"}, "仅限高级用户!顶点位置.", -100000, 100000, 0, 1, function (value) attach_gun.vertexIndex = value end)
GTTG(attachGun, "固定旋转", {"attachGunfixedrot"}, "如果为关闭，则忽略实体向量.", function (toggle) attach_gun.fixedRot = toggle end, true)


p_AttachGun = GT(editGuns, "附加枪 (物理)", {}, "Attach gun that uses ATTACH_ENTITY_TO_ENTITY_PHYSICALLY, making entites have collision with each other.")
p_attach_gun = {
    e1 = 0, e2 = 0,
    bone1 = 0, bone2 = 0,
    px1 = 0, py1 = 0, pz1 = 0,
    px2 = 0, py2 = 0, pz2 = 0,
    rx = 0, ry = 0, rz = 0,
    breakforce = 200, fixedRot = true,
    collision = true, dontTPToBone = true,
}
GTD(p_AttachGun, "------")
GTLP(p_AttachGun, "开启", {"pattachgun"}, "以物理方式将实体连接到实体(无ped).", function ()
    if p_attach_gun.e1 == 0 then util.draw_debug_text("移动1") elseif p_attach_gun.e2 == 0 then util.draw_debug_text("移动2") end
    if PLAYER.IS_PLAYER_FREE_AIMING(players.user()) then
        if PAD.IS_CONTROL_JUST_PRESSED(0, 54) then -- 54 || INPUT_WEAPON_SPECIAL_TWO || E
            local entpointer = memory.alloc()
            util.toast("分配.")
            if PLAYER.GET_ENTITY_PLAYER_IS_FREE_AIMING_AT(players.user(), entpointer) then
                local handle = memory.read_int(entpointer)
                if ENTITY.IS_ENTITY_A_PED(handle) then handle = PED.GET_VEHICLE_PED_IS_IN(handle, false) end
                if p_attach_gun.e1 == 0 then
                    p_attach_gun.e1 = handle
                    ENTITY.SET_ENTITY_AS_MISSION_ENTITY(handle)
                elseif p_attach_gun.e2 == 0 then
                    if p_attach_gun.e1 == handle then util.toast("不能有相同的实体!") else
                        p_attach_gun.e2 = handle
                        ENTITY.SET_ENTITY_AS_MISSION_ENTITY(handle)
                        util.toast("附加完成!")
                        ENTITY.ATTACH_ENTITY_TO_ENTITY_PHYSICALLY(p_attach_gun.e1, p_attach_gun.e2,
                        p_attach_gun.bone1, p_attach_gun.bone2,
                        p_attach_gun.px1, p_attach_gun.py1, p_attach_gun.pz1, p_attach_gun.px2, p_attach_gun.py2, p_attach_gun.pz2,
                        p_attach_gun.rx, p_attach_gun.ry, p_attach_gun.rz,
                        p_attach_gun.breakforce, p_attach_gun.fixedRot, true, p_attach_gun.collision, p_attach_gun.dontTPToBone, 2)
                        p_attach_gun.e1 = 0
                        p_attach_gun.e2 = 0
                    end
                end
            end
            util.toast("释放.")
            memory.free(entpointer)
        end
    end
end)
GTD(p_AttachGun, "设置")
GTLuaScript.slider(p_AttachGun, "骨骼位置 1", {"pattachbone1"}, "仅限高级用户!", -100000, 100000, 0, 1, function (value) p_attach_gun.bone1 = value end) menu.slider(p_AttachGun, "骨骼位置 2", {"pattachbone2"}, "仅限高级用户!", -100000, 100000, 0, 1, function (value) p_attach_gun.bone2 = value end)
GTLuaScript.slider(p_AttachGun, "X 偏移 1", {"pattachx1"}, "X 偏移: 实体 1", -100000, 100000, 0, 100, function (value) p_attach_gun.px1 = value/100 end) menu.slider(p_AttachGun, "Y 偏移 1", {"pattachy1"}, "Y 偏移: 实体 1", -100000, 100000, 0, 100, function (value) p_attach_gun.py1 = value/100 end) menu.slider(p_AttachGun, "Z 偏移 1", {"pattachz1"}, "Z 偏移: 实体 1", -100000, 100000, 0, 100, function (value) p_attach_gun.pz1 = value/100 end)
GTLuaScript.slider(p_AttachGun, "X 偏移 2", {"pattachx2"}, "X 偏移: 实体 2", -100000, 100000, 0, 100, function (value) p_attach_gun.px2 = value/100 end) menu.slider(p_AttachGun, "Y 偏移 2", {"pattachy2"}, "Y 偏移: 实体 2", -100000, 100000, 0, 100, function (value) p_attach_gun.py2 = value/100 end) menu.slider(p_AttachGun, "Z 偏移 2", {"pattachz2"}, "Z 偏移: 实体 2", -100000, 100000, 0, 100, function (value) p_attach_gun.pz2 = value/100 end)
GTLuaScript.slider(p_AttachGun, "X 旋转", {"pattachxrot"}, "", -360, 360, 0, 10, function (value) p_attach_gun.rx = value end) menu.slider(p_AttachGun, "Y 旋转", {"pattachyrot"}, "", -360, 360, 0, 10, function (value) p_attach_gun.ry = value end) menu.slider(p_AttachGun, "Z 旋转", {"pattachzrot"}, "", -360, 360, 0, 10, function (value) p_attach_gun.rz = value end)
GTLuaScript.slider(p_AttachGun, "断裂力", {"pattachbreakforce"}, "打破这种结合所需的力量.", 0, 100000, 200, 100, function (value) p_attach_gun.breakforce = value end)
GTTG(p_AttachGun, "固定旋转", {"pattachfixedrot"}, "如果为关闭，则忽略实体向量.", function (toggle) p_attach_gun.fixedRot = toggle end, true)
GTTG(p_AttachGun, "碰撞", {"pattachcollision"}, "控制两个实体之间的碰撞. 设置关闭则是禁用碰撞.", function (toggle) p_attach_gun.collision = toggle end, true)
GTTG(p_AttachGun, "不传送到骨骼位置", {"pattachdonttptobone"}, "不要将实体传送到目标实体骨骼索引的位置.", function (toggle) p_attach_gun.dontTPToBone = toggle end, true)

toolFeats = GT(entity_options, "控制器", {}, "", function(); end)


guankankjingtou = GT(entity_options, "观看镜头", {}, "")
cam_rot_z=200
function enableFreecam()
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(players.user()))
    freecam_player_cam = CAM.CREATE_CAM_WITH_PARAMS("DEFAULT_SCRIPTED_CAMERA", pos.x, pos.y, pos.z, CAM.GET_GAMEPLAY_CAM_ROT().y-90, CAM.GET_GAMEPLAY_CAM_ROT().y, CAM.GET_GAMEPLAY_CAM_ROT().z, cam_rot_z, true, true)
    CAM.SET_CAM_ACTIVE(freecam_player_cam, true)
    CAM.RENDER_SCRIPT_CAMS(true, true, 1000, true, true, 0)
    while true do
        pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(players.user()))
        CAM.SET_CAM_COORD(freecam_player_cam, pos.x, pos.y, pos.z+10)
        wait(0)
    end
end

function disableFreecam()
    if freecam_player_cam ~= nil then
        CAM.SET_CAM_ACTIVE(freecam_player_cam, false)
        CAM.DESTROY_CAM(freecam_player_cam, true)
        CAM.RENDER_SCRIPT_CAMS(false, true, 1000, true, true, 0)
        freecam_player_cam = nil
    end
end

GTluaScript.slider(guankankjingtou, '镜头高度设置', {}, '默认为50,设置好高度再开启',1,200, 50, 1, function(gx)
cam_rot_z = (gx * 1)
end)

GTTG(guankankjingtou, "开启", {}, "", function(on)
    if on then
        enableFreecam()
    else
        disableFreecam()
    end
end)

entitymanagerlist = GT(lobbyFeats, "天眼黑客面板", {}, "管理玩家附近的NPC/载具/物体")
require "lib.GTSCRIPTS.GTA.hack"

adminworld = GT(lobbyFeats, "控制任务实体", {}, "")
require "lib.GTSCRIPTS.GTA.admin"

-------------------
-- 交通人口密度
-------------------
Population_Density = GT(lobbyFeats, "交通人口密度", {}, "控制交通")

GTAC(Population_Density, "立刻充满行人", { "fill_ped_population" }, "", function()
    PED.INSTANTLY_FILL_PED_POPULATION()
end)
GTAC(Population_Density, "立刻充满交通", { "fill_vehicle_population" }, "", function()
    VEHICLE.INSTANTLY_FILL_VEHICLE_POPULATION()
end)
-----
Population_Density_Frame = GT(Population_Density, "设置交通人口密度", {}, "")
population_density_frame = {
    ped = 1.0,
    random_vehicle = 1.0,
    parked_vehicle = 1.0,
}

GTLP(Population_Density_Frame, "开启", {}, "", function()
    PED.SET_PED_DENSITY_MULTIPLIER_THIS_FRAME(population_density_frame.ped)
    VEHICLE.SET_RANDOM_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME(population_density_frame.random_vehicle)
    VEHICLE.SET_PARKED_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME(population_density_frame.parked_vehicle)
end)
GTLuaScript.slider_float(Population_Density_Frame, "行人", { "population_density_frame_ped" }, "",
    0, 100, 100, 10, function(value)
    population_density_frame.ped = value * 0.01
end)
GTLuaScript.slider_float(Population_Density_Frame, "交通车辆", { "population_density_frame_random_vehicle" }, "",
    0, 100, 100, 10, function(value)
    population_density_frame.random_vehicle = value * 0.01
end)
GTLuaScript.slider_float(Population_Density_Frame, "停泊车辆", { "population_density_frame_parked_vehicle" }, "",
    0, 100, 100, 10, function(value)
    population_density_frame.parked_vehicle = value * 0.01
end)

-----
local Population_Density_Sphere = GT(Population_Density, "覆盖交通人口密度", {},
    "添加一个新的交通人口密度范围覆盖当前交通人口密度")
local population_density_sphere = {
    id = 0,
    pedDensity = 1.0,
    trafficDensity = 1.0,
    localOnly = false,
}

GTTG(Population_Density_Sphere, "覆盖范围", {}, "切换战局后会失效，需要重新操作",
    function(toggle)
        if toggle then
            population_density_sphere.id = MISC.ADD_POP_MULTIPLIER_SPHERE(1.1, 1.1, 1.1, 15000.0,
                population_density_sphere.pedDensity
                , population_density_sphere.trafficDensity, population_density_sphere.localOnly, true)
            MISC.CLEAR_AREA(1.1, 1.1, 1.1, 19999.9, true, false, false, true)
        else
            if MISC.DOES_POP_MULTIPLIER_SPHERE_EXIST(population_density_sphere.id) then
                MISC.REMOVE_POP_MULTIPLIER_SPHERE(population_density_sphere.id, false)
            end
        end
    end)
GTD(Population_Density_Sphere, "设置")
GTLuaScript.slider_float(Population_Density_Sphere, "人口密度", { "population_density_sphere_pedDensity" }, "",
    0, 100, 100, 10, function(value)
    population_density_sphere.pedDensity = value * 0.01
end)
GTLuaScript.slider_float(Population_Density_Sphere, "交通密度", { "population_density_sphere_trafficDensity" }, "",
    0, 100, 100, 10, function(value)
    population_density_sphere.trafficDensity = value * 0.01
end)
GTTG(Population_Density_Sphere, "仅本地有效", {}, "", function(toggle)
    population_density_sphere.localOnly = toggle
end)

teleport = GT(lobbyFeats, "位置传送", {}, "", function(); end)
teleport_place()
local snow_loca = GT(teleport, "雪人位置", {}, "")
for idx, coords in snowmens do
    snow_loca:action("雪人 " .. idx, {}, "传送到圣诞雪人", function()
        util.teleport_2d(coords[1], coords[2])
    end)
end

util.keep_running()

watch_dog = GT(helperingame, "看门狗[New]", {}, "", function(); end)
dofile(filesystem.scripts_dir().."\\lib\\GTSCRIPTS\\D.lua")

local myroot = GT(helperingame, "宠物选项", {}, "", function(); end)
local allpetsroot = GT(myroot, "所有宠物", {}, "")
local activepet = GT(myroot, "管理宠物", {}, "这些是你生成的宠物")

        GTTG(allpetsroot, "无敌", {}, "给你所有宠物无敌", function(on)
            if on then
                for k,v in pairs(activedogs) do
                    ENTITY.SET_ENTITY_INVINCIBLE(v, true)
                end
            else
                for k,v in pairs(activedogs) do
                    ENTITY.SET_ENTITY_INVINCIBLE(v, false)
                end
            end
        end)

        GTAC(allpetsroot, "删除所有宠物", {}, "", function()
            for k,v in pairs(activedogs) do
                entities.delete_by_handle(v)
            end
        end)
GTACR =  GTluaScript.action_slider     
GTACR(myroot, "生成一只宠物", {}, "生成一个忠诚的同伴,它将跟随并保护你.", dogs, function(opt, breeds)
    local hash = util.joaat("A_C_" .. breeds)
    STREAMING.REQUEST_MODEL(hash)
    while not STREAMING.HAS_MODEL_LOADED(hash) do
        wait()
    end
    local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0, math.random(1,4), 0)
    if getgroupsize(mygroup) >= 7 then
        newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;","~r~你已超过宠物的最大数量", "CHAR_CHOP", 140)
    else
        local dog_ped = entities.create_ped(26, hash, coords, 0)
        activedogs[#activedogs+1] = dog_ped
        PED.SET_PED_AS_GROUP_MEMBER(dog_ped, mygroup)
        PED.SET_PED_AS_GROUP_MEMBER(dog_ped, mygroup)
        PED.SET_PED_NEVER_LEAVES_GROUP(dog_ped, true)
        PED.SET_GROUP_SEPARATION_RANGE(mygroup, 99999)

        local thispet = GT(activepet, breeds, {}, "")



        GTLuaScript.text_input(thispet, "设置名字", {"setname"}, "", function(name)
            GenerateNametagOnPed(dog_ped, name)
        end)

        GTTG(thispet, "无敌", {}, "", function(on)
            if on then
                ENTITY.SET_ENTITY_INVINCIBLE(dog_ped, true)
            else
                ENTITY.SET_ENTITY_INVINCIBLE(dog_ped, false)
            end
        end)



        if breeds ~= "Cat_01" then

            GTTG(thispet, "坐下", {}, "让您的宠物坐下.", function(on)
                if on then
                    if breeds == "Rottweiler" then
                        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(dog_ped)
                        TASK.TASK_START_SCENARIO_IN_PLACE(dog_ped, doganimations[1], 0, true)
                    elseif breeds == "Retriever" then
                        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(dog_ped)
                        TASK.TASK_START_SCENARIO_IN_PLACE(dog_ped, doganimations[2], 0, true)
                    elseif breeds == "Shepherd" then
                        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(dog_ped)
                        TASK.TASK_START_SCENARIO_IN_PLACE(dog_ped, doganimations[3], 0, true)
                    elseif breeds == "Husky" then
                        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(dog_ped)
                        TASK.TASK_START_SCENARIO_IN_PLACE(dog_ped, doganimations[3], 0, true)
                    else
                        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(dog_ped)
                        TASK.TASK_START_SCENARIO_IN_PLACE(dog_ped, doganimations[4], 0, true)

                    end
                else
                    TASK.CLEAR_PED_TASKS(dog_ped)
                end
            end)



            GTAC(thispet, "汪汪", {}, "汪汪汪!", function()
                if breeds == "Rottweiler" then
                    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(dog_ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(dog_ped, "WORLD_DOG_BARKING_ROTWEILER", 0, true)
                elseif breeds == "Retriever" then
                    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(dog_ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(dog_ped, "WORLD_DOG_BARKING_RETRIEVER", 0, true)
                elseif breeds == "Shepherd" then
                    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(dog_ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(dog_ped, "WORLD_DOG_BARKING_SHEPHERD", 0, true)
                elseif breeds == "Husky" then
                    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(dog_ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(dog_ped, "WORLD_DOG_BARKING_SHEPHERD", 0, true)
                else
                    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(dog_ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(dog_ped, "WORLD_DOG_BARKING_SMALL", 0, true)
                end
                wait(5000)
                TASK.CLEAR_PED_TASKS(dog_ped)
            end)
        end



        if breeds == "Cat_01" then 
            GTTG(thispet, "躺下放松", {}, "", function(on)
                if on then
                    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(dog_ped)
                    TASK.TASK_START_SCENARIO_IN_PLACE(dog_ped, "WORLD_CAT_SLEEPING_GROUND", 0, true)
                else
                    TASK.CLEAR_PED_TASKS(dog_ped)
                end
            end)
        end


        GTAC(thispet, "删除宠物", {}, "和平中撕扯, 我毛茸茸的朋友", function()
            entities.delete_by_handle(dog_ped)
            GTLuaScript.delete(thispet)
        end)
    end
end)

local fpets = GT(helperingame, "宠物选项V2", {}, "",function(); end)

GTLP(fpets, "贵宾犬", {}, "", function()
    if not custom_pet or not ENTITY.DOES_ENTITY_EXIST(custom_pet) then
        local pet = util.joaat("a_c_shepherd")
        request_model(pet)
        local pos = players.get_position(players.user())
        custom_pet = entities.create_ped(28, pet, pos, 0)
        PED.SET_PED_COMPONENT_VARIATION(custom_pet, 0, 0, 1, 0)
        ENTITY.SET_ENTITY_INVINCIBLE(custom_pet, true)
    end
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(custom_pet)
    TASK.TASK_FOLLOW_TO_OFFSET_OF_ENTITY(custom_pet, players.user_ped(), 0, -0.3, 0, 7.0, -1, 1.5, true)
    wait(2500)
end, function()
    entities.delete_by_handle(custom_pet)
    custom_pet = nil
end)


GTLP(fpets, "哈士奇", {}, "", function()
    if not custom_pet or not ENTITY.DOES_ENTITY_EXIST(custom_pet) then
        local pet = util.joaat("a_c_Husky")
        request_model(pet)
        local pos = players.get_position(players.user())
        custom_pet = entities.create_ped(28, pet, pos, 0)
        PED.SET_PED_COMPONENT_VARIATION(custom_pet, 0, 0, 1, 0)
        ENTITY.SET_ENTITY_INVINCIBLE(custom_pet, true)
    end
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(custom_pet)
    TASK.TASK_FOLLOW_TO_OFFSET_OF_ENTITY(custom_pet, players.user_ped(), 0, -0.3, 0, 7.0, -1, 1.5, true)
    wait(2500)
end, function()
    entities.delete_by_handle(custom_pet)
    custom_pet = nil
end)

GTLP(fpets, "坤坤", {}, "", function()
    if not custom_pet or not ENTITY.DOES_ENTITY_EXIST(custom_pet) then
        local pet = util.joaat("a_c_hen")
        request_model(pet)
        local pos = players.get_position(players.user())
        custom_pet = entities.create_ped(28, pet, pos, 0)
        PED.SET_PED_COMPONENT_VARIATION(custom_pet, 0, 0, 1, 0)
        ENTITY.SET_ENTITY_INVINCIBLE(custom_pet, true)
    end
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(custom_pet)
    TASK.TASK_FOLLOW_TO_OFFSET_OF_ENTITY(custom_pet, players.user_ped(), 0, -0.3, 0, 7.0, -1, 1.5, true)
    wait(2500)
end, function()
    entities.delete_by_handle(custom_pet)
    custom_pet = nil
end)
--超人模式
Superman_Setting = CONFIG_DIR .. "Superman.txt"
Current_settings = {}
superman = {multi = nil, running = nil, friction = nil, fspeed = 3.0, height = 0.6, crosshair = true,
exp = false, bull = 'WEAPON_TACTICALRIFLE', godmode = nil, breath = 1, nodam = true, vehicle = true}
xray = {npcs = true, players = true, fov = 3, targetveh = true, espline = true, espbox = false,
espbones = true}
fricref = menu.ref_by_path('Self>Movement>Increased Friction')
runref = menu.ref_by_path('Self>Movement>Walk And Run Speed')
multiref = menu.ref_by_path('Self>Weapons>Damage Multiplier')
immorref = menu.ref_by_path('Self>Immortality')
SEC = ENTITY.SET_ENTITY_COORDS

ESPrgb = {color= {r= 0, g = 1, b = 0, a = 1}}
ESPcolor = {
    r = math.floor(ESPrgb.color.r * 255),
    g = math.floor(ESPrgb.color.g * 255),
    b = math.floor(ESPrgb.color.b * 255),
    a = math.floor(ESPrgb.color.a * 255)
}
SuperESPrgb = {color= {r= 0, g = 1, b = 0, a = 1}}
SuperESPcolor = {
    r = math.floor(ESPrgb.color.r * 255),
    g = math.floor(ESPrgb.color.g * 255),
    b = math.floor(ESPrgb.color.b * 255),
    a = math.floor(ESPrgb.color.a * 255)
}

GTLP(super_xrays,'超人模式', {'superman'}, '拥有超人的能力', function (on)
scope_scaleform2 = GRAPHICS.REQUEST_SCALEFORM_MOVIE('SUBMARINE_MISSILES')
GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD(scope_scaleform2, 'SUBMARINE_MISSILES')
GRAPHICS.DRAW_SCALEFORM_MOVIE_FULLSCREEN(scope_scaleform2, 255, 255, 255, 255, 0)
GRAPHICS.END_SCALEFORM_MOVIE_METHOD()
HUD.SET_TEXT_SCALE(1.0,0.5)
HUD.SET_TEXT_FONT(0)
HUD.SET_TEXT_CENTRE(1)
HUD.SET_TEXT_OUTLINE(0)
HUD.SET_TEXT_COLOUR(60, 255, 255, 255)
util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("提示!!E透视,X原力,Q降落,S加速飞,空格+W向下飞,右键激光眼,空格向上飞")
HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.4999,0.8798,0)
if superman.multi == nil  then
    superman.multi = multiref.value
else
end
if superman.running == nil then
    superman.running = runref.value
else
end
if superman.friction == nil then
    superman.friction = fricref.value
else
end
if superman.godmode == nil then
    superman.godmode = immorref.value
else
end

Current_settings = {
    ['Immortality'] = superman.godmode,
    ['Damage Multiplier'] = superman.multi,
    ['Walk And Run Speed'] = superman.running,
    ['Increased Friction'] = superman.friction,
}

if not filesystem.is_regular_file(Superman_Setting) then
    util.write_colons_file(Superman_Setting, Current_settings)
end

if set.scale then
    SFsuper()
end
multiref.value = 10000000
runref.value = Runspeedref.value
fricref.value = true
immorref.value = true
    if PAD.IS_CONTROL_PRESSED(0, 22) then
    cam_pos = CAM.GET_GAMEPLAY_CAM_ROT(0)
    ENTITY.SET_ENTITY_ROTATION(players.user_ped(), cam_pos.x, cam_pos.y, cam_pos.z, 1, true)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0, 0.5, 0.1)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(players.user_ped(),pos.x,pos.y,pos.z,true, false, false)
    end
if ENTITY.IS_ENTITY_IN_AIR(players.user_ped()) and PAD.IS_CONTROL_PRESSED(0, 22) then
    if PAD.IS_CONTROL_PRESSED(0, 32) then
        ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(players.user_ped(), 1, 0.0, superman.fspeed, superman.height, 0, 0, 0, 0, true, true, true, true)
    elseif PAD.IS_CONTROL_PRESSED(0, 33) then
        ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(players.user_ped(), 1, 0.0, superman.fspeed, 0.0, 0, 0, 0, 0, true, true, true, true)
    end
end

if ENTITY.IS_ENTITY_IN_AIR(players.user_ped()) and PAD.IS_CONTROL_PRESSED(0, 44) then
    local groundz = memory.alloc(4)
    local flycoor = ENTITY.GET_ENTITY_COORDS(players.user_ped())
    MISC.GET_GROUND_Z_FOR_3D_COORD(flycoor.x, flycoor.y, flycoor.z, groundz, 0, 0)
    if memory.read_float(groundz) != 0 then
        SEC(players.user_ped(), flycoor.x, flycoor.y, memory.read_float(groundz), false, true, true, false)
        TASK.CLEAR_PED_TASKS(players.user_ped())
    else
        if set.alert then
            ACutil(Str_trans('Too high go lower to land'))
        end
    end



end

if superman.crosshair then
    HUD.DISPLAY_SNIPER_SCOPE_THIS_FRAME()
end

local weap = util.joaat(superman.bull)
local camrot = CAM.GET_FINAL_RENDERED_CAM_ROT(2)
REQUEST_WEAPON_ASSET(weap)
local impact = v3.new()
if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped()) and PAD.IS_CONTROL_PRESSED(0, 68) and PAD.IS_CONTROL_PRESSED(0, 69) and superman.vehicle then
    Super_Breath(superman)
    ENTITY.SET_ENTITY_ROTATION(entities.get_user_vehicle_as_handle(), 0, 0, camrot.z, 2, true)
elseif not PED.IS_PED_IN_ANY_VEHICLE(players.user_ped()) and PAD.IS_CONTROL_PRESSED(0, 73) then
    if ENTITY.IS_ENTITY_IN_AIR(players.user_ped()) and PAD.IS_CONTROL_PRESSED(0, 73) then
        TASK.CLEAR_PED_TASKS(players.user_ped())
        while not ENTITY.HAS_ENTITY_ANIM_FINISHED(players.user_ped(), 'rcmme_amanda1', "stand_loop_cop", 3) and PAD.IS_CONTROL_PRESSED(0, 73) do
            ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(), true)
            camrot = CAM.GET_FINAL_RENDERED_CAM_ROT(2)
            local impact = v3.new()
            Super_Breath(superman)
            Streamanim('rcmme_amanda1')
            Runanim(players.user_ped(), 'rcmme_amanda1', "stand_loop_cop")
            wait()
        end
    else
        TASK.CLEAR_PED_TASKS(players.user_ped())
        ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(), false)
        Super_Breath(superman)
    end


elseif PED.IS_PED_IN_ANY_VEHICLE(players.user_ped()) and PAD.IS_CONTROL_PRESSED(0, 68) and superman.vehicle then
    Leyes(superman, impact, camrot, weap)
    ENTITY.SET_ENTITY_ROTATION(entities.get_user_vehicle_as_handle(), 0, 0, camrot.z, 2, true)
elseif not PED.IS_PED_IN_ANY_VEHICLE(players.user_ped()) and PAD.IS_CONTROL_PRESSED(0, 25) then
    if ENTITY.IS_ENTITY_IN_AIR(players.user_ped()) and PAD.IS_CONTROL_PRESSED(0, 25) then
        TASK.CLEAR_PED_TASKS(players.user_ped())
        while not ENTITY.HAS_ENTITY_ANIM_FINISHED(players.user_ped(), 'rcmme_amanda1', "stand_loop_cop", 3) and PAD.IS_CONTROL_PRESSED(0, 25) do
            ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(), true)
            camrot = CAM.GET_FINAL_RENDERED_CAM_ROT(2)
            local impact = v3.new()
            Supereyes(superman, impact, camrot, weap)
            Streamanim('rcmme_amanda1')
            Runanim(players.user_ped(), 'rcmme_amanda1', "stand_loop_cop")
            wait()
        end
    else
        TASK.CLEAR_PED_TASKS(players.user_ped())
        ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(), false)
        Leyes(superman, impact, camrot, weap)
    end

else
    ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(), false)
end
if PAD.IS_CONTROL_PRESSED(0, 119) then
    Xrayvision(xray)
end


return superman.multi, superman.running
end, function ()
TASK.CLEAR_PED_TASKS(players.user_ped())
local settings = util.read_colons_and_tabs_file(Superman_Setting)
for I, V in settings do
    switch I do
        case 'Damage Multiplier' :
            multiref.value = V
        break
        case 'Walk And Run Speed' :
            runref.value = V
        break
        case 'Increased Friction' :
            menu.trigger_command(menu.ref_by_command_name('friction'), V)
        break
        case 'Immortality' :
            menu.trigger_command(menu.ref_by_command_name('god'), V)
        break
    end
end
wait(250)
io.remove(Superman_Setting)
superman.multi = nil
superman.running = nil
superman.friction = nil
superman.godmode = nil 
end)
-------------------------------

Runspeedref = GTLuaScript.slider_float(super_xrays, "跑步速度", {""}, "", 100, 1000000, 500, 100, function (a)
    superman.running = a
end)

GTLuaScript.slider_float(super_xrays, "飞行速度", {"superfly"}, "",  6, 100, 6, 1, function (a)
    superman.fspeed = a*0.1
end)

GTLuaScript.slider_float(super_xrays, "跳高高度", {""}, "",  6, 100, 6, 1, function (a)
    superman.height = a*0.1
end)

GTLuaScript.slider(super_xrays, "原力世界范围", {""}, "", 1, 1000, 1, 1, function (a)
    superman.breath = a
end)

GTTG(super_xrays, "原力世界爆炸", {"superexp"}, "", function (on)
    superman.nodam = not on
end)

GTTG(super_xrays, "取消瞄准点", {""}, "", function (on)
    superman.crosshair = not on
end)

GTTG(super_xrays, "一拳超人", {"superexp"}, "", function (on)
    superman.exp = on
end)

GTLuaScript.list_select(super_xrays,"换子弹", {'superbullets'}, "", Leyen, 1, function (bulsel)
    superman.bull = Leyel[bulsel] 
end)

GTTG(super_xrays, "停止使用车辆", {""}, "", function (on)
    superman.vehicle = not on
end)

GTTG(sessionfun, "刀客",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_cs_katana_01"), pos.x, pos.y, pos.z, true, true, false)
    local taidao2 = OBJECT.CREATE_OBJECT(util.joaat("prop_cs_katana_01"), pos.x, pos.y, pos.z, true, true, false)
    local taidao3 = OBJECT.CREATE_OBJECT(util.joaat("prop_cs_katana_01"), pos.x, pos.y, pos.z, true, true, false)
    local taidao4 = OBJECT.CREATE_OBJECT(util.joaat("prop_cs_katana_01"), pos.x, pos.y, pos.z, true, true, false)
    local taidao5 = OBJECT.CREATE_OBJECT(util.joaat("prop_cs_katana_01"), pos.x, pos.y, pos.z, true, true, false)
    local taidao6 = OBJECT.CREATE_OBJECT(1467525553, pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), false, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.03, 0, 0, -80, 0.0, 0, true, true, true, true, 0, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao2, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 18905), 0.12, 0, 0.02, -100, 0, 0, true, true, true, true, 0, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao3, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 0x5c01), 0.52, -0.15, 0.1, 0, -120, 0, true, true, true, true, 0, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao4, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 0x5c01), 0.52, -0.15, -0.1, 0, 60, 180, true, true, true, true, 0, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao5, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 0x192a), -0.2, 0.2, 0.12, 90, 0, 45, true, true, true, true, 0, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao6, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 0x5c57), 0, 0.05, -0.12, -90, 0, 10, true, true, true, true, 0, true)
    else
    WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
    local count = 0
		for k,ent in pairs(entities.get_all_objects_as_handles()) do
			ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
			entities.delete_by_handle(ent)
		count = count + 1
			wait()
		end
    end
end)

GTTG(sessionfun, "双枪", {}, "不可发射子弹", function(on)
gt=on
Mypos = function()
    return ENTITY.GET_ENTITY_COORDS(players.user())
end
    local dictionary = "weap_xs_weapons"
    local ptfx_name = "bullet_tracer_xs_sr"
local myr = players.user_ped()
while not STREAMING.HAS_ANIM_DICT_LOADED("anim@veh@armordillo@turret@base") do 
     STREAMING.REQUEST_ANIM_DICT("anim@veh@armordillo@turret@base")
     wait()
end
if gt then
local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped(),true)
guitar = OBJECT.CREATE_OBJECT(1467525553, pos.x, pos.y, pos.z, true, true, false)
guitars = OBJECT.CREATE_OBJECT(1467525553, pos.x, pos.y, pos.z, true, true, false)
NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(players.user_ped())
TASK.TASK_PLAY_ANIM(myr, "anim@veh@armordillo@turret@base", "sit_aim_down", 10, 3, -1, 51, 5, false, false, false)
ENTITY.ATTACH_ENTITY_TO_ENTITY(guitar, players.user_ped(), PED.GET_PED_BONE_INDEX(players.user_ped(), 18905), 0.16, 0.031, -0.004, -90.0, 15.7399, -5.0, 0, 1, 1, 1, 0, 1)
ENTITY.ATTACH_ENTITY_TO_ENTITY(guitars, players.user_ped(), PED.GET_PED_BONE_INDEX(players.user_ped(), 57005),  0.15, 0.021, -0.004, -70.0, -5.0, -21.0, 0, 1, 1, 1, 0, 1)
PED.SET_ENABLE_HANDCUFFS(players.user_ped(),gt)
while gt do
wait()
request_ptfx_asset_lasereyes(dictionary)
GRAPHICS.USE_PARTICLE_FX_ASSET(dictionary)
GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY(ptfx_name, guitar, 0.0, 0.0, 0.04, 0, 92, 0, 0.5, 0, 0, 0)
request_ptfx_asset_lasereyes(dictionary)
GRAPHICS.USE_PARTICLE_FX_ASSET(dictionary)
GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY(ptfx_name, guitars, 0.0, 0.0, 0.04, -90, 92, 0, 0.5, 0, 0, 0)
end
else
TASK.CLEAR_PED_TASKS_IMMEDIATELY(myr)
PED.SET_ENABLE_HANDCUFFS(myr, false)
ENTITY.DETACH_ENTITY(guitar, 1, 1)
ENTITY.DETACH_ENTITY(guitars, 1, 1)
end
gt = false
end)

local startViewMode
local scope_scaleform
local gaveHelmet = false
GTLP(sessionfun, '钢铁侠', {'ironman'}, 'E-噶秋莎,左键-机炮,右键-原子,\nShift-升,Ctrl-降', function()
    if not GTLuaScript.get_value(levitationCommand) then
        GTLuaScript.trigger_command(levitationCommand)
    end
    if not PED.IS_PED_WEARING_HELMET(players.user_ped()) then
        PED.GIVE_PED_HELMET(players.user_ped(), true, 4096, -1)
        gaveHelmet = true
    end
    local context = CAM._GET_CAM_ACTIVE_VIEW_MODE_CONTEXT()
    if startViewMode == nil then
        startViewMode = CAM.GET_CAM_VIEW_MODE_FOR_CONTEXT(context)
    end
    if CAM.GET_CAM_VIEW_MODE_FOR_CONTEXT(context) != 4 then
        CAM.SET_CAM_VIEW_MODE_FOR_CONTEXT(context, 4)
    end
    scope_scaleform = GRAPHICS.REQUEST_SCALEFORM_MOVIE('REMOTE_SNIPER_HUD')
    GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD(scope_scaleform, 'REMOTE_SNIPER_HUD')
    GRAPHICS.DRAW_SCALEFORM_MOVIE_FULLSCREEN(scope_scaleform, 255, 255, 255, 255, 0)
    GRAPHICS.END_SCALEFORM_MOVIE_METHOD()
    scope_scaleform2 = GRAPHICS.REQUEST_SCALEFORM_MOVIE('SUBMARINE_MISSILES')
    GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD(scope_scaleform2, 'SUBMARINE_MISSILES')
    GRAPHICS.DRAW_SCALEFORM_MOVIE_FULLSCREEN(scope_scaleform2, 255, 255, 255, 255, 0)
    GRAPHICS.END_SCALEFORM_MOVIE_METHOD()
    local barrageInput = 'INPUT_PICKUP'
    if not PAD._IS_USING_KEYBOARD(0) then
    barrageInput = 'INPUT_COVER'
    end
    memory.write_int(memory.script_global(1649593 + 1163), 1)
    SFasd.CLEAR_ALL()
    SFasd.TOGGLE_MOUSE_BUTTONS(false)
    SFasd.SET_DATA_SLOT(65, K.get_control_instructional_button(0, 'INPUT_ATTACK'), '爆炸')
    SFasd.SET_DATA_SLOT(35, K.get_control_instructional_button(0, 'INPUT_AIM'), '光束')
    SFasd.SET_DATA_SLOT(0, K.get_control_instructional_button(0, barrageInput), '导弹')
    SFasd.DRAW_INSTRUCTIONAL_BUTTONS()
    K.disable_control_action(2, 'INPUT_VEH_MOUSE_CONTROL_OVERRIDE')
    K.disable_control_action(2, 'INPUT_VEH_FLY_MOUSE_CONTROL_OVERRIDE')
    K.disable_control_action(2, 'INPUT_VEH_PUSHBIKE_PEDAL')
    K.disable_control_action(0, 'INPUT_ATTACK')
    K.disable_control_action(0, 'INPUT_AIM')
    if not (K.is_disabled_control_pressed(0, 'INPUT_ATTACK') or K.is_disabled_control_pressed(0, 'INPUT_AIM') or K.is_disabled_control_pressed(0, barrageInput)) then return end
    local a = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local b = getOffsetFromCam(80)
    local hash
    if K.is_disabled_control_pressed(0, 'INPUT_ATTACK') then
    hash = util.joaat('vehicle_weapon_player_lazer')
    if not WEAPON.HAS_WEAPON_ASSET_LOADED(hash) then
    WEAPON.REQUEST_WEAPON_ASSET(hash, 31, 26)
    while not WEAPON.HAS_WEAPON_ASSET_LOADED(hash) do
    wait()
    end
    end
    elseif K.is_disabled_control_pressed(0, 'INPUT_AIM') then
    hash = util.joaat('weapon_raypistol')
    if not WEAPON.HAS_PED_GOT_WEAPON(players.user_ped(), hash, false) then
    WEAPON.GIVE_WEAPON_TO_PED(players.user_ped(), hash, 9999, false, false)
    end
    else
    hash = util.joaat('weapon_rpg')
    if not WEAPON.HAS_PED_GOT_WEAPON(players.user_ped(), hash, false) then
    WEAPON.GIVE_WEAPON_TO_PED(players.user_ped(), hash, 9999, false, false)
    end
    a.x += math.random(0, 100) / 100
    a.y += math.random(0, 100) / 100
    a.z += math.random(0, 100) / 100
    end
    WEAPON.SET_CURRENT_PED_WEAPON(players.user_ped(), util.joaat('weapon_grenadelauncher'), true)
    MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(
    a.x, a.y, a.z,
    b.x, b.y, b.z,
    200,
    true,
    hash,
    PLAYER.PLAYER_PED_ID(),
    true, true, -1.0
    )
    end, function()
    if gaveHelmet then
    PED.REMOVE_PED_HELMET(players.user_ped(), true)
    gaveHelmet = false
    end
    HUD._HUD_WEAPON_WHEEL_IGNORE_CONTROL_INPUT(false)
    local pScaleform = memory.alloc_int()
    memory.write_int(pScaleform, scope_scaleform)
    GRAPHICS.SET_SCALEFORM_MOVIE_AS_NO_LONGER_NEEDED(pScaleform)
    GTLuaScript.trigger_command(levitationCommand, 'off')
    wait()
    CAM.SET_CAM_VIEW_MODE_FOR_CONTEXT(CAM._GET_CAM_ACTIVE_VIEW_MODE_CONTEXT(), startViewMode)
    startViewMode = nil
    end)

GTTG(sessionfun, "疯狗模式", {""}, "按e使用激光眼", function(state)
    GTLuaScript.trigger_commands("trails")
    GTLuaScript.trigger_commands("trailcolourrainbow")
    GTLuaScript.trigger_commands("lasereyes")
    GTLuaScript.trigger_commands("bodylight")
    GTLuaScript.trigger_commands("forcefield")
    GTLuaScript.trigger_commands("jedimode")
    GTLuaScript.trigger_commands("screenvisual")
    GTLuaScript.trigger_commands("wring")
    GTLuaScript.trigger_commands("JSfireWings")
end)

GTTG(sessionfun, "超级跳",{""}, "",function(gt)
state = gt
while state do
wait()
my=PLAYER.GET_PLAYER_PED()
MISC.SET_SUPER_JUMP_THIS_FRAME(my)
end
state = false
end)

GTLP(sessionfun, '起飞', {}, '按住空格+W鼠标控制方向,空格+SHIFT加速', function ()
    if PAD.IS_CONTROL_PRESSED(0, 22) then
        cam_pos = CAM.GET_GAMEPLAY_CAM_ROT(0)
        ENTITY.SET_ENTITY_ROTATION(players.user_ped(), cam_pos.x, cam_pos.y, cam_pos.z, 1, true)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0, 0.5, 0.1)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(players.user_ped(),pos.x,pos.y,pos.z,true, false, false)
    if PAD.GET_CONTROL_NORMAL(0, 21) == 1.0 then
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0, 2, 0.1)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(players.user_ped(),pos.x,pos.y,pos.z,true, false, false)
    end
    end
end)

GTLP(sessionfun, '悬浮', {"levitate"}, '', function ()
GTLuaScript.trigger_commands("levitate on")
GTLuaScript.trigger_commands("levitate off")
end)

GTAC(sessionfun, '翻跟斗', {}, '前空翻', function ()
    local hash = util.joaat("prop_ecola_can")
    request_model_load(hash)
    local prop = entities.create_object(hash, players.get_position(players.user()))
    ENTITY.FREEZE_ENTITY_POSITION(prop)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(players.user_ped(), prop, 0, 0, 0, 0, 0, 0, 0, true, false, false, false, 0, true)
    local hdg = CAM.GET_GAMEPLAY_CAM_ROT(0).z
    ENTITY.SET_ENTITY_ROTATION(prop, 0, 0, hdg, 1)
    for i=1, -360, -16 do
        ENTITY.SET_ENTITY_ROTATION(prop, i, 0, hdg, 1)
        wait()
    end
    ENTITY.DETACH_ENTITY(players.user_ped())
    entities.delete_by_handle(prop)
end)

GTTG(sessionfun, "表演魔术", {}, "", function(on)
    while not STREAMING.HAS_ANIM_DICT_LOADED("rcmbarry") do 
        STREAMING.REQUEST_ANIM_DICT("rcmbarry")
        wait()
    end
    if on then
    local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped(),true)
    jibage = OBJECT.CREATE_OBJECT(util.joaat("apa_mp_h_lit_lightpendant_05b"), pos.x, pos.y, pos.z, true, true, false)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(players.user_ped())
    TASK.TASK_PLAY_ANIM(players.user_ped(), "rcmbarry", "bar_1_attack_idle_aln", 5, 10, -1, 51, 5, false, false, false) 
    ENTITY.ATTACH_ENTITY_TO_ENTITY(jibage, players.user_ped(), PED.GET_PED_BONE_INDEX(players.user_ped(), 20000), 0.2, 0.7, 0.5, 90, 0,0, false, true, false, true, 1, true)
    PED.SET_ENABLE_HANDCUFFS(players.user_ped(),on)
    else
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
        PED.SET_ENABLE_HANDCUFFS(players.user_ped(),off)
        entities.delete_by_handle(jibage)
    end
end)

GTTG(sessionfun, "篮球", {}, "", function(on)
    while not STREAMING.HAS_ANIM_DICT_LOADED("mp_prison_break") do 
        STREAMING.REQUEST_ANIM_DICT("mp_prison_break")
        wait()
    end
    if on then
    local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped(),true)
    jibage = OBJECT.CREATE_OBJECT(util.joaat("sf_prop_sf_art_basketball_01a"), pos.x, pos.y, pos.z, true, true, false)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(players.user_ped())
    TASK.TASK_PLAY_ANIM(players.user_ped(), "mp_prison_break", "waypoint_c_loop", 5, 10, -1, 51, 5, false, false, false) 
    ENTITY.ATTACH_ENTITY_TO_ENTITY(jibage, players.user_ped(), PED.GET_PED_BONE_INDEX(players.user_ped(), 18905), 0.07,0,0,0,0,0.0, false, true, false, true, 1, true)
    PED.SET_ENABLE_HANDCUFFS(players.user_ped(),on)
    else
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
        PED.SET_ENABLE_HANDCUFFS(players.user_ped(),off)
        entities.delete_by_handle(jibage)
    end
end)

GTTG(sessionfun, "逼王", {}, "", function(on)
    while not STREAMING.HAS_ANIM_DICT_LOADED("rcmbarry") do 
        STREAMING.REQUEST_ANIM_DICT("rcmbarry")
        wait()
    end
    if on then
    local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped(),true)
    jibage = OBJECT.CREATE_OBJECT(util.joaat("v_res_d_dildo_f"), pos.x, pos.y, pos.z, true, true, false)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(players.user_ped())
    TASK.TASK_PLAY_ANIM(players.user_ped(), "rcmbarry", "base", 5, 10, -1, 51, 5, false, false, false) 
    ENTITY.ATTACH_ENTITY_TO_ENTITY(jibage, players.user_ped(), PED.GET_PED_BONE_INDEX(players.user_ped(), 24818), -0.3,0,0,283.0,90,0.0, false, true, false, true, 1, true)
    PED.SET_ENABLE_HANDCUFFS(players.user_ped(),on)
    else
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
        PED.SET_ENABLE_HANDCUFFS(players.user_ped(),off)
        entities.delete_by_handle(jibage)
    end
end)


GTTG(sessionfun, "逼王V2", {}, "", function(on)
    while not STREAMING.HAS_ANIM_DICT_LOADED("rcmbarry") do 
        STREAMING.REQUEST_ANIM_DICT("rcmbarry")
        wait()
    end
    if on then
    local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped(),true)
    guitar = OBJECT.CREATE_OBJECT(util.joaat("w_arena_airmissile_01a"), pos.x, pos.y, pos.z, true, true, false)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(players.user_ped())
    TASK.TASK_PLAY_ANIM(players.user_ped(), "rcmbarry", "base", 5, 10, -1, 51, 5, false, false, false) 
    ENTITY.ATTACH_ENTITY_TO_ENTITY(guitar, players.user_ped(), PED.GET_PED_BONE_INDEX(players.user_ped(), 24818), -0.3,0.1,0,0.2,90,360, false, true, false, true, 1, true)
    PED.SET_ENABLE_HANDCUFFS(players.user_ped(),on)
    else
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
        PED.SET_ENABLE_HANDCUFFS(players.user_ped(),off)
        entities.delete_by_handle(guitar)
    end
end)

GTTG(sessionfun, "逼王V3", {}, "", function(on)
    while not STREAMING.HAS_ANIM_DICT_LOADED("rcmbarry") do 
        STREAMING.REQUEST_ANIM_DICT("rcmbarry")
        wait()
    end
    if on then
    local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped(),true)
    guitar = OBJECT.CREATE_OBJECT(util.joaat("apa_mp_apa_crashed_usaf_01a"), pos.x, pos.y, pos.z, true, true, false)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(players.user_ped())
    TASK.TASK_PLAY_ANIM(players.user_ped(), "rcmbarry", "base", 5, 10, -1, 51, 5, false, false, false) 
    ENTITY.ATTACH_ENTITY_TO_ENTITY(guitar, players.user_ped(), PED.GET_PED_BONE_INDEX(players.user_ped(), 24818), -1,9,0,0.2,90,360, false, true, false, true, 1, true)
    PED.SET_ENABLE_HANDCUFFS(players.user_ped(),on)
    else
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
        PED.SET_ENABLE_HANDCUFFS(players.user_ped(),off)
        entities.delete_by_handle(guitar)
    end
end)

GTTG(sessionfun, "抱NPC", {}, "", function(on)
    while not STREAMING.HAS_ANIM_DICT_LOADED("amb@code_human_in_car_idles@generic@ds@base") do 
        STREAMING.REQUEST_ANIM_DICT("amb@code_human_in_car_idles@generic@ds@base")
        wait()
    end
    if on then
    local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped(),true)
    guitar = OBJECT.CREATE_OBJECT(util.joaat("vw_prop_vw_ped_hillbilly_01a"), pos.x, pos.y, pos.z, true, true, false)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(players.user_ped())
    TASK.TASK_PLAY_ANIM(players.user_ped(), "amb@code_human_in_car_idles@generic@ds@base", "base", 5, 3, -1, 51, 5, false, false, false) 
    ENTITY.ATTACH_ENTITY_TO_ENTITY(guitar, players.user_ped(), PED.GET_PED_BONE_INDEX(players.user_ped(), 24818), 0,0.53,0,0.2,90,360, false, true, false, true, 1, true)
    PED.SET_ENABLE_HANDCUFFS(players.user_ped(),on)
    else
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
        PED.SET_ENABLE_HANDCUFFS(players.user_ped(),off)
        entities.delete_by_handle(guitar)
    end
end)

GTTG(sessionfun, "送武器", {}, "", function(on)
    while not STREAMING.HAS_ANIM_DICT_LOADED("amb@code_human_in_car_mp_actions@v_sign@std@ps@base") do 
        STREAMING.REQUEST_ANIM_DICT("amb@code_human_in_car_mp_actions@v_sign@std@ps@base")
        wait()
    end
    if on then
    local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped(),true)
    guitar = OBJECT.CREATE_OBJECT(util.joaat("ex_office_swag_guns04"), pos.x, pos.y, pos.z, true, true, false)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(players.user_ped())
    TASK.TASK_PLAY_ANIM(players.user_ped(), "amb@code_human_in_car_mp_actions@v_sign@std@ps@base", "idle_a", 5, 10, -1, 51, 5, false, false, false) 
    ENTITY.ATTACH_ENTITY_TO_ENTITY(guitar, players.user_ped(), PED.GET_PED_BONE_INDEX(players.user_ped(), 24818), 0,0.53,0.1,0.2,90,360, false, true, false, true, 1, true)
    PED.SET_ENABLE_HANDCUFFS(players.user_ped(),on)
    else
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
        PED.SET_ENABLE_HANDCUFFS(players.user_ped(),off)
        entities.delete_by_handle(guitar)
    end
end)

GTAC(sessionfun, '瞬间移动', {}, '', function(on_click)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0, fortp, 0)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), pos['x'], pos['y'], pos['z'], true, false, false)
end)

fortp = 1
GTLuaScript.slider(sessionfun, '瞬移范围', {"fortpcount"}, '', 1, 100, 1, 1, function(s)
    fortp = s
end)

s_forcefield_range = 20
s_forcefield = 0
s_forcefield_names = {
    [0] = "推开",
    [1] = "弹飞",
    [2] = "拉近"
}

GTLP(sessionfun, "力场", {"sforcefield"}, "", function()
    if players.exists(players.user()) then
        local _entities = {}
        local player_pos = players.get_position(players.user())

        for _, vehicle in pairs(entities.get_all_vehicles_as_handles()) do
            local vehicle_pos = ENTITY.GET_ENTITY_COORDS(vehicle, false)
            if v3.distance(player_pos, vehicle_pos) <= s_forcefield_range then
                table.insert(_entities, vehicle)
            end
        end
        for _, ped in pairs(entities.get_all_peds_as_handles()) do
            local ped_pos = ENTITY.GET_ENTITY_COORDS(ped, false)
            if (v3.distance(player_pos, ped_pos) <= s_forcefield_range) and not PED.IS_PED_A_PLAYER(ped) then
                table.insert(_entities, ped)
            end
        end
        for _, entity in pairs(_entities) do
            local player_vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), true)
            local entity_type = ENTITY.GET_ENTITY_TYPE(entity)

            if NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(entity) and player_vehicle ~= entity then
                if entity_type == 1 then
                    PED.SET_PED_TO_RAGDOLL(entity, 500, 0, 0, false, false, false)
                end
                if s_forcefield == 1 then
                    ENTITY.APPLY_FORCE_TO_ENTITY(
                        entity, 3, 0, 0, 1, 0, 0, 0.5, 0, false, false, true, false, false
                    )
                else
                    local force = ENTITY.GET_ENTITY_COORDS(entity)
                    v3.sub(force, player_pos)
                    v3.normalise(force)

                    if s_forcefield == 2 then
                        v3.mul(force, -1)
                    end

                    ENTITY.APPLY_FORCE_TO_ENTITY(
                        entity, 3, force.x, force.y, force.z, 0, 0, 0.5, 0, false, false, true, false, false
                    )
                end
            end
        end
    end
end)

s_forcefield_direction_slider = GTLuaScript.slider_text(
    sessionfun, "力场方向", {"sforcefieldirection"}, "", s_forcefield_names, function()end
)
util.create_tick_handler(function()
    if not players.exists(players.user()) then
        return false
    end

    s_forcefield = GTLuaScript.get_value(s_forcefield_direction_slider)
end)

s_forcefield_range_slider = GTLuaScript.slider_float(
    sessionfun, "力场范围", {"sforcefieldrange"}, "", 100, 10000, 2000, 10, function(value)
        s_forcefield_range = value/100
end)

GTAC(sessionfun,"生成多米诺骨牌", {"spawndominoes"}, "很无聊的功能", function()
    local hash = util.joaat("prop_boogieboard_01")
    request_model_load(hash)
    local last_ent = players.user_ped()
    for i=2, 25 do 
        local c = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(last_ent, 0, -i, 0)
        local d = entities.create_object(hash, c)
        ENTITY.SET_ENTITY_HEADING(d, ENTITY.GET_ENTITY_HEADING(last_ent))
        OBJECT.PLACE_OBJECT_ON_GROUND_PROPERLY(d)
    end
end)

GTAC(sessionfun, '一键获得雪球', {}, '获得雪球！', function ()
    yijianxueqiu()
end)
    
GTAC(sessionfun, '一键获得烟花发射器', {}, '获得烟花发射器！', function ()
    yijianyanhua()
end)
    
GTLP(jigaungyan, "激光眼V1", {"lasereyes"}, "按E键", function(on)
    laser_eyes()
end)


        local hash <const> = util.joaat("VEHICLE_WEAPON_PLAYER_LAZER")
        local showNotification = true
        local lastShot = newTimer()
        local sound = Sound.new("Fire_Loop", "DLC_IE_VV_Gun_Player_Sounds")


        local DisableControlActions = function()
            PAD.DISABLE_CONTROL_ACTION(0, 106, true)
            PAD.DISABLE_CONTROL_ACTION(0, 122, true)
            PAD.DISABLE_CONTROL_ACTION(0, 135, true)
            PAD.DISABLE_CONTROL_ACTION(0, 140, true)
            PAD.DISABLE_CONTROL_ACTION(0, 141, true)
            PAD.DISABLE_CONTROL_ACTION(0, 142, true)
            PAD.DISABLE_CONTROL_ACTION(0, 263, true)
            PAD.DISABLE_CONTROL_ACTION(0, 264, true)
        end

        GTLP(jigaungyan, "激光眼V2", {"combustionman"}, "按E键", function()
        
            HUD.DISPLAY_SNIPER_SCOPE_THIS_FRAME()
            DisableControlActions()
            if not WEAPON.HAS_WEAPON_ASSET_LOADED(hash) then
                WEAPON.REQUEST_WEAPON_ASSET(hash, 31, 26)
            end
        
            if not PAD.IS_DISABLED_CONTROL_PRESSED(51, 51) then
                if not sound:hasFinished() then
                    sound:stop()
                end
            elseif lastShot.elapsed() > 100 then
                local pos = PED.GET_PED_BONE_COORDS(players.user_ped(), 0x322C, 0.0, 0.0, 0.0)
                local offset = get_offset_from_cam(80)
                if  sound:hasFinished() then
                    sound:playFromEntity(players.user_ped())
                    AUDIO.SET_VARIABLE_ON_SOUND(sound.Id, "fireRate", 10.0)
                end
                MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(
                    pos.x, pos.y, pos.z,
                    offset.x, offset.y, offset.z,
                    200,
                    true,
                    hash, players.user_ped(), true, true, -1.0
                )
                lastShot.reset()
            end
        end, function()
            if not sound:hasFinished() then
                sound:stop()
            end
        end)

        Lazer = {buttons = {68, 25}}
        Lazer_buttons = {Str_trans('Aim'), Str_trans('Pickup/Horn')}
        lazer = {exp = false, bull = 'WEAPON_TACTICALRIFLE', crosshair = true, vehicle = true}
        GTLP(jigaungyan, ('激光眼V3'), {'Leyeson'}, ('长按滑鼠右键'), function (on)
        
            if lazer.crosshair then
                HUD.DISPLAY_SNIPER_SCOPE_THIS_FRAME()
            end
            
            local weap = util.joaat(lazer.bull)
            local camrot = CAM.GET_FINAL_RENDERED_CAM_ROT(2)
            REQUEST_WEAPON_ASSET(weap)
            if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped()) then
                if Lazer.buttons[1] == 68 then
                    if set.scale then
                        SFlevaim()
                    end
                else
                    if set.scale then
                        SFlevhorn()
                    end
                end
            else
                if Lazer.buttons[1] == 38 then
                    if set.scale then
                        SFlepickup()
                    end
                else
                    if set.scale then
                        SFleaim()
                    end
                end
            end
            local impact = v3.new()
            if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped()) and PAD.IS_CONTROL_PRESSED(0, Lazer.buttons[1]) and lazer.vehicle then
                Leyes(lazer, impact, camrot, weap)
                ENTITY.SET_ENTITY_ROTATION(entities.get_user_vehicle_as_handle(), 0, 0, camrot.z, 2, true)
            elseif not PED.IS_PED_IN_ANY_VEHICLE(players.user_ped()) and PAD.IS_CONTROL_PRESSED(0, Lazer.buttons[2]) then
                Leyes(lazer, impact, camrot, weap)
            end
        end)

GTTG(jigaungyan, "爆炸", {""}, "", function(on)
    lazer.exp = on
end)

GTLuaScript.list_select(jigaungyan, "换子弹", {'lebullets'}, "", Leyen, 1, function (bulsel)
    lazer.bull = Leyel[bulsel] 
end)

GTLP(sessionfun, "爆炸圈", {""}, "爆炸围着您绕圈圈", function(on)
    baozhanquan()
end)

GTTG(sessionfun, "超级跑", {"Super Run"}, "", function(on)
if on then
Super = on
GTLuaScript.trigger_commands("walkspeed 1.5")
GTLuaScript.trigger_commands("gracefullanding on")
GTLuaScript.trigger_commands("superrun 1.2")
else
GTLuaScript.trigger_commands("walkspeed 1")
GTLuaScript.trigger_commands("gracefullanding off")
GTLuaScript.trigger_commands("superrun 0")
Super = off
end
end,false)

GTTG(sessionfun, "超级跳", {"hulkmode"}, "", function(toggle)
if toggle then
 GTLuaScript.trigger_commands("damagemultiplier 10000")
GTLuaScript.trigger_commands("superjump")
util.toast("Hulk Mode On")
else
GTLuaScript.trigger_commands("damagemultiplier 1.01")
GTLuaScript.trigger_commands("damagemultiplier 1")
GTLuaScript.trigger_commands("superjump")
util.toast("Hulk Mode Off")
end 
end)

GTAC(sessionfun, '被拷了', {}, '', function (f)
	pped = players.user_ped(players.user())
	PED.SET_PED_COMPONENT_VARIATION(pped, 7, 25, 0, 0)
	WEAPON.GIVE_DELAYED_WEAPON_TO_PED(pped, 0xD04C944D, 0, 1)
end)

local rotation = 0
local loop_count = 0
GTLP(sessionfun,"霹雳舞", {}, "倒头旋转", function()
local dict, name
    if loop_count <= 200 then
        dict = "missfbi5ig_20b"
        name = "hands_up_scientist"
    elseif loop_count <= 400 then
        dict = "nm@hands"
        name = "hands_up"
    elseif loop_count <= 600 then
        dict = "missheist_agency2ahands_up"
        name = "handsup_anxious"
    elseif loop_count <= 800 then
        dict = "missheist_agency2ahands_up"
        name = "handsup_loop"
    end

    ENTITY.SET_ENTITY_ROTATION(players.user_ped(), 180, 0, rotation, 1, true)
    ent_func.has_anim_dict_loaded(dict)
    TASK.TASK_PLAY_ANIM(players.user_ped(), dict, name, 8.0, 0, -1, 0, 0.0, 0, 0, 0)
 
    rotation = rotation + 5
    if loop_count < 1000 then
        loop_count = loop_count + 1
    else
        loop_count = 0
    end
end, function()
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
end)


GTTG(sessionfun, "忍者跑",{""}, "跑得飞快滴忍者",function(on)
renzhepao(on)
end)

GTTG(sessionfun, "痛击队友", {}, "对队友展开攻击", function(toggle)
PED.SET_CAN_ATTACK_FRIENDLY(players.user_ped(), toggle, false) 
end)

GTLP(sessionfun, "快速近战", {"fastmelee"}, "更快的近战攻击", function()
if TASK.GET_IS_TASK_ACTIVE(players.user_ped(), 130) then
PED.FORCE_PED_AI_AND_ANIMATION_UPDATE(players.user_ped())
end
end)

GTLP(sessionfun, "快速攀爬", {"fastmount"}, "更快的人物攀爬动作", function()
if TASK.GET_IS_TASK_ACTIVE(players.user_ped(), 50) or TASK.GET_IS_TASK_ACTIVE(players.user_ped(), 51) then
PED.FORCE_PED_AI_AND_ANIMATION_UPDATE(players.user_ped())
end
end)

GTLP(sessionfun, "JB炮", {"用JB发射炮弹"}, "", function ()
local ptfx_asset = "scr_indep_fireworks"
local effect_name = "scr_indep_firework_trailburst"
diaoshepao(ptfx_asset)
GRAPHICS.USE_PARTICLE_FX_ASSET(ptfx_asset)
GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY(effect_name, players.user_ped(), 0.0, 0.0, -0.3, -90.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0)
for i=1, 10 do 
local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0.0, i, 0.0)
FIRE.ADD_EXPLOSION(coords['x'], coords['y'], coords['z'], 67, 0.0, false, false, 0.0, true)
end
end)

GTLP(sessionfun, "JB炮v2", {"用JB发射炮弹"}, "", function ()
local ptfx_asset = "scr_indep_fireworks"
local effect_name = "scr_indep_firework_trail_spawn"
diaoshepao(ptfx_asset)
GRAPHICS.USE_PARTICLE_FX_ASSET(ptfx_asset)
GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY(effect_name, players.user_ped(), 0.0, 0.0, -0.3, -90.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0)
for i=1, 10 do 
local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0.0, i, 0.0)
FIRE.ADD_EXPLOSION(coords['x'], coords['y'], coords['z'], 67, 0.0, false, false, 0.0, true)
end
end)

GTTG(sessionfun, "投降",{""}, "按X",function(state)
handsup = state
while handsup do
hhandup()
wait()
end
end)
    
local bigbigbig = false
--[[GTTG(dachuizi, "大锤V1", {"bighammer"}, "", function(on)
    if on then
        WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),-1810795771,15,true,true)
        local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(),true)
        dachui = OBJECT.CREATE_OBJECT(util.joaat("prop_bollard_02a"), pos.x, pos.y, pos.z, true, true, false)
        tongzi = OBJECT.CREATE_OBJECT(util.joaat("prop_barrel_02a"), pos.x, pos.y, pos.z, true, true, false)
        GTLuaScript.trigger_commands("damagemultiplier 1000")
        GTLuaScript.trigger_commands("rangemultiplier 1.5")
        ENTITY.ATTACH_ENTITY_TO_ENTITY(dachui, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.2, 0.95, 0.2, 105, 30.0, 0, true, true, false, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(tongzi,dachui, 0,  0, 0, -0.2, -35.0, 100.0,0, true, true, false, false, 0, true)
        wait(1000)
        bigbigbig = on
    else
        GTLuaScript.trigger_commands("damagemultiplier 1")
        GTLuaScript.trigger_commands("rangemultiplier 1")
        entities.delete_by_handle(dachui)
        entities.delete_by_handle(tongzi)
        bigbigbig = off
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),-1810795771)
    end
end,false)]]

local bigbarrelqq = false
GTTG(dachuizi, "大锤V2", {""}, "", function(on)
    if on then
        WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),-1810795771,15,true,true)
        local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(),true)
        dachui = OBJECT.CREATE_OBJECT(util.joaat("prop_glass_stack_03"), pos.x, pos.y, pos.z, true, true, false)
        tongzi = OBJECT.CREATE_OBJECT(util.joaat("prop_barrel_pile_03"), pos.x, pos.y, pos.z, true, true, false)
        GTLuaScript.trigger_commands("damagemultiplier 1000")
        GTLuaScript.trigger_commands("rangemultiplier 1.5")
        ENTITY.ATTACH_ENTITY_TO_ENTITY(dachui, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.2, 0.95, 0.2, 105, 30.0, 0, true, true, false, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(tongzi,dachui, 0,  0, 0, -0.2, -35.0, 100.0,0, true, true, false, false, 0, true)
        wait(1000)
        bigbarrelqq = on
    else
    GTLuaScript.trigger_commands("damagemultiplier 1")
    GTLuaScript.trigger_commands("rangemultiplier 1")
    entities.delete_by_handle(dachui)
    entities.delete_by_handle(tongzi)
    bigbarrelqq = off
    WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),-1810795771)
end
end,false)

GTTG(dachuizi, "大锤V3", {""}, "", function(on)
    if on then
        WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),-1810795771,15,true,true)
        local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(),true)
        dachui = OBJECT.CREATE_OBJECT(util.joaat("prop_bollard_02b"), pos.x, pos.y, pos.z, true, true, false)
        tongzi = OBJECT.CREATE_OBJECT(util.joaat("prop_barrel_02b"), pos.x, pos.y, pos.z, true, true, false)
        GTLuaScript.trigger_commands("damagemultiplier 1000")
        GTLuaScript.trigger_commands("rangemultiplier 1.5")
        ENTITY.ATTACH_ENTITY_TO_ENTITY(dachui, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.2, 0.95, 0.2, 105, 30.0, 0, true, true, false, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(tongzi,dachui, 0,  0, 0, -0.2, -35.0, 100.0,0, true, true, false, false, 0, true)
        wait(1000)
        bigbigbig = on
    else
        GTLuaScript.trigger_commands("damagemultiplier 1")
        GTLuaScript.trigger_commands("rangemultiplier 1")
        entities.delete_by_handle(dachui)
        entities.delete_by_handle(tongzi)
        bigbigbig = off
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),-1810795771)
    end
end,false)

GTTG(dachuizi, "大锤V4", {""}, "", function(on)
    if on then
        WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),-1810795771,15,true,true)
        local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(),true)
        dachui = OBJECT.CREATE_OBJECT(util.joaat("prop_bollard_03a"), pos.x, pos.y, pos.z, true, true, false)
        tongzi = OBJECT.CREATE_OBJECT(util.joaat("prop_barrel_03a"), pos.x, pos.y, pos.z, true, true, false)
        GTLuaScript.trigger_commands("damagemultiplier 1000")
        GTLuaScript.trigger_commands("rangemultiplier 1.5")
        ENTITY.ATTACH_ENTITY_TO_ENTITY(dachui, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.2, 0.95, 0.2, 105, 30.0, 0, true, true, false, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(tongzi,dachui, 0,  0, 0, -0.2, -35.0, 100.0,0, true, true, false, false, 0, true)
        wait(1000)
        bigbigbig = on
    else
        GTLuaScript.trigger_commands("damagemultiplier 1")
        GTLuaScript.trigger_commands("rangemultiplier 1")
        entities.delete_by_handle(dachui)
        entities.delete_by_handle(tongzi)
        bigbigbig = off
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),-1810795771)
    end
end,false)

GTTG(dachuizi, "大锤V5", {""}, "", function(on)
    if on then
        WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),-1810795771,15,true,true)
        local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(),true)
        dachui = OBJECT.CREATE_OBJECT(util.joaat("prop_bollard_04"), pos.x, pos.y, pos.z, true, true, false)
        tongzi = OBJECT.CREATE_OBJECT(util.joaat("prop_barrel_03d"), pos.x, pos.y, pos.z, true, true, false)
        GTLuaScript.trigger_commands("damagemultiplier 1000")
        GTLuaScript.trigger_commands("rangemultiplier 1.5")
        ENTITY.ATTACH_ENTITY_TO_ENTITY(dachui, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.2, 0.95, 0.2, 105, 30.0, 0, true, true, false, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(tongzi,dachui, 0,  0, 0, -0.2, -35.0, 100.0,0, true, true, false, false, 0, true)
        wait(1000)
        bigbigbig = on
    else
        GTLuaScript.trigger_commands("damagemultiplier 1")
        GTLuaScript.trigger_commands("rangemultiplier 1")
        entities.delete_by_handle(dachui)
        entities.delete_by_handle(tongzi)
        bigbigbig = off
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),-1810795771)
    end
end,false)

GTTG(dachuizi, "大锤V6", {""}, "", function(on)
    if on then
        WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),-1810795771,15,true,true)
        local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(),true)
        dachui = OBJECT.CREATE_OBJECT(util.joaat("prop_bollard_05"), pos.x, pos.y, pos.z, true, true, false)
        tongzi = OBJECT.CREATE_OBJECT(util.joaat("prop_barbell_80kg"), pos.x, pos.y, pos.z, true, true, false)
        GTLuaScript.trigger_commands("damagemultiplier 1000")
        GTLuaScript.trigger_commands("rangemultiplier 1.5")
        ENTITY.ATTACH_ENTITY_TO_ENTITY(dachui, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.2, 0.95, 0.2, 105, 30.0, 0, true, true, false, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(tongzi,dachui, 0,  0, 0, -0.2, -35.0, 100.0,0, true, true, false, false, 0, true)
        wait(1000)
        bigbigbig = on
    else
        GTLuaScript.trigger_commands("damagemultiplier 1")
        GTLuaScript.trigger_commands("rangemultiplier 1")
        entities.delete_by_handle(dachui)
        entities.delete_by_handle(tongzi)
        bigbigbig = off
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),-1810795771)
    end
end,false)

GTTG(dachuizi, "大锤V7", {""}, "", function(on)
    if on then
        WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),-1810795771,15,true,true)
        local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(),true)
        dachui = OBJECT.CREATE_OBJECT(util.joaat("prop_bomb_01"), pos.x, pos.y, pos.z, true, true, false)
        tongzi = OBJECT.CREATE_OBJECT(util.joaat("prop_barrachneon"), pos.x, pos.y, pos.z, true, true, false)
        GTLuaScript.trigger_commands("damagemultiplier 1000")
        GTLuaScript.trigger_commands("rangemultiplier 1.5")
        ENTITY.ATTACH_ENTITY_TO_ENTITY(dachui, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.2, 0.95, 0.2, 105, 30.0, 0, true, true, false, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(tongzi,dachui, 0,  0, 0, -0.2, -35.0, 100.0,0, true, true, false, false, 0, true)
        wait(1000)
        bigbigbig = on
    else
        GTLuaScript.trigger_commands("damagemultiplier 1")
        GTLuaScript.trigger_commands("rangemultiplier 1")
        entities.delete_by_handle(dachui)
        entities.delete_by_handle(tongzi)
        bigbigbig = off
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),-1810795771)
    end
end,false)

GTTG(dachuizi, "大锤V8", {""}, "", function(on)
    if on then
        WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),-1810795771,15,true,true)
        local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(),true)
        dachui = OBJECT.CREATE_OBJECT(util.joaat("prop_bollard_01c"), pos.x, pos.y, pos.z, true, true, false)
        tongzi = OBJECT.CREATE_OBJECT(util.joaat("prop_barier_conc_01a"), pos.x, pos.y, pos.z, true, true, false)
        GTLuaScript.trigger_commands("damagemultiplier 1000")
        GTLuaScript.trigger_commands("rangemultiplier 1.5")
        ENTITY.ATTACH_ENTITY_TO_ENTITY(dachui, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.2, 0.95, 0.2, 105, 30.0, 0, true, true, false, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(tongzi,dachui, 0,  0, 0, -0.2, -35.0, 100.0,0, true, true, false, false, 0, true)
        wait(1000)
        bigbigbig = on
    else
        GTLuaScript.trigger_commands("damagemultiplier 1")
        GTLuaScript.trigger_commands("rangemultiplier 1")
        entities.delete_by_handle(dachui)
        entities.delete_by_handle(tongzi)
        bigbigbig = off
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),-1810795771)
    end
end,false)

GTTG(dachuizi, "大锤V9", {""}, "", function(on)
    if on then
        WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),-1810795771,15,true,true)
        local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(),true)
        dachui = OBJECT.CREATE_OBJECT(util.joaat("prop_bollard_01c"), pos.x, pos.y, pos.z, true, true, false)
        tongzi = OBJECT.CREATE_OBJECT(util.joaat("prop_boogbd_stack_01"), pos.x, pos.y, pos.z, true, true, false)
        menu.trigger_commands("damagemultiplier 1000")
        menu.trigger_commands("rangemultiplier 1.5")
        ENTITY.ATTACH_ENTITY_TO_ENTITY(dachui, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.2, 0.95, 0.2, 105, 30.0, 0, true, true, false, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(tongzi,dachui, 0,  0, 0, -0.2, -35.0, 100.0,0, true, true, false, false, 0, true)
        wait(1000)
        bigbigbig = on
    else
        menu.trigger_commands("damagemultiplier 1")
        menu.trigger_commands("rangemultiplier 1")
        entities.delete_by_handle(dachui)
        entities.delete_by_handle(tongzi)
        bigbigbig = off
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),-1810795771)
    end
end,false)

GTTG(sessionfun, "掏出诺基亚", {}, "", function(on)
    while not STREAMING.HAS_ANIM_DICT_LOADED("amb@world_human_mobile_film_shocking@female@base") do 
        STREAMING.REQUEST_ANIM_DICT("amb@world_human_mobile_film_shocking@female@base")
        wait()
    end
    if on then
    local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped(),true)
    guitar = OBJECT.CREATE_OBJECT(util.joaat("prop_v_m_phone_01"), pos.x, pos.y, pos.z, true, true, false)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(players.user_ped())
    TASK.TASK_PLAY_ANIM(players.user_ped(), "amb@world_human_mobile_film_shocking@female@base", "base", 10, 3, -1, 51, 5, false, false, false) --play anim 
    ENTITY.ATTACH_ENTITY_TO_ENTITY(guitar, players.user_ped(), PED.GET_PED_BONE_INDEX(players.user_ped(), 24818), 0.52,0.43,-0.16,0.2,70,340, false, true, false, true, 1, true)
    PED.SET_ENABLE_HANDCUFFS(players.user_ped(),on)
    else
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
        PED.SET_ENABLE_HANDCUFFS(players.user_ped(),off)
        entities.delete_by_handle(guitar)
    end
end)

GTTG(sessionfun, "高尔夫背包",{}, "橙色,背在身上",function(on)
    local six = "prop_golf_bag_01b"
    if on then     
        attach_to_player(six, 0, 0, -0.3, 0.3, 0, 0,0)
    else
        delete_object(six)
    end
end)

GTTG(sessionfun, "高尔夫背包V2",{}, "粉色,背在身上",function(on)
    local six = "prop_golf_bag_01c"
    if on then     
        attach_to_player(six, 0, 0, -0.3, 0.3, 0, 0,0)
    else
        delete_object(six)
    end
end)

GTTG(sessionfun, "另类人", {}, "", function(on)
    while not STREAMING.HAS_ANIM_DICT_LOADED("amb@world_human_sit_ups@male@base") do 
        STREAMING.REQUEST_ANIM_DICT("amb@world_human_sit_ups@male@base")
        wait()
    end
    if on then
    local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped(),true)
    guitar = OBJECT.CREATE_OBJECT(util.joaat(""), pos.x, pos.y, pos.z, true, true, false)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(players.user_ped())
    TASK.TASK_PLAY_ANIM(players.user_ped(), "amb@world_human_sit_ups@male@base", "base", 10, 3, -1, 51, 5, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(guitar, players.user_ped(), PED.GET_PED_BONE_INDEX(players.user_ped(), 24818), 0.52,0.43,-0.16,0.2,70,340, false, true, false, true, 1, true)
    PED.SET_ENABLE_HANDCUFFS(players.user_ped(),on)
    else
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
        PED.SET_ENABLE_HANDCUFFS(players.user_ped(),off)
        entities.delete_by_handle(guitar)
    end
end)

GTTG(sessionfun, "螺旋丸", {}, "搓球球", function(on)
    while not STREAMING.HAS_ANIM_DICT_LOADED("anim@mp_player_intincarfreakoutstd@ps@") do 
        STREAMING.REQUEST_ANIM_DICT("anim@mp_player_intincarfreakoutstd@ps@")
        wait()
    end
    if on then
    local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped(),true)
    guitar = OBJECT.CREATE_OBJECT(util.joaat("prop_bowling_ball"), pos.x, pos.y, pos.z, true, true, false)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(players.user_ped())
    TASK.TASK_PLAY_ANIM(players.user_ped(), "anim@mp_player_intincarfreakoutstd@ps@", "idle_a_fp", 10, 3, -1, 51, 5, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(guitar, players.user_ped(), PED.GET_PED_BONE_INDEX(players.user_ped(), 24818), 0.30,0.53,0,0.2,70,340, false, true, false, true, 1, true)
    PED.SET_ENABLE_HANDCUFFS(players.user_ped(),on)
    else
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
        PED.SET_ENABLE_HANDCUFFS(players.user_ped(),off)
        entities.delete_by_handle(guitar)
    end
end)

GTTG(sessionfun, "小书包",{""}, "",function(on)
    local six = "tr_prop_tr_bag_djlp_01a"
    if on then     
        attach_to_player(six, 0, 0, -0.2, 0.1, 0, 0,0)
    else
        delete_object(six)
    end
end)

GTTG(sessionfun, "龟壳",{""}, "",function(on)
    local six = "prop_ld_binbag_01"
    if on then     
        attach_to_player(six, 0, 0, 0, 0.2, 90, 0,0)
    else
        delete_object(six)
    end
end)
    
GTTG(toubushuzi, "250",{""}, "",function(on)
    local six = "prop_mp_num_5"
    local sixs = "prop_mp_num_2"
    local sixss = "prop_mp_num_0"
    if on then     
        attach_to_player(six, 0, 0.0, 0, 1.7, 0, 0,0)
        attach_to_player(sixss, 0, 1.0, 0, 1.7, 0, 0,0)
        attach_to_player(sixs, 0, -1.0, 0, 1.7, 0, 0,0)
    else
        delete_object(six)
        delete_object(sixss)
        delete_object(sixs)
    end
end)

GTTG(toubushuzi, "520",{""}, "",function(on)
    local six = "prop_mp_num_5"
    local sixs = "prop_mp_num_2"
    local sixss = "prop_mp_num_0"
    if on then     
        attach_to_player(sixs, 0, 0.0, 0, 1.7, 0, 0,0)
        attach_to_player(sixss, 0, 1.0, 0, 1.7, 0, 0,0)
        attach_to_player(six, 0, -1.0, 0, 1.7, 0, 0,0)
    else
        delete_object(six)
        delete_object(sixss)
        delete_object(sixs)
    end
end)

GTTG(toubushuzi, "球",{""}, "",function(on)
    local six = "v_ilev_exball_blue"
    if on then     
        attach_to_player(six, 0, 0, 0, 0.8, 0, 0,0)
    else
        delete_object(six)
    end
end)

GTTG(toubushuzi, "炸弹",{""}, "",function(on)
    local six = "imp_prop_bomb_ball"
    if on then     
        attach_to_player(six, 0, 0, 0, 0.8, 0, 0,0)
    else
        delete_object(six)
    end
end)

GTTG(toubushuzi, "七叶草",{""}, "",function(on)
    local six = "prop_ex_weed_wh"
    if on then     
        attach_to_player(six, 2, 0, 0, 1.7, 0, 360,0)
    else
        delete_object(six)
    end
end)

GTTG(toubushuzi, "嘟嘟车",{""}, "",function(on)
    local sixs = "prop_entityxf_covered"
    if on then     
        attach_to_player(sixs, 2, 0.0, 0, -0.8, 0, 0,0)
    else
        delete_object(sixs)
    end
end)

GTTG(toubushuzi, "光头遗照",{""}, "",function(on)
    local sixs = "prop_employee_month_01"
    if on then     
        attach_to_player(sixs, 2, 0.0, 0, 1.7, 0, 0,180)
    else
        delete_object(sixs)
    end
end)

GTTG(toubushuzi, "小富遗照",{""}, "",function(on)
    local sixs = "prop_employee_month_02"
    if on then     
        attach_to_player(sixs, 2, 0.0, 0, 1.7, 0, 0,180)
    else
        delete_object(sixs)
    end
end)

GTTG(toubushuzi, "中国国旗",{""}, "",function(on)
    local six = "apa_prop_flag_china"
    if on then     
        attach_to_player(six, 2, 0, 0, 1.7, 0, 360,0)
    else
        delete_object(six)
    end
end)

GTTG(toubushuzi, "国旗1",{""}, "",function(on)
    local six = "prop_flag_sheriff_s"
    if on then     
        attach_to_player(six, 2, 0, 0, 1.7, 0, 360,0)
    else
        delete_object(six)
    end
end)

GTTG(toubushuzi, "国旗2",{""}, "",function(on)
    local six = "prop_flag_canada_s"
    if on then     
        attach_to_player(six, 2, 0, 0, 1.7, 0, 360,0)
    else
        delete_object(six)
    end
end)

GTTG(toubushuzi, "国旗3",{""}, "",function(on)
    local six = "prop_flag_eu_s"
    if on then     
        attach_to_player(six, 2, 0, 0, 1.7, 0, 360,0)
    else
        delete_object(six)
    end
end)

GTTG(toubushuzi, "国旗4",{""}, "",function(on)
    local six = "prop_flag_german_s"
    if on then     
        attach_to_player(six, 2, 0, 0, 1.7, 0, 360,0)
    else
        delete_object(six)
    end
end)

GTTG(toubushuzi, "国旗5",{""}, "",function(on)
    local six = "prop_flag_ireland_s"
    if on then     
        attach_to_player(six, 2, 0, 0, 1.7, 0, 360,0)
    else
        delete_object(six)
    end
end)

GTTG(toubushuzi, "国旗6",{""}, "",function(on)
    local six = "prop_flag_japan_s"
    if on then     
        attach_to_player(six, 2, 0, 0, 1.7, 0, 360,0)
    else
        delete_object(six)
    end
end)

GTTG(toubushuzi, "国旗7",{""}, "",function(on)
    local six = "prop_flag_ls_s"
    if on then     
        attach_to_player(six, 2, 0, 0, 1.7, 0, 360,0)
    else
        delete_object(six)
    end
end)

GTTG(toubushuzi, "国旗8",{""}, "",function(on)
    local six = "prop_flag_mexico_s"
    if on then     
        attach_to_player(six, 2, 0, 0, 1.7, 0, 360,0)
    else
        delete_object(six)
    end
end)

GTTG(toubushuzi, "国旗9",{""}, "",function(on)
    local six = "prop_flag_lsfd_s"
    if on then     
        attach_to_player(six, 2, 0, 0, 1.7, 0, 360,0)
    else
        delete_object(six)
    end
end)

GTTG(toubushuzi, "国旗10",{""}, "",function(on)
    local six = "prop_flag_us_s"
    if on then     
        attach_to_player(six, 2, 0, 0, 1.7, 0, 360,0)
    else
        delete_object(six)
    end
end)

suijijianqi = function(x)
    local r = math.random(1,5)
    return x[r]
end

GTTG(wushidao, "武士刀",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_cs_katana_01"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.03, 0, 0, -80, 0.0, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "荣誉",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("xs_prop_trophy_firepit_01a"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0, -0.1, -0.07, -72, 0.0, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "荣誉2",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("xs_prop_trophy_carfire_01a"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0, -0.1, -0.07, -72, 0.0, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "荣誉3",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("xs_prop_trophy_flags_01a"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.02, -0.1, -0.05, -72, 0.0, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
        for k,ent in pairs(entities.get_all_objects_as_handles()) do
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
            entities.delete_by_handle(ent)
            count = count + 1
            wait()
        end
    end
end)

GTTG(wushidao, "荣誉4",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("xs_prop_trophy_cup_01a"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.02, -0.15, -0.05, -72, 0.0, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
        for k,ent in pairs(entities.get_all_objects_as_handles()) do
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
            entities.delete_by_handle(ent)
            count = count + 1
            wait()
        end
    end
end)

GTTG(wushidao, "手提袋",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_med_bag_01b"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.3, 0, 0, -90, -10, 90, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(sessionfun, "灯架",{""}, "手持灯架",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_kino_light_02"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.07, 0, 0, -100, 0.0, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "键盘",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_cs_keyboard_01"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.3, 0, 0, -360, 0.5, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "高尔夫球杆",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_golf_driver"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.05, 0, 0, 120, 0.5, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "凳子",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_cs_office_chair"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.32, 0.05, 0.28, -90, 0.5, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "娃哈哈",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_energy_drink"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.05, 0.05, 0, -90, 0.5, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "队长盾牌",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_ex_b_shark"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.05, 0.05, 0, -90, 0.5, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "队长盾牌2",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_ex_b_shark_g"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.05, 0.05, 0, -90, 0.5, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "队长盾牌3",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_ex_b_shark_p"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.05, 0.05, 0, -90, 0.5, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "队长盾牌4",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_ex_b_shark_pk"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.05, 0.05, 0, -90, 0.5, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "队长盾牌5",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_ex_b_shark_wh"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.05, 0.05, 0, -90, 0.5, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "队长盾牌6",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_ex_b_time"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.05, 0.05, 0, -90, 0.5, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "队长盾牌7",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_ex_b_time_g"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.05, 0.05, 0, -90, 0.5, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "队长盾牌8",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_ex_b_time_p"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.05, 0.05, 0, -90, 0.5, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "队长盾牌9",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_ex_b_time_pk"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.05, 0.05, 0, -90, 0.5, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "队长盾牌10",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_ex_b_time_wh"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.05, 0.05, 0, -90, 0.5, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "队长盾牌11",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_ex_bmd"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.05, 0.05, 0, -90, 0.5, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "队长盾牌12",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("prop_gr_bmd_b"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.05, 0.05, 0, -90, 0.5, 0, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

GTTG(wushidao, "御盘术V1",{""}, "",function(on)
    local katana = "prop_cs_keyboard_01"
    if on then     
        attach_to_player(katana, 1, -0.3, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.3, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, -0.5, 0, 0.5, 0, 90,90)
        attach_to_player(katana, 1, 0.5, 0, 0.5, 0, 90,90)
        attach_to_player(katana, 1, -0.8, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.8, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.0, 0, 1, 0, 90,90)
        attach_to_player(katana, 1, 1.0, 0, 0, -90, 0,0)
        attach_to_player(katana, 1, -1.0, 0, 0, 80, 90,95)
        attach_to_player(katana, 1, 2.0, 0, 0.2, -90, 0,0)
        attach_to_player(katana, 1, -2.0, 0, 0.2, 80, 90,95)
        attach_to_player(katana, 1, 1.0, 0, 0.4, -90, 0,0)
        attach_to_player(katana, 1, -1.0, 0, 0.4, 80, 90,95)
        attach_to_player(katana, 1, 1.5, 0, 0.6, -90, 0,0)
        attach_to_player(katana, 1, -1.5, 0, 0.6, 80, 90,95)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, -150,0)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, 150,0)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, 180,0)
        attach_to_player(katana, 0, 0.23, 0, 0, 0, -180,100)
        attach_to_player(katana, 0, -0.23, 0, 0, 0, -180,100)
        local player_pos = players.get_position(players.user())
        request_ptfx_asset("scr_sum2_hal")
        GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
        GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
            "scr_sum2_hal_rider_weak_orange", player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
    else
        delete_object(katana)
    end
end)

GTTG(wushidao, "御盘术V2",{""}, "",function(on)
    wanjianguizong_2 = state
    local katana = "prop_cs_keyboard_01"
    if on then     
        attach_to_player(katana, 1, -0.3, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.3, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, -0.5, 0, 0.5, 0, 90,90)
        attach_to_player(katana, 1, 0.5, 0, 0.5, 0, 90,90)
        attach_to_player(katana, 1, -0.8, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.8, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.0, 0, 1, 0, 90,90)
        attach_to_player(katana, 1, 1.0, 0, 0, -90, 0,0)
        attach_to_player(katana, 1, -1.0, 0, 0, 80, 90,95)
        attach_to_player(katana, 1, 2.0, 0, 0.2, -90, 0,0)
        attach_to_player(katana, 1, -2.0, 0, 0.2, 80, 90,95)
        attach_to_player(katana, 1, 1.0, 0, 0.4, -90, 0,0)
        attach_to_player(katana, 1, -1.0, 0, 0.4, 80, 90,95)
        attach_to_player(katana, 1, 1.5, 0, 0.6, -90, 0,0)
        attach_to_player(katana, 1, -1.5, 0, 0.6, 80, 90,95)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, -150,0)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, 150,0)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, 180,0)
        attach_to_player(katana, 0, 0.23, 0, 0, 0, -180,100)
        attach_to_player(katana, 0, -0.23, 0, 0, 0, -180,100)
        local player_pos = players.get_position(players.user())
        request_ptfx_asset("scr_sum2_hal")
        GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
        GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
            "scr_sum2_hal_rider_weak_blue", player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
    else
        delete_object(katana)
    end
end)

GTTG(wushidao, "御盘术V3", {""}, "右键使用特效", function(state)
    wanjianguizong_2 = state
    local katana = "prop_cs_keyboard_01"
    if state then
        attach_to_player(katana, 1, -0.3, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.3, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, -0.5, 0, 0.5, 0, 90,90)
        attach_to_player(katana, 1, 0.5, 0, 0.5, 0, 90,90)
        attach_to_player(katana, 1, -0.8, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.8, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.0, 0, 1, 0, 90,90)
        attach_to_player(katana, 1, 1.0, 0, 0, -90, 0,0)
        attach_to_player(katana, 1, -1.0, 0, 0, 80, 90,95)
        attach_to_player(katana, 1, 2.0, 0, 0.2, -90, 0,0)
        attach_to_player(katana, 1, -2.0, 0, 0.2, 80, 90,95)
        attach_to_player(katana, 1, 1.0, 0, 0.4, -90, 0,0)
        attach_to_player(katana, 1, -1.0, 0, 0.4, 80, 90,95)
        attach_to_player(katana, 1, 1.5, 0, 0.6, -90, 0,0)
        attach_to_player(katana, 1, -1.5, 0, 0.6, 80, 90,95)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, -150,0)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, 150,0)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, 180,0)
        attach_to_player(katana, 0, 0.23, 0, 0, 0, -180,100)
        attach_to_player(katana, 0, -0.23, 0, 0, 0, -180,100)
        while wanjianguizong_2 do
            if util.is_key_down(0x02) then
                menu.trigger_commands("sforcefield on")
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("scr_sum2_hal")
    GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
        suijijianqi(jianqi), player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
            else
                menu.trigger_commands("sforcefield off")
            end
            wait()
    end
    else
        delete_object(katana)
    end
end)
suijijianqi = function(x)
    local r = math.random(1,5)
    return x[r]
end
jianqi = {"scr_sum2_hal_hunted_respawn","scr_sum2_hal_rider_weak_blue","scr_sum2_hal_rider_weak_green","scr_sum2_hal_rider_weak_orange","scr_sum2_hal_rider_weak_greyblack"}
GTTG(wushidao, "御盘术V4", {""}, "", function(state)
    wanjianguizong_3 = state
    local katana = "prop_cs_keyboard_01"
    if state then
        attach_to_player(katana, 1, -0.3, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.3, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, -0.5, 0, 0.5, 0, 90,90)
        attach_to_player(katana, 1, 0.5, 0, 0.5, 0, 90,90)
        attach_to_player(katana, 1, -0.8, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.8, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.0, 0, 1, 0, 90,90)
        attach_to_player(katana, 1, 1.0, 0, 0, -90, 0,0)
        attach_to_player(katana, 1, -1.0, 0, 0, 80, 90,95)
        attach_to_player(katana, 1, 2.0, 0, 0.2, -90, 0,0)
        attach_to_player(katana, 1, -2.0, 0, 0.2, 80, 90,95)
        attach_to_player(katana, 1, 1.0, 0, 0.4, -90, 0,0)
        attach_to_player(katana, 1, -1.0, 0, 0.4, 80, 90,95)
        attach_to_player(katana, 1, 1.5, 0, 0.6, -90, 0,0)
        attach_to_player(katana, 1, -1.5, 0, 0.6, 80, 90,95)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, -150,0)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, 150,0)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, 180,0)
        attach_to_player(katana, 0, 0.23, 0, 0, 0, -180,100)
        attach_to_player(katana, 0, -0.23, 0, 0, 0, -180,100)
        while wanjianguizong_3 do
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("scr_sum2_hal")
    GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
        suijijianqi(jianqi), player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
            wait(200)
    end
    else
        delete_object(katana)
    end
end)

GTTG(wushidao, "御剑术V1",{""}, "",function(on)
    local katana = "prop_cs_katana_01"
    if on then     
        attach_to_player(katana, 1, -0.3, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.3, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, -0.5, 0, 0.5, 0, 90,90)
        attach_to_player(katana, 1, 0.5, 0, 0.5, 0, 90,90)
        attach_to_player(katana, 1, -0.8, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.8, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.0, 0, 1, 0, 90,90)
        attach_to_player(katana, 1, 1.0, 0, 0, -90, 0,0)
        attach_to_player(katana, 1, -1.0, 0, 0, 80, 90,95)
        attach_to_player(katana, 1, 2.0, 0, 0.2, -90, 0,0)
        attach_to_player(katana, 1, -2.0, 0, 0.2, 80, 90,95)
        attach_to_player(katana, 1, 1.0, 0, 0.4, -90, 0,0)
        attach_to_player(katana, 1, -1.0, 0, 0.4, 80, 90,95)
        attach_to_player(katana, 1, 1.5, 0, 0.6, -90, 0,0)
        attach_to_player(katana, 1, -1.5, 0, 0.6, 80, 90,95)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, -150,0)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, 150,0)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, 180,0)
        attach_to_player(katana, 0, 0.23, 0, 0, 0, -180,100)
        attach_to_player(katana, 0, -0.23, 0, 0, 0, -180,100)
        local player_pos = players.get_position(players.user())
        request_ptfx_asset("scr_sum2_hal")
        GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
        GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
            "scr_sum2_hal_rider_weak_orange", player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
    else
        delete_object(katana)
    end
end)

GTTG(wushidao, "御剑术V2",{""}, "",function(on)
    wanjianguizong_2 = state
    local katana = "prop_cs_katana_01"
    if on then     
        attach_to_player(katana, 1, -0.3, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.3, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, -0.5, 0, 0.5, 0, 90,90)
        attach_to_player(katana, 1, 0.5, 0, 0.5, 0, 90,90)
        attach_to_player(katana, 1, -0.8, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.8, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.0, 0, 1, 0, 90,90)
        attach_to_player(katana, 1, 1.0, 0, 0, -90, 0,0)
        attach_to_player(katana, 1, -1.0, 0, 0, 80, 90,95)
        attach_to_player(katana, 1, 2.0, 0, 0.2, -90, 0,0)
        attach_to_player(katana, 1, -2.0, 0, 0.2, 80, 90,95)
        attach_to_player(katana, 1, 1.0, 0, 0.4, -90, 0,0)
        attach_to_player(katana, 1, -1.0, 0, 0.4, 80, 90,95)
        attach_to_player(katana, 1, 1.5, 0, 0.6, -90, 0,0)
        attach_to_player(katana, 1, -1.5, 0, 0.6, 80, 90,95)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, -150,0)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, 150,0)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, 180,0)
        attach_to_player(katana, 0, 0.23, 0, 0, 0, -180,100)
        attach_to_player(katana, 0, -0.23, 0, 0, 0, -180,100)
        local player_pos = players.get_position(players.user())
        request_ptfx_asset("scr_sum2_hal")
        GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
        GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
            "scr_sum2_hal_rider_weak_blue", player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
    else
        delete_object(katana)
    end
end)

GTTG(wushidao, "御剑术V3", {""}, "右键使用剑气", function(state)
    wanjianguizong_2 = state
    local katana = "prop_cs_katana_01"
    if state then
        attach_to_player(katana, 1, -0.3, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.3, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, -0.5, 0, 0.5, 0, 90,90)
        attach_to_player(katana, 1, 0.5, 0, 0.5, 0, 90,90)
        attach_to_player(katana, 1, -0.8, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.8, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.0, 0, 1, 0, 90,90)
        attach_to_player(katana, 1, 1.0, 0, 0, -90, 0,0)
        attach_to_player(katana, 1, -1.0, 0, 0, 80, 90,95)
        attach_to_player(katana, 1, 2.0, 0, 0.2, -90, 0,0)
        attach_to_player(katana, 1, -2.0, 0, 0.2, 80, 90,95)
        attach_to_player(katana, 1, 1.0, 0, 0.4, -90, 0,0)
        attach_to_player(katana, 1, -1.0, 0, 0.4, 80, 90,95)
        attach_to_player(katana, 1, 1.5, 0, 0.6, -90, 0,0)
        attach_to_player(katana, 1, -1.5, 0, 0.6, 80, 90,95)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, -150,0)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, 150,0)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, 180,0)
        attach_to_player(katana, 0, 0.23, 0, 0, 0, -180,100)
        attach_to_player(katana, 0, -0.23, 0, 0, 0, -180,100)
        while wanjianguizong_2 do
            if util.is_key_down(0x02) then
                menu.trigger_commands("sforcefield on")
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("scr_sum2_hal")
    GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
        suijijianqi(jianqi), player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
            else
                menu.trigger_commands("sforcefield off")
            end
            wait()
    end
    else
        delete_object(katana)
    end
end)
suijijianqi = function(x)
    local r = math.random(1,5)
    return x[r]
end
jianqi = {"scr_sum2_hal_hunted_respawn","scr_sum2_hal_rider_weak_blue","scr_sum2_hal_rider_weak_green","scr_sum2_hal_rider_weak_orange","scr_sum2_hal_rider_weak_greyblack"}
GTTG(wushidao, "御剑术V4", {""}, "", function(state)
    wanjianguizong_3 = state
    local katana = "prop_cs_katana_01"
    if state then
        attach_to_player(katana, 1, -0.3, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.3, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, -0.5, 0, 0.5, 0, 90,90)
        attach_to_player(katana, 1, 0.5, 0, 0.5, 0, 90,90)
        attach_to_player(katana, 1, -0.8, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.8, 0, 0.8, 0, 90,90)
        attach_to_player(katana, 1, 0.0, 0, 1, 0, 90,90)
        attach_to_player(katana, 1, 1.0, 0, 0, -90, 0,0)
        attach_to_player(katana, 1, -1.0, 0, 0, 80, 90,95)
        attach_to_player(katana, 1, 2.0, 0, 0.2, -90, 0,0)
        attach_to_player(katana, 1, -2.0, 0, 0.2, 80, 90,95)
        attach_to_player(katana, 1, 1.0, 0, 0.4, -90, 0,0)
        attach_to_player(katana, 1, -1.0, 0, 0.4, 80, 90,95)
        attach_to_player(katana, 1, 1.5, 0, 0.6, -90, 0,0)
        attach_to_player(katana, 1, -1.5, 0, 0.6, 80, 90,95)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, -150,0)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, 150,0)
        attach_to_player(katana, 0, 0, -0.2, 0.5, 0, 180,0)
        attach_to_player(katana, 0, 0.23, 0, 0, 0, -180,100)
        attach_to_player(katana, 0, -0.23, 0, 0, 0, -180,100)
        while wanjianguizong_3 do
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("scr_sum2_hal")
    GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
        suijijianqi(jianqi), player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
            wait(200)
    end
    else
        delete_object(katana)
    end
end)

GTTG(sessionfun, "吉他",{""}, "",function(on)
    local guitar = "prop_acc_guitar_01"
    if on then     
        attach_to_player(guitar, 0, 0, -0.15, 0.25, 0, -50,0)
    else
        delete_object(guitar)
    end
end)

GTTG(chonglangban, "冲浪板1",{""}, "",function(on)
    local surf_board = "prop_surf_board_ldn_03"
    if on then     
        attach_to_player(surf_board, 0, 0, -0.2, 0.25, 0, -30,0)
    else
        delete_object(surf_board)
    end
end)

GTTG(chonglangban, "冲浪板2",{""}, "",function(on)
    local surf_board = "prop_surf_board_ldn_04"
    if on then     
        attach_to_player(surf_board, 0, 0, -0.2, 0.25, 0, -30,0)
    else
        delete_object(surf_board)
    end
end)

GTTG(chonglangban, "冲浪板3",{""}, "",function(on)
    local surf_board = "prop_surf_board_ldn_02"
    if on then     
        attach_to_player(surf_board, 0, 0, -0.2, 0.25, 0, -30,0)
    else
        delete_object(surf_board)
    end
end)

GTTG(chonglangban, "冲浪板4",{""}, "",function(on)
    local surf_board = "prop_surf_board_ldn_01"
    if on then     
        attach_to_player(surf_board, 0, 0, -0.2, 0.25, 0, -30,0)
    else
        delete_object(surf_board)
    end
end)

GTTG(chonglangban, "冲浪板5",{""}, "",function(on)
    local surf_board = "prop_kt1_10_mpdoor_l"
    if on then     
        attach_to_player(surf_board, 0, 0.5, -0.3, 0.5, 1, -30,0)
    else
        delete_object(surf_board)
    end
end)

GTTG(sessionfun, "电脑",{""}, "",function(on)
    local surf_board = "prop_laptop_01a"
    if on then     
        attach_to_player(surf_board, 2, 0, 0.5, -0.03, 1, 0,0)
    else
        delete_object(surf_board)
    end
end)

GTTG(sessionfun, "泳圈",{""}, "",function(on)
    local swimming_circle = "prop_beach_ring_01"
    if on then     
        attach_to_player(swimming_circle, 0, 0, 0, 0, 0, 0,0)
    else
        delete_object(swimming_circle)
    end
end)

GTLP(sessionfun, "镜子", {"mirror"}, "镜像人物视角", function()
    if WIRI_GRAPHICS.UI3DSCENE_IS_AVAILABLE() then
        if WIRI_GRAPHICS.UI3DSCENE_PUSH_PRESET("CELEBRATION_WINNER") then
            WIRI_GRAPHICS.UI3DSCENE_ASSIGN_PED_TO_SLOT("CELEBRATION_WINNER", players.user_ped(), 0, 0.0, 0.0, 0.0);
        end
    end
end)

GTLP(sessionfun, "NPC摇头", {"pedheadbang"}, "", function(on)
    yaoptou()
end)

local entity_held = 0
local are_hands_up = false
GTLP(sessionfun,"举起投掷车辆", {"throwcars"}, "在车辆附近按E,举起时按E进行投掷", function(on)
    if PAD.IS_CONTROL_JUST_RELEASED(38, 38) then
        if entity_held == 0 then
            if not are_hands_up then 
                local closest = get_closest_veh(ENTITY.GET_ENTITY_COORDS(players.user_ped()))
                local veh = closest[1]
                local dist = closest[2]
                if dist <= 5 then 
                    request_anim_dict("missminuteman_1ig_2")
                    TASK.TASK_PLAY_ANIM(players.user_ped(), "missminuteman_1ig_2", "handsup_enter", 8.0, 0.0, -1, 50, 0, false, false, false)
                    wait(500)
                    are_hands_up = true
                    ENTITY.SET_ENTITY_ALPHA(veh, 100)
                    ENTITY.SET_ENTITY_HEADING(veh, ENTITY.GET_ENTITY_HEADING(players.user_ped()))
                    ENTITY.ATTACH_ENTITY_TO_ENTITY(veh, players.user_ped(), 0, 0, 0, get_model_size(ENTITY.GET_ENTITY_MODEL(veh)).z / 2, 180, 180, -180, true, false, true, false, 0, true)
                    entity_held = veh
                end 
            else
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
                are_hands_up = false
            end
        else
            if ENTITY.IS_ENTITY_A_VEHICLE(entity_held) then
                ENTITY.DETACH_ENTITY(entity_held)
                VEHICLE.SET_VEHICLE_FORWARD_SPEED(entity_held, 100.0)
                VEHICLE.SET_VEHICLE_OUT_OF_CONTROL(entity_held, true, true)
                ENTITY.SET_ENTITY_ALPHA(entity_held, 255)
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
                ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(), true)
                ENTITY.SET_ENTITY_NO_COLLISION_ENTITY(entity_held, players.user_ped(), false)
                request_anim_dict("melee@unarmed@streamed_core")
                TASK.TASK_PLAY_ANIM(players.user_ped(), "melee@unarmed@streamed_core", "heavy_punch_a", 8.0, 8.0, -1, 0, 0.3, false, false, false)
                wait(500)
                ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(), false)
                entity_held = 0
                are_hands_up = false
            end
        end
    end
end)

local ped_held = 0
GTLP(sessionfun,"举起投掷NPC", {"throwpeds"}, "在NPC附近按E,举起时按E进行投掷", function(on)
    if PAD.IS_CONTROL_JUST_RELEASED(38, 38) then
        if entity_held == 0 then
            if not are_hands_up then 
                local closest = get_closest_ped(ENTITY.GET_ENTITY_COORDS(players.user_ped()))
                local ped = closest[1]
                local dist = closest[2]
                if dist <= 5 then 
                    request_anim_dict("missminuteman_1ig_2")
                    TASK.TASK_PLAY_ANIM(players.user_ped(), "missminuteman_1ig_2", "handsup_enter", 8.0, 0.0, -1, 50, 0, false, false, false)
                    wait(500)
                    are_hands_up = true
                    ENTITY.SET_ENTITY_ALPHA(ped, 100)
                    ENTITY.SET_ENTITY_HEADING(ped, ENTITY.GET_ENTITY_HEADING(players.user_ped()))
                    ENTITY.ATTACH_ENTITY_TO_ENTITY(ped, players.user_ped(), 0, 0, 0, 1.3, 180, 180, -180, true, false, true, true, 0, true)
                    entity_held = ped
                end 
            else
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
                are_hands_up = false
            end
        else
            if ENTITY.IS_ENTITY_A_PED(entity_held) then
                ENTITY.DETACH_ENTITY(entity_held)
                ENTITY.SET_ENTITY_ALPHA(entity_held, 255)
                PED.SET_PED_TO_RAGDOLL(entity_held, 10, 10, 0, false, false, false)
                ENTITY.SET_ENTITY_MAX_SPEED(entity_held, 100.0)
                ENTITY.APPLY_FORCE_TO_ENTITY(entity_held, 1, 0, 100, 0, 0, 0, 0, 0, true, false, true, false, false)
                AUDIO.PLAY_PAIN(entity_held, 7, 0, 0)
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
                ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(), true)
                ENTITY.SET_ENTITY_NO_COLLISION_ENTITY(entity_held, players.user_ped(), false)
                request_anim_dict("melee@unarmed@streamed_core")
                TASK.TASK_PLAY_ANIM(players.user_ped(), "melee@unarmed@streamed_core", "heavy_punch_a", 8.0, 8.0, -1, 0, 0.3, false, false, false)
                wait(500)
                ENTITY.FREEZE_ENTITY_POSITION(players.user_ped(), false)
                entity_held = 0
                are_hands_up = false
            end
        end
    end
end)

randomizer = function(x)
    local r = math.random(1,3)
    return x[r]
end

array = {"1","1","2"}

GTAC(sessionfun,"生成恶灵摩托" ,{""}, "每次生成不一样的颜色", function(on)
  car = CreateVehicle(1491277511, ENTITY.GET_ENTITY_COORDS(players.user_ped(),false),0,true)
  local titlle = "scr_martin1"
  WIRI.USE_PARTICLE_FX_ASSET(titlle)
  while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(titlle) do
    STREAMING.REQUEST_NAMED_PTFX_ASSET(titlle)
    wait(0)
  end
end)

    GTTG(sessionfun,"恶灵骑士" ,{""}, "还原动漫", function(on)
        if on then 
            elqes()
            menu.trigger_commands("cjfireman on")
            menu.trigger_commands("footfire "..PLAYER.GET_PLAYER_NAME(players.user()).." on")
        else
            entities.delete_by_handle(vehicleelqs)
            menu.trigger_commands("cjfireman off")
            menu.trigger_commands("footfire "..PLAYER.GET_PLAYER_NAME(players.user()).." off")
        end

end)

weaponback = off
GTTG(sessionfun, "背藏武器", {}, "长按Tab选择武器后切回拳头", function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
	weaponback = on
	if weaponback then
		spawnweapon = 0
	end
	curweap = CCCC_HUD._HUD_WEAPON_WHEEL_GET_SELECTED_HASH(plyped())
	if not (HUD._HUD_WEAPON_WHEEL_GET_SELECTED_HASH(plyped()) == -1569615261) and weaponback then
		spawnweapon = WEAPON.CREATE_WEAPON_OBJECT(curweap, 1, pos.x, pos.y, pos.z, true, 1, 0)
		attachweapon(spawnweapon)
	end
	while weaponback do
		if (WEAPON.GET_CURRENT_PED_WEAPON_ENTITY_INDEX(plyped()) == 0) then
			if not (spawnweapon == 0) then
				ENTITY.SET_ENTITY_VISIBLE(spawnweapon, true, false)
			end
		else
			ENTITY.SET_ENTITY_VISIBLE(spawnweapon, false, false)
		end
		if not (HUD._HUD_WEAPON_WHEEL_GET_SELECTED_HASH(plyped()) == curweap) and not (HUD._HUD_WEAPON_WHEEL_GET_SELECTED_HASH(plyped()) == -1569615261) then
			if not (spawnweapon == 0) then
				entities.delete_by_handle(spawnweapon)
			end
			curweap = HUD._HUD_WEAPON_WHEEL_GET_SELECTED_HASH(plyped())
			requestweapon(curweap)
			spawnweapon = WEAPON.CREATE_WEAPON_OBJECT(curweap, 1, pos.x, pos.y, pos.z, true, 1, 0)
			if (WEAPON.GET_CURRENT_PED_WEAPON_ENTITY_INDEX(plyped()) == 0) then
				ENTITY.SET_ENTITY_VISIBLE(spawnweapon, true, false)
			else
				ENTITY.SET_ENTITY_VISIBLE(spawnweapon, false, false)
			end
			attachweapon(spawnweapon)
		end
		wait()
	end
	entities.delete_by_handle(spawnweapon)
end)

GTLP(sessionfun, "上帝之指", {"godfinger"}, "按B瞄准对象后使用滑鼠移动\n瞄准对象可以是玩家/Ped/载具/实体,对大部分菜单无效", function()
    godfinger()
end)

GTLuaScript.slider(selflist, '透明人物', {'JSghost'}, '修改您人物的不透明度', 0, 100, 100, 25, function(value)
    ENTITY.SET_ENTITY_ALPHA(players.user_ped(), JS_tbls.alphaPoints[value / 25 + 1], false)
end)

GTLP(selflist, "幽灵攻击", {}, "在幽灵模式下允许攻击玩家", function()
    for _, pid in ipairs(players.list(false, true, true)) do
        if PLAYER.IS_PLAYER_FREE_AIMING(pid) then
            NETWORK.SET_REMOTE_PLAYER_AS_GHOST(pid, true)
        else 
            NETWORK.SET_REMOTE_PLAYER_AS_GHOST(pid, false)
        end
    end
end)

GTTG(selflist, "消除热成像", {}, "让玩家无法用正常的热成像看到您", function(toggle)
    if toggle then
        PED.SET_PED_HEATSCALE_OVERRIDE(players.user_ped(), 0)
    else
        PED.SET_PED_HEATSCALE_OVERRIDE(players.user_ped(), 1)
    end
end)

--[[GTTG(selflist, '冷血', {'JScoldBlooded'}, '移除您的热信号.\n其他人仍然可以看到它.', function(toggle)
    PED.SET_PED_HEATSCALE_OVERRIDE(players.user_ped(), (toggle and 0 or 1))
end)]]

GTLP(aimkarma, '发送脚本事件崩溃', {''}, '崩溃瞄准您的玩家', function()
    sendscriptcrash()
end)

GTLP(aimkarma, '无差别崩', {''}, '如果您被瞄准将崩溃全局玩家', function()
    sendallplayercrash()
end)

GTLP(aimkarma, '射击', {'JSbulletAimKarma'}, '射击瞄准您的玩家', function()
    bulletaimkarma()
end)

GTLP(aimkarma, '爆炸', {'JSexpAimKarma'}, '爆炸瞄准您的玩家', function()
    expaimkarma()
end)

GTLP(aimkarma, '禁用无敌', {'JSgodAimKarma'}, '如果有人瞄准您将强制他们的游戏画面来禁用他们的无敌模式(对大部分菜单无效)', function()
    godaimkarma()
end)

GTAC(aimkarma, 'Stand玩家瞄准惩罚', {}, '连接到Stand的玩家瞄准惩罚', function()
    menu.focus(menu.ref_by_path('World>Inhabitants>Player Aim Punishments>Anonymous Explosion', 37))
end)

GTTG(selflist, '无声脚步', {'JSquietSteps'}, '禁用您的脚步声', function(toggle)
    AUDIO._SET_PED_AUDIO_FOOTSTEP_LOUD(players.user_ped(), not toggle)
end)

GTTG(sessionfun, "雪人",{""}, "伪装成雪人",function(on)
    snowpeople(on)
end)

GTTG(sessionfun, "死坤",{""}, "伪装成死神",function(on)
    ikunjix3(on)
end)

GTTG(sessionfun, "炸弹人",{""}, "伪装成炸弹",function(on)
    huoqujia(on)
end)

GTTG(huorentexiao, "火人", {"fireman"}, "", function(on)
    firepersonl(on)
end)

GTTG(huorentexiao, "火人V2",{""}, "",function(state)
    if state then
        for _, boneId in ipairs(bones) do
        request_ptfx_asset("core")
        GRAPHICS.USE_PARTICLE_FX_ASSET("core")
        GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("fire_wrecked_truck", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 2, false, false, false, 0, 0, 0, 0)
        end
    else
        GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
    end
end)

burning_man_ptfx_asset = "core"
burning_man_ptfx_effect = "fire_wrecked_plane_cockpit"
request_ptfx_asset(burning_man_ptfx_asset)
trail_bones = {0xffa, 0xfa11, 0x83c, 0x512d, 0x796e, 0xb3fe, 0x3fcf, 0x58b7, 0xbb0}
looped_ptfxs = {}
was_burning_man_on = false
huorentexiao:toggle('火人V3', {}, "", function(on)
    if not on then 
        for _, p in pairs(looped_ptfxs) do
            GRAPHICS.REMOVE_PARTICLE_FX(p, false)
            GRAPHICS.STOP_PARTICLE_FX_LOOPED(p, false)
        end
    else
        request_ptfx_asset(burning_man_ptfx_asset)
        for _, bone in pairs(trail_bones) do
            GRAPHICS.USE_PARTICLE_FX_ASSET(burning_man_ptfx_asset)
            local bone_id = PED.GET_PED_BONE_INDEX(players.user_ped(), bone)
            fx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(burning_man_ptfx_effect, players.user_ped(), 0.0, 0.0, 0.0, 0.0, 0.0, 90.0, bone_id, 0.5, false, false, false, 0, 0, 0, 0)
            looped_ptfxs[#looped_ptfxs+1] = fx
            GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, 100, 100, 100, false)
        end
    end
end)

affects = {}

newptfx = GT(texiao, "近期更新", {}, "部分特效需成为[战局脚本主机]\n成为后战局玩家即可看见您的特效\n\n<如何成为战局脚本主机?>\n本体菜单 >> 线上 >> 战局选项 >> 成为战局脚本主机")

GTLP(newptfx, '闪电侠', {}, '', function (g)
    local function colour(r, g, b, a)
      return { r = r / 255, g = g / 255, b = b / 255, a = a / 255 }
    end
    local windowss_xx = 0.693
    local windowss_yy = 0.026
    local windowss_width = 0.03
    local windowss_height = 0.04
    local rectss_x = windowss_xx + 0.0006
    local rectss_y = windowss_yy + 0.0010
    local rectss_width = windowss_width - 0.6618
    local rectss_height = windowss_height - 0.05
    local border_colorss_a= colour(100, 50, 50, 255)
    local border_colorss_b= colour(150, 70, 150, 255)
    directx.draw_rect(rectss_x, rectss_y, rectss_x + rectss_width, rectss_y + rectss_height+0.0220,border_colorss_a, border_colorss_b)
    directx.draw_text(windowss_xx+0.01, windowss_yy+0.013, "按SHIFT键", ALIGN_TOP_LEFT, 0.5,colour(50, 100, 250, 255))
        ENTITY.SET_ENTITY_MAX_SPEED(players.user_ped(players.user()), 100)
        local dir = ENTITY.GET_ENTITY_FORWARD_VECTOR(players.user_ped(players.user()))
        dir = v3(dir.x * 100, dir.y * 100, dir.z * 100)
        local a = { value = 1.0 }
        if PAD.GET_CONTROL_NORMAL(0, 21) == 1.0 then
            if PAD.GET_CONTROL_NORMAL(0, 32) == 1.0 then
                if PAD.GET_CONTROL_NORMAL(0, 21) == 1.0 then
                    if not ENTITY.IS_ENTITY_IN_AIR(players.user_ped(players.user())) then
                        while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core") and a.value do
                            STREAMING.REQUEST_NAMED_PTFX_ASSET("core")
                            wait(0)
                        end
                        GRAPHICS.USE_PARTICLE_FX_ASSET("core")
                        GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY('ent_dst_elec_fire_sp', players.user_ped(players.user()), 0, 0, 0, 0, 0, 0, 1)
                        
                        local forwardSpeed = 100 * a.value
                        ENTITY.SET_ENTITY_VELOCITY(players.user_ped(players.user()), dir.x * forwardSpeed, dir.y * forwardSpeed, dir.z * forwardSpeed)
                    end
                else
                    ENTITY.SET_ENTITY_VELOCITY(players.user_ped(players.user()), 0, 0, 0)
              end
          end
     end
end)

GTLP(newptfx, '星光尾拖', {}, '', function (g)
    local function colour(r, g, b, a)
      return { r = r / 255, g = g / 255, b = b / 255, a = a / 255 }
    end
    local windowss_xx = 0.693
    local windowss_yy = 0.026
    local windowss_width = 0.03
    local windowss_height = 0.04
    local rectss_x = windowss_xx + 0.0006
    local rectss_y = windowss_yy + 0.0010
    local rectss_width = windowss_width - 0.6618
    local rectss_height = windowss_height - 0.05
    local border_colorss_a= colour(100, 50, 50, 255)
    local border_colorss_b= colour(150, 70, 150, 255)
    directx.draw_rect(rectss_x, rectss_y, rectss_x + rectss_width, rectss_y + rectss_height+0.0220,border_colorss_a, border_colorss_b)
    directx.draw_text(windowss_xx+0.01, windowss_yy+0.013, "按SHIFT键", ALIGN_TOP_LEFT, 0.5,colour(50, 100, 250, 255))
        ENTITY.SET_ENTITY_MAX_SPEED(players.user_ped(players.user()), 100)
        local dir = ENTITY.GET_ENTITY_FORWARD_VECTOR(players.user_ped(players.user()))
        dir = v3(dir.x * 100, dir.y * 100, dir.z * 100)
        local a = { value = 1.0 }
        if PAD.GET_CONTROL_NORMAL(0, 21) == 1.0 then
            if PAD.GET_CONTROL_NORMAL(0, 32) == 1.0 then
                if PAD.GET_CONTROL_NORMAL(0, 21) == 1.0 then
                    if not ENTITY.IS_ENTITY_IN_AIR(players.user_ped(players.user())) then
                        while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("scr_rcbarry1") and a.value do
                            STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_rcbarry1")
                            wait(0)
                        end
                        GRAPHICS.USE_PARTICLE_FX_ASSET("scr_rcbarry1")
                        GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY('scr_alien_disintegrate', players.user_ped(players.user()), 0, 0, -0.9, 0, 0, 0, 0.5)
                        
                        local forwardSpeed = 100 * a.value
                        ENTITY.SET_ENTITY_VELOCITY(players.user_ped(players.user()), dir.x * forwardSpeed, dir.y * forwardSpeed, dir.z * forwardSpeed)
                    end
                else
                    ENTITY.SET_ENTITY_VELOCITY(players.user_ped(players.user()), 0, 0, 0)
              end
          end
     end
end)

GTLP(newptfx, '尾拖蓝', {}, '', function (g)
    local function colour(r, g, b, a)
      return { r = r / 255, g = g / 255, b = b / 255, a = a / 255 }
    end
    local windowss_xx = 0.693
    local windowss_yy = 0.026
    local windowss_width = 0.03
    local windowss_height = 0.04
    local rectss_x = windowss_xx + 0.0006
    local rectss_y = windowss_yy + 0.0010
    local rectss_width = windowss_width - 0.6618
    local rectss_height = windowss_height - 0.05
    local border_colorss_a= colour(100, 50, 50, 255)
    local border_colorss_b= colour(150, 70, 150, 255)
    directx.draw_rect(rectss_x, rectss_y, rectss_x + rectss_width, rectss_y + rectss_height+0.0220,border_colorss_a, border_colorss_b)
    directx.draw_text(windowss_xx+0.01, windowss_yy+0.013, "按SHIFT键", ALIGN_TOP_LEFT, 0.5,colour(50, 100, 250, 255))
        ENTITY.SET_ENTITY_MAX_SPEED(players.user_ped(players.user()), 100)
        local dir = ENTITY.GET_ENTITY_FORWARD_VECTOR(players.user_ped(players.user()))
        dir = v3(dir.x * 100, dir.y * 100, dir.z * 100)
        local a = { value = 1.0 }
        if PAD.GET_CONTROL_NORMAL(0, 21) == 1.0 then
            if PAD.GET_CONTROL_NORMAL(0, 32) == 1.0 then
                if PAD.GET_CONTROL_NORMAL(0, 21) == 1.0 then
                    if not ENTITY.IS_ENTITY_IN_AIR(players.user_ped(players.user())) then
                        while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("scr_sum2_hal") and a.value do
                            STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_sum2_hal")
                            wait(0)
                        end
                        GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
                        GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY('scr_sum2_hal_rider_weak_blue', players.user_ped(players.user()), 0, 0, 0, 0, 0, 0, 1)
                        
                        local forwardSpeed = 100 * a.value
                        ENTITY.SET_ENTITY_VELOCITY(players.user_ped(players.user()), dir.x * forwardSpeed, dir.y * forwardSpeed, dir.z * forwardSpeed)
                    end
                else
                    ENTITY.SET_ENTITY_VELOCITY(players.user_ped(players.user()), 0, 0, 0)
              end
          end
     end
end)

GTLP(newptfx, '尾拖绿', {}, '', function (g)
    local function colour(r, g, b, a)
      return { r = r / 255, g = g / 255, b = b / 255, a = a / 255 }
    end
    local windowss_xx = 0.693
    local windowss_yy = 0.026
    local windowss_width = 0.03
    local windowss_height = 0.04
    local rectss_x = windowss_xx + 0.0006
    local rectss_y = windowss_yy + 0.0010
    local rectss_width = windowss_width - 0.6618
    local rectss_height = windowss_height - 0.05
    local border_colorss_a= colour(100, 50, 50, 255)
    local border_colorss_b= colour(150, 70, 150, 255)
    directx.draw_rect(rectss_x, rectss_y, rectss_x + rectss_width, rectss_y + rectss_height+0.0220,border_colorss_a, border_colorss_b)
    directx.draw_text(windowss_xx+0.01, windowss_yy+0.013, "按SHIFT键", ALIGN_TOP_LEFT, 0.5,colour(50, 100, 250, 255))
        ENTITY.SET_ENTITY_MAX_SPEED(players.user_ped(players.user()), 100)
        local dir = ENTITY.GET_ENTITY_FORWARD_VECTOR(players.user_ped(players.user()))
        dir = v3(dir.x * 100, dir.y * 100, dir.z * 100)
        local a = { value = 1.0 }
        if PAD.GET_CONTROL_NORMAL(0, 21) == 1.0 then
            if PAD.GET_CONTROL_NORMAL(0, 32) == 1.0 then
                if PAD.GET_CONTROL_NORMAL(0, 21) == 1.0 then
                    if not ENTITY.IS_ENTITY_IN_AIR(players.user_ped(players.user())) then
                        while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("scr_sum2_hal") and a.value do
                            STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_sum2_hal")
                            wait(0)
                        end
                        GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
                        GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY('scr_sum2_hal_rider_weak_green', players.user_ped(players.user()), 0, 0, 0, 0, 0, 0, 1)
                        
                        local forwardSpeed = 100 * a.value
                        ENTITY.SET_ENTITY_VELOCITY(players.user_ped(players.user()), dir.x * forwardSpeed, dir.y * forwardSpeed, dir.z * forwardSpeed)
                    end
                else
                    ENTITY.SET_ENTITY_VELOCITY(players.user_ped(players.user()), 0, 0, 0)
              end
          end
     end
end)

GTLP(newptfx, '尾拖黄', {}, '', function (g)
    local function colour(r, g, b, a)
      return { r = r / 255, g = g / 255, b = b / 255, a = a / 255 }
    end
    local windowss_xx = 0.693
    local windowss_yy = 0.026
    local windowss_width = 0.03
    local windowss_height = 0.04
    local rectss_x = windowss_xx + 0.0006
    local rectss_y = windowss_yy + 0.0010
    local rectss_width = windowss_width - 0.6618
    local rectss_height = windowss_height - 0.05
    local border_colorss_a= colour(100, 50, 50, 255)
    local border_colorss_b= colour(150, 70, 150, 255)
    directx.draw_rect(rectss_x, rectss_y, rectss_x + rectss_width, rectss_y + rectss_height+0.0220,border_colorss_a, border_colorss_b)
    directx.draw_text(windowss_xx+0.01, windowss_yy+0.013, "按SHIFT键", ALIGN_TOP_LEFT, 0.5,colour(50, 100, 250, 255))
        ENTITY.SET_ENTITY_MAX_SPEED(players.user_ped(players.user()), 100)
        local dir = ENTITY.GET_ENTITY_FORWARD_VECTOR(players.user_ped(players.user()))
        dir = v3(dir.x * 100, dir.y * 100, dir.z * 100)
        local a = { value = 1.0 }
        if PAD.GET_CONTROL_NORMAL(0, 21) == 1.0 then
            if PAD.GET_CONTROL_NORMAL(0, 32) == 1.0 then
                if PAD.GET_CONTROL_NORMAL(0, 21) == 1.0 then
                    if not ENTITY.IS_ENTITY_IN_AIR(players.user_ped(players.user())) then
                        while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("scr_sum2_hal") and a.value do
                            STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_sum2_hal")
                            wait(0)
                        end
                        GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
                        GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY('scr_sum2_hal_rider_weak_orange', players.user_ped(players.user()), 0, 0, 0, 0, 0, 0, 1)
                        
                        local forwardSpeed = 100 * a.value
                        ENTITY.SET_ENTITY_VELOCITY(players.user_ped(players.user()), dir.x * forwardSpeed, dir.y * forwardSpeed, dir.z * forwardSpeed)
                    end
                else
                    ENTITY.SET_ENTITY_VELOCITY(players.user_ped(players.user()), 0, 0, 0)
              end
          end
     end
end)

GTLP(newptfx, '尾拖白', {}, '', function (g)
    local function colour(r, g, b, a)
      return { r = r / 255, g = g / 255, b = b / 255, a = a / 255 }
    end
    local windowss_xx = 0.693
    local windowss_yy = 0.026
    local windowss_width = 0.03
    local windowss_height = 0.04
    local rectss_x = windowss_xx + 0.0006
    local rectss_y = windowss_yy + 0.0010
    local rectss_width = windowss_width - 0.6618
    local rectss_height = windowss_height - 0.05
    local border_colorss_a= colour(100, 50, 50, 255)
    local border_colorss_b= colour(150, 70, 150, 255)
    directx.draw_rect(rectss_x, rectss_y, rectss_x + rectss_width, rectss_y + rectss_height+0.0220,border_colorss_a, border_colorss_b)
    directx.draw_text(windowss_xx+0.01, windowss_yy+0.013, "按SHIFT键", ALIGN_TOP_LEFT, 0.5,colour(50, 100, 250, 255))
        ENTITY.SET_ENTITY_MAX_SPEED(players.user_ped(players.user()), 100)
        local dir = ENTITY.GET_ENTITY_FORWARD_VECTOR(players.user_ped(players.user()))
        dir = v3(dir.x * 100, dir.y * 100, dir.z * 100)
        local a = { value = 1.0 }
        if PAD.GET_CONTROL_NORMAL(0, 21) == 1.0 then
            if PAD.GET_CONTROL_NORMAL(0, 32) == 1.0 then
                if PAD.GET_CONTROL_NORMAL(0, 21) == 1.0 then
                    if not ENTITY.IS_ENTITY_IN_AIR(players.user_ped(players.user())) then
                        while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("scr_sum2_hal") and a.value do
                            STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_sum2_hal")
                            wait(0)
                        end
                        GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
                        GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY('scr_sum2_hal_rider_weak_greyblack', players.user_ped(players.user()), 0, 0, 0, 0, 0, 0, 1)
                        
                        local forwardSpeed = 100 * a.value
                        ENTITY.SET_ENTITY_VELOCITY(players.user_ped(players.user()), dir.x * forwardSpeed, dir.y * forwardSpeed, dir.z * forwardSpeed)
                    end
                else
                    ENTITY.SET_ENTITY_VELOCITY(players.user_ped(players.user()), 0, 0, 0)
              end
          end
     end
end)

GTTG(newptfx, "电疗",{""}, "",function(state)
local boneIdx = { 0x796e,0x6f06,0xeb95,0xe39f,0xca72,0x192A,  0xffa, 0xfa11, 0x83c,   0x512d, 0x58b7, 0xbb,0xb3fe,0x3fcf,0x5c01,0x60f0,0x60f1,0x60f2,0x6e5c,0x29d2,0xeeeb,0xfcd9,0xe0fd,0x5c57,0x192a,0x2e28,0x62ac,0x8b93,0xb4a0,0x6b52,0x8b93,0xf9bb,0x9000,0xb1c5,0x9d4d,0xdd1c}
if state then
for _, boneIds in ipairs(boneIdx) do
request_ptfx_asset("scr_reconstructionaccident")
    GRAPHICS.USE_PARTICLE_FX_ASSET("scr_reconstructionaccident")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("scr_sparking_generator", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneIds), 2, false, false, false, 0, 0, 0, 0)
end
else
    GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
end
end)

man_ptfx_asset = "scr_bike_adversary"
man_ptfx_effect = "scr_adversary_gunsmith_weap_smoke"
request_ptfx_asset(man_ptfx_asset)
l_bones = {0xffa, 0xfa11, 0x83c, 0x512d, 0x796e, 0xb3fe, 0x3fcf, 0x58b7, 0xbb0}
load_ptfxs = {}
was_burning_man_on = false
newptfx:toggle('终极过载', {}, "", function(on)
    utgz(on)
end)

man_ptfx_asset = "scr_bike_adversary"
man_ptfx_effect = "scr_adversary_gunsmith_weap_smoke"
request_ptfx_asset(man_ptfx_asset)
l_bones = {0xffa, 0xfa11, 0x83c, 0x512d, 0x796e, 0xb3fe, 0x3fcf, 0x58b7, 0xbb0}
load_ptfxs = {}
was_burning_man_on = false
newptfx:toggle('过载能量', {}, "", function(on)
    if not on then 
        for _, p in pairs(load_ptfxs) do
            GRAPHICS.REMOVE_PARTICLE_FX(p, false)
            GRAPHICS.STOP_PARTICLE_FX_LOOPED(p, false)
        end
    else
        request_ptfx_asset(man_ptfx_asset)
        for _, bone in pairs(l_bones) do
            GRAPHICS.USE_PARTICLE_FX_ASSET(man_ptfx_asset)
            local bone_id = PED.GET_PED_BONE_INDEX(players.user_ped(), bone)
            fx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(man_ptfx_effect, players.user_ped(), 0.0, 0.0, 0.0, 0.0, 0.0, 90.0, bone_id, 0.7, false, false, false, 0, 0, 0, 0)
            load_ptfxs[#load_ptfxs+1] = fx
            GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, 0, 255, 255, 255)
        end
    end
end)

GTLP(newptfx, "奥义秘术", {""}, "此特效由于粒子上限可能无法展示完全效果", function()
    for i = 1, 16 do
    local p_pos = players.get_position(players.user())
    local rad = 2 * math.pi
        rad = rad / 16
        rad = rad * i
             p_pos.x = p_pos.x + (18 * math.cos(rad))
             p_pos.y = p_pos.y + (18 * math.sin(rad))
             p_pos.z = p_pos.z +0.5
    request_ptfx_asset("scr_sum2_hal")
         GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
        "scr_sum2_hal_rider_weak_blue", p_pos.x, p_pos.y, p_pos.z, 0, 0, 0, 4, false, false, false)
    local c_pos = players.get_position(players.user())
        request_ptfx_asset("scr_sum2_hal")
    GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
    suijijianqi(jianqi), c_pos.x, c_pos.y, c_pos.z, 0, 0, 0, 2.5, false, false, false)
    end
end)

GTLP(texiao,"斗气护甲", {""}, "", function ()
local colour = {r = 0.0, g = 1.0, b = 1.0, a = 0.0}
local affect <const> = Effect.new("scr_bike_adversary", "scr_adversary_gunsmith_weap_smoke")
if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
return
end
if timer.elapsed() >= 1000 then
removeFxs(affects); affects = {}
timer.reset()
end
if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
local minimum, maximum = v3.new(), v3.new()
MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
for _, offset in ipairs(offsets) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.0, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
for _, boneId in ipairs(bones) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
end
end, function ()
removeFxs(affects); affects = {}
end)

starlight = GT(texiao,"星光闪耀", {})
GTLP(starlight,"星光闪耀v1", {""}, "", function ()
local colour = {r = 0.0, g = 1.0, b = 1.0, a = 0.0}
local affect <const> = Effect.new("scr_rcpaparazzo1", "scr_mich4_firework_trailburst_spawn")
if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
return
end
if timer.elapsed() >= 1000 then
removeFxs(affects); affects = {}
timer.reset()
end
if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
local minimum, maximum = v3.new(), v3.new()
MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
for _, offset in ipairs(offsets) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.7, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
for _, boneId in ipairs(bones) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
end
end, function ()
removeFxs(affects); affects = {}
end)

GTLP(starlight,"星光闪耀v2", {""}, "", function ()
local colour = {r = 1.0, g = 1.0, b = 1.0, a = 1.0}
local affect <const> = Effect.new("scr_rcpaparazzo1", "scr_mich4_firework_trailburst_spawn")
if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
return
end
if timer.elapsed() >= 1000 then
removeFxs(affects); affects = {}
timer.reset()
end
if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
local minimum, maximum = v3.new(), v3.new()
MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
for _, offset in ipairs(offsets) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.7, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
for _, boneId in ipairs(bones) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
end
end, function ()
removeFxs(affects); affects = {}
end)

GTLP(starlight,"星光闪耀v3", {""}, "", function ()
local colour = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
local affect <const> = Effect.new("scr_rcpaparazzo1", "scr_mich4_firework_trailburst_spawn")
if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
return
end
if timer.elapsed() >= 1000 then
removeFxs(affects); affects = {}
timer.reset()
end
if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
local minimum, maximum = v3.new(), v3.new()
MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
for _, offset in ipairs(offsets) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.7, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
for _, boneId in ipairs(bones) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
end
end, function ()
removeFxs(affects); affects = {}
end)

GTLP(texiao,"列光波", {""}, "", function ()
local colour = {r = 0.0, g = 1.0, b = 1.0, a = 0.0}
local affect <const> = Effect.new("proj_indep_firework", "proj_indep_flare_trail")
if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
return
end
if timer.elapsed() >= 1000 then
removeFxs(affects); affects = {}
timer.reset()
end
if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
local minimum, maximum = v3.new(), v3.new()
MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
for _, offset in ipairs(offsets) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.7, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
for _, boneId in ipairs(bones) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
end
end, function ()
removeFxs(affects); affects = {}
end)

GTLP(texiao,"蒸汽朋克", {""}, "", function ()
local colour = {r = 0.0, g = 1.0, b = 1.0, a = 0.0}
local affect <const> = Effect.new("wpn_indep_firework", "muz_indep_firework")
if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
return
end
if timer.elapsed() >= 1000 then
removeFxs(affects); affects = {}
timer.reset()
end
if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
local minimum, maximum = v3.new(), v3.new()
MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
for _, offset in ipairs(offsets) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.0, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
for _, boneId in ipairs(bones) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
end
end, function ()
removeFxs(affects); affects = {}
end)

GTLP(texiao,"火冒三丈", {""}, "", function ()
local colour = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
local affect <const> = Effect.new("scr_ie_export", "scr_ie_export_fire_ring")
if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
return
end
if timer.elapsed() >= 1000 then
removeFxs(affects); affects = {}
timer.reset()
end
if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
local minimum, maximum = v3.new(), v3.new()
MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
for _, offset in ipairs(offsets) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.0, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
for _, boneId in ipairs(bones) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
end
end, function ()
removeFxs(affects); affects = {}
end)

feisheng = GT(texiao,"飞升", {})
GTLP(feisheng,"飞升v1", {""}, "", function ()
local colour = {r = 0.0, g = 1.0, b = 1.0, a = 0.0}
local affect <const> = Effect.new("scr_as_trap", "scr_as_trap_zone_rectangle")
if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
return
end
if timer.elapsed() >= 1000 then
removeFxs(affects); affects = {}
timer.reset()
end
if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
local minimum, maximum = v3.new(), v3.new()
MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
for _, offset in ipairs(offsets) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.0, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
for _, boneId in ipairs(bones) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
end
end, function ()
removeFxs(affects); affects = {}
end)

GTLP(feisheng,"飞升v2", {""}, "", function ()
local colour = {r = 1.0, g = 1.0, b = 1.0, a = 1.0}
local affect <const> = Effect.new("scr_as_trap", "scr_as_trap_zone_rectangle")
if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
return
end
if timer.elapsed() >= 1000 then
removeFxs(affects); affects = {}
timer.reset()
end
if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
local minimum, maximum = v3.new(), v3.new()
MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
for _, offset in ipairs(offsets) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.0, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
for _, boneId in ipairs(bones) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
end
end, function ()
removeFxs(affects); affects = {}
end)

GTLP(texiao,"荧光飞轮", {""}, "", function ()
local colour = {r = 1.0, g = 1.0, b = 1.0, a = 1.0}
local affect <const> = Effect.new("veh_sm_pyro", "veh_exhaust_afterburner_pyro")
if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
return
end
if timer.elapsed() >= 1000 then
removeFxs(affects); affects = {}
timer.reset()
end
if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
local minimum, maximum = v3.new(), v3.new()
MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
for _, offset in ipairs(offsets) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.0, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
for _, boneId in ipairs(bones) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.5, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
end
end, function ()
removeFxs(affects); affects = {}
end)

function firewingcolours(colours)
fireWingsSettingse.colour = colour
end
 fireWingse = {
[1] = {pos = {[1] = 100, [2] =  50}},
[2] = {pos = {[1] = 100, [2] = -50}},
[3] = {pos = {[1] = 115, [2] =  50}},
[4] = {pos = {[1] = 115, [2] = -50}},
[5] = {pos = {[1] = 160, [2] =  50}},
[6] = {pos = {[1] = 160, [2] = -50}},
[7] = {pos = {[1] = 170, [2] =  50}},
[8] = {pos = {[1] = 170, [2] = -50}},
[9] = {pos = {[1] = 110, [2] =  50}},
[10] = {pos = {[1] = 110, [2] = -50}},
[11] = {pos = {[1] = 120, [2] =  50}},
[12] = {pos = {[1] = 120, [2] = -50}},
[13] = {pos = {[1] = 130, [2] =  50}},
[14] = {pos = {[1] = 130, [2] = -50}},
[15] = {pos = {[1] = 190, [2] =  50}},
[16] = {pos = {[1] = 190, [2] = -50}},
[17] = {pos = {[1] = 175, [2] =  50}},
[18] = {pos = {[1] = 175, [2] = -50}},
[19] = {pos = {[1] = 140, [2] =  50}},
[20] = {pos = {[1] = 140, [2] = -50}},
[21] = {pos = {[1] = 150, [2] =  50}},
[22] = {pos = {[1] = 150, [2] = -50}},
[23] = {pos = {[1] = 180, [2] =  50}},
[24] = {pos = {[1] = 180, [2] = -50}},
}

local mildOrangeFires = new.colour( 60, 255, 255 )
fireWingsSettingse = {
scalee = 1,
colour = mildOrangeFires,
on = false,
y = { value = 0.12, still = 0.12, walk =  0.22, sprint = 0.32, sneak = 0.35 },
z = { value = 0.58, still = 0.58, walk =  0.45, sprint = 0.38, sneak = 0.35 },
}
fireWingsSettingse.colour = colour
huoshen = GT(texiao,"火神", {})
GTTG(huoshen, "火神",{""}, "",function(toggle)
fireWingsSettingse.on = toggle
if fireWingsSettingse.on then
 ENTITY.SET_ENTITY_PROOFS(players.user_ped(), false, true, false, false, false, false, 1, false)
if ptfxEgg == nil then
local eggHash = 1803116220
loadModel(eggHash)
ptfxEgg = entities.create_object(eggHash, ENTITY.GET_ENTITY_COORDS(players.user_ped()))
ENTITY.SET_ENTITY_COLLISION(ptfxEgg, false, false)
STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(eggHash)
end
for i = 1, #fireWingse do
while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED('scr_xs_props') do
STREAMING.REQUEST_NAMED_PTFX_ASSET('scr_xs_props')
wait()
end
GRAPHICS.USE_PARTICLE_FX_ASSET('scr_xs_props')
fireWingse[i].ptfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY('scr_xs_oil_jack_fire', ptfxEgg, 0, 0, 0.1, fireWingse[i].pos[1], 0, fireWingse[i].pos[2], fireWingsSettingse.scalee, false, false, false)
util.create_tick_handler(function()
local rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 2)
ENTITY.ATTACH_ENTITY_TO_ENTITY(ptfxEgg, players.user_ped(), -1, 0, 0, 0, rot.x, rot.y, rot.z, false, false, false, false, 0, false)
ENTITY.SET_ENTITY_ROTATION(ptfxEgg, rot.x, rot.y, rot.z, 2, true)
for i = 1, #fireWingse do
GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(fireWingse[i].ptfx, fireWingsSettingse.scalee)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fireWingse[i].ptfx, fireWingsSettingse.colour.r, fireWingsSettingse.colour.g, fireWingsSettingse.colour.b)
end
ENTITY.SET_ENTITY_VISIBLE(ptfxEgg, false)
return fireWingsSettingse.on
end)
end
else
for i = 1, #fireWingse do
if fireWingse[i].ptfx then
GRAPHICS.REMOVE_PARTICLE_FX(fireWingse[i].ptfx, true)
fireWingse[i].ptfx = nil
end
if ptfxEgg then
entities.delete_by_handle(ptfxEgg)
ptfxEgg = nil
end
end
STREAMING.REMOVE_NAMED_PTFX_ASSET('scr_xs_props')
end
end)

GTTG(huoshen, "火神II",{""}, "",function(toggle)
fireWingsSettingse.on = toggle
if fireWingsSettingse.on then
 ENTITY.SET_ENTITY_PROOFS(players.user_ped(), false, true, false, false, false, false, 1, false)
if ptfxEgg == nil then
local eggHash = 1803116220
loadModel(eggHash)
ptfxEgg = entities.create_object(eggHash, ENTITY.GET_ENTITY_COORDS(players.user_ped()))
ENTITY.SET_ENTITY_COLLISION(ptfxEgg, false, false)
STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(eggHash)
end
for i = 1, #fireWingse do
while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED('scr_paletoscore') do
STREAMING.REQUEST_NAMED_PTFX_ASSET('scr_paletoscore')
wait()
end
GRAPHICS.USE_PARTICLE_FX_ASSET('scr_paletoscore')
fireWingse[i].ptfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY('scr_paleto_fire_trail', ptfxEgg, 0, 0, 0.1, fireWingse[i].pos[1], 0, fireWingse[i].pos[2], fireWingsSettingse.scalee, false, false, false)
util.create_tick_handler(function()
local rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 2)
ENTITY.ATTACH_ENTITY_TO_ENTITY(ptfxEgg, players.user_ped(), -1, 0, 0, 0, rot.x, rot.y, rot.z, false, false, false, false, 0, false)
ENTITY.SET_ENTITY_ROTATION(ptfxEgg, rot.x, rot.y, rot.z, 2, true)
for i = 1, #fireWingse do
GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(fireWingse[i].ptfx, fireWingsSettingse.scalee)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fireWingse[i].ptfx, fireWingsSettingse.colour.r, fireWingsSettingse.colour.g, fireWingsSettingse.colour.b)
end
ENTITY.SET_ENTITY_VISIBLE(ptfxEgg, false)
return fireWingsSettingse.on
end)
end
else
for i = 1, #fireWingse do
if fireWingse[i].ptfx then
GRAPHICS.REMOVE_PARTICLE_FX(fireWingse[i].ptfx, true)
fireWingse[i].ptfx = nil
end
if ptfxEgg then
entities.delete_by_handle(ptfxEgg)
ptfxEgg = nil
end
end
STREAMING.REMOVE_NAMED_PTFX_ASSET('scr_paletoscore')
end
end)

GTTG(huoshen, "火神III",{""}, "",function(toggle)
fireWingsSettingse.on = toggle
if fireWingsSettingse.on then
 ENTITY.SET_ENTITY_PROOFS(players.user_ped(), false, true, false, false, false, false, 1, false)
if ptfxEgg == nil then
local eggHash = 1803116220
loadModel(eggHash)
ptfxEgg = entities.create_object(eggHash, ENTITY.GET_ENTITY_COORDS(players.user_ped()))
ENTITY.SET_ENTITY_COLLISION(ptfxEgg, false, false)
STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(eggHash)
end
for i = 1, #fireWingse do
while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED('scr_martin1') do
STREAMING.REQUEST_NAMED_PTFX_ASSET('scr_martin1')
wait()
end
GRAPHICS.USE_PARTICLE_FX_ASSET('scr_martin1')
fireWingse[i].ptfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY('scr_sol1_plane_smoke_loop', ptfxEgg, 0, 0, 0, fireWingse[i].pos[1], 0, fireWingse[i].pos[2], fireWingsSettingse.scalee, false, false, false)
util.create_tick_handler(function()
local rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 2)
ENTITY.ATTACH_ENTITY_TO_ENTITY(ptfxEgg, players.user_ped(), -1, 0, 0, 0.5, rot.x, rot.y, rot.z, false, false, false, false, 0, false)
ENTITY.SET_ENTITY_ROTATION(ptfxEgg, rot.x, rot.y, rot.z, 2, true)
for i = 1, #fireWingse do
GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(fireWingse[i].ptfx, fireWingsSettingse.scalee)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fireWingse[i].ptfx, fireWingsSettingse.colour.r, fireWingsSettingse.colour.g, fireWingsSettingse.colour.b)
end
ENTITY.SET_ENTITY_VISIBLE(ptfxEgg, false)
return fireWingsSettingse.on
end)
end
else
for i = 1, #fireWingse do
if fireWingse[i].ptfx then
GRAPHICS.REMOVE_PARTICLE_FX(fireWingse[i].ptfx, true)
fireWingse[i].ptfx = nil
end
if ptfxEgg then
entities.delete_by_handle(ptfxEgg)
ptfxEgg = nil
end
end
STREAMING.REMOVE_NAMED_PTFX_ASSET('scr_martin1')
end
end)

GTTG(huoshen, "火神IIII",{""}, "",function(toggle)
fireWingsSettingse.on = toggle
if fireWingsSettingse.on then
 ENTITY.SET_ENTITY_PROOFS(players.user_ped(), false, true, false, false, false, false, 1, false)
if ptfxEgg == nil then
local eggHash = 1803116220
loadModel(eggHash)
ptfxEgg = entities.create_object(eggHash, ENTITY.GET_ENTITY_COORDS(players.user_ped()))
ENTITY.SET_ENTITY_COLLISION(ptfxEgg, false, false)
STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(eggHash)
end
for i = 1, #fireWingse do
while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED('scr_martin1') do
STREAMING.REQUEST_NAMED_PTFX_ASSET('scr_martin1')
wait()
end
GRAPHICS.USE_PARTICLE_FX_ASSET('scr_martin1')
fireWingse[i].ptfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY('scr_sol1_plane_engine_fire', ptfxEgg, 0, 0, 0, fireWingse[i].pos[1], 0, fireWingse[i].pos[2], fireWingsSettingse.scalee, false, false, false)
util.create_tick_handler(function()
local rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 2)
ENTITY.ATTACH_ENTITY_TO_ENTITY(ptfxEgg, players.user_ped(), -1, 0, 0, 0.5, rot.x, rot.y, rot.z, false, false, false, false, 0, false)
ENTITY.SET_ENTITY_ROTATION(ptfxEgg, rot.x, rot.y, rot.z, 2, true)
for i = 1, #fireWingse do
GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(fireWingse[i].ptfx, fireWingsSettingse.scalee)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fireWingse[i].ptfx, fireWingsSettingse.colour.r, fireWingsSettingse.colour.g, fireWingsSettingse.colour.b)
end
ENTITY.SET_ENTITY_VISIBLE(ptfxEgg, false)
return fireWingsSettingse.on
end)
end
else
for i = 1, #fireWingse do
if fireWingse[i].ptfx then
GRAPHICS.REMOVE_PARTICLE_FX(fireWingse[i].ptfx, true)
fireWingse[i].ptfx = nil
end
if ptfxEgg then
entities.delete_by_handle(ptfxEgg)
ptfxEgg = nil
end
end
STREAMING.REMOVE_NAMED_PTFX_ASSET('scr_martin1')
end
end)

GTTG(texiao, "星火燎原",{""}, "",function(toggle)
fireWingsSettingse.on = toggle
if fireWingsSettingse.on then
 ENTITY.SET_ENTITY_PROOFS(players.user_ped(), false, true, false, false, false, false, 1, false)
if ptfxEgg == nil then
local eggHash = 1803116220
loadModel(eggHash)
ptfxEgg = entities.create_object(eggHash, ENTITY.GET_ENTITY_COORDS(players.user_ped()))
ENTITY.SET_ENTITY_COLLISION(ptfxEgg, false, false)
STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(eggHash)
end
for i = 1, #fireWingse do
while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED('scr_xs_pits') do
STREAMING.REQUEST_NAMED_PTFX_ASSET('scr_xs_pits')
wait()
end
GRAPHICS.USE_PARTICLE_FX_ASSET('scr_xs_pits')
fireWingse[i].ptfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY('scr_xs_fire_pit_long', ptfxEgg, 0, 0, 0.1, fireWingse[i].pos[1], 0, fireWingse[i].pos[2], fireWingsSettingse.scalee, false, false, false)
util.create_tick_handler(function()
local rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 2)
ENTITY.ATTACH_ENTITY_TO_ENTITY(ptfxEgg, players.user_ped(), -1, 0, 0, 0, rot.x, rot.y, rot.z, false, false, false, false, 0, false)
ENTITY.SET_ENTITY_ROTATION(ptfxEgg, rot.x, rot.y, rot.z, 2, true)
for i = 1, #fireWingse do
GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(fireWingse[i].ptfx, fireWingsSettingse.scalee)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fireWingse[i].ptfx, fireWingsSettingse.colour.r, fireWingsSettingse.colour.g, fireWingsSettingse.colour.b)
end
ENTITY.SET_ENTITY_VISIBLE(ptfxEgg, false)
return fireWingsSettingse.on
end)
end
else
for i = 1, #fireWingse do
if fireWingse[i].ptfx then
GRAPHICS.REMOVE_PARTICLE_FX(fireWingse[i].ptfx, true)
fireWingse[i].ptfx = nil
end
if ptfxEgg then
entities.delete_by_handle(ptfxEgg)
ptfxEgg = nil
end
end
STREAMING.REMOVE_NAMED_PTFX_ASSET('scr_xs_pits')
end
end)

GTTG(texiao, "雷惊电绕",{""}, "",function(toggle)
fireWingsSettingse.on = toggle
if fireWingsSettingse.on then
 ENTITY.SET_ENTITY_PROOFS(players.user_ped(), false, true, false, false, false, false, 1, false)
if ptfxEgg == nil then
local eggHash = 1803116220
loadModel(eggHash)
ptfxEgg = entities.create_object(eggHash, ENTITY.GET_ENTITY_COORDS(players.user_ped()))
ENTITY.SET_ENTITY_COLLISION(ptfxEgg, false, false)
STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(eggHash)
end
for i = 1, #fireWingse do
while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED('scr_xs_pits') do
STREAMING.REQUEST_NAMED_PTFX_ASSET('scr_xs_pits')
wait()
end
GRAPHICS.USE_PARTICLE_FX_ASSET('scr_xs_pits')
fireWingse[i].ptfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY('scr_xs_sf_pit_long', ptfxEgg, 0, 0, 0.1, fireWingse[i].pos[1], 0, fireWingse[i].pos[2], fireWingsSettingse.scalee, false, false, false)
util.create_tick_handler(function()
local rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 2)
ENTITY.ATTACH_ENTITY_TO_ENTITY(ptfxEgg, players.user_ped(), -1, 0, 0, 0, rot.x, rot.y, rot.z, false, false, false, false, 0, false)
ENTITY.SET_ENTITY_ROTATION(ptfxEgg, rot.x, rot.y, rot.z, 2, true)
for i = 1, #fireWingse do
GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(fireWingse[i].ptfx, fireWingsSettingse.scalee)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fireWingse[i].ptfx, fireWingsSettingse.colour.r, fireWingsSettingse.colour.g, fireWingsSettingse.colour.b)
end
ENTITY.SET_ENTITY_VISIBLE(ptfxEgg, false)
return fireWingsSettingse.on
end)
end
else
for i = 1, #fireWingse do
if fireWingse[i].ptfx then
GRAPHICS.REMOVE_PARTICLE_FX(fireWingse[i].ptfx, true)
fireWingse[i].ptfx = nil
end
if ptfxEgg then
entities.delete_by_handle(ptfxEgg)
ptfxEgg = nil
end
end
STREAMING.REMOVE_NAMED_PTFX_ASSET('scr_xs_pits')
end
end)

GTTG(texiao, "斗气化翼",{""}, "行走触发",function(toggle)
fireWingsSettingse.on = toggle
if fireWingsSettingse.on then
 ENTITY.SET_ENTITY_PROOFS(players.user_ped(), false, true, false, false, false, false, 1, false)
if ptfxEgg == nil then
local eggHash = 1803116220
loadModel(eggHash)
ptfxEgg = entities.create_object(eggHash, ENTITY.GET_ENTITY_COORDS(players.user_ped()))
ENTITY.SET_ENTITY_COLLISION(ptfxEgg, false, false)
STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(eggHash)
end
for i = 1, #fireWingse do
while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED('scr_pm_plane_promotion') do
STREAMING.REQUEST_NAMED_PTFX_ASSET('scr_pm_plane_promotion')
wait()
end
GRAPHICS.USE_PARTICLE_FX_ASSET('scr_pm_plane_promotion')
fireWingse[i].ptfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY('scr_stuntplane_trail', ptfxEgg, 0, 0, 0.1, fireWingse[i].pos[1], 0, fireWingse[i].pos[2], fireWingsSettingse.scalee, false, false, false)
util.create_tick_handler(function()
local rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 2)
ENTITY.ATTACH_ENTITY_TO_ENTITY(ptfxEgg, players.user_ped(), -1, 0, 0, 0.3, rot.x, rot.y, rot.z, false, false, false, false, 0, false)
ENTITY.SET_ENTITY_ROTATION(ptfxEgg, rot.x, rot.y, rot.z, 2, true)
for i = 1, #fireWingse do
GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(fireWingse[i].ptfx, fireWingsSettingse.scalee)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fireWingse[i].ptfx, fireWingsSettingse.colour.r, fireWingsSettingse.colour.g, fireWingsSettingse.colour.b)
end
ENTITY.SET_ENTITY_VISIBLE(ptfxEgg, false)
return fireWingsSettingse.on
end)
end
else
for i = 1, #fireWingse do
if fireWingse[i].ptfx then
GRAPHICS.REMOVE_PARTICLE_FX(fireWingse[i].ptfx, true)
fireWingse[i].ptfx = nil
end
if ptfxEgg then
entities.delete_by_handle(ptfxEgg)
ptfxEgg = nil
end
end
STREAMING.REMOVE_NAMED_PTFX_ASSET('scr_pm_plane_promotion')
end
end)

GTTG(texiao, "尿频",{""}, "",function(toggle)
fireWingsSettingse.on = toggle
if fireWingsSettingse.on then
 ENTITY.SET_ENTITY_PROOFS(players.user_ped(), false, true, false, false, false, false, 1, false)
if ptfxEgg == nil then
local eggHash = 1803116220
loadModel(eggHash)
ptfxEgg = entities.create_object(eggHash, ENTITY.GET_ENTITY_COORDS(players.user_ped()))
ENTITY.SET_ENTITY_COLLISION(ptfxEgg, false, false)
STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(eggHash)
end
for i = 1, #fireWingse do
while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED('scr_bigscore') do
STREAMING.REQUEST_NAMED_PTFX_ASSET('scr_bigscore')
wait()
end
GRAPHICS.USE_PARTICLE_FX_ASSET('scr_bigscore')
fireWingse[i].ptfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY('scr_bigscore_peeing', ptfxEgg, 0, 0, 0, fireWingse[i].pos[1], 0, fireWingse[i].pos[2], fireWingsSettingse.scalee, false, false, false)
util.create_tick_handler(function()
local rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 2)
ENTITY.ATTACH_ENTITY_TO_ENTITY(ptfxEgg, players.user_ped(), -1, 0, 0, 0.2, rot.x, rot.y, rot.z, false, false, false, false, 0, false)
ENTITY.SET_ENTITY_ROTATION(ptfxEgg, rot.x, rot.y, rot.z, 2, true)
for i = 1, #fireWingse do
GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(fireWingse[i].ptfx, fireWingsSettingse.scalee)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fireWingse[i].ptfx, fireWingsSettingse.colour.r, fireWingsSettingse.colour.g, fireWingsSettingse.colour.b)
end
ENTITY.SET_ENTITY_VISIBLE(ptfxEgg, false)
return fireWingsSettingse.on
end)
end
else
for i = 1, #fireWingse do
if fireWingse[i].ptfx then
GRAPHICS.REMOVE_PARTICLE_FX(fireWingse[i].ptfx, true)
fireWingse[i].ptfx = nil
end
if ptfxEgg then
entities.delete_by_handle(ptfxEgg)
ptfxEgg = nil
end
end
STREAMING.REMOVE_NAMED_PTFX_ASSET('scr_bigscore')
end
end)

huohai = GT(texiao,"火海",{},"")
GTTG(huohai, "火海",{""}, "",function(toggle)
fireWingsSettingse.on = toggle
if fireWingsSettingse.on then
 ENTITY.SET_ENTITY_PROOFS(players.user_ped(), false, true, false, false, false, false, 1, false)
if ptfxEgg == nil then
local eggHash = 1803116220
loadModel(eggHash)
ptfxEgg = entities.create_object(eggHash, ENTITY.GET_ENTITY_COORDS(players.user_ped()))
ENTITY.SET_ENTITY_COLLISION(ptfxEgg, false, false)
STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(eggHash)
end
for i = 1, #fireWingse do
while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED('scr_martin1') do
STREAMING.REQUEST_NAMED_PTFX_ASSET('scr_martin1')
wait()
end
GRAPHICS.USE_PARTICLE_FX_ASSET('scr_martin1')
fireWingse[i].ptfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY('scr_sol1_plane_tail_fire', ptfxEgg, 0, 0, 0.1, fireWingse[i].pos[1], 0, fireWingse[i].pos[2], fireWingsSettingse.scalee, false, false, false)
util.create_tick_handler(function()
local rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 2)
ENTITY.ATTACH_ENTITY_TO_ENTITY(ptfxEgg, players.user_ped(), -1, 0, 0, 0.5, rot.x, rot.y, rot.z, false, false, false, false, 0, false)
ENTITY.SET_ENTITY_ROTATION(ptfxEgg, rot.x, rot.y, rot.z, 2, true)
for i = 1, #fireWingse do
GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(fireWingse[i].ptfx, fireWingsSettingse.scalee)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fireWingse[i].ptfx, fireWingsSettingse.colour.r, fireWingsSettingse.colour.g, fireWingsSettingse.colour.b)
end
ENTITY.SET_ENTITY_VISIBLE(ptfxEgg, false)
return fireWingsSettingse.on
end)
end
else
for i = 1, #fireWingse do
if fireWingse[i].ptfx then
GRAPHICS.REMOVE_PARTICLE_FX(fireWingse[i].ptfx, true)
fireWingse[i].ptfx = nil
end
if ptfxEgg then
entities.delete_by_handle(ptfxEgg)
ptfxEgg = nil
end
end
STREAMING.REMOVE_NAMED_PTFX_ASSET('scr_martin1')
end
end)

GTTG(huohai, "火海II",{""}, "",function(toggle)
fireWingsSettingse.on = toggle
if fireWingsSettingse.on then
 ENTITY.SET_ENTITY_PROOFS(players.user_ped(), false, true, false, false, false, false, 1, false)
if ptfxEgg == nil then
local eggHash = 1803116220
loadModel(eggHash)
ptfxEgg = entities.create_object(eggHash, ENTITY.GET_ENTITY_COORDS(players.user_ped()))
ENTITY.SET_ENTITY_COLLISION(ptfxEgg, false, false)
STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(eggHash)
end
for i = 1, #fireWingse do
while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED('scr_finale1') do
STREAMING.REQUEST_NAMED_PTFX_ASSET('scr_finale1')
wait()
end
GRAPHICS.USE_PARTICLE_FX_ASSET('scr_finale1')
fireWingse[i].ptfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY('scr_fin_fire_petrol_trev', ptfxEgg, 0, 0, 0, fireWingse[i].pos[1], 0, fireWingse[i].pos[2], fireWingsSettingse.scalee, false, false, false)
util.create_tick_handler(function()
local rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 2)
ENTITY.ATTACH_ENTITY_TO_ENTITY(ptfxEgg, players.user_ped(), -1, 0, 0, -0.2, rot.x, rot.y, rot.z, false, false, false, false, 0, false)
ENTITY.SET_ENTITY_ROTATION(ptfxEgg, rot.x, rot.y, rot.z, 2, true)
for i = 1, #fireWingse do
GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(fireWingse[i].ptfx, fireWingsSettingse.scalee)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fireWingse[i].ptfx, fireWingsSettingse.colour.r, fireWingsSettingse.colour.g, fireWingsSettingse.colour.b)
end
ENTITY.SET_ENTITY_VISIBLE(ptfxEgg, false)
return fireWingsSettingse.on
end)
end
else
for i = 1, #fireWingse do
if fireWingse[i].ptfx then
GRAPHICS.REMOVE_PARTICLE_FX(fireWingse[i].ptfx, true)
fireWingse[i].ptfx = nil
end
if ptfxEgg then
entities.delete_by_handle(ptfxEgg)
ptfxEgg = nil
end
end
STREAMING.REMOVE_NAMED_PTFX_ASSET('scr_finale1')
end
end)

GTTG(texiao, "Xfire",{""}, "",function(toggle)
fireWingsSettingse.on = toggle
if fireWingsSettingse.on then
 ENTITY.SET_ENTITY_PROOFS(players.user_ped(), false, true, false, false, false, false, 1, false)
if ptfxEgg == nil then
local eggHash = 1803116220
loadModel(eggHash)
ptfxEgg = entities.create_object(eggHash, ENTITY.GET_ENTITY_COORDS(players.user_ped()))
ENTITY.SET_ENTITY_COLLISION(ptfxEgg, false, false)
STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(eggHash)
end
for i = 1, #fireWingse do
while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED('scr_martin1') do
STREAMING.REQUEST_NAMED_PTFX_ASSET('scr_martin1')
wait()
end
GRAPHICS.USE_PARTICLE_FX_ASSET('scr_martin1')
fireWingse[i].ptfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY('scr_sol1_fire_trail', ptfxEgg, 0, 0, -1.3, fireWingse[i].pos[1], 0, fireWingse[i].pos[2], fireWingsSettingse.scalee, false, false, false)
util.create_tick_handler(function()
local rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 2)
ENTITY.ATTACH_ENTITY_TO_ENTITY(ptfxEgg, players.user_ped(), -1, 0, 0, 0.5, rot.x, rot.y, rot.z, false, false, false, false, 0, false)
ENTITY.SET_ENTITY_ROTATION(ptfxEgg, rot.x, rot.y, rot.z, 2, true)
for i = 1, #fireWingse do
GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(fireWingse[i].ptfx, fireWingsSettingse.scalee)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fireWingse[i].ptfx, fireWingsSettingse.colour.r, fireWingsSettingse.colour.g, fireWingsSettingse.colour.b)
end
ENTITY.SET_ENTITY_VISIBLE(ptfxEgg, false)
return fireWingsSettingse.on
end)
end
else
for i = 1, #fireWingse do
if fireWingse[i].ptfx then
GRAPHICS.REMOVE_PARTICLE_FX(fireWingse[i].ptfx, true)
fireWingse[i].ptfx = nil
end
if ptfxEgg then
entities.delete_by_handle(ptfxEgg)
ptfxEgg = nil
end
end
STREAMING.REMOVE_NAMED_PTFX_ASSET('scr_martin1')
end
end)

GTTG(texiao, "硝烟",{""}, "",function(toggle)
fireWingsSettingse.on = toggle
if fireWingsSettingse.on then
 ENTITY.SET_ENTITY_PROOFS(players.user_ped(), false, true, false, false, false, false, 1, false)
if ptfxEgg == nil then
local eggHash = 1803116220
loadModel(eggHash)
ptfxEgg = entities.create_object(eggHash, ENTITY.GET_ENTITY_COORDS(players.user_ped()))
ENTITY.SET_ENTITY_COLLISION(ptfxEgg, false, false)
STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(eggHash)
end
for i = 1, #fireWingse do
while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED('scr_finale1') do
STREAMING.REQUEST_NAMED_PTFX_ASSET('scr_finale1')
wait()
end
GRAPHICS.USE_PARTICLE_FX_ASSET('scr_finale1')
fireWingse[i].ptfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY('scr_fin_env_trev_sky', ptfxEgg, 0, 0, 0, fireWingse[i].pos[1], 0, fireWingse[i].pos[2], fireWingsSettingse.scalee, false, false, false)
util.create_tick_handler(function()
local rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 2)
ENTITY.ATTACH_ENTITY_TO_ENTITY(ptfxEgg, players.user_ped(), -1, 0, 0, -0.2, rot.x, rot.y, rot.z, false, false, false, false, 0, false)
ENTITY.SET_ENTITY_ROTATION(ptfxEgg, rot.x, rot.y, rot.z, 2, true)
for i = 1, #fireWingse do
GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(fireWingse[i].ptfx, fireWingsSettingse.scalee)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fireWingse[i].ptfx, fireWingsSettingse.colour.r, fireWingsSettingse.colour.g, fireWingsSettingse.colour.b)
end
ENTITY.SET_ENTITY_VISIBLE(ptfxEgg, false)
return fireWingsSettingse.on
end)
end
else
for i = 1, #fireWingse do
if fireWingse[i].ptfx then
GRAPHICS.REMOVE_PARTICLE_FX(fireWingse[i].ptfx, true)
fireWingse[i].ptfx = nil
end
if ptfxEgg then
entities.delete_by_handle(ptfxEgg)
ptfxEgg = nil
end
end
STREAMING.REMOVE_NAMED_PTFX_ASSET('scr_finale1')
end
end)

GTTG(texiao, "满面金光",{""}, "",function(toggle)
fireWingsSettingse.on = toggle
if fireWingsSettingse.on then
 ENTITY.SET_ENTITY_PROOFS(players.user_ped(), false, true, false, false, false, false, 1, false)
if ptfxEgg == nil then
local eggHash = 1803116220
loadModel(eggHash)
ptfxEgg = entities.create_object(eggHash, ENTITY.GET_ENTITY_COORDS(players.user_ped()))
ENTITY.SET_ENTITY_COLLISION(ptfxEgg, false, false)
STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(eggHash)
end
for i = 1, #fireWingse do
while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED('scr_exile2') do
STREAMING.REQUEST_NAMED_PTFX_ASSET('scr_exile2')
wait()
end
GRAPHICS.USE_PARTICLE_FX_ASSET('scr_exile2')
fireWingse[i].ptfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY('scr_ex2_rpg_trail', ptfxEgg, 0, 0, 0, fireWingse[i].pos[1], 0, fireWingse[i].pos[2], fireWingsSettingse.scalee, false, false, false)
util.create_tick_handler(function()
local rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 2)
ENTITY.ATTACH_ENTITY_TO_ENTITY(ptfxEgg, players.user_ped(), -1, 0, 0, 1, rot.x, rot.y, rot.z, false, false, false, false, 0, false)
ENTITY.SET_ENTITY_ROTATION(ptfxEgg, rot.x, rot.y, rot.z, 2, true)
for i = 1, #fireWingse do
GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(fireWingse[i].ptfx, fireWingsSettingse.scalee)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fireWingse[i].ptfx, fireWingsSettingse.colour.r, fireWingsSettingse.colour.g, fireWingsSettingse.colour.b)
end
ENTITY.SET_ENTITY_VISIBLE(ptfxEgg, false)
return fireWingsSettingse.on
end)
end
else
for i = 1, #fireWingse do
if fireWingse[i].ptfx then
GRAPHICS.REMOVE_PARTICLE_FX(fireWingse[i].ptfx, true)
fireWingse[i].ptfx = nil
end
if ptfxEgg then
entities.delete_by_handle(ptfxEgg)
ptfxEgg = nil
end
end
STREAMING.REMOVE_NAMED_PTFX_ASSET('scr_exile2')
end
end)

GTTG(newptfx, '雷电法王', {''}, '', function(k)
    leidian = k
    while leidian do
      pedmyfirst = players.user_ped(players.user())
      local titlle = "scr_xs_pits"
      local hashid = "scr_xs_sf_pit_long"
      GRAPHICS.USE_PARTICLE_FX_ASSET(titlle)
      while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(titlle) do
        STREAMING.REQUEST_NAMED_PTFX_ASSET(titlle)
        wait(0)
      end
      GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY(hashid, pedmyfirst, -0.3, 0, -0.3, 0, 0, 100, 2.5, false, false, false)
      wait(0)
    end
    leidian = false
    GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(pedmyfirst)
end)

GTTG(newptfx, '尘土飞扬', {''}, '', function(k)
    leidian = k
    while leidian do
      pedmyfirst = players.user_ped(players.user())
      local titlle = "scr_pm_plane_promotion"
      local hashid = "scr_stuntplane_trail"
      GRAPHICS.USE_PARTICLE_FX_ASSET(titlle)
      while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(titlle) do
        STREAMING.REQUEST_NAMED_PTFX_ASSET(titlle)
        wait(0)
      end
      GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY(hashid, pedmyfirst, 0.1, 0, -0.3, 0, 0,0, 2, false, false, false)
      wait(0)
    end
    leidian = false
    GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(pedmyfirst)
  end)
  
  GTTG(newptfx, 'JB喷火', {''}, '', function(k)
    leidian = k
    while leidian do
      pedmyfirst = players.user_ped(players.user())
      local titlle = "weap_xs_vehicle_weapons"
      local hashid = "muz_xs_turret_flamethrower_looping"
      GRAPHICS.USE_PARTICLE_FX_ASSET(titlle)
      while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(titlle) do
        STREAMING.REQUEST_NAMED_PTFX_ASSET(titlle)
        wait(0)
      end
      GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY(hashid, pedmyfirst, 0, 0, -0.2, 0, 0,0, 1.5, false, false, false)
      wait(0)
    end
    leidian = false
    GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(pedmyfirst)
  end)
  
GTTG(newptfx, "风起云涌",{""}, "非常壮观喔~",function(toggle)
fireWingsSettingse.on = toggle
if fireWingsSettingse.on then
 ENTITY.SET_ENTITY_PROOFS(players.user_ped(), false, true, false, false, false, false, 1, false)
if ptfxEgg == nil then
local eggHash = 1803116220
loadModel(eggHash)
ptfxEgg = entities.create_object(eggHash, ENTITY.GET_ENTITY_COORDS(players.user_ped()))
ENTITY.SET_ENTITY_COLLISION(ptfxEgg, false, false)
STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(eggHash)
end
for i = 1, #fireWingse do
while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED('scr_exile1') do
STREAMING.REQUEST_NAMED_PTFX_ASSET('scr_exile1')
wait()
end
GRAPHICS.USE_PARTICLE_FX_ASSET('scr_exile1')
fireWingse[i].ptfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY('scr_ex1_moving_cloud', ptfxEgg, 0, 0, 0, fireWingse[i].pos[1], 0, fireWingse[i].pos[2], fireWingsSettingse.scalee, false, false, false)
util.create_tick_handler(function()
local rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 2)
ENTITY.ATTACH_ENTITY_TO_ENTITY(ptfxEgg, players.user_ped(), -1, 0, 0, 0, rot.x, rot.y, rot.z, false, false, false, false, 0, false)
ENTITY.SET_ENTITY_ROTATION(ptfxEgg, rot.x, rot.y, rot.z, 2, true)
for i = 1, #fireWingse do
GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(fireWingse[i].ptfx, fireWingsSettingse.scalee)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fireWingse[i].ptfx, fireWingsSettingse.colour.r, fireWingsSettingse.colour.g, fireWingsSettingse.colour.b)
end
ENTITY.SET_ENTITY_VISIBLE(ptfxEgg, false)
return fireWingsSettingse.on
end)
end
else
for i = 1, #fireWingse do
if fireWingse[i].ptfx then
GRAPHICS.REMOVE_PARTICLE_FX(fireWingse[i].ptfx, true)
fireWingse[i].ptfx = nil
end
if ptfxEgg then
entities.delete_by_handle(ptfxEgg)
ptfxEgg = nil
end
end
STREAMING.REMOVE_NAMED_PTFX_ASSET('scr_exile1')
end
end)

GTTG(texiao, "闪亮登场",{""}, "",function(toggle)
fireWingsSettingse.on = toggle
if fireWingsSettingse.on then
 ENTITY.SET_ENTITY_PROOFS(players.user_ped(), false, true, false, false, false, false, 1, false)
if ptfxEgg == nil then
local eggHash = 1803116220
loadModel(eggHash)
ptfxEgg = entities.create_object(eggHash, ENTITY.GET_ENTITY_COORDS(players.user_ped()))
ENTITY.SET_ENTITY_COLLISION(ptfxEgg, false, false)
STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(eggHash)
end
for i = 1, #fireWingse do
while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED('scr_bigscore') do
STREAMING.REQUEST_NAMED_PTFX_ASSET('scr_bigscore')
wait()
end
GRAPHICS.USE_PARTICLE_FX_ASSET('scr_bigscore')
fireWingse[i].ptfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY('scr_bigscore_rpg_trail', ptfxEgg, 0, 0, 0, fireWingse[i].pos[1], 0, fireWingse[i].pos[2], fireWingsSettingse.scalee, false, false, false)
util.create_tick_handler(function()
local rot = ENTITY.GET_ENTITY_ROTATION(players.user_ped(), 2)
ENTITY.ATTACH_ENTITY_TO_ENTITY(ptfxEgg, players.user_ped(), -1, 0, 0, 0.2, rot.x, rot.y, rot.z, false, false, false, false, 0, false)
ENTITY.SET_ENTITY_ROTATION(ptfxEgg, rot.x, rot.y, rot.z, 2, true)
for i = 1, #fireWingse do
GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(fireWingse[i].ptfx, fireWingsSettingse.scalee)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fireWingse[i].ptfx, fireWingsSettingse.colour.r, fireWingsSettingse.colour.g, fireWingsSettingse.colour.b)
end
ENTITY.SET_ENTITY_VISIBLE(ptfxEgg, false)
return fireWingsSettingse.on
end)
end
else
for i = 1, #fireWingse do
if fireWingse[i].ptfx then
GRAPHICS.REMOVE_PARTICLE_FX(fireWingse[i].ptfx, true)
fireWingse[i].ptfx = nil
end
if ptfxEgg then
entities.delete_by_handle(ptfxEgg)
ptfxEgg = nil
end
end
STREAMING.REMOVE_NAMED_PTFX_ASSET('scr_bigscore')
end
end)

guangxian = GT(texiao,"光线",{},"")
GTLP(guangxian, "光线", {""}, "", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("cut_family1")
    GRAPHICS.USE_PARTICLE_FX_ASSET("cut_family1")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
"cs_mich1_lighter_sparks", player_pos.x, player_pos.y, player_pos.z -1.5, 0, 0, 0, 20, false, false, false)
end)

GTLP(guangxian, "光线V2", {""}, "", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("cut_trevor1")
    GRAPHICS.USE_PARTICLE_FX_ASSET("cut_trevor1")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
"cs_trev1_lighter_sparks", player_pos.x, player_pos.y, player_pos.z -1.5, 0, 0, 0, 15, false, false, false)
end)

GTLP(texiao, "光布", {""}, "", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("cut_family5")
    GRAPHICS.USE_PARTICLE_FX_ASSET("cut_family5")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
"cs_alien_light_bed", player_pos.x, player_pos.y, player_pos.z +1.5, 5, 10, 200, 1, false, false, false)
end)

GTLP(texiao, "冷风嗖嗖", {""}, "", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("des_prologue_door")
    GRAPHICS.USE_PARTICLE_FX_ASSET("des_prologue_door")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
"ent_ray_pro_door_light_glass", player_pos.x, player_pos.y, player_pos.z +0, 0, 0, 0, 10, false, false, false)
end)

GTLP(texiao, "容光焕发", {""}, "", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("des_farmhouse")
    GRAPHICS.USE_PARTICLE_FX_ASSET("des_farmhouse")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
"ent_ray_ch2_farm_fire_light", player_pos.x, player_pos.y, player_pos.z +0, 0, 0, 0, 5, false, false, false)
end)

GTLP(texiao, "疾屁而行", {""}, "", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("cut_family1")
    GRAPHICS.USE_PARTICLE_FX_ASSET("cut_family1")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
"cs_cig_exhale_mouth", player_pos.x, player_pos.y, player_pos.z +0, 0, 0, 0, 10, false, false, false)
end)

GTLP(texiao, "气势磅礴", {""}, "", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("core")
    GRAPHICS.USE_PARTICLE_FX_ASSET("core")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
"veh_light_red", player_pos.x, player_pos.y, player_pos.z -1, 0, 0, 0, 7, false, false, false)
end)

GTLP(texiao, "污水喷涌", {""}, "", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("core")
    GRAPHICS.USE_PARTICLE_FX_ASSET("core")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
"liquid_splash_gloopy", player_pos.x, player_pos.y, player_pos.z +0, 0, 0, 0, 10, false, false, false)
end)

ysrg = GT(texiao,"一闪而过",{},"")
GTAC(ysrg, "一闪而过V1",{""}, "",function(state)
if state then
for _, boneId in ipairs(bones) do
request_ptfx_asset("scr_rcbarry1")
GRAPHICS.USE_PARTICLE_FX_ASSET("scr_rcbarry1")
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("scr_alien_teleport", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 2, false, false, false, 0, 0, 0, 0)
end
else
GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
end
end)

GTAC(ysrg, "一闪而过V2",{""}, "",function(state)
if state then
for _, boneId in ipairs(bones) do
request_ptfx_asset("scr_rcbarry1")
GRAPHICS.USE_PARTICLE_FX_ASSET("scr_rcbarry1")
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("scr_alien_disintegrate", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 2, false, false, false, 0, 0, 0, 0)
end
else
GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
end
end)

GTAC(ysrg, "一闪而过V3", {""}, "", function ()
    local ptfx_asset = "scr_indep_fireworks"
    local effect_name = "scr_indep_firework_trailburst_spawn"
    diaoshepao(ptfx_asset)
    GRAPHICS.USE_PARTICLE_FX_ASSET(ptfx_asset)
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY(effect_name, players.user_ped(), 0.0, 0.0, -0.3, 90.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0)
    for i=1, 10 do 
        local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0.0, i, 0.0)
        FIRE.ADD_EXPLOSION(coords['x'], coords['y'], coords['z'], 67, 0.0, false, false, 0.0, true)
    end
end)

GTAC(ysrg, "一闪而过V4",{""}, "",function(state)
if state then
   for _, boneId in ipairs(bones) do
   request_ptfx_asset("core")
   GRAPHICS.USE_PARTICLE_FX_ASSET("core")
   GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("ent_ray_heli_aprtmnt_exp", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 2, false, false, false, 0, 0, 0, 0)
   end
   else
   GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
   end
end)

GTAC(texiao, "小丑特效",{""}, "",function(state)
    if state then
    for _, boneId in ipairs(bones) do
    request_ptfx_asset("scr_rcbarry2")
    GRAPHICS.USE_PARTICLE_FX_ASSET("scr_rcbarry2")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("scr_clown_appears", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 2, false, false, false, 0, 0, 0, 0)
    end
    else
    GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
    end
end)
           
GTAC(texiao, "黑暗力量",{""}, "",function(state)
    if state then
    for _, boneId in ipairs(bones) do
    request_ptfx_asset("scr_sum2_hal")
    GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("scr_sum2_hal_rider_death_green", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 2, false, false, false, 0, 0, 0, 0)
    end
    else
    GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
    end
end)

bianshen = GT(texiao,"变身",{},"美少女战士(超级炫酷)")
GTLP(bianshen, "变身V1", {""}, "蓝", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("scr_sum2_hal")
    GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
"scr_sum2_hal_rider_weak_blue", player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
end)

GTLP(bianshen, "变身V2", {""}, "绿", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("scr_sum2_hal")
    GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
"scr_sum2_hal_rider_weak_green", player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
end)

GTLP(bianshen, "变身V3", {""}, "黄", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("scr_sum2_hal")
    GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
"scr_sum2_hal_rider_weak_orange", player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
end)

GTLP(bianshen, "变身V4", {""}, "白", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("scr_sum2_hal")
    GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
"scr_sum2_hal_rider_weak_greyblack", player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
end)

GTLP(bianshen, "变身V5", {""}, "七彩", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("scr_sum2_hal")
    GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
    suijijianqi(jianqi), player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)         
end)

GTLP(selflist, "奥义秘术", {}, "", function(f)
    feat = f
    if feat then
        for i = 1, 16 do
            local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped())
            local rad = 2 * math.pi
            rad = rad / 16
            rad = rad * i
            pos.x = pos.x + (18 * math.cos(rad))
            pos.y = pos.y + (18 * math.sin(rad))
            pos.z = pos.z +0.5
            GRAPHICS.SET_PTFX_ASSET_NEXT_CALL("scr_sum2_hal")
            while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("scr_sum2_hal") do
                STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_sum2_hal")
                wait(0)
            end
            GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_sum2_hal_rider_weak_blue", pos.x, pos.y, pos.z, v3(), 4, false, false, false)
            wait(0)
        end
    local player_pos = ENTITY.GET_ENTITY_COORDS(players.user_ped())
    request_ptfx_asset("scr_sum2_hal")
    STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_sum2_hal")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_sum2_hal_rider_weak_blue", player_pos.x, player_pos.y, player_pos.z, v3(0, 0, 0), 2,false, false, false)
    local player_pos = ENTITY.GET_ENTITY_COORDS(players.user_ped())
    request_ptfx_asset("scr_sum2_hal")
    STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_sum2_hal")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_sum2_hal_rider_weak_green", player_pos.x, player_pos.y, player_pos.z, v3(0, 0, 0), 2,false, false, false)
    local player_pos = ENTITY.GET_ENTITY_COORDS(players.user_ped())
    request_ptfx_asset("scr_sum2_hal")
    STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_sum2_hal")
    graphics.start_networked_ptfx_non_looped_at_coord("scr_sum2_hal_rider_weak_orange", player_pos.x, player_pos.y, player_pos.z, v3(0, 0, 0), 2,false, false, false)
    local player_pos = ENTITY.GET_ENTITY_COORDS(players.user_ped())
    request_ptfx_asset("scr_sum2_hal")
    STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_sum2_hal")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_sum2_hal_rider_weak_greyblack", player_pos.x, player_pos.y, player_pos.z, v3(0, 0, 0), 2,false, false, false)
        return HANDLER_CONTINUE
    else
        return HANDLER_POP
    end
    STREAMING.REMOVE_PTFX_ASSET()
end)

GTLP(texiao, "大便失禁", {""}, "", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("core")
    GRAPHICS.USE_PARTICLE_FX_ASSET("core")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
"ent_anim_snot_blow", player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
end)

GTLP(texiao, "狂放臭屁", {""}, "", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("core")
    GRAPHICS.USE_PARTICLE_FX_ASSET("core")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
"ent_anim_cig_exhale_mth_car", player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
end)

GTLP(texiao, "电焊四溅", {""}, "", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("core")
    GRAPHICS.USE_PARTICLE_FX_ASSET("core")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
"ent_brk_sparking_wires", player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
end)

faguang = GT(texiao,"闪闪发光",{},"各种炫酷的发光特效")
GTLP(faguang, "发光", {"bodylight"}, "", function()
    personllight()
end) 

GTLP(faguang, "发光V2", {""}, "", function()
    personllightb()
end)

GTLP(faguang, "发光V3", {""}, "", function()
    personllightc()
end)

GTLP(faguang, "发光V4", {""}, "", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("core")
    GRAPHICS.USE_PARTICLE_FX_ASSET("core")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
"exp_air_molotov_lod", player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
end)

GTLP(texiao, "脑袋冒烟", {""}, "", function()
    personllighta()
end)

GTTG(texiao, "气场拉满",{""}, "",function(state)
    if state then
        for _, boneId in ipairs(bones) do
        request_ptfx_asset("scr_reconstructionaccident")
        GRAPHICS.USE_PARTICLE_FX_ASSET("scr_reconstructionaccident")
        GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("scr_reconstruct_pipefall_debris", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 2, false, false, false, 0, 0, 0, 0)
        end
    else
        GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
    end
end)

GTTG(texiao, "血光之灾",{""}, "",function(state)
    if state then
        for _, boneId in ipairs(bones) do
        request_ptfx_asset("scr_solomon3")
        GRAPHICS.USE_PARTICLE_FX_ASSET("scr_solomon3")
        GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("scr_trev4_747_engine_debris", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 2, false, false, false, 0, 0, 0, 0)
        end
    else
        GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
    end
end)

shuihua = GT(texiao,"水花特效",{},"")
GTTG(shuihua, "水花",{""}, "",function(state)
    if state then
        for _, boneId in ipairs(bones) do
        request_ptfx_asset("core")
        GRAPHICS.USE_PARTICLE_FX_ASSET("core")
        GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("ent_ray_train_water_wash", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 2, false, false, false, 0, 0, 0, 0)
        end
    else
        GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
    end
end)

GTTG(shuihua, "水花2",{""}, "",function(state)
    if state then
        for _, boneId in ipairs(bones) do
        request_ptfx_asset("core")
        GRAPHICS.USE_PARTICLE_FX_ASSET("core")
        GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("ent_amb_wfall_splash_sml", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 2, false, false, false, 0, 0, 0, 0)
        end
    else
        GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
    end
end)

GTTG(texiao, "排毒清心",{""}, "",function(state)
    if state then
        for _, boneId in ipairs(bones) do
        request_ptfx_asset("core")
        GRAPHICS.USE_PARTICLE_FX_ASSET("core")
        GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("ent_amb_smoke_general", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 2, false, false, false, 0, 0, 0, 0)
        end
    else
        GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
    end
end)

GTTG(texiao, "龙卷风",{""}, "",function(state)
    if state then
        for _, boneId in ipairs(bones) do
        request_ptfx_asset("core")
        GRAPHICS.USE_PARTICLE_FX_ASSET("core")
        GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("env_dust_devil_rural_sma", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 2, false, false, false, 0, 0, 0, 0)
        end
    else
        GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
    end
end)

GTTG(texiao, "飘飘落叶",{""}, "",function(state)
    if state then
        for _, boneId in ipairs(bones) do
        request_ptfx_asset("core")
        GRAPHICS.USE_PARTICLE_FX_ASSET("core")
        GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("ent_amb_wind_tree_leaves", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 2, false, false, false, 0, 0, 0, 0)
        end
    else
        GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
    end
end)

GTTG(texiao, "夜光灯",{""}, "",function(state)
    if state then
        for _, boneId in ipairs(bones) do
        request_ptfx_asset("core")
        GRAPHICS.USE_PARTICLE_FX_ASSET("core")
        GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("ent_amb_fbi_light_door", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 2, false, false, false, 0, 0, 0, 0)
        end
    else
        GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
    end
end)


GTTG(texiao, "魂环缠绕",{""}, "",function(on)
    local six = "prop_mp_halo_lrg"
    local sixs = "prop_mp_halo_med"
    local sixss = "prop_mp_halo_point"
    local sixsss = "prop_mp_halo"
    local sixssss = "prop_mp_halo_rotate"
    local sixsssss = "prop_mp_halo_rotate_lrg"
    local sixssssss = "prop_mp_halo_rotate_med"
    local sixsssssss = "prop_mp_halo_rotate_sm"
    if on then     
        attach_to_player(six, 2, 0.0, 0, -0.12, 0, 0,0)
        attach_to_player(sixss, 2, 0, 0, -0.32, 0, 0,0)
        attach_to_player(sixs, 2, 0, 0, 0, -0.22, 0,0)
        attach_to_player(sixsss, 2, 0, 0, -0.02, 0, 0,0)
        attach_to_player(sixssss, 2, 0, 0, -0.42, 0, 0,0)
        attach_to_player(sixsssss, 2, 0, 0, -0.52, 0, 0,0)
        attach_to_player(sixssssss, 2, 0, 0, -0.62, 0, 0,0)
        attach_to_player(sixsssssss, 2, 0, 0, -0.72, 0, 0,0)
    else
        delete_object(six)
        delete_object(sixss)
        delete_object(sixs)
        delete_object(sixsss)
        delete_object(sixssss)
        delete_object(sixsssss)
        delete_object(sixssssss)
        delete_object(sixsssssss)
    end
end)

GTTG(texiao, "怒发冲冠",{"cjfireman"}, "",function(state)
    if state then
    for _, boneId in ipairs(bones) do
    request_ptfx_asset("core")
    GRAPHICS.USE_PARTICLE_FX_ASSET("core")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("ent_ray_heli_aprtmnt_s_fire", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 2, false, false, false, 0, 0, 0, 0)
    end
    else
    GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
    end
    end)

GTLP(texiao, "元气弹", {""}, "", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("core")
    GRAPHICS.USE_PARTICLE_FX_ASSET("core")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
"ent_anim_paparazzi_flash", player_pos.x, player_pos.y, player_pos.z +2.5, 0, 0, 0, 20, false, false, false)
end)

GTTG(texiao, "雷神之锤",{""}, "",function(on)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    local taidao = OBJECT.CREATE_OBJECT(util.joaat("xm3_prop_xm3_hammer_01"), pos.x, pos.y, pos.z, true, true, false)
    if on then
    WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),1317494643,15,true,true)
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(PLAYER.PLAYER_PED_ID(), not on, false, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(taidao, PLAYER.PLAYER_PED_ID(), PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), 28422), 0.07, 0, 0, -100, -90, 100, true, true, true, true, 0, true)
    else
        WEAPON.REMOVE_WEAPON_FROM_PED(players.user_ped(),1317494643)
        local count = 0
			for k,ent in pairs(entities.get_all_objects_as_handles()) do
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
				entities.delete_by_handle(ent)
				count = count + 1
				wait()
			end
    end
end)

        leishen = GT(texiao,"雷神",{},"")
        GTTG(leishen, "雷神",{""}, "",function(state)
            if state then
                for _, boneId in ipairs(bones) do
                request_ptfx_asset("core")
                GRAPHICS.USE_PARTICLE_FX_ASSET("core")
                GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("ent_amb_elec_crackle", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 2, false, false, false, 0, 0, 0, 0)
                end

            else
                GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
            end
        end)

        GTLP(leishen, "雷神v2", {""}, "", function()
            local player_pos = players.get_position(players.user())
            request_ptfx_asset("core")
            GRAPHICS.USE_PARTICLE_FX_ASSET("core")
            GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
        "ent_dst_elec_fire_sp", player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
        end)

GTLP(newptfx, "枯枝败叶", {""}, "", function()
    local player_pos = players.get_position(players.user())
    request_ptfx_asset("core")
    GRAPHICS.USE_PARTICLE_FX_ASSET("core")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD("ent_col_palm_leaves", player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
end)

GTLP(newptfx,"尼斯湖水怪", {""}, "", function ()
    local colour = {r = 0.0, g = 1.0, b = 1.0, a = 0.0}
    local affect <const> = Effect.new("core", "ent_amb_trev1_trailer_sp_f")
    if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
    STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
    return
    end
    if timer.elapsed() >= 1000 then
    removeFxs(affects); affects = {}
    timer.reset()
    end
    if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
    local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
    local minimum, maximum = v3.new(), v3.new()
    MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
    local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
    for _, offset in ipairs(offsets) do
    GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
    local fx =
    GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.7, false, false, false,0, 0, 0, 0)
    GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
    table.insert(affects, fx)
    end
    elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
    for _, boneId in ipairs(bones) do
    GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
    local fx =
    GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
    GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
    table.insert(affects, fx)
    end
    end
    end, function ()
    removeFxs(affects); affects = {}
    end)

    GTLP(newptfx,"雷霆火花", {""}, "", function ()
        local colour = {r = 0.0, g = 1.0, b = 1.0, a = 0.0}
        local affect <const> = Effect.new("core", "ent_ray_prologue_elec_crackle_sp")
        if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
        STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
        return
        end
        if timer.elapsed() >= 1000 then
        removeFxs(affects); affects = {}
        timer.reset()
        end
        if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
        local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
        local minimum, maximum = v3.new(), v3.new()
        MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
        local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
        for _, offset in ipairs(offsets) do
        GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
        local fx =
        GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.7, false, false, false,0, 0, 0, 0)
        GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
        table.insert(affects, fx)
        end
        elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
        for _, boneId in ipairs(bones) do
        GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
        local fx =
        GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
        GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
        table.insert(affects, fx)
        end
        end
        end, function ()
        removeFxs(affects); affects = {}
        end)

        GTLP(newptfx,"雷霆万钧", {""}, "", function ()
            local colour = {r = 0.0, g = 1.0, b = 1.0, a = 0.0}
            local affect <const> = Effect.new("core", "ent_amb_foundry_arc_heat")
            if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
            STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
            return
            end
            if timer.elapsed() >= 1000 then
            removeFxs(affects); affects = {}
            timer.reset()
            end
            if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
            local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
            local minimum, maximum = v3.new(), v3.new()
            MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
            local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
            for _, offset in ipairs(offsets) do
            GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
            local fx =
            GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.7, false, false, false,0, 0, 0, 0)
            GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
            table.insert(affects, fx)
            end
            elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
            for _, boneId in ipairs(bones) do
            GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
            local fx =
            GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
            GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
            table.insert(affects, fx)
            end
            end
            end, function ()
            removeFxs(affects); affects = {}
            end)

        GTLP(newptfx,"火花四溅", {""}, "", function ()
            local colour = {r = 0.0, g = 1.0, b = 1.0, a = 0.0}
            local affect <const> = Effect.new("core", "ent_brk_sparking_wires_sp")
            if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
            STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
            return
            end
            if timer.elapsed() >= 1000 then
            removeFxs(affects); affects = {}
            timer.reset()
            end
            if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
            local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
            local minimum, maximum = v3.new(), v3.new()
            MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
            local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
            for _, offset in ipairs(offsets) do
            GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
            local fx =
            GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.7, false, false, false,0, 0, 0, 0)
            GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
            table.insert(affects, fx)
            end
            elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
            for _, boneId in ipairs(bones) do
            GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
            local fx =
            GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
            GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
            table.insert(affects, fx)
            end
            end
            end, function ()
            removeFxs(affects); affects = {}
            end)

        GTLP(newptfx, "超级赛亚人", {""}, "", function()
            local player_pos = players.get_position(players.user())
            --request_ptfx_asset("core")
            GRAPHICS.USE_PARTICLE_FX_ASSET("core")
            GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
            "exp_grd_sub_large_spawn_sp", player_pos.x, player_pos.y, player_pos.z, 0, 0, 0, 2.5, false, false, false)
            end)

        GTLP(newptfx,"神奇糖果", {""}, "", function ()
            local colour = {r = 0.0, g = 1.0, b = 1.0, a = 0.0}
            local affect <const> = Effect.new("core", "ent_dst_inflate_ball_clr")
            if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
            STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
            return
            end
            if timer.elapsed() >= 1000 then
            removeFxs(affects); affects = {}
            timer.reset()
            end
            if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
            local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
            local minimum, maximum = v3.new(), v3.new()
            MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
            local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
            for _, offset in ipairs(offsets) do
            GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
            local fx =
            GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.7, false, false, false,0, 0, 0, 0)
            GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
            table.insert(affects, fx)
            end
            elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
            for _, boneId in ipairs(bones) do
            GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
            local fx =
            GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
            GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
            table.insert(affects, fx)
            end
            end
            end, function ()
            removeFxs(affects); affects = {}
            end)

        GTLP(newptfx,"煽风点火", {""}, "", function ()
            local colour = {r = 0.0, g = 1.0, b = 1.0, a = 0.0}
            local affect <const> = Effect.new("core", "exp_air_blimp2_sp")
            if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
            STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
            return
            end
            if timer.elapsed() >= 1000 then
            removeFxs(affects); affects = {}
            timer.reset()
            end
            if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
            local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
            local minimum, maximum = v3.new(), v3.new()
            MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
            local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
            for _, offset in ipairs(offsets) do
            GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
            local fx =
            GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.7, false, false, false,0, 0, 0, 0)
            GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
            table.insert(affects, fx)
            end
            elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
            for _, boneId in ipairs(bones) do
            GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
            local fx =
            GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
            GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
            table.insert(affects, fx)
            end
            end
            end, function ()
            removeFxs(affects); affects = {}
            end)

        GTLP(newptfx,"轰轰烈烈", {""}, "", function ()
            local colour = {r = 0.0, g = 1.0, b = 1.0, a = 0.0}
            local affect <const> = Effect.new("scr_prologue", "scr_prologue_door_blast")
            if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
            STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
            return
            end
            if timer.elapsed() >= 1000 then
            removeFxs(affects); affects = {}
            timer.reset()
            end
            if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
            local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
            local minimum, maximum = v3.new(), v3.new()
            MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
            local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
            for _, offset in ipairs(offsets) do
            GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
            local fx =
            GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.7, false, false, false,0, 0, 0, 0)
            GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
            table.insert(affects, fx)
            end
            elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
            for _, boneId in ipairs(bones) do
            GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
            local fx =
            GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
            GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
            table.insert(affects, fx)
            end
            end
            end, function ()
            removeFxs(affects); affects = {}
            end)

        GTLP(newptfx,"金光闪耀", {""}, "", function ()
            local colour = {r = 0.0, g = 1.0, b = 1.0, a = 0.0}
            local affect <const> = Effect.new("scr_rcbarry1", "scr_alien_teleport")
            if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
            STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
            return
            end
            if timer.elapsed() >= 1000 then
            removeFxs(affects); affects = {}
            timer.reset()
            end
            if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
            local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
            local minimum, maximum = v3.new(), v3.new()
            MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
            local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
            for _, offset in ipairs(offsets) do
            GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
            local fx =
            GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.7, false, false, false,0, 0, 0, 0)
            GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
            table.insert(affects, fx)
            end
            elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
            for _, boneId in ipairs(bones) do
            GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
            local fx =
            GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
            GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
            table.insert(affects, fx)
            end
            end
            end, function ()
            removeFxs(affects); affects = {}
            end)

GTLP(sessionfun, "设置力场", {"forcefield"}, "", function()
	forcefielddd()
end, function()
	set_explosion_proof(players.user_ped(), false)
end)


GTLuaScript.slider_text(sessionfun, "力场", {}, "", options_force, function(index)
	forcefield_set(index)
end)

GTLP(sessionfun, "原力", {"jedimode"}, "开启后在载具附近长按滑鼠左键", function()
	jedmode()
end, function()
	state = 0
end)

GTLP(sessionfun, "修仙", {"carpetride"}, "", function()
    carpetridexx()
end,function()
TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
	ENTITY.DETACH_ENTITY(players.user_ped(), true, false)
	ENTITY.SET_ENTITY_VISIBLE(object, false, false)
	entities.delete_by_handle(object)
	state = 0
end)

local ls_driveonair
walkonwater = false
GTTG(sessionfun, "水上行走", {"walkonwater"}, "开启后即可在水域上漫步",  function(on)
    walkonwater = on
    if on then
        GTLuaScript.set_value(ls_driveonair, false)
    end
end)
    
GTLP(quantoutexiao,"火焰拳", {""}, "", function ()
local colour = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
local affect <const> = Effect.new("scr_sum2_hal", "scr_sum2_hal_bike_wheel_flame_orange")
if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
return
end
if timer.elapsed() >= 1000 then
removeFxs(affects); affects = {}
timer.reset()
end
if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
local minimum, maximum = v3.new(), v3.new()
MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
for _, offset in ipairs(offsets) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.0, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
for _, boneId in ipairs(bones) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
end
end, function ()
removeFxs(affects); affects = {}
end)

GTLP(quantoutexiao,"冰封拳", {""}, "", function ()
local colour = {r = 0.0, g = 1.0, b = 0.0, a = 0.0}
local affect <const> = Effect.new("scr_bike_adversary", "scr_adversary_weap_glow")
if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
return
end
if timer.elapsed() >= 1000 then
removeFxs(affects); affects = {}
timer.reset()
end
if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
local minimum, maximum = v3.new(), v3.new()
MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
for _, offset in ipairs(offsets) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.0, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
for _, boneId in ipairs(bones) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
end
end, function ()
removeFxs(affects); affects = {}
end)

GTLP(quantoutexiao,"迷踪拳", {""}, "", function ()
local colour = {r = 1.0, g = 1.0, b = 1.0, a = 0.0}
local affect <const> = Effect.new("proj_indep_firework", "scr_indep_launcher_sparkle_spawn")
if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
return
end
if timer.elapsed() >= 1000 then
removeFxs(affects); affects = {}
timer.reset()
end
if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
local minimum, maximum = v3.new(), v3.new()
MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
for _, offset in ipairs(offsets) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.7, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
for _, boneId in ipairs(bones) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),0.7, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
end
end, function ()
removeFxs(affects); affects = {}
end)

GTTG(quantoutexiao, "火拳艾斯",{""}, "",function(state)
if state then
 for _, boneId in ipairs(bones) do
request_ptfx_asset("core")
GRAPHICS.USE_PARTICLE_FX_ASSET("core")
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("fire_wrecked_plane_cockpit", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 0.35, false, false, false, 0, 0, 0, 0)
end
else
GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
 end
end)
        
GTTG(quantoutexiao, "雷电拳",{""}, "",function(state)
if state then
for _, boneId in ipairs(bones) do
request_ptfx_asset("scr_reconstructionaccident")
GRAPHICS.USE_PARTICLE_FX_ASSET("scr_reconstructionaccident")
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("scr_sparking_generator", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 3, false, false, false, 0, 0, 0, 0)
end
else
GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
end
end)

GTLP(quantoutexiao,"雷电拳v2", {""}, "", function ()
local colour = {r = 0.0, g = 1.0, b = 1.0, a = 0.0}
local affect <const> = Effect.new("core", "ent_amb_elec_crackle")
if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(affect.asset) then
STREAMING.REQUEST_NAMED_PTFX_ASSET(affect.asset)
return
end
if timer.elapsed() >= 1000 then
removeFxs(affects); affects = {}
timer.reset()
end
if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
local minimum, maximum = v3.new(), v3.new()
MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
local offsets <const> = {v3(minimum.x, minimum.y, 0.0), v3(maximum.x, minimum.y, 0.0)}
for _, offset in ipairs(offsets) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(affect.name,vehicle,offset.x,offset.y,0.0,0.0,0.0,0.0,0.0, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
elseif ENTITY.DOES_ENTITY_EXIST(players.user_ped()) then
for _, boneId in ipairs(bones) do
GRAPHICS.USE_PARTICLE_FX_ASSET(affect.asset)
local fx =
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(affect.name,players.user_ped(),0.0,0.0,0.0,0.0,0.0,0.0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId),1.3, false, false, false,0, 0, 0, 0)
GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(fx, colour.r, colour.g, colour.b, 0)
table.insert(affects, fx)
end
end
end, function ()
removeFxs(affects); affects = {}
end)
        
GTTG(quantoutexiao, "血拳V1",{""}, "",function(state)
if state then
for _, boneId in ipairs(bones) do
request_ptfx_asset("core")
GRAPHICS.USE_PARTICLE_FX_ASSET("core")
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("blood_mist_prop", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 0.35, false, false, false, 0, 0, 0, 0)
end
else
GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
end
end)
        
GTTG(quantoutexiao, "血拳V2",{""}, "",function(state)
if state then
for _, boneId in ipairs(bones) do
request_ptfx_asset("core")
GRAPHICS.USE_PARTICLE_FX_ASSET("core")
GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("scrape_blood_car", players.user_ped(), 0, 0, 0, 0, 0 , 0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 0.35, false, false, false, 0, 0, 0, 0)
end
else
GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
end
end)

GTTG(sessionfun, "灵魂出窍", {""}, "", function(toggle)
ghost = toggle 
if ghost then
all_peds = entities.get_all_peds_as_handles()
user_ped = players.user_ped()
clone = PED.CLONE_PED(user_ped,true, true, true)
pos = ENTITY.GET_ENTITY_COORDS(clone, false)
ENTITY.SET_ENTITY_COORDS(user_ped, pos.x-2, pos.y, pos.z)
ENTITY.SET_ENTITY_ALPHA(players.user_ped(), 87, false)
ENTITY.SET_ENTITY_INVINCIBLE(clone,true)
menu.trigger_commands("invisibility remote")
util.create_tick_handler(function()
STREAMING.REQUEST_ANIM_DICT("move_crawl")
PED.SET_PED_MOVEMENT_CLIPSET(clone, "move_crawl", -1)
mod_uses("ped", if on then 1 else -1)
PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(clone, true)
TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(clone, true)
return ghost
end)
else
clonepedpos = ENTITY.GET_ENTITY_COORDS(clone, false)
ENTITY.SET_ENTITY_COORDS(user_ped, clonepedpos.x,clonepedpos.y,clonepedpos.z, false, false)
entities.delete_by_handle(clone)
ENTITY.SET_ENTITY_ALPHA(user_ped, 255, false)
menu.trigger_commands("invisibility off")
end
end)

GTLP(sessionfun, "一拳超人", {""}, "", function()
supermanpersonl()
end)

GTTG(selflist, "假装平民", {}, "让您无法拾取武器", function(toggle)
PED.SET_ENABLE_HANDCUFFS(players.user_ped(), toggle)
end)

GTLP(sessionfun, "转圈圈", {""}, "不要动滑鼠,否则失效", function()
bigpussy()
end, function ()
TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.PLAYER_PED_ID())
ENTITY.DETACH_ENTITY(PLAYER.PLAYER_PED_ID(), true, false)
ENTITY.SET_ENTITY_VISIBLE(object, false)
entities.delete_by_handle(object)
state = 0
end)
    
GTTG(selflist, "空中游泳", {}, "", function(on)
    if on then
        menu.trigger_commands("swiminair on")
    else
        menu.trigger_commands("swiminair off")
    end
end)


GTLP(selflist, "警察无视", {}, "警察不会对您产生敌意", function(toggle)
    PLAYER.SET_POLICE_IGNORE_PLAYER(PLAYER.PLAYER_ID(), toggle)
end)

GTLP(selflist, "所有人无视", {}, "所有NPC不会对您产生敌意", function(toggle)
    PLAYER.SET_EVERYONE_IGNORE_PLAYER(PLAYER.PLAYER_ID(), toggle)
end)

GTLP(selflist, "行动无声", {}, "", function()
    PLAYER.SET_PLAYER_NOISE_MULTIPLIER(PLAYER.PLAYER_ID(), 0.0)
end)

GTLP(sessionfun, "显示轴向", {}, "", function(toggle)
    local c = ENTITY.GET_ENTITY_COORDS(players.user_ped())
    GRAPHICS.DRAW_LINE(c.x, c.y, c.z, c.x + 2, c.y, c.z, 255, 0, 0, 255) --x
    GRAPHICS.DRAW_LINE(c.x, c.y, c.z, c.x, c.y + 2, c.z, 0, 255, 0, 255) --y
    GRAPHICS.DRAW_LINE(c.x, c.y, c.z, c.x, c.y, c.z + 2, 0, 0, 255, 255) --z
end)

 GTLP(sessionfun, "线", {}, "连接玩家的线", function(toggle)
        c = ENTITY.GET_ENTITY_COORDS(players.user_ped()) 
        p = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        j = ENTITY.GET_ENTITY_COORDS(p) 
        GRAPHICS.DRAW_LINE(c.x, c.y, c.z, j.x, j.y, j.z, 255, 255, 255, 255) 
    end)

GTAC(sessionfun, "拉粑粑", {}, "拉臭臭", function()
    personlshit()
end)

GTAC(sessionfun, "打飞机", {}, "我还需要解释这个吗", function()
    personlhitplane()
end)


nuke = GT(weapon_options, '核弹枪', {}, '超级壮观喔~')

require "lib.GTSCRIPTS.GTW.nuke"
GTLP(nuke, "核弹枪", {}, "如果想要开飞机扔核弹，你只需要打开此选项并且使用手枪向地面射击", function()
	if PED.IS_PED_SHOOTING(players.user_ped()) then
		local hash = util.joaat("prop_military_pickup_01")
		ent_func.request_model(hash)
		local player_pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0.0, 5.0, 3.0)
		local dir = {}
		local c2 = {}
		c2 = ent_func.get_offset_from_gameplay_camera(1000)
		dir.x = (c2.x - player_pos.x) * 1000
		dir.y = (c2.y - player_pos.y) * 1000
		dir.z = (c2.z - player_pos.z) * 1000

		local nuke = OBJECT.CREATE_OBJECT_NO_OFFSET(hash, player_pos.x, player_pos.y, player_pos.z, true, false, false)
		ENTITY.SET_ENTITY_NO_COLLISION_ENTITY(nuke, players.user_ped(), false)
		ENTITY.APPLY_FORCE_TO_ENTITY(nuke, 0, dir.x, dir.y, dir.z, 0.0, 0.0, 0.0, 0, true, false, true, false, true)
		ENTITY.SET_ENTITY_HAS_GRAVITY(nuke, true)

		while not ENTITY.HAS_ENTITY_COLLIDED_WITH_ANYTHING(nuke) and not ENTITY.IS_ENTITY_IN_WATER(nuke) do
			wait(0)
		end
		local nukePos = ENTITY.GET_ENTITY_COORDS(nuke, true)
		entities.delete_by_handle(nuke)
        ent_func.create_nuke_explosion(nukePos)
	end
end)

GTLP(nuke,("轨道枪"), {}, "", function()
	local last_hit_coords = v3.new()
	if WEAPON.GET_PED_LAST_WEAPON_IMPACT_COORD(players.user_ped(), last_hit_coords) then
        ent_func.use_fx_asset("scr_xm_orbital")
        GRAPHICS.USE_PARTICLE_FX_ASSET("scr_xm_orbital")
        FIRE.ADD_EXPLOSION(last_hit_coords.x, last_hit_coords.y, last_hit_coords.z, 59, 1, true, false, 1.0, false)
        GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_xm_orbital_blast", last_hit_coords.x, last_hit_coords.y, last_hit_coords.z, 0, 180, 0, 1.0, true, true, true)
        for i = 1, 4 do
            PLAY_SOUND_FROM_ENTITY(-1, "DLC_XM_Explosions_Orbital_Cannon", players.user_ped(), 0, true, false)
        end
	end
end)

--[[custom_c4_list = GT(nuke, "C4枪")
GTLP(custom_c4_list,("开启C4枪"), {}, "", function()
	if PED.IS_PED_SHOOTING(players.user_ped()) and not DOES_ENTITY_EXIST(ent_func.request_model(hash)) then
		local hash = util.joaat("prop_bomb_01_s")
		ent_func.request_model(hash)
        local player_pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0.0, 0.5, 0.5)
		local dir = {}
		local c2 = {}
		c2 = ent_func.get_offset_from_gameplay_camera(50)
		dir.x = (c2.x - player_pos.x) * 50
		dir.y = (c2.y - player_pos.y) * 50
		dir.z = (c2.z - player_pos.z) * 50

		c4 = OBJECT.CREATE_OBJECT_NO_OFFSET(hash, player_pos.x, player_pos.y, player_pos.z, true, false, false)
		ENTITY.SET_ENTITY_NO_COLLISION_ENTITY(c4, players.user_ped(), false)
		ENTITY.APPLY_FORCE_TO_ENTITY(c4, 0, dir.x, dir.y, dir.z, 0.0, 0.0, 0.0, 0, true, false, true, false, true)
		ENTITY.SET_ENTITY_HAS_GRAVITY(c4, true)
	end
end)

custom_c4_explosions = {("天基炮"), ("核弹")}
GTLuaScript.textslider(custom_c4_list,("引爆C4"), {}, "", custom_c4_explosions, function(index, name)
    if DOES_ENTITY_EXIST(ent_func.request_model(hash)) then
        local c4_pos = ENTITY.GET_ENTITY_COORDS(c4)
        entities.delete_by_handle(c4)
	    if index == 1 then
            ent_func.use_fx_asset("scr_xm_orbital")
            FIRE.ADD_EXPLOSION(c4_pos.x, c4_pos.y, c4_pos.z, 59, 1, true, false, 1.0, false)
            GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_xm_orbital_blast", c4_pos.x, c4_pos.y, c4_pos.z, 0, 180, 0, 1.0, true, true, true)
        elseif index == 2 then
	    	ent_func.create_nuke_explosion(c4_pos)
        end
        for i = 1, 4 do
            AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "DLC_XM_Explosions_Orbital_Cannon", players.user_ped(), 0, true, false)
        end
    end
end)]]

local vehicleGun <const> = GT(weapon_options,"车辆枪", {}, "")
finger_thing = GT(weapon_options, "手指枪", {}, "")
fingergun()
entityManipulation = GT(weapon_options, "实体操纵枪", {"emanipulation"}, "对玩家无效")
Gun_Effect_Shooting_Hit = GT(weapon_options, "武器特效", {}, "")
anti_aim_root = GT(weapon_options, "反瞄准", {"antiaim"}, "防止玩家瞄准射击您")
damage_numbers_list = GT(weapon_options, "伤害数字")
minecraftgun = GT(weapon_options, '我的世界枪', {}, '')
custom_weapon_save = GT(weapon_options, '武器保存', {}, '')
weaponsetting = GT(weapon_options, '武器设置', {}, '')
proxysticks = GT(weapon_options, '粘弹自动爆炸', {}, '')

anti_aim = false
GTTG(anti_aim_root, "反瞄准", {"antiaim"}, "防止玩家瞄准您,对大多数菜单无效", function(on)
    anti_aim = on
    mod_uses("player", if on then 1 else -1)
end)

anti_aim_notify = false
GTTG(anti_aim_root, "当我被瞄准时通知我", {""},  "", function(on)
    anti_aim_notify = on
end)

anti_aim_angle = 2
GTLuaScript.click_slider(anti_aim_root, "反瞄准角度", {"antiaimangle"}, "基本上是你周围的半径\n玩家必须瞄准这个半径", 0, 180, 2, 1, function(s)
    anti_aim_angle = s
end)

local anti_aim_type = 1
GTLuaScript.list_select(anti_aim_root, "反瞄准方法", {"antiaimmethod"}, "如何使用反瞄准",  anti_aim_types, 1, function(index)
    anti_aim_type = index
end)

triggerbot_root = GT(weapon_options, "扳机机器人", {}, "当您使用武器正在瞄准到某个目标时\n扳机机器人会帮助您的武器自动开火\n这允许您非常准确且快速地瞄准敌人")

GTLP(triggerbot_root, "扳机机器人", {"triggerbot"},  "当您使用武器正在瞄准到某个目标时\n扳机机器人会帮助您的武器自动开火\n这允许您非常准确且快速地瞄准敌人", function(on)
    trigger(on)
end)

GTLuaScript.click_slider(triggerbot_root, "射击镜头之间的延迟", {}, "每次 \"射击\" 之间的延迟", 10, 5000, 100, 1, function(s)
    triggerbot_delay = s
end)
    
    save_loadout = custom_weapon_save:action("保存武器", {}, "保存所有当前装备的武器及其附件，以便将来装载", function()
        Save_Weapon_Profile()
    end)

    load_loadout = custom_weapon_save:action("加载上次保存武器", {"loadloadout"}, "装备上次保存的每一件武器", function()
        Load_Out_Weapon()
    end)

    auto_load = custom_weapon_save:toggle("自动加载", {}, "加入新战局时，自动装备上次保存的每件武器", function(on)
        Auto_Load_Out_Weapon(on)
    end)

    from_scratch = custom_weapon_save:action("从头开始", {}, "删除你当前的武器，这样你就可以按照你想要的方式构建你的装备",function()
        Dele_All_Weapon()
    end)

    custom_weapon_save:divider("编辑武器")

    Weapon_Check_Save()


    GTLP(weaponsetting, '无后坐力', {'JSnoRecoil'}, '使用武器射击时不会抖动游戏画面.', function()
        gunpro()
    end, function()
        resetWeapons(modifiedRecoil)
    end)

    GTLP(weaponsetting, '无限范围', {'JSinfiniteRange'}, '', function()
        maxrange()
    end, function()
        for hash, _ in pairs(modifiedRange) do
            memory.write_float(modifiedRange[hash].minAddress, modifiedRange[hash].originalMin)
            memory.write_float(modifiedRange[hash].maxAddress, modifiedRange[hash].originalMax)
            memory.write_float(modifiedRange[hash].rangeAddress, modifiedRange[hash].originalRange)
            modifiedRange[hash] = nil
        end
    end)


    GTLP(weaponsetting, '无扩散', {'JSnoSpread'}, '', function()
        nospread()
    end, function()
        resetWeapons(modifiedSpread)
    end)

    GTLP(weaponsetting, '移除前摇', {'JSnoSpinUp'}, '移除加特林和寡妇制造者的前摇.', function()
        nospinup()
    end, function()
        for i = 1, #modifiedSpinup do
            if modifiedSpinup[i].address then
                memory.write_float(modifiedSpinup[i].address, 0.5)
            end
        end
    end)

    GTLP(weaponsetting, '子弹伤害修改', {'JSbulletForceMultiplier'}, '从正面射击载具时效果最佳.\n显示的值以百分比为单位.', function()
        damagemoded()
    end, function()
        resetWeapons(modifiedCarForce)
        resetWeapons(modifiedHeliForce)
        resetWeapons(modifiedPedForce)
    end)

    GTD(weaponsetting, '瞄准视野')

    GTLP(weaponsetting, '启用瞄准视野缩放', {'JSenableAimFov'}, '让您在瞄准时修改视野大小.', function()
        gunzoom()
    end, function()
        resetWeapons(modifiedAimFov)
    end)

    GTD(weaponsetting, '放大瞄准视野')

    GTLP(weaponsetting, '启用放大瞄准视野缩放', {'JSenableZoomFov'}, '让您在瞄准放大时修改视野大小.', function()
        enablezoomfov()
    end, function()
        resetWeapons(modifiedZoomFov)
    end)

    GTLuaScript.slider_float(weaponsetting, '放大瞄准视野', {'JSzoomAimFov'}, '', 100, 9999999999, 100, 1, function(value)
        zoomaimfov(value)
    end)

    GTLP(proxysticks, '粘弹自动爆炸', {'JSproxyStickys'}, '使您的粘弹在玩家或NPC附近时自动引爆.', function()
        proxyStickys()
    end)

    GTTG(proxysticks, '引爆附近的玩家', {'JSProxyStickyPlayers'}, '如果您的粘性炸弹在玩家附近时自动引爆.', function(toggle)
        proxyStickys_players(toggle)
    end, proxyStickySettings.players)

    GTTG(proxysticks, '引爆附近的NPC', {'JSProxyStickyNpcs'}, '如果您的粘性炸弹在NPC附近时自动引爆.', function(toggle)
        proxystickys_npc(toggle)
    end, proxyStickySettings.npcs)

    GTluaScript.slider(proxysticks, '爆炸半径', {'JSstickyRadius'}, '粘性炸弹必须离目标多近才会引爆.', 1, 10, proxyStickySettings.radius, 1, function(value)
        proxysticks_radius(value)
    end)

    GTAC(proxysticks, '移除所有粘性炸弹', {'JSremoveStickys'}, '移除所有存在的粘性炸弹(不仅仅是你的).', function()
        WEAPON.REMOVE_ALL_PROJECTILES_OF_TYPE(util.joaat('weapon_stickybomb'), false)
    end)

entity_control = GT(weapon_options, "实体控制枪", {}, "控制你所瞄准的实体")

GTLP(entity_control, "开启", {}, "", function()
    entitycontrol()
end)

GTAC(entity_control, "清除记录的实体", {}, "", function()
    clearcontrollog()
end)

GTD(entity_control, "实体控制")

Weapon_Cam_Gun = GT(weapon_options, "视野范围枪")

require "lib.GTSCRIPTS.GTA.eg"

GTAC(nuke, '核弹标记点', {'JSnukeWP'}, '掉落一颗核弹在您标记的位置.', function ()
    nukepoint()
end)

GTluaScript.slider(nuke, '核弹高度', {'JSnukeHeight'}, '投下核弹的高度.', 10, 100, nuke_height, 10, function(value)
    nukeheight(value)
end)

GTLP(minecraftgun, '我的世界枪', {'JSminecraftGun'}, '当您射击时生成阻挡物.', function()
    xxxminecraftgun()
end)

GTAC(minecraftgun, '删除最后一个阻挡物', {'JSdeleteLastBlock'}, '', function()
    deleminecraftlastblock()
end)

GTAC(minecraftgun, '删除所有阻挡物', {'JSdeleteBlocks'}, '', function()
    deleallblock()
end)

Preview = {handle = 0, modelHash = 0}
Preview.__index = Preview

function Preview.new(modelHash)
	local self = setmetatable({}, Preview)
	self.modelHash = modelHash
	return self
end

function Preview:create(pos, heading)
	if self:exists() then return end
	self.handle = VEHICLE.CREATE_VEHICLE(self.modelHash, pos.x, pos.y, pos.z, heading, false, false, false)
	ENTITY.SET_ENTITY_ALPHA(self.handle, 153, true)
	ENTITY.SET_ENTITY_COLLISION(self.handle, false, false)
	ENTITY.SET_CAN_CLIMB_ON_ENTITY(self.handle, false)
end

function Preview:setRotation(rot)
	ENTITY.SET_ENTITY_ROTATION(self.handle, rot.x, rot.y, rot.z, 0, true)
end

function Preview:setCoords(pos)
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(self.handle, pos.x, pos.y, pos.z, false, false, false)
end

function Preview:destroy()
	entities.delete_by_handle(self.handle)
	self.handle = 0
end

function Preview:setOnGround()
	VEHICLE.SET_VEHICLE_ON_GROUND_PROPERLY(self.handle, 1.0)
end

function Preview:exists()
	return self.handle ~= 0 and ENTITY.DOES_ENTITY_EXIST(self.handle)
end

local vehicles <const> =
{
	"adder",
	"lazer",
	"insurgent2",
	"phantom2",
    "dune4",
    "chernobog",
    "tribike",
    "rhino",
    "oppressor2",
    "coach",
    "taxi"
}
local modelHash = util.joaat("adder")
local preview <const> = Preview.new(modelHash)
local setIntoVehicle = false
local maxDist <const> = 100.0
local minDist <const> = 15.0
local distancePerc = 0.0
local currentDistance = minDist
local lastInput <const> = newTimer()


function get_veh_distance()
	if PAD.IS_CONTROL_JUST_PRESSED(2, 241) and distancePerc < 1.0 then
		distancePerc = distancePerc + 0.25
		lastInput.reset()

	elseif PAD.IS_CONTROL_JUST_PRESSED(2, 242) and distancePerc > 0.0 then
		distancePerc = distancePerc - 0.25
		lastInput.reset()
	end
	local distance = interpolate(minDist, maxDist, distancePerc)
	local duration <const> = 200
	if currentDistance ~= distance and lastInput.elapsed() <= duration then
		currentDistance = interpolate(currentDistance, distance, lastInput.elapsed() / duration)
	end
	return currentDistance
end
local Cargun = "车枪"
GTLP(vehicleGun,Cargun, {}, "", function ()
	request_model(modelHash)
	local camRot = CAM.GET_GAMEPLAY_CAM_ROT(0)
	local distance = get_veh_distance()
	local raycast = get_raycast_result(distance + 5.0, TraceFlag.world)
	local coords = raycast.didHit and raycast.endCoords or get_offset_from_cam(distance)

	if not Config.general.disablepreview and
	PLAYER.IS_PLAYER_FREE_AIMING(players.user()) then
		if not preview:exists() then
			preview.modelHash = modelHash
			preview:create(coords, camRot.z)
		else
			preview:setCoords(coords)
			preview:setRotation(camRot)
			if raycast.didHit then preview:setOnGround() end
		end

		if Instructional:begin() then
			Instructional.add_control_group(29, "FM_AE_SORT_2")
			Instructional:set_background_colour(0, 0, 0, 80)
			Instructional:draw()
		end
	elseif preview:exists() then preview:destroy() end

	if PED.IS_PED_SHOOTING(players.user_ped()) then
		local veh = VEHICLE.CREATE_VEHICLE(modelHash, coords.x, coords.y, coords.z, camRot.z, true, true, false)
		NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(NETWORK.VEH_TO_NET(veh), true)
		ENTITY.SET_ENTITY_COORDS_NO_OFFSET(veh, coords.x, coords.y, coords.z, false, false, false)
		ENTITY.SET_ENTITY_ROTATION(veh, camRot.x, camRot.y, camRot.z, 0, true)
		VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 200.0)
		if not setIntoVehicle then
			VEHICLE.SET_VEHICLE_DOORS_LOCKED(veh, 2)
		else
			VEHICLE.SET_VEHICLE_ENGINE_ON(veh, true, true, true)
			PED.SET_PED_INTO_VEHICLE(players.user_ped(), veh, -1)
		end
	end
end, function()
	if preview:exists() then preview:destroy() end
end)

function Instructional.add_control_group (index, name)
	local button = CC_PAD.GET_CONTROL_GROUP_INSTRUCTIONAL_BUTTONS_STRING(2, index, true)
    Instructional:add_data_slot(index, name, button)
end

local options_all <const> =  {{"灵蛇"}, {"天煞"}, {"叛乱分子"}, {"尖锥魅影"}, {"斜塔魔宝"}, {"导弹车"}, {"自行车"}, {"坦克"}, {"MK2"}, {"巴士"}, {"出租车"}}
local setshoot_other = "设置车枪"
GTLuaScript.list_select(vehicleGun,setshoot_other, {}, "", options_all, 1, function (opt)
	local vehicle = vehicles[opt]
	modelHash = util.joaat(vehicle)
end)

local Csound = "HintCamSounds"
local errmsg = "您输入的车辆英文名不正确 !"
local other_car = "其他车辆"
GTluaScript.text_input(vehicleGun,other_car, {"customvehgun"}, "", function(vehicle, click)
	if (click & CLICK_FLAG_AUTO) ~= 0 then
		return
	end
	if STREAMING.IS_MODEL_A_VEHICLE(util.joaat(vehicle)) then
		modelHash = util.joaat(vehicle)
	else notification:help(errmsg, HudColour.red) end
end)
local Entercar = "进入车辆"
GTTG(vehicleGun,Entercar, {}, "", function(toggle)
	setIntoVehicle = toggle
end)

local ent_types = {"没有", "行人", "载具", "实体"}
local function get_aim_info()
    local outptr = memory.alloc(4)
    local success = PLAYER.GET_ENTITY_PLAYER_IS_FREE_AIMING_AT(players.user(), outptr)
    local info = {}
    if success then
        local ent = memory.read_int(outptr)
        if not ENTITY.DOES_ENTITY_EXIST(ent) then
            info["ent"] = 0
        else
            info["ent"] = ent
        end
        if ENTITY.GET_ENTITY_TYPE(ent) == 1 then
            local veh = PED.GET_VEHICLE_PED_IS_IN(ent, false)
            if veh ~= 0 then
                if VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, -1) then
                    ent = veh
                    info['ent'] = ent
                end
            end
        end
        info["hash"] = ENTITY.GET_ENTITY_MODEL(ent)
        info["health"] = ENTITY.GET_ENTITY_HEALTH(ent)
        info["type"] = ent_types[ENTITY.GET_ENTITY_TYPE(ent)+1]
        info["speed"] = math.floor(ENTITY.GET_ENTITY_SPEED(ent))
    else
        info['ent'] = 0
    end
    return info
end

GTLP(damage_numbers_list, "伤害数字", {"damagenumbers"}, "", function()
    damage_numbers()
end)
GTTG(damage_numbers_list, "包括车辆", {"damagenumbersvehicles"}, "", function (value)
    damage_numbers_target_vehicles = value
end)
GTluaScript.slider(damage_numbers_list, "数字尺寸", {"damagenumberstextsize"}, "", 1, 100, 7, 1, function (value)
    damage_numbers_text_size = value * 0.1
end)
damage_numbers_colours_list = GT(damage_numbers_list, "颜色设置")
GTluaScript.rainbow(menu.colour(damage_numbers_colours_list, "默认颜色", {"damagenumcolour"}, "默认命中的颜色", damage_numbers_health_colour, true, function (value)
    damage_numbers_health_colour = value
end))
GTluaScript.rainbow(menu.colour(damage_numbers_colours_list, "暴击颜色", {"damagenumcritcolour"}, "暴击颜色", damage_numbers_crit_colour, true, function (value)
    damage_numbers_crit_colour = value
end))
GTluaScript.rainbow(menu.colour(damage_numbers_colours_list, "盔甲颜色", {"damagenumarmourcolour"}, "盔甲颜色", damage_numbers_armour_colour, true, function (value)
    damage_numbers_armour_colour = value
end))
GTluaScript.rainbow(menu.colour(damage_numbers_colours_list, "载具颜色", {"damagenumvehiclecolour"}, "载具颜色", damage_numbers_vehicle_colour, true, function (value)
    damage_numbers_vehicle_colour = value
end))

EntityManipulationHandleList = {}
GTD(entityManipulation, "实体操作")

GTLP(entityManipulation, "启用 (添加实体)", {}, "", function()
    if (PED.IS_PED_SHOOTING(GetLocalPed()) and PLAYER.IS_PLAYER_FREE_AIMING(players.user())) then
        local entityPointer = memory.alloc()

        if PLAYER.GET_ENTITY_PLAYER_IS_FREE_AIMING_AT(players.user(), entityPointer) then
            local entityHandle = memory.read_int(entityPointer)
            memory.free(entityPointer)

            if (DoesTableContainValue(EntityManipulationHandleList, entityHandle)) then util.toast("实体已在列表中!") return end
            EntityManipulationHandleList[#EntityManipulationHandleList+1] = entityHandle

            if (ENTITY.IS_ENTITY_A_PED(entityHandle) and PED.IS_PED_IN_ANY_VEHICLE(entityHandle, false)) then
                local veh = PED.GET_VEHICLE_PED_IS_IN(entityHandle, false)
                local mlistBufferVeh = makeListForEntity(entityManipulation, veh)
                funcsForEntity(EntityManipulationHandleList, mlistBufferVeh, veh)
            end

            local mListBuffer = makeListForEntity(entityManipulation, entityHandle)
            funcsForEntity(EntityManipulationHandleList, mListBuffer, entityHandle)

            util.create_tick_handler(function() return doesEntityExist(EntityManipulationHandleList, mListBuffer, entityHandle) end)
            if (SE_Notifications) then util.toast("添加实体!") end
        end
    end
end)

local function raycast_gameplay_cam(flag, distance)
    local ptr1, ptr2, ptr3, ptr4 = memory.alloc(), memory.alloc(), memory.alloc(), memory.alloc()
    local cam_rot = CAM.GET_GAMEPLAY_CAM_ROT(0)
    local cam_pos = CAM.GET_GAMEPLAY_CAM_COORD()
    local direction = v3.toDir(cam_rot)
    local destination = 
    { 
        x = cam_pos.x + direction.x * distance, 
        y = cam_pos.y + direction.y * distance, 
        z = cam_pos.z + direction.z * distance 
    }
    SHAPETEST.GET_SHAPE_TEST_RESULT(
        SHAPETEST.START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE(
            cam_pos.x, 
            cam_pos.y, 
            cam_pos.z, 
            destination.x, 
            destination.y, 
            destination.z, 
            flag, 
            players.user_ped(), 
            1
        ), ptr1, ptr2, ptr3, ptr4)
    local p1 = memory.read_int(ptr1)
    local p2 = memory.read_vector3(ptr2)
    local p3 = memory.read_vector3(ptr3)
    local p4 = memory.read_int(ptr4)
    return {p1, p2, p3, p4}
end


GTAC(wea_func, '获得所有武器', {""}, '', function (on)
GTluaScript.trigger_commands("allguns")
end)

GTAC(wea_func, '移除所有武器', {""}, '', function (on)
util.toast("移除所有武器 ...")
local curr_equipped_weapon = WEAPON.GET_SELECTED_PED_WEAPON(PLAYER.GET_PLAYER_PED(players.user()))
for key, value in pairs(attachments_table) do
WEAPON.REMOVE_WEAPON_COMPONENT_FROM_PED(PLAYER.GET_PLAYER_PED(players.user()), curr_equipped_weapon, key)
end
util.toast("搞定 :D")
end)


GTTG(wea_func, '导弹快速锁定', {""}, '', function (on)
if on then
GTluaScript.trigger_commands("instantlockon on")
else
GTluaScript.trigger_commands("instantlockon off")
end
end)

GTTG(wea_func, '热成像', {"thermalvision"}, '', function (on)
if on then
GTluaScript.trigger_commands("thermalvision on")
else
GTluaScript.trigger_commands("thermalvision off")
end
end)

GTTG(wea_func, '瞄准线', {"lasersights"}, '', function (on)
if on then
GTluaScript.trigger_commands("lasersights on")
else
GTluaScript.trigger_commands("lasersights off")
end
end)

GTTG(wea_func, "电磁瞄准镜头", {}, "", function(g)
    gt = g
    local startViewMode = nil
    while gt do
        wait()
        if util.is_key_down(0x02) then
            local context = CAM._GET_CAM_ACTIVE_VIEW_MODE_CONTEXT()
            if startViewMode == nil then
                startViewMode = CAM.GET_CAM_VIEW_MODE_FOR_CONTEXT(context)
                CAM.SET_CAM_VIEW_MODE_FOR_CONTEXT(context, 4)
            end
            scope_scaleform = GRAPHICS.REQUEST_SCALEFORM_MOVIE('REMOTE_SNIPER_HUD')
            GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD(scope_scaleform, 'REMOTE_SNIPER_HUD')
            GRAPHICS.DRAW_SCALEFORM_MOVIE_FULLSCREEN(scope_scaleform, 255, 255, 255, 255, 0)
            GRAPHICS.END_SCALEFORM_MOVIE_METHOD()
        else
            if startViewMode then
                CAM.SET_CAM_VIEW_MODE_FOR_CONTEXT(context, 1)
                startViewMode = nil
            end
        end
    end
    gt = false
end)

GTLP(wea_func, "瞄准方框", {}, "只对人物有效", function(toggle)
    rrren(true)
end)

GTLP(wea_func, '3D方框瞄准', {'_3d_crosshair'}, '', function()
    request_texture_dict_load('visualflow')
    local rc = raycast_gameplay_cam(-1, 8000.0)[2]
    local c = players.get_position(players.user())
    local dist = MISC.GET_DISTANCE_BETWEEN_COORDS(rc.x, rc.y, rc.z, c.x, c.y, c.z, false)
    local dir = v3.toDir(CAM.GET_GAMEPLAY_CAM_ROT(0))
    size = {}
    size.x = 0.5+(dist/50)
    size.y = 0.5+(dist/50)
    size.z = 0.5+(dist/50)
    GRAPHICS.DRAW_MARKER(3, rc.x, rc.y, rc.z, 0.0, 0.0, 0.0, 0.0, 90.0, 0.0, size.y, 1.0, size.x, 200, 255, 255, 100, false, true, 2, false, 'visualflow', 'crosshair')
end)

GTLP(wea_func, "自动开枪", {"triggerbotall"}, "", function()
    local wpn = WEAPON_SAVE_WEAPON.GET_SELECTED_PED_WEAPON(players.user_ped())
    local dmg = SYSTEM.ROUND(WEAPON.GET_WEAPON_DAMAGE(wpn, 0))
    local delay = WEAPON_SAVE_WEAPON.GET_WEAPON_TIME_BETWEEN_SHOTS(wpn)
    local wpnEnt = WEAPON_SAVE_WEAPON.GET_CURRENT_PED_WEAPON_ENTITY_INDEX(PLAYER.PLAYER_PED_ID(), false)
    local wpnCoords = ENTITY.GET_ENTITY_BONE_POSTION(wpnEnt, ENTITY.GET_ENTITY_BONE_INDEX_BY_NAME(wpnEnt, "gun_muzzle"))
    for _, pid in ipairs(players.list(false, true, true)) do
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        if ENTITY.GET_ENTITY_ALPHA(ped) < 255 then return end
        boneIndex = bones[math.random(#bones)]
        local pos = PED.GET_PED_BONE_COORDS(ped, boneIndex, 0.0, 0.0, 0.0)
        if PLAYER.IS_PLAYER_FREE_AIMING_AT_ENTITY(players.user(), ped) and not PED.IS_PED_RELOADING(players.user_ped()) then
            MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(wpnCoords, pos, dmg, true, wpn, players.user_ped(), true, false)
            PAD.SET_CONTROL_VALUE_NEXT_FRAME(0, 24, 1.0) 
            wait(delay * 1000)
        end
    end
end)

GTLP(Gun_Effect_Shooting_Hit, "开启", {"shootingfx"}, "", function ()
    shootingeffect()
end)

GTluaScript.slider_text(Gun_Effect_Shooting_Hit, "切换射击特效", {}, "", {"小丑木兹","小丑花"}, function (index)
	setshootingeffect(index)
end)

GTLP(wea_func, '喷火器', {'JSflamethrower'}, '将加特林变成火焰喷射器.', function()
    flamegun()
end)


GTLP(wea_func, "锁定玩家", {}, "允许您使用武装载具上的制导导弹发射器锁定玩家.", function()
    for _, pid in ipairs(players.list(true, true, true)) do
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        PLAYERJINX.ADD_PLAYER_TARGETABLE_ENTITY(players.user(), ped)
        ENTITY.SET_ENTITY_IS_TARGET_PRIORITY(ped, false, 400.0)    
    end
end, function()
    for _, pid in ipairs(players.list(true, true, true)) do
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        PLAYERJINX.REMOVE_PLAYER_TARGETABLE_ENTITY(players.user(), ped)
    end
end)

if menu.get_edition() > 1 then
    GTLP(wea_func, "瞄准时的透视", {"aimesp"}, "", function()
        if PLAYER.IS_PLAYER_FREE_AIMING(players.user()) then
            menu.trigger_command(menu.ref_by_path("World>Inhabitants>Player ESP>Bone ESP>Low Latency Rendering"))
        else
            menu.trigger_command(menu.ref_by_path("World>Inhabitants>Player ESP>Bone ESP>Disabled"))
        end
    end, function()
        menu.trigger_command(menu.ref_by_path("World>Inhabitants>Player ESP>Bone ESP>Disabled"))
    end)
end

for id, data in pairs(visual_stuff) do
    local visual_name = data[1]
    local visual_thing = data[2]
    local visual = false
    local visual_toggle
    visual_toggle = GTTG(visuals, visual_name, {""}, "", function(toggled)
        visual = toggled
        if not menu.get_value(visual_toggle) then
            GRAPHICS.ANIMPOSTFX_STOP_ALL()
        return end

        while visual do
            repeat
            GRAPHICS.SET_TIMECYCLE_MODIFIER(visual_thing)
            menu.trigger_commands("shader off")
            wait()
            until GRAPHICS.GET_TIMECYCLE_MODIFIER_INDEX() ~= 728
            wait()
        end
        GRAPHICS.SET_TIMECYCLE_MODIFIER("DEFAULT")
    end)
end 

GTLP(wea_func, "踢出枪", {"kickgun"}, "", function()
    local ent = get_aim_info()['ent']
    if PED.IS_PED_SHOOTING(players.user_ped()) then
        if ENTITY.IS_ENTITY_A_PED(ent) then
            if PED.IS_PED_A_PLAYER(ent) then
                local pid = NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(ent)
                if players.get_host() == pid then 
                    newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;","~r~您正试图踢出的玩家是主机", "CHAR_CHOP", 140)
                    return
                end
                menu.trigger_commands("kick" .. players.get_name(pid))
            end
        end
    end
end)

GTLP(wea_func, "崩溃枪", {"crashgun"}, "", function()
    local ent = get_aim_info()['ent']
    if PED.IS_PED_SHOOTING(players.user_ped()) then
        if ENTITY.IS_ENTITY_A_PED(ent) then
            if PED.IS_PED_A_PLAYER(ent) then
                local pid = NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(ent)
                menu.trigger_commands("crash" .. players.get_name(pid))
            end
        end
    end
end)

GTLP(wea_func, translate("Weapon", "传送枪"), {"tpgun"}, "", function()
	local raycastResult = get_raycast_result(1000.0)
	if  raycastResult.didHit and PED.IS_PED_SHOOTING(players.user_ped()) then
		local coords = raycastResult.endCoords
		if not PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) then
			coords.z = coords.z + 1.0
			tp_entity_coords(players.user_ped(), coords)
		else
			local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
			local speed = ENTITY.GET_ENTITY_SPEED(vehicle)
			ENTITY.SET_ENTITY_COORDS(vehicle, coords.x, coords.y, coords.z, false, false, false, false)
			ENTITY.SET_ENTITY_HEADING(vehicle, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
			VEHICLE.SET_VEHICLE_FORWARD_SPEED(vehicle, speed + 3.0)
		end
	end
end)

        GTLP(wea_func, "转换枪", {""}, "互换身份", function()
            local ent = get_aim_info()['ent']
            if PED.IS_PED_SHOOTING(players.user_ped()) then
                if ENTITY.IS_ENTITY_A_PED(ent) then
                    pos = ENTITY.GET_ENTITY_COORDS(ent, false)
                    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(players.user_ped(), pos.x, pos.y, pos.z, false, false, false)
                    if PED.IS_PED_A_PLAYER(ent) then
                        local pid = NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(ent)
                        menu.trigger_commands("copyoutfit " .. players.get_name(pid))
                    else
                    local soul = ENTITY.GET_ENTITY_MODEL(ent)
                    STREAMING.REQUEST_MODEL(soul)
                    while(not STREAMING.HAS_MODEL_LOADED(soul))
                    do
                    wait(10)
                        end
                    PLAYER.SET_PLAYER_MODEL(players.user(),soul)
                    STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(soul)
                    if not PED.IS_PED_A_PLAYER(ent) then
                        entities.delete_by_handle(ent)
                    end
                    wait(10)
                    menu.trigger_commands("allguns")
                end
            end
                if ENTITY.IS_ENTITY_A_VEHICLE(ent) then
                    local driver = VEHICLE.GET_PED_IN_VEHICLE_SEAT(ent, -1)
                if VEHICLE.GET_VEHICLE_NUMBER_OF_PASSENGERS(ent,true,false) >= 1 then
                    local soulveh = ENTITY.GET_ENTITY_MODEL(driver)
                    if not PED.IS_PED_A_PLAYER(driver) then
                        entities.delete_by_handle(driver)
                        end
                        STREAMING.REQUEST_MODEL(soulveh)
                        while(not STREAMING.HAS_MODEL_LOADED(soulveh))
                        do
                        wait(10)
                            end
                    PLAYER.SET_PLAYER_MODEL(players.user(),soulveh)
                    STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(soulveh)
                    wait(10)
                    PED.SET_PED_INTO_VEHICLE(players.user_ped(), ent, -1)
                    menu.trigger_commands("allguns")
                    end
                end
            end
    end)

GTLP(weapon_options, "磁铁枪", {"magnetgun"}, "很有趣喔~", function ()
    magnetgun()
end)

GTluaScript.slider_text(weapon_options, "设置磁铁枪", {}, "", {"平滑的", "混沌模式"}, function(index)
	setmagnetgun(index)
end)

GTLP(weapon_options, "磁铁实体", {"magnetents"}, "射击两个实体以让它们互相吸引", function()
	ctst()
end, function ()
	counter = 0
	shotEntities = {}; entityPairs = {}
end)

KA_Radius = 20
KA_Blame = true
KA_Players = false
KA_Onlyplayers = false
KA_Delvehs = false
KA_Delpeds = false

GTLP(wea_func, "子弹分散", {"bulletchanger"}, "", function ()
    local localPed = players.user_ped()
	if not WEAPON.IS_PED_ARMED(localPed, 4) then
		return
	end
	local selectedBullet = util.joaat("weapon_bullpupshotgun")
    local ped = PLAYER.PLAYER_PED_ID()
    local coords = v3.new()
    if PED.IS_PED_SHOOTING(players.user_ped(players.user())) then
		local weapon = WEAPON.GET_CURRENT_PED_WEAPON_ENTITY_INDEX(localPed, false)
		local bone = ENTITY.GET_ENTITY_BONE_INDEX_BY_NAME(weapon, "gun_muzzle")
		local bonePos = WIRI_ENTITY.GET_ENTITY_BONE_POSTION(weapon, bone)
		local offset = get_offset_from_cam(30.0)
		MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(
			bonePos.x, bonePos.y, bonePos.z,
			offset.x, offset.y, offset.z,
			50000,
			true,
			selectedBullet,
			localPed, true, false, 1
		)
		PAD.SET_CONTROL_SHAKE(0, 50, 100)
     end
end)

GTLP(wea_func, "子弹追踪", {"killaura"}, "在范围内杀死所有人.", function ()
    local tKCount = 1
    local toKill = {}
    local ourcoords = getEntityCoords(GetLocalPed())
    local ourped = GetLocalPed()
    local weaponhash = 177293209
    local pedPointers = entities.get_all_peds_as_pointers()
    for i = 1, #pedPointers do
        local v3 = entities.get_position(pedPointers[i])
        local vdist = MISC.GET_DISTANCE_BETWEEN_COORDS(ourcoords.x, ourcoords.y, ourcoords.z, v3.x, v3.y, v3.z, true)
        if vdist <= KA_Radius then
            toKill[tKCount] = entities.pointer_to_handle(pedPointers[i])
            tKCount = tKCount + 1
        end
    end
    for i = 1, #toKill do
        if (not KA_Onlyplayers and not PED.IS_PED_A_PLAYER(toKill[i])) or (KA_Players) or (KA_Onlyplayers and PED.IS_PED_A_PLAYER(toKill[i])) then
            if toKill[i] ~= GetLocalPed() then
                if not PED.IS_PED_DEAD_OR_DYING(toKill[i]) then
                    if PED.IS_PED_IN_ANY_VEHICLE(toKill[i]) then
                        local veh = PED.GET_VEHICLE_PED_IS_IN(toKill[i], false)
                        local pedcoords = getEntityCoords(toKill[i])
                        if not PED.IS_PED_A_PLAYER(toKill[i]) and KA_Delvehs then
                            entities.delete_by_handle(veh)
                        end
                        if KA_Blame then
                           SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY(pedcoords.x, pedcoords.y, pedcoords.z + 0.5, pedcoords.x, pedcoords.y, pedcoords.z, 1000, true, weaponhash, ourped, false, FastNet, -1, veh)
                            SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY(pedcoords.x, pedcoords.y, pedcoords.z - 0.5, pedcoords.x, pedcoords.y, pedcoords.z, 1000, true, weaponhash, ourped, false, FastNet, -1, veh)
                            SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY(pedcoords.x + 1, pedcoords.y, pedcoords.z + 0.5, pedcoords.x, pedcoords.y, pedcoords.z, 1000, true, weaponhash, ourped, false, FastNet, -1, veh)
                            SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY(pedcoords.x - 1, pedcoords.y, pedcoords.z + 0.5, pedcoords.x, pedcoords.y, pedcoords.z, 1000, true, weaponhash, ourped, false, FastNet, -1, veh)
                           SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY(pedcoords.x, pedcoords.y + 1, pedcoords.z + 0.5, pedcoords.x, pedcoords.y, pedcoords.z, 1000, true, weaponhash, ourped, false, FastNet, -1, veh)
                            SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY(pedcoords.x, pedcoords.y - 1, pedcoords.z + 0.5, pedcoords.x, pedcoords.y, pedcoords.z, 1000, true, weaponhash, ourped, false, FastNet, -1, veh)
                        else
                           SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY(pedcoords.x, pedcoords.y, pedcoords.z + 0.5, pedcoords.x, pedcoords.y, pedcoords.z, 1000, true, weaponhash, 0, false, false, -1, veh)
                            SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY(pedcoords.x, pedcoords.y, pedcoords.z - 0.5, pedcoords.x, pedcoords.y, pedcoords.z, 1000, true, weaponhash, 0, false, false, -1, veh)
                            SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY(pedcoords.x + 1, pedcoords.y, pedcoords.z + 0.5, pedcoords.x, pedcoords.y, pedcoords.z, 1000, true, weaponhash, 0, false, false, -1, veh)
                            SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY(pedcoords.x - 1, pedcoords.y, pedcoords.z + 0.5, pedcoords.x, pedcoords.y, pedcoords.z, 1000, true, weaponhash, 0, false, false, -1, veh)
                            SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY(pedcoords.x, pedcoords.y + 1, pedcoords.z + 0.5, pedcoords.x, pedcoords.y, pedcoords.z, 1000, true, weaponhash, 0, false, false, -1, veh)
                            SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY(pedcoords.x, pedcoords.y - 1, pedcoords.z + 0.5, pedcoords.x, pedcoords.y, pedcoords.z, 1000, true, weaponhash, 0, false, false, -1, veh)
                        end
                        wait(50)
                        if not PED.IS_PED_A_PLAYER(toKill[i]) and PED.IS_PED_DEAD_OR_DYING(toKill[i]) and KA_Delpeds then
                            entities.delete_by_handle(toKill[i])
                        end
                    else
                        local pedcoords = getEntityCoords(toKill[i])
                        if KA_Blame then
                            MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(pedcoords.x, pedcoords.y, pedcoords.z + 2, pedcoords.x, pedcoords.y, pedcoords.z, 1000, true, weaponhash, ourped, false, false, -1)
                        else
                            MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(pedcoords.x, pedcoords.y, pedcoords.z + 2, pedcoords.x, pedcoords.y, pedcoords.z, 1000, true, weaponhash, 0, false, false, -1)
                        end
                        wait(50)
                        if not PED.IS_PED_A_PLAYER(toKill[i]) and PED.IS_PED_DEAD_OR_DYING(toKill[i]) and KA_Delpeds then
                            entities.delete_by_handle(toKill[i])
                        end
                    end
                end
            end
        end
    end
    wait(100)
end)

GTluaScript.slider(wea_func, "子弹范围", {"karadius"}, "子弹范围.", 1, 100, 20, 1, function (value)
    KA_Radius = value
end)

grapplegun = false
GTTG(wea_func, "绳索枪", {}, "蜘蛛侠" , function(on)
    grapplegun = on
    if on then
        WEAPON.GIVE_WEAPON_TO_PED(players.user_ped(), util.joaat('weapon_pistol'), 9999, false, false)
        gtoast("绳索枪现已激活！ 用手枪射击某处。 擒抱时按 R 可停止擒抱。")
    end
end)

----
GTLP(wea_func, "删除枪", {""}, "对所有实体均可有效", function()
    if PLAYER.IS_PLAYER_FREE_AIMING(PLAYER.PLAYER_ID()) then
        local pEntity = memory.alloc_int()
        if PLAYER.GET_ENTITY_PLAYER_IS_FREE_AIMING_AT(PLAYER.PLAYER_ID(), pEntity) then
            local entity = memory.read_int(pEntity)
            local WeaponHash = WEAPON.GET_SELECTED_PED_WEAPON(PLAYER.PLAYER_ID())
            local vehicle = PED.GET_VEHICLE_PED_IS_IN(entity, false)
            if vehicle != 0 then
                if WEAPON.HAS_ENTITY_BEEN_DAMAGED_BY_WEAPON(vehicle, WeaponHash, 2) then
                    entities.delete_by_handle(entity)
                end
            end
            if WEAPON.HAS_ENTITY_BEEN_DAMAGED_BY_WEAPON(entity, WeaponHash, 2) then
                entities.delete_by_handle(entity)
            end
        end
    end
    wait()
end)

--

PROX_Coords = {}
PROX_Count = 1

GTLP(wea_func, "感应地雷枪", {"proxgun"}, "仅适用于坐标, 不是实体.", function ()
    local localped = GetLocalPed()
    if PED.IS_PED_SHOOTING(localped) then 
        local pointer = memory.alloc() 
        local junk = WEAPON.GET_PED_LAST_WEAPON_IMPACT_COORD(localped, pointer) 
        local coord = memory.read_vector3(pointer) 
        if coord.x ~= 0.0 and coord.y ~= 0.0 and coord.z ~= 0.0 then 
            PROX_Coords[PROX_Count] = coord 
            PROX_Count = PROX_Count + 1 
            if SE_Notifications then
                util.toast("感应地雷放在 " .. coord.x .. " " .. coord.y .. " " .. coord.z)
            end
        end
        memory.free(pointer)
    end
end)



GTLP(wea_func, "启用/禁用感应地雷", {"enableprox", "proxon"}, "让感应地雷检查实体是否在它们旁边.", function ()
    if PROX_Coords ~= nil then
        for i = 1, #PROX_Coords do
            local pedTable = entities.get_all_peds_as_handles()
            for a = 1, #pedTable do
                if ENTITY.IS_ENTITY_IN_AREA(pedTable[a], PROX_Coords[i].x + 2, PROX_Coords[i].y + 2, PROX_Coords[i].z, PROX_Coords[i].x - 2, PROX_Coords[i].y - 2, PROX_Coords[i].z + 2, true, true, true) then
                    SE_add_owned_explosion(GetLocalPed(), PROX_Coords[i].x, PROX_Coords[i].y, PROX_Coords[i].z, 2, 10, true, false, 0.4)
                end
            end
        end
    end
end)

GTAC(wea_func, "清理所有感应地雷", {"clearprox"}, "", function ()
    util.toast("已清理掉所有 " .. #PROX_Coords .. " 感应地雷!")
    PROX_Coords = {}
    PROX_Count = 1
end)

GTAC(wea_func, "删除被枪械标记的实体", {}, "", function ()
    for i = 1, #MarkedForExt, 1 do
        entities.delete_by_handle(MarkedForExt[i])
    end
    MarkedForExt = {}
    MarkedForExtCount = 1
    if SE_Notifications then
        util.toast("清理所有被标记的实体...")
    end
end)
GTAC(wea_func, "清理删除列表", {}, "", function ()
    MarkedForExt = {}
    MarkedForExtCount = 1
end)

GTLP(wea_func, "射出NPC", {""}, "随机NPC(威力很大)", function()
    shechuNPC()
end)

drivergun = false
GTTG(wea_func, "NPC驾驶枪", {}, "射击车辆以插入一个NPC司机，该司机会将车辆开到一个随机区域。 由于实体所有权，您可能需要多射击几次。", function(on)
    drivergun = on
end)

GTTG(wea_func, "隐形武器", {}, "使你的武器隐形。 可能仅限本地。 切换武器时需要重新开启。", function(on)
    local plyr = players.user_ped()
    WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(plyr, not on, false, false, false) 
end)

GTLP(wea_func, "彩虹武器", {""}, "", function()
    local plyr = players.user_ped()
    if start_tint == nil then
        start_tint = WEAPON.GET_PED_WEAPON_TINT_INDEX(plyr, WEAPON.GET_SELECTED_PED_WEAPON(plyr))
        cur_tint = start_tint
    end
    cur_tint = if cur_tint == 8 then 0 else cur_tint + 1
    WEAPON.SET_PED_WEAPON_TINT_INDEX(plyr,WEAPON.GET_SELECTED_PED_WEAPON(plyr), cur_tint)
    wait(50)
end, function()
        WEAPON.SET_PED_WEAPON_TINT_INDEX(players.user_ped(),WEAPON.GET_SELECTED_PED_WEAPON(players.user_ped()), start_tint)
        start_tint = nil
end)

shitixinxi = GT(weapon_options, "实体信息枪")

aim_info = false
GTTG(shitixinxi,"实体信息枪1.0", {""}, "", function(on)
    aim_info = on
end)

isLog_entity_info = false
GTLP(shitixinxi, "实体信息枪2.0", {}, "显示瞄准射击的实体信息", function()
local ent = GetEntity_PlayerIsAimingAt(players.user())
if ent ~= NULL and ENTITY.DOES_ENTITY_EXIST(ent) then
local entity_info = "[GT]>>>实体信息<<<[GT]\n"
local modelHash = ENTITY.GET_ENTITY_MODEL(ent)
entity_info = entity_info .. "哈希: " .. modelHash
if ENTITY.IS_ENTITY_A_MISSION_ENTITY(ent) then
entity_info = entity_info .. "\nIS A MISSION ENTITY"
end
local entity_types = { "没有实体", "人物", "载具", "实体" }
local entity_type = ENTITY.GET_ENTITY_TYPE(ent)
entity_info = entity_info .. "\n物体类型: " .. entity_types[entity_type + 1]
local entity_pop_types = {
"POPTYPE_UNKNOWN",
"POPTYPE_RANDOM_PERMANENT",
"POPTYPE_RANDOM_PARKED",
"POPTYPE_RANDOM_PATROL",
"POPTYPE_RANDOM_SCENARIO",
"POPTYPE_RANDOM_AMBIENT",
"POPTYPE_PERMANENT",
"POPTYPE_MISSION",
"POPTYPE_REPLAY",
"POPTYPE_CACHE",
"POPTYPE_TOOL" }
local entity_pop_type = ENTITY.GET_ENTITY_POPULATION_TYPE(ent)
entity_info = entity_info .. "\n类型: " .. entity_pop_types[entity_pop_type + 1]
entity_info = entity_info .. "\n健康值: " .. ENTITY.GET_ENTITY_HEALTH(ent)
if entity_type == 3 then
if OBJECT.IS_OBJECT_A_PICKUP(ent) then
entity_info = entity_info .. "\n\nIS A PICKUP"
end
if OBJECT.IS_OBJECT_A_PORTABLE_PICKUP(ent) then
entity_info = entity_info .. "\nIS A PORTABLE PICKUP"
end
end
if ENTITY.IS_ENTITY_ATTACHED(ent) then
entity_info = entity_info .. "\n\nIS ENTITY ATTACHED"
local attached_entity = ENTITY.GET_ENTITY_ATTACHED_TO(ent)
entity_info = entity_info .. "\n附加实体模型哈希 :" .. ENTITY.GET_ENTITY_MODEL(attached_entity)
end
entity_info = entity_info .. "\n位置: " .. ENTITY.GET_ENTITY_HEADING(ent)
local pos = ENTITY.GET_ENTITY_COORDS(ent)
entity_info = entity_info .. "\nX : " .. pos.x .. "\nY : " .. pos.y .. "\nZ : " .. pos.z
directx.draw_text(0, 0.0, entity_info, ALIGN_TOP_LEFT, 0.7, 1, 0, 1, 1, true)
if isLog_entity_info then
util.log(entity_info)
end
end
end)

GTTG(shitixinxi, "记录到日志", {}, "将实体上传日志", function(toggle)
isLog_entity_info = toggle
end)

GTLP(wea_func, "彩弹枪", {"攻击车辆变颜色"}, "攻击车辆变颜色", function ()
    caidancargun()
end)

GTLP(wea_func, "空袭枪", {"airstrikegun"}, "", function()
    airstgun()
end)

GTLP(wea_func, "子弹更改器", {"bulletchanger"}, "", function ()
    bulletchanger()
end)

GTLuaScript.list_select(wea_func, "设置武器子弹", {}, "", {
	{util.get_label_text("WT_A_RPG")}, {util.get_label_text("WT_FWRKLNCHR")},
	{util.get_label_text("WT_RAYPISTOL")}, {util.get_label_text("WT_GL")},
	{util.get_label_text("WT_MOLOTOV")}, {util.get_label_text("WT_SNWBALL")},
	{util.get_label_text("WT_FLAREGUN")}, {util.get_label_text("WT_EMPL")},}, 1, function(opt)
        bulletchanger_set(opt)
end)


local hitEffectRoot <const> = GT(Gun_Effect_Shooting_Hit, "击打特效", {}, "")

GTLP(hitEffectRoot, "开启", {"hiteffects"}, "", function()
	hittingeffect()
end)

GTLuaScript.list_select(hitEffectRoot, "切换子弹特效", {}, "", hiteffectchinese, 1, function (opt)
	sethiteffect(opt)
end)

local SetEffectColour = function(colour) effectColour = colour end

local menuColour = GTluaScript.colour(hitEffectRoot, "颜色", {"effectcolour"}, "仅对某些效果有效", effectColour, false, SetEffectColour)
GTluaScript.rainbow(menuColour)


GTTG(wea_func, '友好枪', {'JSfriendlyFire'}, '使您射击NPC时让他们不会攻击您.', function(toggle)
    friendshipgun(toggle)
end)

GTLP(wea_func, '热成像枪', {'JSthermalGuns'}, '当您瞄准时按"E"可以启用热成像功能.', function()
    thermalgun()
end)

GTLP(wea_func, '超级冲锋', {}, '使用近战时将附近模型推开', function ()
	supeerrunning()
end)

GTAC(wea_func, "发射引导导弹", {"missile"}, "", function()
	if not UFO.exists() then GuidedMissile.create() end
end)

GTTG(wea_func, "可以射击队友", {}, '使你在游戏中能够射击队友', function(toggle)
    PED.SET_CAN_ATTACK_FRIENDLY(PLAYER.PLAYER_PED_ID(), toggle, false)
end)

GTLP(wea_func, '翻滚时自动换弹夹', {}, '当你做翻滚动作时更换弹夹', function()
    runreload()
end)

GTTG(wea_func, "无限弹药", { "inf_ammo" }, '可以避免子弹过多的检测', function(toggle)
    unlimitedbullet(toggle)
end)

GTLP(wea_func, "锁定弹药", { "lock_ammo" }, "锁定当前武器为最大弹药", function()
    lockthebullet()
end)

GTD(pvphelp, "自瞄")

local silent_aimbotroot = GT(pvphelp, "自瞄1.0", {""}, "")

GTTG(silent_aimbotroot, "自瞄", {"saimbottoggle"}, "", function(on) SE_Notifications = true
    silent_aimbot = on
    start_silent_aimbot()
end)

GTLP(silent_aimbotroot, "最大自瞄范围", {}, "手柄的辅助瞄准功能开启后，将有无限的范围.", function()
    PLAYER.SET_PLAYER_LOCKON_RANGE_OVERRIDE(players.user(), 99999999.0)
end)

GTTG(silent_aimbotroot, "自瞄玩家", {"saimbotplayers"}, "", function(on)
    satarget_players = on
end)

GTTG(silent_aimbotroot, "自瞄NPC\'s", {"saimbotpeds"}, "", function(on)
    satarget_npcs = on
end)

GTTG(silent_aimbotroot, "用视野指定范围", {"saimbotusefov"}, "你不会通过你的屁眼杀人", function(on)
    satarget_usefov = on
end)

GTluaScript.slider(silent_aimbotroot, "视野", {"saimbotfov"}, "", 1, 270, 180, 1, function(s)
    sa_fov = s
end)

GTTG(silent_aimbotroot, "忽略车内目标", {"saimbotnovehicles"}, "如果你想装的更像个正常人, 或者射车内目标时遇到问题", function(on)
    satarget_novehicles = on
end)

satarget_nogodmode = true
GTTG(silent_aimbotroot, "忽略无敌目标", {"saimbotnogodmodes"}, "因为这有什么意义？", function(on)
    satarget_nogodmode = on
end, true)

GTTG(silent_aimbotroot, "好友成为目标", {"saimbottargetfriends"}, "", function(on)
    satarget_targetfriends = on
end)

GTTG(silent_aimbotroot, "伤害修改", {"saimbotdmgo"}, "", function(on)
    satarget_damageo = on
end)

GTluaScript.slider(silent_aimbotroot, "伤害修改的数值", {"saimbotdamageoverride"}, "", 1, 1000, 100, 1, function(s)
    sa_odmg = s
end)

GTLP(pvphelp, "自瞄2.0", {}, "", function ()
    if PED.IS_PED_SHOOTING(GetLocalPed()) then 
        Silent_Aimbot.hash = WEAPON.GET_SELECTED_PED_WEAPON(GetLocalPed())
        local suitable = GetSuitableAimbotTarget(Silent_Aimbot.fov, Silent_Aimbot.fov_check,
            Silent_Aimbot.dist, Silent_Aimbot.los_check)

        if suitable ~= nil then
            local hitboxesCheckCount = 0
            for i, v in pairs(Silent_Aimbot.hitboxes) do
                if (v.toggled) then
                    ShootBulletAtPedBone(suitable, v.hash, Silent_Aimbot.dmg,
                        Silent_Aimbot.hash, Silent_Aimbot.advanced.speed)
                        if SE_Notifications then util.toast("射击 " .. i .. " 玩家的 " .. GetPlayerName_ped(suitable)) end
                        break;
                else
                    hitboxesCheckCount = hitboxesCheckCount + 1
                end
            end
            if (hitboxesCheckCount == 3) then
                util.toast("没有选择打击点")
            end
        end
    end
end)

local aimbot_settings = GT(pvphelp, "自瞄2.0设置", {}, "")
GTD(aimbot_settings, "---Settings---")
GTluaScript.slider(aimbot_settings, "伤害", {"saimdmg", "silentdamage"}, "伤害。 可能不准确。", 1, 10000, 100, 10, function (v) Silent_Aimbot.dmg = v end)
GTluaScript.slider(aimbot_settings, "范围", {"saimrange", "silentrange"}, "静默自瞄范围", 1, 10000, 300, 100, function (v) Silent_Aimbot.dist = v end)
GTluaScript.slider(aimbot_settings, "视野", {"saimfov", "silentfov"}, "静默自瞄视野", 1, 1000, 20, 1, function (v) Silent_Aimbot.fov = v/10 end)
GTTG(aimbot_settings, "视野检查", {}, "禁用视野检查。", function (toggle) Silent_Aimbot.fov_check = toggle end, true)
GTTG(aimbot_settings, "视线检查", {}, "禁用视线检查。", function (toggle) Silent_Aimbot.los_check = toggle end, true)
GTD(aimbot_settings, "---打击点---")
GTTG(aimbot_settings, "头", {"saimhead", "silenthead"}, "切换头部打击点。", function (toggle) Silent_Aimbot.hitboxes.head.toggled = toggle end)
GTTG(aimbot_settings, "脊柱/身体", {"saimspine", "saimbody", "silentbody"}, "切换身体打击点。", function (toggle) Silent_Aimbot.hitboxes.spine.toggled = toggle end)
GTTG(aimbot_settings, "骨盆", {"saimpelvis", "silentpelvis"}, "切换骨盆打击点。", function (toggle) Silent_Aimbot.hitboxes.pelvis.toggled = toggle end)
GTD(aimbot_settings, "---额外功能---")
GTluaScript.slider(aimbot_settings, "设定速度", {"silentspeed"}, "设置子弹的速度。 默认值为 -1。", -1, 2147483647, -1, 10, function (v) Silent_Aimbot.advanced.speed = v end)

weaponm = GT(pvphelp, "自瞄3.0", {}, "")
GTTG(weaponm, '开启自瞄', {"aimbot"}, '', function (on)
if on then
GTluaScript.trigger_commands("aimbot on")
else
GTluaScript.trigger_commands("aimbot off")
end
end)
weaponms = GT(weaponm, "目标", {}, ".")
GTTG(weaponms, '排除好友', {"aimbotexcludfriends"}, '', function (on)
if on then
GTluaScript.trigger_commands("aimbotexcludfriends on")
else
GTluaScript.trigger_commands("aimbotexcludfriends off")
end
end)
GTTG(weaponms, '玩家', {"aimbotplayers"}, '', function (on)
if on then
GTluaScript.trigger_commands("aimbotplayers on")
else
GTluaScript.trigger_commands("aimbotplayers off")
end
end)
GTTG(weaponms, 'NPC', {"aimbotpeds"}, '', function (on)
if on then
GTluaScript.trigger_commands("aimbotpeds on")
else
GTluaScript.trigger_commands("aimbotpeds off")
end
end)
GTTG(weaponms, '载具', {"aimbotvehicles"}, '', function (on)
if on then
GTluaScript.trigger_commands("aimbotvehicles on")
else
GTluaScript.trigger_commands("aimbotvehicles off")
end
end)

super_xray = GT(pvphelp, "自瞄4.0", {}, "", function(); end)

GTLP(super_xray, '启动自瞄', {'aimbotact'},'使用您的设置启动自瞄', function ()
    if PLAYER.IS_PLAYER_FREE_AIMING(players.user()) then
        Ped_aim_pool(aimbot.fov)
    else
        wait()
    end
end)

GTTG(super_xray, "不包括NPC", {""}, "", function (on)
    xray.npcs = not on
end)

GTTG(super_xray, "不包括车辆玩家", {""}, "", function (on)
    xray.players = not on
end)

GTTG(super_xray, "不包括车辆", {""}, "", function (on)
    xray.targetveh = not on
end)

GTTG(super_xray, "关闭ESP", {""}, "", function (on)
    xray.espline = not on
end)

GTTG(super_xray, "打开ESP", {""}, "", function (on)
    xray.espbox = on
end)

GTLuaScript.colour(super_xray, "ESP颜色", {""}, "", SuperESPrgb.color, false, function(bcolor)
    SuperESPrgb.color = bcolor
end)

GTLuaScript.slider_float(super_xray, "视野", {"tpslider"}, "", 100, 36000, 1000, 100, function (s)
    xray.fov = s*.01
end)
    
renwuegaoqiang1()
renwuegaoqiang2()
    
GTTG(weaponfun, '钞票枪', {}, '', function (f)
    gt = f
    while gt do
        wait()
        STREAMING.REQUEST_MODEL(util.joaat("prop_cash_pile_01"))
        local coords = players.get_position(PLAYER.PLAYER_PED_ID())
        if STREAMING.HAS_MODEL_LOADED(util.joaat("prop_cash_pile_01")) then
        local bool_rtn, impact = WEAPON.GET_PED_LAST_WEAPON_IMPACT_COORD(PLAYER.PLAYER_PED_ID(),coords)
            OBJECT.CREATE_MONEY_PICKUPS(coords.x, coords.y, coords.z, 2000, 20, util.joaat("prop_cash_pile_01"))
        end
        end
    gt = false
end)

GTTG(weaponfun, '卡片枪', {}, '', function (f)
    gt = f
    while gt do
        wait()
        request_model(3030532197)
        local coords = players.get_position(PLAYER.PLAYER_PED_ID())
        local bool_rtn, v3_coord = WEAPON.GET_PED_LAST_WEAPON_IMPACT_COORD(PLAYER.PLAYER_PED_ID(),coords)
        if bool_rtn then
            OBJECT.CREATE_AMBIENT_PICKUP(-1009939663, coords.x,coords.y,coords.z, 0, 1, 3030532197, false, true)
        end
           end
    gt = false
end)

GTTG(weaponfun, '玩偶枪', {}, '', function (f)
    gt = f
    while gt do
        wait()
        request_model(437412629)
        local coords = players.get_position(PLAYER.PLAYER_PED_ID())
        local bool_rtn, v3_coord = WEAPON.GET_PED_LAST_WEAPON_IMPACT_COORD(PLAYER.PLAYER_PED_ID(),coords)
        if bool_rtn then
            OBJECT.CREATE_AMBIENT_PICKUP(738282662, coords.x,coords.y,coords.z, 0, 1, 437412629, false, true)
        end
           end
    gt = false
end)

GTTG(weaponfun, "瞎打枪", {""}, "", function(g)
gt = g
while gt do
    wait()
	    if PED.IS_PED_SHOOTING(players.user_ped(players.user())) then
		util.create_thread(function()
		local coords = WEAPON.GET_PED_LAST_WEAPON_IMPACT_COORD(PLAYER.PLAYER_PED_ID(),v3.new())
	while not success do
		success, pos = WEAPON.GET_PED_LAST_WEAPON_IMPACT_COORD(PLAYER.PLAYER_PED_ID(),v3.new())
	wait(0)
end
	for i = 1, 20 do
MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(pos.x+(math.random(-10, 10)), pos.y+(math.random(-10, 10)),pos.z+(math.random(-10, 10)), pos.x+(math.random(-10, 10)), pos.y+(math.random(-10, 10)),pos.z+(math.random(-10, 10)), 1000,true, util.joaat("weapon_airstrike_rocket"), PLAYER.PLAYER_PED_ID(), true, false, 250)
    wait(200)
	    end
            end, nil)
        end
     end
end)

GTTG(zhunxin, "三维准星", {}, "", function(gt)
    local cam = {}
    local cam = {cam.gun,cam.guna,cam.gunb}
    cam.gun = directx.create_texture(filesystem.scripts_dir() .. '/GTLuaScript/flightredux/' .. 'boresight.png')
    cam.guna = directx.create_texture(filesystem.scripts_dir() .. '/GTLuaScript/flightredux/' .. 'contact.png')
    cam.gunb = directx.create_texture(filesystem.scripts_dir() .. '/GTLuaScript/GTINFO/' .. 'Playerblip.png')
    cam.gunbc = directx.create_texture(filesystem.scripts_dir() .. '/GTLuaScript/GTINFO/' .. 'bazi.png')
    gtz = gt
    while gtz do
    directx.draw_texture(cam.gun, 0.01, 0.01, 0.0, 0.0, 0.4895, 0.4825, 0, 0, 0, 1, 1)
    directx.draw_texture(cam.guna, 0.01, 0.01, 0.0, 0.0, 0.48942, 0.48253, 0, 0, 1, 0, 1)
    directx.draw_texture(cam.gunb, 0.003, 0.003, 0.0, 0.0, 0.4963, 0.4930, 0, 1, 0.5, 1, 1)
    directx.draw_texture(cam.gunbc, 0.01, 0.01, 0.0, 0.0, 0.4895, 0.4825, 0, 0, 0, 1, 1)
    wait()
    end
    return false
end)

GTLP(zhunxin, "瞄准准星 (!)", {''}, '', function()
    HUD.SET_TEXT_SCALE(1.0,0.5)
    HUD.SET_TEXT_FONT(0)
    HUD.SET_TEXT_CENTRE(1)
    HUD.SET_TEXT_OUTLINE(0)
    HUD.SET_TEXT_COLOUR(255, 0, 0, 180)
    util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("!")
    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.4999,0.4798,0)
end)

GTLP(zhunxin, "瞄准准星 (#)", {''}, '', function()
    HUD.SET_TEXT_SCALE(1.0,0.5)
    HUD.SET_TEXT_FONT(0)
    HUD.SET_TEXT_CENTRE(1)
    HUD.SET_TEXT_OUTLINE(0)
    HUD.SET_TEXT_COLOUR(255, 0, 0, 180)
    util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("#")
    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.4999,0.4798,0)
end)

GTLP(zhunxin, "瞄准准星 ($)", {''}, '', function()
    HUD.SET_TEXT_SCALE(1.0,0.5)
    HUD.SET_TEXT_FONT(0)
    HUD.SET_TEXT_CENTRE(1)
    HUD.SET_TEXT_OUTLINE(0)
    HUD.SET_TEXT_COLOUR(255, 0, 0, 180)
    util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("$")
    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.4999,0.4798,0)
end)

GTLP(zhunxin, "瞄准准星 (^)", {''}, '', function()
    HUD.SET_TEXT_SCALE(1.0,0.5)
    HUD.SET_TEXT_FONT(0)
    HUD.SET_TEXT_CENTRE(1)
    HUD.SET_TEXT_OUTLINE(0)
    HUD.SET_TEXT_COLOUR(255, 0, 0, 180)
    util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("^")
    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.4999,0.486,0)
end)

GTLP(zhunxin, "瞄准准星 (&)", {''}, '', function()
    HUD.SET_TEXT_SCALE(1.0,0.5)
    HUD.SET_TEXT_FONT(0)
    HUD.SET_TEXT_CENTRE(1)
    HUD.SET_TEXT_OUTLINE(0)
    HUD.SET_TEXT_COLOUR(255, 0, 0, 180)
    util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("&")
    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.4999,0.4798,0)
end)

GTLP(zhunxin, "瞄准准星 (*)", {''}, '', function()
    HUD.SET_TEXT_SCALE(1.0,0.5)
    HUD.SET_TEXT_FONT(0)
    HUD.SET_TEXT_CENTRE(1)
    HUD.SET_TEXT_OUTLINE(0)
    HUD.SET_TEXT_COLOUR(255, 0, 0, 180)
    util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("*")
    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.4999,0.485,0)
end)

GTLP(zhunxin, "瞄准准星 (+)", {''}, '', function()
    HUD.SET_TEXT_SCALE(1.0,0.5)
    HUD.SET_TEXT_FONT(0)
    HUD.SET_TEXT_CENTRE(1)
    HUD.SET_TEXT_OUTLINE(0)
    HUD.SET_TEXT_COLOUR(255, 0, 0, 180)
    util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("+")
    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.4999,0.477,0)
end)

GTLP(zhunxin, "瞄准准星 (·)", {''}, '', function()
    HUD.SET_TEXT_SCALE(1.0,0.5)
    HUD.SET_TEXT_FONT(0)
    HUD.SET_TEXT_CENTRE(1)
    HUD.SET_TEXT_OUTLINE(0)
    HUD.SET_TEXT_COLOUR(255, 0, 0, 180)
    util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("·")
    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.49997,0.478,0)
end)

GTD(pvphelp, "天基炮")

--preload
ORB_Sneaky = false

GTAC(pvphelp, "天基炮射击标记点", {"orbway", "orbwp"}, "请标记点位再进行使用\n否则不起作用或者报错", function ()
    local wpos = HUD.GET_BLIP_COORDS(blip)
    if SE_Notifications then
        util.toast("所选标记点目标: " .. wpos.x .. " " .. wpos.y .. " " .. wpos.z)
    end
    if ORB_Sneaky then
        for a = 1, 30 do
            SE_add_explosion(wpos.x, wpos.y, wpos.z + 30 - a, 29, 10, true, false, 1, false)
            SE_add_explosion(wpos.x, wpos.y, wpos.z + 30 - a, 59, 10, true, false, 1, false)
            wait(30)
        end
    else
        for i = 1, 30 do
            SE_add_owned_explosion(GetLocalPed(), wpos.x, wpos.y, wpos.z + 30 - i, 29, 10, true, false, 1)
            SE_add_owned_explosion(GetLocalPed(), wpos.x, wpos.y, wpos.z + 30 - i, 59, 10, true, false, 1)
            wait(30)
        end
    end
end)

GTTG(pvphelp, "隐秘的爆炸", {}, "匿名击杀\n天基炮的爆炸不会归咎于您", function (on)
    ORB_Sneaky = on
end)

GTD(pvphelp, "自爆卡车")

--preload
CAR_S_sneaky = false
CAR_S_BLACKLIST = {}

GTLP(pvphelp, "载具自动自毁", {"carexplode"}, "当您在玩家旁边时会自动引爆您的车", function()
    local ourped = GetLocalPed()
    if PED.IS_PED_IN_ANY_VEHICLE(ourped, false) then
        local pedTable = entities.get_all_peds_as_pointers()
        local ourCoords = getEntityCoords(ourped)
        for i = 1, #pedTable do
            local handle = entities.pointer_to_handle(pedTable[i])
            if PED.IS_PED_A_PLAYER(handle) then
                local playerID = NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(handle)
                local v3 = entities.get_position(pedTable[i])
                local dist = DistanceBetweenTwoCoords(ourCoords, v3)
                if dist < 5 and handle ~= GetLocalPed() and not CAR_S_BLACKLIST[playerID] then
                    if CAR_S_sneaky then
                        SE_add_explosion(ourCoords.x, ourCoords.y, ourCoords.z, 2, 10, true, false, 0.1, false)
                        SE_add_explosion(ourCoords.x - 4, ourCoords.y, ourCoords.z, 2, 20, false, true, 0.1, false)
                        SE_add_explosion(ourCoords.x + 4, ourCoords.y, ourCoords.z, 2, 20, false, true, 0.1, false)
                        SE_add_explosion(ourCoords.x, ourCoords.y - 4, ourCoords.z, 2, 20, false, true, 0.1, false)
                        SE_add_explosion(ourCoords.x, ourCoords.y + 4, ourCoords.z, 2, 20, false, true, 0.1, false)
                    else
                        SE_add_owned_explosion(ourped, ourCoords.x, ourCoords.y, ourCoords.z, 2, 10, true, false, 0.1)
                        SE_add_owned_explosion(ourped, ourCoords.x - 4, ourCoords.y, ourCoords.z, 2, 20, false, true, 0.1)
                        SE_add_owned_explosion(ourped, ourCoords.x + 4, ourCoords.y, ourCoords.z, 2, 20, false, true, 0.1)
                        SE_add_owned_explosion(ourped, ourCoords.x, ourCoords.y - 4, ourCoords.z, 2, 20, false, true, 0.1)
                        SE_add_owned_explosion(ourped, ourCoords.x, ourCoords.y + 4, ourCoords.z, 2, 20, false, true, 0.1)
                    end
                end
            end
        end
    end
end)

GTTG(pvphelp, "隐秘的载具自毁", {"carexplodesneaky"}, "匿名击杀\n汽车自毁的爆炸不会归咎于你", function(on)
    CAR_S_sneaky = on
end)

GTD(pvphelp,"杀死光环")

local kill_auraroot = GT(pvphelp, "杀死光环", {}, "杀死任何以您为中心范围内的玩家\n就像被黑客入侵的Minecraft一样儿")

kill_aura = false
GTTG(kill_auraroot, "杀死光环", {},  "杀死任何以您为中心范围内的玩家\n就像被黑客入侵的Minecraft一样儿", function(on)
    kill_aura = on
    mod_uses("ped", if on then 1 else -1)
end)

kill_aura_peds = false
GTTG(kill_auraroot, "杀死peds", {}, "", function(on)
    kill_aura_peds = on
end)

kill_aura_players = false
GTTG(kill_auraroot, "杀死玩家", {}, "", function(on)
    kill_aura_players = on
end)

kill_aura_friends = false
GTTG(kill_auraroot, "目标好友", {}, "", function(on)
    kill_aura_friends= on
end)


kill_aura_dist = 20
GTluaScript.slider(kill_auraroot, "杀死光环范围", {}, "", 1, 100, 20, 1, function(s)
    kill_aura_dist = s
end)

peds_thread = util.create_thread(function (thr)
    while true do
        if ped_uses > 0 then
            all_peds = entities.get_all_peds_as_handles()
            for k,ped in pairs(all_peds) do
                if kill_aura then
                    if (kill_aura_peds and not PED.IS_PED_A_PLAYER(ped)) or (kill_aura_players and PED.IS_PED_A_PLAYER(ped)) then
                        local pid = NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(v)
                        local hdl = pid_to_handle(pid)
                        if (kill_aura_friends and not NETWORK.NETWORK_IS_FRIEND(hdl)) or not kill_aura_friends then
                            target = ENTITY.GET_ENTITY_COORDS(ped, false)
                            m_coords = ENTITY.GET_ENTITY_COORDS(players.user_ped(), false)
                            if MISC.GET_DISTANCE_BETWEEN_COORDS(m_coords.x, m_coords.y, m_coords.z, target.x, target.y, target.z, true) < kill_aura_dist and ENTITY.GET_ENTITY_HEALTH(ped) > 0 then
                                MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(target['x'], target['y'], target['z'], target['x'], target['y'], target['z']+0.1, 300.0, true, 100416529, players.user_ped(), true, false, 100.0)
                            end
                        end
                    end
                end
            end
        end
        wait()
    end
end)

GTD(pvphelp,"车辆瞄准器")

GTLP(pvphelp, "直升飞机自动瞄准器", {}, "令直升机瞄准最近的玩家\n将其与[静默自瞄]结合使用,让您看起来超级棒~", function ()
    local p = GetClosestPlayerWithRange_Whitelist(200)
    local localped = GetLocalPed()
    local localcoords2 = ENTITY.GET_ENTITY_COORDS(localped)
    if p ~= nil and not PED.IS_PED_DEAD_OR_DYING(p) and ENTITY.HAS_ENTITY_CLEAR_LOS_TO_ENTITY(localped, p, 17) and not AIM_WHITELIST[NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(p)] and (not players.is_in_interior(NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(p))) and (not players.is_godmode(NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(p))) then
        if PED.IS_PED_IN_ANY_VEHICLE(localped) then
            local veh = PED.GET_VEHICLE_PED_IS_IN(localped, false)
            if VEHICLE.GET_VEHICLE_CLASS(veh) == 15 or VEHICLE.GET_VEHICLE_CLASS(veh) == 16 then 
                local pcoords2 = PED.GET_PED_BONE_COORDS(p, 24817, 0, 0, 0)
                local look2 = v3.lookAt(localcoords2, pcoords2)
                local look = GetTableFromV3Instance(look2)
                ENTITY.SET_ENTITY_ROTATION(veh, look.x, look.y, look.z, 1, true)
            end
        end
    end
end)

GTAC(pvphelp, "修改导弹速度", {}, "", function ()
    local localped = GetLocalPed()
    if PED.IS_PED_IN_ANY_VEHICLE(localped) then
        local veh = PED.GET_VEHICLE_PED_IS_IN(localped, false)
        if VEHICLE.GET_VEHICLE_CLASS(veh) == 15 or VEHICLE.GET_VEHICLE_CLASS(veh) == 16 then 
            SetVehicleMissileSpeed(VEH_MISSILE_SPEED)
        end
    end
end)

GTluaScript.slider(pvphelp, "设置导弹速度", {"vehmissilespeed"}, "设置导弹速度的数值", 1, 2147483647, 10000, 100, function (value)
    VEH_MISSILE_SPEED = value
end)

GTD(pvphelp, "RPG自动瞄准器")


GTTG(pvphelp, "RPG自动瞄准器", {"rpgaim"}, "火箭炮自瞄: 针对大多数车辆\n可瞄准将与火箭设置列表中提供的火箭共同使用", function (on)
    if on then
        MISL_AIM = true
        while MISL_AIM do
            local localped = GetLocalPed()
            local localcoords = ENTITY.GET_ENTITY_COORDS(GetLocalPed())
            local forOffset = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(localped, 0, 5, 0)
            RRocket = OBJECT.GET_CLOSEST_OBJECT_OF_TYPE(forOffset.x, forOffset.y, forOffset.z, 10, Chosen_Rocket_Hash, false, true, true, true)
            local p
            if missile_settings.multitarget then
                if missile_settings.air_target then
                    p = GetClosestPlayerWithRange_Whitelist_DisallowEntities(missile_settings.radius, MISSILE_ENTITY_TABLE, true)
                else
                    p = GetClosestPlayerWithRange_Whitelist_DisallowEntities(missile_settings.radius, MISSILE_ENTITY_TABLE, false)
                end
            elseif missile_settings.multiped then
                if missile_settings.air_target then
                    p = GetClosestNonPlayerPedWithRange_DisallowedEntities(missile_settings.radius, MISSILE_ENTITY_TABLE, true)
                else
                    p = GetClosestNonPlayerPedWithRange_DisallowedEntities(missile_settings.radius, MISSILE_ENTITY_TABLE, false)
                end
            elseif not missile_settings.multitarget then
                if missile_settings.air_target then
                    p = GetClosestPlayerWithRange_Whitelist(missile_settings.radius, true)
                else
                    p = GetClosestPlayerWithRange_Whitelist(missile_settings.radius, false)
                end
            end
            local ppcoords = ENTITY.GET_ENTITY_COORDS(p)
            if (RRocket ~= 0) and (p ~= nil) and (not PED.IS_PED_DEAD_OR_DYING(p)) and (not AIM_WHITELIST[NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(p)]) and (PED.IS_PED_SHOOTING(localped)) and (not players.is_in_interior(NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(p))) and (ppcoords.z > 1) then
                util.create_thread(function ()
                    local plocalized = p
                    local msl = RRocket
                    if missile_settings.multitarget then
                        MISSILE_ENTITY_TABLE[#MISSILE_ENTITY_TABLE+1] = plocalized
                    end
                    if (ENTITY.HAS_ENTITY_CLEAR_LOS_TO_ENTITY(localped, plocalized, 17) and missile_settings.los) or not missile_settings.los or MISL_AIR then
                        if SE_Notifications then
                            util.toast("前兆完成！")
                        end
                        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(msl)
                        if not NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(msl) then
                            for i = 1, 10 do
                                NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(msl)
                            end
                        else
                            if SE_Notifications then
                                util.toast("有控制权")
                            end
                        end
                        local aircount = 1
                        Missile_Camera = 0

                        STREAMING.REQUEST_NAMED_PTFX_ASSET(missile_particles.dictionary)
                        while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(missile_particles.dictionary) do
                            STREAMING.REQUEST_NAMED_PTFX_ASSET(missile_particles.dictionary)
                            wait()
                        end
                        GRAPHICS.USE_PARTICLE_FX_ASSET(missile_particles.dictionary)
                        while ENTITY.DOES_ENTITY_EXIST(msl) do
                            if SE_Notifications then
                                util.toast("rocket exists")
                            end
                            local pcoords2 = ENTITY.GET_ENTITY_COORDS(plocalized)
                            local pcoords = GetTableFromV3Instance(pcoords2)
                            local lc2 = ENTITY.GET_ENTITY_COORDS(msl)
                            local lc = GetTableFromV3Instance(lc2)
                            local look2 = v3.lookAt(lc2, pcoords2)
                            local look = GetTableFromV3Instance(look2)
                            local dir2 = v3.toDir(look2)
                            local dir = GetTableFromV3Instance(dir2)
                            if missile_settings.ptfx then
                                STREAMING.REQUEST_NAMED_PTFX_ASSET(missile_particles.dictionary)
                                while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(missile_particles.dictionary) do
                                    STREAMING.REQUEST_NAMED_PTFX_ASSET(missile_particles.dictionary)
                                    wait()
                                end
                                GRAPHICS.USE_PARTICLE_FX_ASSET(missile_particles.dictionary)
                                GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(missile_particles.name, lc.x, lc.y, lc.z, 0, 0, 0, 0.4 * missile_settings.ptfx_scale, false, false, false, true)
                            end
                            if aircount < 2 and MISL_AIR then
                                if ENTITY.DOES_ENTITY_EXIST(msl) then
                                    ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(msl, 1, 0, 0, 2700, true, false, true, true)
                                    aircount = aircount + 1
                                    wait(1100)
                                end
                            end
                            local lookCountD = 0
                            if MISL_AIR then
                                if missile_settings.cam then
                                    if not CAM.DOES_CAM_EXIST(Missile_Camera) then
                                        if SE_Notifications then
                                            util.toast("相机设置")
                                        end
                                        CAM.DESTROY_ALL_CAMS(true)
                                        Missile_Camera = CAM.CREATE_CAM("DEFAULT_SCRIPTED_CAMERA", true)
                                        CAM.SET_CAM_ACTIVE(Missile_Camera, true)
                                        CAM.RENDER_SCRIPT_CAMS(true, false, 0, true, true, 0)
                                    end
                                end
                                local distx = math.abs(lc.x - pcoords.x)
                                local disty = math.abs(lc.y - pcoords.y)
                                local distz = math.abs(lc.z - pcoords.z)
                                if missile_settings.cam then
                                    local ddisst = GENERIC_SYSTEM.VDIST(pcoords.x, pcoords.y, pcoords.z, lc.x, lc.y, lc.z)
                                    if ddisst > 50 then
                                        local camcoordv3 = CAM.GET_CAM_COORD(Missile_Camera)
                                        local look3 = v3.lookAt(camcoordv3, lc2)
                                        local look4 = GetTableFromV3Instance(look3)
                                        local backoffset = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(msl, 10, 10, -2)
                                        CAM.SET_CAM_COORD(Missile_Camera, backoffset.x, backoffset.y, backoffset.z)
                                        if lookCountD < 1 then
                                            CAM.SET_CAM_ROT(Missile_Camera, look4.x, look4.y, look4.z, 2)
                                            lookCountD = lookCountD + 1
                                        end
                                    else
                                        local camcoordv3 = CAM.GET_CAM_COORD(Missile_Camera)
                                        local look3 = v3.lookAt(camcoordv3, lc2)
                                        local look4 = GetTableFromV3Instance(look3)
                                        CAM.SET_CAM_ROT(Missile_Camera, look4.x, look4.y, look4.z, 2)
                                    end
                                end
                                ENTITY.SET_ENTITY_ROTATION(msl, look.x, look.y, look.z, 2, true)
                                ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(msl, 1, dir.x * missile_settings.speed * distx, dir.y * missile_settings.speed * disty, dir.z * missile_settings.speed * distz, true, false, true, true)
                                wait()
                            else
                                ENTITY.SET_ENTITY_ROTATION(msl, look.x, look.y, look.z, 2, true)
                                ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(msl, 1, dir.x * missile_settings.speed, dir.y * missile_settings.speed, dir.z * missile_settings.speed, true, false, true, true)
                                wait()
                            end
                        end
                        if missile_settings.cam then
                            wait(2000)
                            if SE_Notifications then
                                util.toast("相机删除")
                            end
                            CAM.RENDER_SCRIPT_CAMS(false, false, 0, true, true, 0)
                            if CAM.IS_CAM_ACTIVE(Missile_Camera) then
                                CAM.SET_CAM_ACTIVE(Missile_Camera, false)
                            end
                            CAM.DESTROY_CAM(Missile_Camera, true)
                        end
                    end
                    if missile_settings.multitarget then
                        table.remove(MISSILE_ENTITY_TABLE, GetValueIndexFromTable(MISSILE_ENTITY_TABLE, plocalized))
                        util.toast("Removed value " .. tostring(plocalized) .. " at index " .. tostring(GetValueIndexFromTable(MISSILE_ENTITY_TABLE, p)))
                    end
                end)
            end
            wait()
        end
    else
        MISL_AIM = false
    end
end)

local rpgrockets = GT(pvphelp, "火箭炮类型设置", {}, "")

local function generateRockets()
    for i = 1, #Rocket_Hashes do
        GTAC(rpgrockets, "Rocket " .. Rocket_Hashes[i][1], {"rocket " .. Rocket_Hashes[i][1]}, "", function ()
            Chosen_Rocket_Hash = Rocket_Hashes[i][2]
            util.toast("Set chosen rocket to " .. Rocket_Hashes[i][1] .. " || " .. Rocket_Hashes[i][2])
        end)
    end
end

generateRockets()

local rpgsettings = GT(pvphelp, "RPG自动瞄准器设置", {"rpgsettings"}, "")

GTTG(rpgsettings, "启用标枪模式", {"rpgjavelin"}, "让火箭飞得很高，杀死离你最近的玩家 :) | 建议：结合“RPG LOS Remove”，向你看不到的目标开火。", function (on)
    if on then
        MISL_AIR = true
    else
        MISL_AIR = false
    end
end)

GTluaScript.slider(rpgsettings, "RPG自动瞄准器半径", {"msl_frc_rad"}, "导弹自瞄的射程，例如 人可以离开多远。", 1, 10000, 300, 10, function (value)
    missile_settings.radius = value
end)

GTluaScript.slider(rpgsettings, "RPG速度倍增器", {"msl_spd_mult"}, "速度乘数。 默认是100，很好。", 1, 10000, 100, 10, function (value)
    missile_settings.speed = value
end)

GTTG(rpgsettings, "RPG LOS删除", {}, "删除视线检查。 除非您知道自己在做什么，否则不要打开它。", function (on)
    missile_settings.los = not on
end)

GTTG(rpgsettings, "RPG 行车记录器", {"rpgcamera"}, "现在有了行车记录仪，如果你使用标枪模式，你终于可以知道你的火箭到底去哪儿了。", function (on)
    missile_settings.cam = on
end)

GTTG(rpgsettings, "启用 PTFX", {}, "启用导弹的粒子效果，使它们看起来更合法。 默认启用。", function (toggle)
    missile_settings.ptfx = toggle
end, true)

GTTG(rpgsettings, "只针对空中目标", {}, "使自瞄只瞄准那些在空中的人。", function (toggle)
    missile_settings.air_target = toggle
end)

GTTG(rpgsettings, "多目标", {}, "将使导弹瞄准不同的实体。 如果一枚导弹已经飞向一个实体，其他导弹将飞向其他实体。 对多人有用。", function (toggle)
    missile_settings.multitarget = toggle
end)

GTTG(rpgsettings, "目标 Peds（多目标）", {}, "将针对peds而不是玩家。 在这个上启用了多目标，因为如果不是这样就没有用。", function (toggle)
    missile_settings.multiped = toggle
end)

GTD(rpgsettings, "------- PTFX（高级） -------")

GTluaScript.slider(rpgsettings, "PTFX 比例", {"rpgparscale"}, "粒子效果的比例。", 1, 10, 1, 1, function (scale)
    missile_settings.ptfx_scale = scale
end)

GTluaScript.text_input(rpgsettings, "PTFX 名称", {"rpgptfx"}, "粒子效果名称。 仅限高级用户。", function (text)
    missile_particles.name = text
end, "exp_grd_rpg_lod")

GTluaScript.text_input(rpgsettings, "PTFX 字典", {"rpgdictionary"}, "使用 PTFX 的粒子效果字典。 仅限高级！！", function (text)
    missile_particles.dictionary = text
end, "core")


GTD(pvphelp, "轨道标点")


GTAC(pvphelp, "轨道打击标点", {"orbway", "orbwp"}, "请标记点位再进行使用\n轨道炮将自动瞄准射击您标记的点位", function ()
        if HUD.IS_WAYPOINT_ACTIVE() then
            local blip = HUD.GET_FIRST_BLIP_INFO_ID(8)
            local wpos = HUD.GET_BLIP_COORDS(blip)
        if ORB_Sneaky then
            for a = 1, 30 do
                SE_add_explosion(wpos.x, wpos.y, wpos.z + 30 - a, 29, 10, true, false, 1, false)
                SE_add_explosion(wpos.x, wpos.y, wpos.z + 30 - a, 59, 10, true, false, 1, false)
                wait(30)
            end
        else
            for i = 1, 30 do
                SE_add_owned_explosion(GetLocalPed(), wpos.x, wpos.y, wpos.z + 30 - i, 29, 10, true, false, 1)
                SE_add_owned_explosion(GetLocalPed(), wpos.x, wpos.y, wpos.z + 30 - i, 59, 10, true, false, 1)
                wait(30)
            end
        end
    else
        util.toast("没标点！")
    end
end)

GTTG(pvphelp, "偷偷摸摸的爆炸", {}, "匿名击杀", function (on)
    ORB_Sneaky = on
end)


GTD(pvphelp, "汽车自杀")

GTLP(pvphelp, "汽车自杀", {"carexplode"}, "当您在玩家旁边时自动引爆您的汽车", function()
    local ourped = GetLocalPed()
    if PED.IS_PED_IN_ANY_VEHICLE(ourped, false) then
        local pedTable = entities.get_all_peds_as_pointers()
        local ourCoords = ENTITY.GET_ENTITY_COORDS(ourped)
        for i = 1, #pedTable do
            local handle = entities.pointer_to_handle(pedTable[i])
            if PED.IS_PED_A_PLAYER(handle) then
                local playerID = NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(handle)
                local v3 = entities.get_position(pedTable[i])
                local dist = DistanceBetweenTwoCoords(ourCoords, v3)
                if dist < 5 and handle ~= GetLocalPed() and not CAR_S_BLACKLIST[playerID] then
                    if CAR_S_sneaky then
                        SE_add_explosion(ourCoords.x, ourCoords.y, ourCoords.z, 2, 10, true, false, 0.1, false)
                        SE_add_explosion(ourCoords.x - 4, ourCoords.y, ourCoords.z, 2, 20, false, true, 0.1, false)
                        SE_add_explosion(ourCoords.x + 4, ourCoords.y, ourCoords.z, 2, 20, false, true, 0.1, false)
                        SE_add_explosion(ourCoords.x, ourCoords.y - 4, ourCoords.z, 2, 20, false, true, 0.1, false)
                        SE_add_explosion(ourCoords.x, ourCoords.y + 4, ourCoords.z, 2, 20, false, true, 0.1, false)
                    else
                        SE_add_owned_explosion(ourped, ourCoords.x, ourCoords.y, ourCoords.z, 2, 10, true, false, 0.1)
                        SE_add_owned_explosion(ourped, ourCoords.x - 4, ourCoords.y, ourCoords.z, 2, 20, false, true, 0.1)
                        SE_add_owned_explosion(ourped, ourCoords.x + 4, ourCoords.y, ourCoords.z, 2, 20, false, true, 0.1)
                        SE_add_owned_explosion(ourped, ourCoords.x, ourCoords.y - 4, ourCoords.z, 2, 20, false, true, 0.1)
                        SE_add_owned_explosion(ourped, ourCoords.x, ourCoords.y + 4, ourCoords.z, 2, 20, false, true, 0.1)
                    end
                end
            end
        end
    end
end)

GTTG(pvphelp, "偷偷摸摸的爆炸", {"carexplodesneaky"}, "设置爆炸为匿名击杀", function(on)
    CAR_S_sneaky = on
end)


GTD(pvphelp, "合法的快速射击")

GTTG(pvphelp, "合法的快速射击（快速切换）", {"legitrapidfire"}, "射击后快速切换到手榴弹并返回武器\n对狙击手/角色扮演游戏/榴弹发射器很有用", function(on)
    local localped = GetLocalPed()
    if on then
        LegitRapidFire = true
        util.create_thread(function ()
            while LegitRapidFire do
                if PED.IS_PED_SHOOTING(localped) then
                    local currentWpMem = memory.alloc()
                    local junk = WEAPON.GET_CURRENT_PED_WEAPON(localped, currentWpMem, 1)
                    local currentWP = memory.read_int(currentWpMem)
                    memory.free(currentWpMem)
                    WEAPON.SET_CURRENT_PED_WEAPON(localped, 2481070269, true)
                    wait(LegitRapidMS)
                    WEAPON.SET_CURRENT_PED_WEAPON(localped, currentWP, true)
                end
                wait()
            end
            util.stop_thread()
        end)
    else
        LegitRapidFire = false
    end
end)

GTluaScript.slider(pvphelp, "合法的快速射击延迟（ms）", {"legitrapiddelay"}, "切换到手榴弹并返回武器所需的延迟", 1, 1000, 100, 50, function (value)
    LegitRapidMS = value
end)

GTD(pvphelp, "导弹防御")

Actual_Missiles = {
    util.joaat("w_lr_rpg_rocket"),
    util.joaat("w_lr_homing_rocket"),
}

GTLP(pvphelp, "导弹护盾", {"missileshield"}, "在您面前生成一面护盾阻挡爆炸\n不会与您使用的火箭炮产生冲突", function()

    local missile = 0
    local forOffset = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(GetLocalPed(), 0, 5, 0)
    for i = 1, #Actual_Missiles do

        missile = OBJECT.GET_CLOSEST_OBJECT_OF_TYPE(forOffset.x, forOffset.y, forOffset.z, 10, Actual_Missiles[i], false, true, true, true)
        if (missile ~= 0) then 
            local pcoords = getEntityCoords(GetLocalPed())
            local mcoords = getEntityCoords(missile)
            if (SYSTEM.VDIST2(pcoords.x, pcoords.y, pcoords.z, mcoords.x, mcoords.y, mcoords.z) < 100) then return end

            local offsetForward = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(missile, 0, 3, 0); offsetForward.z = offsetForward.z - 3
            local missileRot = v3.new(ENTITY.GET_ENTITY_ROTATION(missile, 2))
            util.create_thread(function()
                util.toast("启动导弹护盾.")
                local obj = SpawnObjectAtCoords(util.joaat("sr_prop_sr_track_wall"), offsetForward)
                ENTITY.SET_ENTITY_INVINCIBLE(obj, true)
                ENTITY.SET_ENTITY_ROTATION(obj, missileRot:getX(), missileRot:getY(), missileRot:getZ()+90, 2, true)
                wait(1000)
                entities.delete_by_handle(obj)
                util.toast("关闭导弹护盾.")
                return
            end)

            return
        end

    end
end)

GTD(pvphelp, "")
        
SE_Notifications = false
GTTG(pvphelp, "调试通知", {""}, "", function(on)
    SE_Notifications = on
end)

nfs_cs = GT(carfly, '车速表', {''}, '')
--[[DiuDiu_NFS = GTAC(nfs_cs, "启动车速表模式", {""}, "点击启动", function()
GTLuaScript.delete(DiuDiu_NFS)
dofile(filesystem.scripts_dir().."\\lib\\GTSCRIPTS\\GTW\\NFS.lua")
end)]]

Vehicle_Collision_Reaction = GT(carfly, "载具碰撞反应")
require "lib.GTSCRIPTS.GTA.vehpop"

mission_car = GT(carfly, "任务专用载具", {}, "")
    GTAC(mission_car, "生成骷髅马", {""}, "", function ()
    for pid = 0, 4 do
    pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(pid))
    dune = CreateVehicle(0x187D938D,pos,0)
    end
    wait(500)
    end)

    GTAC(mission_car, "生成防爆运输车", {""}, "", function ()
    for pid = 0, 4 do
    pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(pid))
    dune = CreateVehicle(0xB822A1AA,pos,0)
    end
    wait(500)
    end)

    GTAC(mission_car, "生成微型直升机", {""}, "", function ()
    for pid = 0, 4 do
    pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(pid))
    dune = CreateVehicle(0x89BA59F5,pos,0)
    end
    wait(500)
    end)

    GTAC(mission_car, "生成骷髅马", {""}, "", function ()
    for pid = 0, 4 do
    pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(pid))
    dune = CreateVehicle(0x187D938D,pos,0)
    end
    wait(500)
    end)

    GTAC(mission_car, "生成防爆运输车", {""}, "", function ()
    for pid = 0, 4 do
    pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(pid))
    dune = CreateVehicle(0xB822A1AA,pos,0)
    end
    wait(500)
    end)

    GTAC(mission_car, "生成微型直升机", {""}, "", function ()
    for pid = 0, 4 do
    pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(pid))
    dune = CreateVehicle(0x89BA59F5,pos,0)
    end
    wait(500)
    end)

    GTAC(mission_car, "生成义警", {""}, "", function ()
    for pid = 0, 4 do
    pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(pid))
    dune = CreateVehicle(3052358707,pos,0)
    end
    wait(500)
    end)

    GTAC(mission_car, "生成武装小艇", {""}, "", function ()
    for pid = 0, 4 do
    pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(pid))
    dune = CreateVehicle(3314393930,pos,0)
    end
    wait(500)
    end)

    GTAC(mission_car, "生成可汗贾利", {""}, "", function ()
    for pid = 0, 4 do
    pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(pid))
    dune = CreateVehicle(2859440138,pos,0)
    end
    wait(500)
    end)

    GTAC(mission_car, "生成秃鹫直升机", {""}, "", function ()
    for pid = 0, 4 do
    pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(pid))
    dune = CreateVehicle(788747387,pos,0)
    end
    wait(500)
end)            
--
Vehicle_Radio_options = GT(carfly, "载具电台", {}, "此功能只在线模式中生效")
-- 载具电台 Labels
Vehicle_Radio_Stations = {
    "RADIO_11_TALK_02", -- Blaine County Radio
    "RADIO_12_REGGAE", -- The Blue Ark
    "RADIO_13_JAZZ", -- Worldwide FM
    "RADIO_14_DANCE_02", -- FlyLo FM
    "RADIO_15_MOTOWN", -- The Lowdown 9.11
    "RADIO_20_THELAB", -- The Lab
    "RADIO_16_SILVERLAKE", -- Radio Mirror Park
    "RADIO_17_FUNK", -- Space 103.2
    "RADIO_18_90S_ROCK", -- Vinewood Boulevard Radio
    "RADIO_21_DLC_XM17", -- Blonded Los Santos 97.8 FM
    "RADIO_22_DLC_BATTLE_MIX1_RADIO", -- Los Santos Underground Radio
    "RADIO_23_DLC_XM19_RADIO", -- iFruit Radio
    "RADIO_19_USER", -- Self Radio
    "RADIO_01_CLASS_ROCK", -- Los Santos Rock Radio
    "RADIO_02_POP", -- Non-Stop-Pop FM
    "RADIO_03_HIPHOP_NEW", -- Radio Los Santos
    "RADIO_04_PUNK", -- Channel X
    "RADIO_05_TALK_01", -- West Coast Talk Radio
    "RADIO_06_COUNTRY", -- Rebel Radio
    "RADIO_07_DANCE_01", -- Soulwax FM
    "RADIO_08_MEXICAN", -- East Los FM
    "RADIO_09_HIPHOP_OLD", -- West Coast Classics
    "RADIO_36_AUDIOPLAYER", -- Media Player
    "RADIO_35_DLC_HEI4_MLR", -- The Music Locker
    "RADIO_34_DLC_HEI4_KULT", -- Kult FM
    "RADIO_27_DLC_PRHEI4", -- Still Slipping Los Santos
}
VehicleRadio_ListItem = { { "关闭", {}, "OFF" } }
for k, name in pairs(Vehicle_Radio_Stations) do
    local temp = { "", {}, "" }
    temp[1] = util.get_label_text(name)
    temp[3] = name
    table.insert(VehicleRadio_ListItem, temp)
end

vehicle_radio_station_select = 1
GTLuaScript.list_select(Vehicle_Radio_options, "选择电台", {}, "", VehicleRadio_ListItem, 1, function(value)
    vehicle_radio_station_select = value
end)

GTLP(Vehicle_Radio_options, "自动更改电台", { "auto_veh_radio" }, "当你进入一辆载具时，更改载具的电台",
    function()
        if PED.IS_PED_GETTING_INTO_A_VEHICLE(players.user_ped()) then
            local veh = PED.GET_VEHICLE_PED_IS_ENTERING(players.user_ped())
            if veh ~= 0 then
                local stationName = VehicleRadio_ListItem[vehicle_radio_station_select][3]
                AUDIO.SET_VEH_RADIO_STATION(veh, stationName)
            end
        end
    end)

GTTG(Vehicle_Radio_options, "关闭电台", { "close_veh_radio" },
    "关闭后当前载具将无法选择更改电台", function(toggle)
    local vehicle = entities.get_user_vehicle_as_handle()
    if vehicle ~= 0 then
        AUDIO.SET_VEHICLE_RADIO_ENABLED(vehicle, not toggle)
    end
end)
--
Vehicle_Light_options = GT(carfly, "高级载具车灯", {}, "")

VehicleLightState_ListItem = {
    { "正常" }, -- 0
    { "强制关灯", {}, "总是关灯" }, -- 1
    { "强制开灯", {}, "总是开灯" }, -- 2
    { "开灯" }, -- 3
    { "关灯" }, -- 4
}
GTLuaScript.list_select(Vehicle_Light_options, "设置车灯状态", {}, "", VehicleLightState_ListItem, 1, function(value)
    local vehicle = entities.get_user_vehicle_as_handle()
    if vehicle ~= 0 then
        VEHICLE.SET_VEHICLE_LIGHTS(vehicle, value - 1)
    end
end)
    VehicleHeadlightShadow_ListItem = {
    { "无阴影" }, -- 0
    { "投射动态阴影" }, -- 1
    { "投射静态阴影" }, -- 2
    { "投射完整的阴影" }, -- 3
}
GTLuaScript.list_select(Vehicle_Light_options, "设置前照灯阴影", {}, "", VehicleHeadlightShadow_ListItem,
    1, function(value)
    local vehicle = entities.get_user_vehicle_as_handle()
    if vehicle ~= 0 then
        VEHICLE.SET_VEHICLE_LIGHTS(vehicle, value - 1)
    end
end)

GTTG(Vehicle_Light_options, "车灯不可损坏", {}, "", function(toggle)
    local vehicle = entities.get_user_vehicle_as_handle()
    if vehicle ~= 0 then
        VEHICLE.SET_VEHICLE_HAS_UNBREAKABLE_LIGHTS(vehicle, toggle)
    end
end)
GTTG(Vehicle_Light_options, "内饰灯光", {},
    "Forces the vehicles interior lights (regardless of time-of-day)", function(toggle)
    local vehicle = entities.get_user_vehicle_as_handle()
    if vehicle ~= 0 then
        VEHICLE.SET_VEHICLE_FORCE_INTERIORLIGHT(vehicle, toggle)
    end
end)
--
local carweaponfun = GT(carfly, "载具武器", {}, "", function(); end)

P99tiansha = menu.list(carweaponfun, "设置天煞机炮", {""}, "")

GTAC(P99tiansha, "修改天煞机炮", {""}, "将你的天煞机炮修改为任务版", function(on_toggle)
local p99_explosive_type = memory.scan("81 7B ? ? ? ? ? 75 0D")
local module_base = p99_explosive_type - tonumber("102C5CC",16)
local alter_wait_time = module_base + tonumber("1E28E50",16)
local shoot_between_time = module_base + tonumber("1E2847C",16)
if module_base then
memory.write_int(p99_explosive_type+16,0)
memory.write_float(alter_wait_time,-1)
memory.write_float(shoot_between_time,0.03999999911)
util.toast('修改完毕')
else
util.toast('无法获取数据')
end
end)

GTAC(P99tiansha, "修改回现版本机炮", {""}, "将你的天煞机炮修改回当前版本", function(on_toggle)
local p99_explosive_type = memory.scan("81 7B ? ? ? ? ? 75 0D")
local module_base = p99_explosive_type - tonumber("102C5CC",16)
local alter_wait_time = module_base + tonumber("1E28E50",16)
local shoot_between_time = module_base + tonumber("1E2847C",16)
if module_base then
memory.write_int(p99_explosive_type+16,85)
memory.write_float(alter_wait_time,0.125)
memory.write_float(shoot_between_time,0.125)
util.toast('修改完毕')
else
util.toast('无法获取数据')
end
end)

ff9car = GT(carweaponfun, "电磁脉冲道奇战马", {}, "生成带有电磁脉冲功能的道奇战马")

Spawn = GTLP(ff9car, '生成电磁脉冲道奇战马', {'FF9Wspawn'}, '生成带有电磁脉冲功能的道奇战马', function ()
    spawnspecialcar()
end)

sdroot = GT(carweaponfun, '魔幻激光战马', {}, '')

SDspawn = GTLP(sdroot, '生成魔幻激光战马', {'lsdspawn'}, '魔幻战马可以发出激光', function ()
    Lazer_Space_Car()
end)

local vehicleWeaponRoot = menu.list(carweaponfun, "设置载具武器", {"vehicleweapons"}, "")

GTLP(vehicleWeaponRoot, "载具镭射", {"vehiclelasers"}, "", function ()
	vehlaser()
end)

GTLP(vehicleWeaponRoot, "载具武器", {}, "", function()
	vehweapon_veh()
end, function () 
    state = 0 
end)

GTLuaScript.list_select(vehicleWeaponRoot, "设置载具武器", {}, "", {{util.get_label_text("WT_V_SPACERKT")}, {util.get_label_text("WT_RAYPISTOL")},{util.get_label_text("WT_FWRKLNCHR")}, {util.get_label_text("WT_V_TANK")}, {util.get_label_text("WT_V_PLRBUL")}}, 1, function (index)
    setvehweapon(index)
end)

list_homingMissiles = GT(vehicleWeaponRoot, "先进追踪导弹", {}, "允许您在任何载具上使用追踪导弹，并一次射出最多六个目标 ..")

toggle = GTLP(list_homingMissiles, "先进追踪导弹", {"homingmissiles"}, "鼠标右键射击出的才是追踪导弹哦!", function ()
    if not UFO.exists() and not GuidedMissile.exists() then
		HomingMissiles.mainLoop()
	else
		menu.set_value(toggle, false)
	end
end, HomingMissiles.reset)

whiteList = GT(list_homingMissiles, "白名单", {}, "")
GTTG(whiteList, "朋友", {}, "", HomingMissiles.SetIgnoreFriends)
GTTG(whiteList, "组织成员", {}, "", HomingMissiles.SetIgnoreOrgMembers)
GTTG(whiteList, "帮会成员", {}, "", HomingMissiles.SetIgnoreCrewMembers)


GTluaScript.slider(list_homingMissiles, "最大目标数" , {}, "", 1, 6, 6, 1, HomingMissiles.SetMaxTargets)


GTLP(carweaponfun, "空袭飞机", {"airstrikeplane"}, "使用任何飞机或直升机进行空袭", function ()
    airstrikeaicraft_plane()
end, function()
     state = 0 
end)

rapid_khanjali = GTLP(carweaponfun, "TM-02 可汉贾利武器快速射击", {}, "快速切换武器", function()
    tm02fastshot()
end)

local controlSettings = GT(carweaponfun, "设置" , {}, "")

local airstrikePlaneControl = GT(controlSettings, "空袭飞机", {}, "")

for name, control in pairs(Imputs_vehweapon) do
	local keyboard, controller = control[1]:match('^(.+)%s?;%s?(.+)$')
	local strg = ("%s: %s, %s: %s"):format(trans_plane.Keyboard, keyboard, trans_plane.Controller, controller)
	menu.action(airstrikePlaneControl, strg, {}, "", function()
        Config.controls.airstrikeaircraft = control[2]
        util.show_corner_help(trans_plane.AirstrikeAircraft:format(name))
	end)
end

local vehicleWeaponsControl <const> = GT(controlSettings, "载具武器", {}, "")
for name, control in pairs(Imputs_vehweapon) do
	local keyboard, controller = control[1]:match('^(.+)%s?;%s?(.+)$')
	local strg = ("%s: %s, %s: %s"):format(trans_plane.Keyboard, keyboard, trans_plane.Controller, controller)
	menu.action(vehicleWeaponsControl, strg, {}, "", function()
        Config.controls.vehicleweapons = control[2]
    util.show_corner_help(trans_plane.VehicleWeapons:format(name))
	end)
end

local ufoSettings = GT(controlSettings, "UFO", {}, "")

GTTG(ufoSettings, "禁用玩家框", {}, "", function(toggle)
	Config.ufo.disableboxes = toggle
end, Config.ufo.disableboxes)

GTTG(ufoSettings, "仅针对玩家车辆", {}, "使牵引光束忽略非玩家驾驶的载具", function(toggle)
	Config.ufo.targetplayer = toggle
end, Config.ufo.targetplayer)

local unlockplayerveh = GT(carfly, "解锁载具", {}, "", function(); end)

GTLP(unlockplayerveh, "载具引擎快速开启", {}, "减少载具启动引擎时间", function()
    fastoncar()
end)

GTLP(unlockplayerveh, "解锁正在进入的载具", {}, "解锁已锁住的载具,对于锁住的玩家载具同样有效", function()
    unlockcar()
end)

local funfeatures_veh = GT(carfly, '载具玩乐', {}, '')

function get_note(note)
    if type(note) ~= "table" then
        note = {pitch=note}
    end
    if note.length == nil then
        note.length = quarter
    end
    return note
end

function play_note(vehicle, song, note, index)
    note = get_note(note)
    local note_playtime = math.floor(song.beat_length / note.length)
    if note.pitch ~= pause then
        horn_on = true
    end
    wait(note_playtime)
    horn_on = false
    if song.notes[index+1] ~= nil then
        local next_note = get_note(song.notes[index+1])
        if next_note.pitch ~= pause then
            VEHICLE.SET_VEHICLE_MOD(vehicle, MOD_HORN, next_note.pitch)
        end
    end
    wait(song.beat_length - note_playtime)
    end

function play_song(song)
    song.beat_length = math.floor(60000 / song.bpm)
    if not PED.IS_PED_IN_ANY_VEHICLE(PLAYER.PLAYER_PED_ID(), true) then
        util.toast("需要在车内，才能激活歌曲喇叭")
        return
    end
    local vehicle = PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), false)
    if vehicle then
        local original_horn = VEHICLE.GET_VEHICLE_MOD(vehicle, MOD_HORN)
        for index, note in pairs(song.notes) do
            play_note(vehicle, song, note, index)
        end
        VEHICLE.SET_VEHICLE_MOD(vehicle, MOD_HORN, original_horn)
    end
end

function deluxomode(veh, ratio)
    native_invoker.begin_call()
    native_invoker.push_arg_int(vehicle)
    native_invoker.push_arg_float(ratio)
    native_invoker.end_call_2(0xD138FA15C9776837)
end

GTTG(funfeatures_veh, '漏油', {}, '', function (f)
feat = f
    local vehicles
    while feat do
        vehicles = entities.get_all_vehicles_as_handles()
        for i = 1, #vehicles do
            NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(vehicles[i])
            VEHICLE.SET_VEHICLE_CHEAT_POWER_INCREASE(vehicles[i], math.random(1.0, 10.0))
            FIRE.ADD_EXPLOSION(ENTITY.GET_ENTITY_COORDS(vehicles[i]).x,ENTITY.GET_ENTITY_COORDS(vehicles[i]).y,ENTITY.GET_ENTITY_COORDS(vehicles[i]).z,67, 1.0,false, false, 0, players.user())
            wait(10)
        end
    end
end)
--
GTAC(funfeatures_veh,("驾驶超级铲子"), {}, "", function()
    local pos = players.get_position(players.user())
    local hash = util.joaat("dune4")
    ent_func.request_model(hash)
    local vehicle = VEHICLE.CREATE_VEHICLE(hash, pos.x ,pos.y ,pos.z, 0, true, false, true)
    PED.SET_PED_INTO_VEHICLE(players.user_ped(), vehicle, -1)
    for i = 1, 2 do
        local vehicle_model = ENTITY.GET_ENTITY_MODEL(vehicle)
        local left_vehicle = VEHICLE.CREATE_VEHICLE(vehicle_model, pos.x ,pos.y ,pos.z, ENTITY.GET_ENTITY_HEADING(vehicle), true, false, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(left_vehicle, vehicle, 0, -2*i, 0.0, 0.0, 0.0, 0.0, 0.0, true, false, false, false, 0, true)
        local right_vehicle = VEHICLE.CREATE_VEHICLE(vehicle_model, pos.x ,pos.y ,pos.z, ENTITY.GET_ENTITY_HEADING(vehicle), true, false, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(right_vehicle, vehicle, 0, 2*i, 0.0, 0.0, 0.0, 0.0, 0.0, true, false, false, false, 0, true)
        ENTITY.SET_ENTITY_COLLISION(left_vehicle, true, true)
        ENTITY.SET_ENTITY_COLLISION(right_vehicle, true, true)
    end
end)

horn_explosions_opt = GTLP(funfeatures_veh,("喇叭炸弹"), {}, "", function()
	if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) then
	    local vehicle = entities.get_user_vehicle_as_handle(players.user())
	    if AUDIO.IS_HORN_ACTIVE(vehicle) then
            local rand_num = math.random(20, 80)
            local veh_coords_offset = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(vehicle, 0.0, rand_num, 1)
            FIRE.ADD_EXPLOSION(veh_coords_offset.x, veh_coords_offset.y, veh_coords_offset.z, 1, 1.0, true, false, 0.4, false)
            wait(100)
        end
    else
        util.toast("你必须进入车辆来开启此功能")
        menu.set_value(horn_explosions_opt, false)
    end
end)

GTLP(funfeatures_veh, "载具原地升天", {""}, "按Shift，原地起飞", function()
    local my_cur_car = entities.get_user_vehicle_as_handle()
    if not is_user_driving_vehicle() then return end
    local prevPress = PAD.IS_CONTROL_PRESSED(21, 21)
    if PAD.IS_CONTROL_PRESSED(21, 21) then
        local mySpeed = ENTITY.GET_ENTITY_SPEED(my_cur_car)
        ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(my_cur_car, 1, 0, 2, (mySpeed / 10) + 5, 0, true, true, true)
        AUDIO.PLAY_SOUND_FROM_ENTITY(-1, 'Hydraulics_Down', players.user_ped(), 'Lowrider_Super_Mod_Garage_Sounds', true, 20)
    end
end)

GTAC(funfeatures_veh, "生成加速带", {}, "", function() 
    local coords = players.get_position(players.user())
    coords.z = coords.z - 0.2
    local player = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user())
    local heading = ENTITY.GET_ENTITY_HEADING(player)
    local heading = heading + 80
    local boostpad = entities.create_object(3287988974, coords)
    ENTITY.SET_ENTITY_HEADING(boostpad, heading)
end)

local rotation_speed = 50
GTLuaScript.slider(funfeatures_veh,("空中漂移速度"), {"flydriftspeed"} , "", 50, 1000, 50, 50, function(value)
    rotation_speed = value
end)
local vehflyt = require "lib.GTSCRIPTS.GTA.vehflyt"
local vehicle_rotation = nil
set_vehicle_to_cam_rot = GTLP(funfeatures_veh,("载具空中漂移"), {}, "鼠标控制方向", function()
    if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) then
        local veh = entities.get_user_vehicle_as_handle(false)
        local height = ENTITY.GET_ENTITY_HEIGHT_ABOVE_GROUND(veh)
        if height >= 2.0 and not ENTITY.IS_ENTITY_IN_WATER(veh) then
            local cam_rot = CAM.GET_GAMEPLAY_CAM_ROT(0)
            local desired_rotation = vehflyt.from_euler(cam_rot.x, cam_rot.y, cam_rot.z)
            if vehicle_rotation == nil then
                vehicle_rotation = desired_rotation
            else
                vehicle_rotation = slerp(vehicle_rotation, desired_rotation, rotation_speed/1000)
                ENTITY.SET_ENTITY_QUATERNION(veh, vehicle_rotation.x, vehicle_rotation.y, vehicle_rotation.z, vehicle_rotation.w)
            end
        end
    else
        vehicle_rotation = nil
        gtoast("你不在车里")
        menu.set_value(set_vehicle_to_cam_rot, false)
    end
end)

for _, song in pairs(songs) do
    GTAC(funfeatures_veh, "播放 "..song.name, {}, "车辆按喇叭播放歌曲", function()
        play_song(song)
    end)
end

util.create_tick_handler(function()
    if horn_on then
        PAD._SET_CONTROL_NORMAL(0, 86, 1)
    end
    return true
end)

    radio = GT(funfeatures_veh, "更换广播电台", {}, "")
    stations = {}
    for station, name in pairs(station_name) do
        stations[#stations + 1] = station
    end
    GTLuaScript.list_action(radio, "广播电台", {}, "", stations, function(index, value)
        ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        pos = players.get_position(players.user())
        player_veh = PED.GET_VEHICLE_PED_IS_IN(ped)

        if not PED.IS_PED_IN_VEHICLE(ped, player_veh, false) then
            util.toast("玩家不在载具中. :/")
        return end
        radio_name = station_name[value]
        if PED.IS_PED_IN_ANY_VEHICLE(ped, false) then 

            if not VEHICLE.ARE_ANY_VEHICLE_SEATS_FREE(player_veh) then
                util.toast("未能成功更换玩家电台. :/")
            return end

            NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(player_veh)
            if not PED.IS_PED_IN_VEHICLE(players.user_ped(), player_veh, false) then
                ENTITY.SET_ENTITY_VISIBLE(players.user_ped(), false)
                menu.trigger_commands("tpveh" .. players.get_name(pid))
                wait(250)
                AUDIO.SET_VEH_RADIO_STATION(player_veh, radio_name)
                wait(750)
                ENTITY.SET_ENTITY_COORDS_NO_OFFSET(players.user_ped(), pos, false, false, false)
            else
                wait(250)
                AUDIO.SET_VEH_RADIO_STATION(player_veh, radio_name)
            end
        end
    end)

function get_vehicle_dimension(vehicle)
    local minimum = memory.alloc()
    local maximum = memory.alloc()
    MISC.GET_MODEL_DIMENSIONS(ENTITY.GET_ENTITY_MODEL(vehicle), minimum, maximum)
    local minimum_vec = v3.new(minimum)
    local maximum_vec = v3.new(maximum)
    return {x = maximum_vec.y - minimum_vec.y, y = maximum_vec.x - minimum_vec.x, z = maximum_vec.z - minimum_vec.z}
end

function set_attachment_offset_for_root(attachment)
    local root_model = util.reverse_joaat(ENTITY.GET_ENTITY_MODEL(attachment.root))
    local dimensions = get_vehicle_dimension(attachment.handle)

    if root_model == "wastelander" then
        attachment.offset = {
            x=0,
            y=(dimensions.y / 2) - 2,
            z=(dimensions.z / 2) + 0.8
        }
    end

    if root_model == "slamtruck" then
        attachment.offset = {
            x=0,
            y=(dimensions.y / 2) - 3,
            z=(dimensions.z / 2) + 0.3
        }
        attachment.rotation = {
            x=8,
            y=0,
            z=0,
        }
    end

end

function update_attachment_position(attachment)
    if attachment.offset == nil then
        attachment.offset = {x=0,y=0,z=0}
    end
    if attachment.rotation == nil then
        attachment.rotation = {x=0,y=0,z=0}
    end
    if attachment.collision == nil then
        attachment.collision = true
    end
    ENTITY.ATTACH_ENTITY_TO_ENTITY(
        attachment.handle, attachment.root, attachment.bone_index or 0,
        attachment.offset.x or 0, attachment.offset.y or 0, attachment.offset.z or 0,
        attachment.rotation.x or 0, attachment.rotation.y or 0, attachment.rotation.z or 0,
        false, true, attachment.collision, false, 2, true
    )
end

function attach(attachment)
    attachment.position = ENTITY.GET_ENTITY_COORDS(attachment.root)
    ENTITY.SET_ENTITY_HAS_GRAVITY(attachment.handle, false)
    set_attachment_offset_for_root(attachment)
    update_attachment_position(attachment)

    ENTITY.SET_ENTITY_NO_COLLISION_ENTITY(attachment.root, attachment.handle)

    return attachment
end

function detach_attached_vehicle()
    if state.attached_vehicle ~= nil then
        util.toast("已分离")
        ENTITY.DETACH_ENTITY(state.attached_vehicle.handle, true, true)
        state.attached_vehicle = nil
    end
end

function attach_nearest_vehicle()
    local player_vehicle = entities.get_user_vehicle_as_handle()
    if not player_vehicle then
        util.toast("你必须在一辆车里")
        return
    end
    local pos = ENTITY.GET_ENTITY_COORDS(player_vehicle, 1)
    local range = 10
    local nearby_vehicles = entities.get_all_vehicles_as_handles()
    local count = 0
    for _, vehicle_handle in ipairs(nearby_vehicles) do
        if vehicle_handle ~= player_vehicle then
            local attachment = {handle=vehicle_handle, root=player_vehicle}
            attachment.position = ENTITY.GET_ENTITY_COORDS(attachment.handle, 1)
            attachment.distance = SYSTEM.VDIST(pos.x, pos.y, pos.z, attachment.position.x, attachment.position.y, attachment.position.z)
            if attachment.distance <= range then
                --detach_attached_vehicle()
                attachment.name = VEHICLE.GET_DISPLAY_NAME_FROM_VEHICLE_MODEL(ENTITY.GET_ENTITY_MODEL(attachment.handle))
                util.toast("连接 "..attachment.name)
                attach(attachment)
                --state.attached_vehicle = attachment
                return
            end
        end
    end
end

tuochea = GT(funfeatures_veh, "拖车", {}, "", function();end)

GTAC(tuochea, "MTL 拓荒者", {}, "生产一辆MTL 拓荒者", function()
    menu.trigger_commands("wastelander")
end)
GTAC(tuochea, "威皮 大满贯卡车", {}, "生成一辆威皮 大满贯卡车", function()
    menu.trigger_commands("slamtruck")
end)

GTAC(tuochea, "连接", {}, "任何接近的车辆都将连接到您当前的车辆", function()
    attach_nearest_vehicle()
end)

--[[GTAC(tuochea, "分离", {}, "", function()
    detach_attached_vehicle()
end)]]

aircrafthud = GT(funfeatures_veh, "飞机信息显示", {}, "", function();end)

feijihud = GTAC(aircrafthud,"加载飞机信息显示",{"loadF"},"",function()
    wait(1500)
    require("lib/GTSCRIPTS/F")
    menu.delete(feijihud)
end)

dow_block = 0
driveonwater = false
local ls_driveonwater = GTTG(funfeatures_veh, "水上驾驶", {"driveonwater"}, "", function(on)
    driveonwater = on
    if on then
        if driveonair then
            menu.set_value(ls_driveonair, false)
            newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;","~r~已自动关闭,以防止出现问题。", "CHAR_CHOP", 140)
        end
    else
        if not driveonair and not walkonwater then
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(dow_block, 0, 0, 0, false, false, false)
        end
    end
end)

doa_ht = 0
driveonair = false
ls_driveonair = GTTG(funfeatures_veh, "空中驾驶", {"driveonair"}, "", function(on)
    driveonair = on
    if on then
        local pos = players.get_position(players.user())
        doa_ht = pos['z']
        gtoast("使用空格键和ctrl键微调驾驶高度!")
        if driveonwater then
            menu.set_value(ls_driveonwater, false)
            gtoast("水上驾驶已自动关闭,以防止出现问题")
        end
    end
end)

	GTAC(funfeatures_veh, '左侧翻', {}, '', function()
		local vehicle = get_vehicle_player_is_in(players.user())
		if WIRI_ENTITY.DOES_ENTITY_EXIST(vehicle) and WIRI_VEHICLE.IS_VEHICLE_ON_ALL_WHEELS(vehicle) and
		request_control(vehicle, 1000) then
			WIRI_ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 1, 0.0, 0.0, 10.71, 5.0, 0.0, 0.0, 1, false, true, true, true, true)
		end
	end)

	GTAC(funfeatures_veh, '右侧翻', {}, '', function()
		local vehicle = get_vehicle_player_is_in(players.user())
		if WIRI_ENTITY.DOES_ENTITY_EXIST(vehicle) and WIRI_VEHICLE.IS_VEHICLE_ON_ALL_WHEELS(vehicle) and
		request_control(vehicle, 1000) then
			WIRI_ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 1, 0.0, 0.0, 10.71, -5.0, 0.0, 0.0, 1, false, true, true, true, true)
		end
	end)

    GTAC(funfeatures_veh, '双左侧翻', {}, '', function()
		local vehicle = get_vehicle_player_is_in(players.user())
		if WIRI_ENTITY.DOES_ENTITY_EXIST(vehicle) and WIRI_VEHICLE.IS_VEHICLE_ON_ALL_WHEELS(vehicle) and
		request_control(vehicle, 1000) then
			WIRI_ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 1, 0.0, 0.0, 21.43, 20.0, 0.0, 0.0, 1, false, true, true, true, true)
		end
	end)

plscm = menu.list(carfly, T('Los Santos Customs'), {}, '')

pbodym = menu.list(plscm, T('Body Modifications'), {}, T('Only shows what is available to be changed. If they get in a new vehicle back out of Body Modifications to refresh options'))

plighm = menu.list(plscm, T('Lights'), {}, '')

pcolm  = menu.list(plscm, T('Vehicle Colors'), {}, '')

pwmenu = menu.list(plscm, T('Wheels'), {}, '')

pwinmenu = GT(carfly, '控制车窗', {}, '')

local speedometer_plate_root = GT(nfs_cs, "仪表盘设置", {}, "")

local jesus_main = GT(carfly, "自动驾驶", {}, "")

local chauffeur_root = GT(carfly, "司机服务", {}, "呼叫您的私人司机")

local vehicle_fly = GT(carfly, "载具飞行", {}, "")

local rgbvm = GT(carfly, '彩虹载具', {}, '')

vehmenu = {}
menu.on_focus(pbodym, function ()
    for vehmenu as m do
        menu.delete(m)
    end
    vehmenu = {}
    if not players.exists(players.user()) then
        util.stop_thread()
    end
    local pedm = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user())
    local vmod = PED.GET_VEHICLE_PED_IS_IN(pedm, false)
    if PED.IS_PED_IN_ANY_VEHICLE(pedm, false) then
        for Vehopts as v do
            local current = VEHICLE.GET_VEHICLE_MOD(vmod, v[1] -1)
            local maxmods = Getmodcou(players.user(), v[1] - 1)
            if maxmods > 0 then
                local modnames = v[2]
                local s = menu.slider(pbodym, modnames , {''}, '',  -1, maxmods  , current, 1, function (mod)
                    Changemod(players.user(), v[1] -1, mod)
                end)
              table.insert(vehmenu, s)
            wait()
            end
        end

        for Vehtogs as v do
            local current = VEHICLE.IS_TOGGLE_MOD_ON(vmod, v[1] -1)
            local tognames = v[2]
            local t = GTTG(pbodym, tognames, {''}, '', function (on)
                VEHICLE.TOGGLE_VEHICLE_MOD(vmod, v[1] - 1, on)
              end, current)         
            table.insert(vehmenu, t)
            wait()
        end
    end
end)
colmem = {}
util.create_tick_handler(function ()
    colmem.red = memory.alloc()
    colmem.green = memory.alloc()
    colmem.blue = memory.alloc()
    local vcolor = entities.get_user_vehicle_as_handle()
    VEHICLE.GET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vcolor, colmem.red, colmem.green, colmem.blue)
    colmem.sred = memory.alloc()
    colmem.sgreen = memory.alloc()
    colmem.sblue = memory.alloc()
    VEHICLE.GET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vcolor, colmem.sred, colmem.sgreen, colmem.sblue)
end)

pcolor = {}
prgb = {color= {r = memory.read_int(colmem.red) / 255, g =  memory.read_int(colmem.green) / 255, b = memory.read_int(colmem.blue) / 255, a = 1}}
menus.uservehpai = menu.colour(pcolm, T('Primary Color RGB'), {''}, T('Changes the Primary Color on the Vehicle to RGB'), prgb.color, false, function(prbgc)
    prgb.color = prbgc
    local vcolor = entities.get_user_vehicle_as_handle()
    local red = math.floor(prgb.color.r * 255)
    local green = math.floor(prgb.color.g * 255)
    local blue = math.floor(prgb.color.b * 255)
    VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vcolor, red, green, blue)
end)


psrgb = {color= {r = memory.read_int(colmem.sred)/ 255, g =  memory.read_int(colmem.sgreen)/ 255, b = memory.read_int(colmem.sblue) / 255, a = 1}}
menus.uservehspai = menu.colour(pcolm, T('Secondary Color RGB'), {''}, T('Changes the Secondary Color on the Vehicle to RGB'), psrgb.color, false, function(prbgsc)
    psrgb.color = prbgsc
    local vcolor = entities.get_user_vehicle_as_handle()
    local sred = math.floor(psrgb.color.r * 255)
    local sgreen = math.floor(psrgb.color.g * 255)
    local sblue = math.floor(psrgb.color.b * 255)
    VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(vcolor, sred, sgreen, sblue)
end)

GTLuaScript.list_select(pcolm, T('Primary Color'), {''}, T('Changes the Primary Color on the Vehicle'), Mainc, 1, function (t)
    pcolor.prim = t - 1
    Changecolor(players.user(), pcolor)
end)

GTLuaScript.list_select(pcolm, T('Secondary Color'), {''}, T('Changes the Secondary Color on the Vehicle'), Mainc, 1, function (t)
    pcolor.sec = t - 1
    Changecolor(players.user(), pcolor)
end)

GTLuaScript.list_select(pcolm, T('Pearlescent Color'), {''}, T('Changes the Pearlescent Color on the Vehicle'), Mainc, 1, function (t)
    pcolor.per = t - 1
    Changewhepercolor(players.user(), pcolor)
end)

GTLuaScript.list_select(pcolm, T('Wheel Color'), {''}, T('Changes the Wheel Color on the Vehicle'), Mainc, 1, function (t)
    pcolor.whe = t - 1
    Changewhepercolor(players.user(), pcolor)
end)

GTLuaScript.list_select(pcolm, T('Interior Color'), {''}, T('Changes the Interior Color on the Vehicle'), Mainc, 1, function (t)
    pcolor.int = t - 1
    Changeintcolor(players.user(), pcolor.int)
end)

GTLuaScript.list_select(pcolm, T('Dashboard Color'), {''}, T('Changes the Dashboard Color on the Vehicle'), Mainc, 1, function (t)
    pcolor.das = t - 1
    Changedashcolor(players.user(), pcolor.das)
end)

GTLuaScript.list_select(plighm, T('Neons'), {''}, T('Changes the Neons to different colors'), Mainc, 1, function(c)
    local ncolor = c - 1
    Changeneon(players.user(), ncolor)
end)

GTLuaScript.list_select(plscm, T('Window Tints'), {''}, T('Changes the Tint on the Vehicle'), Til, 1, function (t)
    local tint = t - 1
    Changetint(players.user(), tint)
end)

GTLuaScript.list_select(plighm, T('Headlights'), {''}, T('Changes the Headlights to different colors'), Lighc, 1, function(c)
    local hcolor = c - 1
    Changehead(players.user(), hcolor)
end)

pnrgb = {color= {r= 0, g = 1, b = 0, a = 1}}

menu.action(plighm, T('Change RGB Neons'), {}, T('Change the Color for the Neons to RGB of your choice'), function ()
    local pedm = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user())
    local vmod = PED.GET_VEHICLE_PED_IS_IN(pedm, false)
    RGBNeonKit(pedm)
    local red = math.floor(pnrgb.color.r * 255)
    local green = math.floor(pnrgb.color.g * 255)
    local blue = math.floor(pnrgb.color.b * 255)
    VEHICLE.SET_VEHICLE_NEON_COLOUR(vmod, red, green, blue)
end)

menu.colour(plighm, T('RGB Neon Color'), {'rgbsc'}, T('Choose the Color for the Neons be changed to '), pnrgb.color, false, function(ncolor)
    pnrgb.color = ncolor
end)

GTLuaScript.list_select(pwmenu, T('Bennys Bespoke'), {''}, T('Changes the wheels to Bennys Bespoke wheels'), Bbw, 1, function(w)
    local wheel = w - 1
    Changewheel(players.user(), 9, wheel)
end)


GTLuaScript.list_select(pwmenu, T('Bennys Originals'), {''}, T('Changes the wheels to Bennys Originals wheels'), Bow, 1, function(w)
    local wheel = w - 1
    Changewheel(players.user(), 8, wheel)
end)


GTLuaScript.list_select(pwmenu, T('Bike'), {''}, T('Changes the wheels to Bike(motorcycle) wheels'), Bw, 1, function(w)
    local wheel = w - 1
    Changewheel(players.user(), 6, wheel)
end)


GTLuaScript.list_select(pwmenu, T('High End'), {''}, T('Changes the wheels to High End wheels'), Hew, 1, function(w)
    local wheel = w - 1
    Changewheel(players.user(), 7, wheel)
end)


GTLuaScript.list_select(pwmenu, T('Lowrider'), {''}, T('Changes the wheels to Lowrider wheels'), Lw, 1, function(w)
    local wheel = w - 1
    Changewheel(players.user(), 2, wheel)
end)

GTLuaScript.list_select(pwmenu, T('Muscle'), {''}, T('Changes the wheels to Muscle wheels'), Mw, 1, function(w)
    local wheel = w - 1
    Changewheel(players.user(), 1, wheel)
end)

GTLuaScript.list_select(pwmenu, T('Offroad'), {''}, T('Changes the wheels to Offroad wheels'), Orw, 1, function(w)
    local wheel = w - 1
    Changewheel(players.user(), 4, wheel)
end)


GTLuaScript.list_select(pwmenu, T('Racing(Formula 1 Wheels)'), {''}, T('Changes the wheels to Racing(Formula 1 Wheels) wheels'), Rw, 1, function(w)
    local wheel = w - 1
    Changewheel(players.user(), 10, wheel)
end)


GTLuaScript.list_select(pwmenu, T('Sport'), {''}, T('Changes the wheels to Sport wheels'), Spw, 1, function(w)
    local wheel = w - 1
    Changewheel(players.user(), 0, wheel)
end)


GTLuaScript.list_select(pwmenu, T('Street'), {''}, T('Changes the wheels to Street wheels'), Stw, 1, function(w)
    local wheel = w - 1
    Changewheel(players.user(), 11, wheel)
end)


GTLuaScript.list_select(pwmenu, T('SUV'), {''}, T('Changes the wheels to SUV wheels'), Suw, 1, function(w)
    local wheel = w - 1
    Changewheel(players.user(), 3, wheel)
end)

GTLuaScript.list_select(pwmenu, T('Tracks'), {''}, T('Changes the wheels to Track wheels'), Trw, 1, function(w)
    local wheel = w - 1
    Changewheel(players.user(), 12, wheel)
end)


GTLuaScript.list_select(pwmenu, T('Tuner'), {''}, T('Changes the wheels to Tuner wheels'), Tuw, 1, function(w)
    local wheel = w - 1
    Changewheel(players.user(), 5, wheel)
end)

GTAC(pwinmenu, '卷起所有窗口', {'upwin'}, '立即卷起所有窗口', function ()
        Rollaup(players.user())
end)

GTAC(pwinmenu, '滚下所有窗户', {'downwin'}, '立即滚下所有窗口', function ()
        Rolladown(players.user())
end)

winmen = GT(pwinmenu, '上下卷窗', {''}, '上下滚动单个窗口')
        
for index, name in ipairs(Windows) do
    GTTG(winmen, '向上或向下滚动 '..name, {''}, '向上或向下滚动 '..name, function (on)
        local win = index - 1
        local curcar = entities.get_user_vehicle_as_handle()
        local winup= on
        if winup ~= nil then
            if winup then
                VEHICLE.ROLL_DOWN_WINDOW(curcar, win)
            else
                VEHICLE.ROLL_UP_WINDOW(curcar, win)
            end
        end
    end)
end

GTAC(funfeatures_veh, "弹射起步", {}, "极速", function(on)
    boost_player_vehicle_forward(on)
end)

local nitro_duration = 5000
local nitro_power = 2000
GTLP(funfeatures_veh, "氮气加速", {}, "进入载具内按X", function(toggle)
    if WIRI_PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) and player_cur_car ~= 0 then
        if WIRI_PAD.IS_CONTROL_JUST_PRESSED(357, 357) then 
            request_ptfx_asset('veh_xs_vehicle_mods')
            VEHICLE.SET_OVERRIDE_NITROUS_LEVEL(player_cur_car, true, 100, nitro_power, 99999999999, false)
            ENTITY.SET_ENTITY_MAX_SPEED(player_cur_car, 2000)
            VEHICLE.SET_VEHICLE_MAX_SPEED(player_cur_car, 2000)
            wait(nitro_duration)
            VEHICLE.SET_OVERRIDE_NITROUS_LEVEL(player_cur_car, false, 0, 0, 0, false)
            VEHICLE.SET_VEHICLE_MAX_SPEED(player_cur_car, 0.0)
        end
    end
end)

GTluaScript.slider(funfeatures_veh, "氮气时间", {"nitroduration"}, "设定氮气的事件数值", 1, 30, 5, 1, function(val)
    nitro_duration = val * 1000
end)

GTluaScript.slider(funfeatures_veh, "氮气速度", {"nitropower"}, "设定氮气的加速度数值", 1, 10000, 2000, 50, function(val)
    nitro_power = val
end)

cur_v_stance = 0.0
GTluaScript.click_slider_float(funfeatures_veh, "调整轮胎", {""}, "", 0, 25000, 0, 100, function(s)
    cur_v_stance = s * -0.001
    if player_cur_car ~= 0 then
        set_vehicle_handling_value(player_cur_car, 0xD0, cur_v_stance)
    end
end)

GTLP(funfeatures_veh,  "喇叭加速", {}, "按E加速", function(toggle)
    if player_cur_car ~= 0 then
        VEHICLE.SET_VEHICLE_ALARM(player_cur_car, false)
        if AUDIO.IS_HORN_ACTIVE(player_cur_car) then
            ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(player_cur_car, 1, 0.0, 1.0, 0.0, true, true, true, true)
        end
    end
end)

GTLP(funfeatures_veh, "载具平移", {}, "使用左右箭头键使车辆水平移动", function(toggle)
    if player_cur_car ~= 0 then
        local rot = ENTITY.GET_ENTITY_ROTATION(player_cur_car, 0)
        if PAD.IS_CONTROL_PRESSED(175, 175) then
            ENTITY.APPLY_FORCE_TO_ENTITY(player_cur_car, 1, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, true, true, true, false, true)
            ENTITY.SET_ENTITY_ROTATION(player_cur_car, rot['x'], rot['y'], rot['z'], 0, true)
        end
        if PAD.IS_CONTROL_PRESSED(174, 174) then
            ENTITY.APPLY_FORCE_TO_ENTITY(player_cur_car, 1, -1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, true, true, true, false, true)
            ENTITY.SET_ENTITY_ROTATION(player_cur_car, rot['x'], rot['y'], rot['z'], 0, true)
        end
    end
end)

GTLP(funfeatures_veh, "绕过防锁定", {}, "绕过锁定限制", function()
    for _, pid in ipairs(players.list(false, true, true)) do
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local veh = PED.GET_VEHICLE_PED_IS_USING(ped)
        if PED.IS_PED_IN_ANY_VEHICLE(ped, false) then
            VEHICLE.SET_VEHICLE_ALLOW_HOMING_MISSLE_LOCKON_SYNCED(veh, true)
        end
    end
end)

local veh_jump = GT(funfeatures_veh, "车辆跳跃")
local force = 25.00
GTluaScript.slider_float(veh_jump, "跳跃倍率", {"jumpiness"}, "", 0, 10000, 2500, 100, function(value)
    force = value / 100
end)
GTLP(veh_jump, "启动", {"vehiclejump"}, "按空格键跳跃", function()
    local veh = entities.get_user_vehicle_as_handle()
    if veh ~= 0 and ENTITY.DOES_ENTITY_EXIST(veh) and PAD.IS_CONTROL_JUST_RELEASED(0, 102) then
        ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, 0.0, force/1.5, force, 0.0, 0.0, 0.0, 0, 1, 1, 1, 0, 1)
        repeat
            wait()
        until not ENTITY.IS_ENTITY_IN_AIR(veh)
    end
end)
vslamforce = 20
GTLP(funfeatures_veh, "车辆下降", {"vslamforce"}, "按ctrl", function(toggle)
    if player_cur_car ~= 0 then
        if PAD.IS_CONTROL_JUST_PRESSED(36,36) then
            ENTITY.APPLY_FORCE_TO_ENTITY(player_cur_car, 1, 0.0, 0.0, -vslamforce, 0.0, 0.0, 0.0, 0, true, true, true, false, true)
        end
    end
end)

--[[GTLP(funfeatures_veh, "转向灯", {}, "AD键", function()
    if(PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false)) then
        local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
        local left = PAD.IS_CONTROL_PRESSED(34, 34)
        local right = PAD.IS_CONTROL_PRESSED(35, 35)
        local rear = PAD.IS_CONTROL_PRESSED(130, 130)
        if left and not right and not rear then
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 1, true)
        elseif right and not left and not rear then
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 0, true)
        elseif rear and not left and not right then
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 1, true)
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 0, true)
        else
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 0, false)
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 1, false)
        end
    end
end)]]

GTTG(funfeatures_veh, "车辆变形", {}, "载具不能是无敌的\n关闭载具修复功能", function(toggled)
    if toggled then
        menu.trigger_commands("vhdeformationmult 10000.0")
    else
        menu.trigger_commands("vhdeformationmult 1.00")
    end
end)

local seat_id = -1
local moved_seat = GTluaScript.click_slider(funfeatures_veh, "更换车辆座位", {}, "", 1, 1, 1, 1, function(seat_id)
    TASK.TASK_WARP_PED_INTO_VEHICLE(players.user_ped(), entities.get_user_vehicle_as_handle(), seat_id - 2)
end)

GTluaScript.on_tick_in_viewport(moved_seat, function()
    if not PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) then
        moved_seat.max_value = 0
    return end

    if not PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) then
        moved_seat.max_value = 0
    return end
    
    moved_seat.max_value = VEHICLE.GET_VEHICLE_MODEL_NUMBER_OF_SEATS(ENTITY.GET_ENTITY_MODEL(entities.get_user_vehicle_as_handle()))
end)

GTLP(funfeatures_veh, "贴地/贴墙", {}, "让您的车辆停在地上,也能粘在墙上", function(on)
    if player_cur_car ~= 0 then
        local vel = ENTITY.GET_ENTITY_VELOCITY(player_cur_car)
        vel['z'] = -vel['z']
        ENTITY.APPLY_FORCE_TO_ENTITY(player_cur_car, 2, 0, 0, -50 -vel['z'], 0, 0, 0, 0, true, false, true, false, true)
    end
end)

GTAC(funfeatures_veh, "车辆反转", {}, "使您在保持动力的情况下转弯\n建议对此进行绑定专属按键喔", function(click_type)
    if player_cur_car ~= 0 then
        local rot = ENTITY.GET_ENTITY_ROTATION(player_cur_car, 0)
        local vel = ENTITY.GET_ENTITY_VELOCITY(player_cur_car)
        ENTITY.SET_ENTITY_ROTATION(player_cur_car, rot['x'], rot['y'], rot['z']+180, 0, true)
        ENTITY.SET_ENTITY_VELOCITY(player_cur_car, -vel['x'], -vel['y'], vel['z'])
    end
end)

GTLP(funfeatures_veh, "显示车辆角度", {"carangle"}, "", function()
    if player_cur_car ~= 0 and PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then
        local ang = math.abs(math.ceil(math.abs(ENTITY.GET_ENTITY_ROTATION(player_cur_car, 0).z) - math.abs(CAM.GET_GAMEPLAY_CAM_ROT(0).z)))
        directx.draw_text(0.5, 1.0, tostring(ang) .. '°', 5, 1.4, {r=1, g=1, b=1, a=1}, true)
    end
end)

manual_transmission_list = GT(funfeatures_veh, "手动加减档", {}, "" )
manual_mode = false 
GTTG(manual_transmission_list, "手动模式开启", {}, "", function(on)
    manual_mode = on
    while true do 
        if player_cur_car ~= 0 then 
            local addr = entities.get_user_vehicle_as_pointer()
            local cur_gear = entities.get_current_gear(addr)
            local next_gear = entities.get_next_gear(addr)
            if not manual_mode then 
                entities.set_next_gear(addr, next_gear)
                break 
            end
            if m_shift_up_this_frame then
                if cur_gear ~= 6 then
                    entities.set_next_gear(addr, cur_gear + 1)
                end
                m_shift_up_this_frame = false 
            elseif m_shift_down_this_frame then 
                if cur_gear > 1 then 
                    entities.set_next_gear(addr, cur_gear - 1)
                end
                m_shift_down_this_frame = false 
            else
                entities.set_next_gear(addr, cur_gear)
            end
        end
        wait()
    end
end)

GTAC(manual_transmission_list, "下一档", {}, "", function()
    if player_cur_car ~= 0 then 
        m_shift_up_this_frame = true 
    end
end)

GTAC(manual_transmission_list, "上一档", {}, "", function()
    if player_cur_car ~= 0 then 
        m_shift_down_this_frame = true 
    end
end)

local resources_dir = filesystem.scripts_dir() .. '\\GTLuaScript\\'.. '\\chesubiao\\'
needle = directx.create_texture(resources_dir .. 'needle.png')
speedometer_case = directx.create_texture(resources_dir .. 'speedometer_case.png')
check_engine_light = directx.create_texture(resources_dir .. 'check_engine.png')
tach_case = directx.create_texture(resources_dir .. 'tach_case.png')
high_beam = directx.create_texture(resources_dir .. 'highbeam.png')
low_beam = directx.create_texture(resources_dir .. 'lowbeam.png')
tpms = directx.create_texture(resources_dir .. 'tpms.png')

traction_control = directx.create_texture(resources_dir .. 'traction.png')

driftmodee = GT(funfeatures_veh, "漂移ABS模式", {}, "附有辅助牵引的漂移模式")
 gs_driftMinSpeed = 8.0
 gs_driftMaxAngle = 50.0
 ControlVehicleAccelerate = 71
 ControlVehicleBrake = 72
 ControlVehicleDuck = 73
 ControlVehicleSelectNextWeapon = 99
 ControlVehicleMoveUpOnly = 61
 INPUT_FRONTEND_LS = 209
 DriftActivateKeyboard = INPUT_FRONTEND_LS
 CurrentGearOffset = memory.scan("A8 02 0F 84 ? ? ? ? 0F B7 86")+11
NextGearOffset = memory.scan("A8 02 0F 84 ? ? ? ? 0F B7 86")+18
 isDrifting      = 0
 wasDrifting     = 0
 isDriftFinished = 1
 prevGripState   = 0
 lastDriftAngle  = 0.0
 oldGripState    = 0
 debug_notification = 0
 textDrawCol = {
    r = 255,
    g = 255,
    b = 255,
    a = 255
}
 function getCurGear()
    return memory.read_byte(entities.get_user_vehicle_as_pointer() +memory.read_int(CurrentGearOffset))
end

 function getNextGear()
    return memory.read_byte(entities.get_user_vehicle_as_pointer() +memory.read_int(NextGearOffset))
end

 function setCurGear(gear)
    memory.write_byte(entities.get_user_vehicle_as_pointer() +memory.read_int(CurrentGearOffset), gear)
end
 function setNextGear(gear)
    memory.write_byte(entities.get_user_vehicle_as_pointer() +memory.read_int(NextGearOffset), gear)
end
 function getHeadingOfTravel(veh) 
    local velocity = ENTITY.GET_ENTITY_VELOCITY(veh)
    local x = velocity.x
    local y = velocity.y
    local at2 = math.atan(y, x)
    return math.fmod(270.0 + math.deg(at2), 360.0)
end
 function getCurrentVehicle() 
	local player_id = PLAYER.PLAYER_ID()
	local player_ped = PLAYER.GET_PLAYER_PED(player_id)
    local player_vehicle = 0
    if (PED.IS_PED_IN_ANY_VEHICLE(player_ped)) then
        veh = PED.GET_VEHICLE_PED_IS_USING(player_ped)
        if (NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(veh)) then
            player_vehicle = veh
        end 
    end
    return player_vehicle
end
function wrap360(val) 
    while (val < 0.0) do
        val = val + 360.0
    end
    while (val > 360.0) do
        val = val - 360.0
    end
    return val
end
function slamDatBitch(veh, height) 
    if (VEHICLE.IS_VEHICLE_ON_ALL_WHEELS(veh) and not ENTITY.IS_ENTITY_IN_AIR(veh)) then
     
        ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1,    0, 0, height,    0, 0, 0,   true, true)
    end
end
function driftmod_ontick() 
    local player = players.user()
    local veh = getCurrentVehicle()
    local inVehicle   = veh ~= 0
    local isDriving   = true
    local mps = ENTITY.GET_ENTITY_SPEED(veh)
    local mph       = mps * 2.23694
    local kmh       = mps * 3.6
    if inVehicle and isDriving and not isDrifting and not isDriftFinished then
        isDriftFinished = true
    end
    if not inVehicle or not isDriving then
        return
    end
    local driftKeyPressed = PAD.IS_CONTROL_PRESSED(2, ControlVehicleDuck) or PAD.IS_DISABLED_CONTROL_PRESSED(2, ControlVehicleDuck) or PAD.IS_CONTROL_PRESSED(0, DriftActivateKeyboard) or PAD.IS_DISABLED_CONTROL_PRESSED(0, DriftActivateKeyboard)
    if (driftKeyPressed and getCurGear(veh) > 2) then
        setCurGear(2)
        setNextGear(2)
    end
    if driftKeyPressed then
        if (PAD.GET_CONTROL_NORMAL(2, ControlVehicleBrake) > 0.1) then
            PAD.SET_CONTROL_VALUE_NEXT_FRAME(0, ControlVehicleBrake, 0)
            local neg = -0.3

            if (PAD.IS_CONTROL_PRESSED(2, ControlVehicleSelectNextWeapon)) then
                neg = 10
            end
            slamDatBitch(veh, neg * 1 * PAD.GET_CONTROL_NORMAL(2, ControlVehicleBrake))
        end 
        local angleOfTravel  = getHeadingOfTravel(veh)
        local angleOfHeading = ENTITY.GET_ENTITY_HEADING_FROM_EULERS(veh)
        local driftAngle = angleOfHeading - angleOfTravel
        if driftAngle and lastDriftAngle then
            local diff = driftAngle - lastDriftAngle

            if diff > 180.0 then
                driftAngle = driftAngle - 360.0
            end
            if diff < 180.0 then
                driftAngle = driftAngle - 360.0
            end
        end
        driftAngle     = wrap360(driftAngle)
        lastDriftAngle = driftAngle
        local zeroBasedDriftAngle = 360 - driftAngle
        if zeroBasedDriftAngle > 180 then
            zeroBasedDriftAngle = 0 - (360 - zeroBasedDriftAngle)
        end
        directx.draw_text(0,0,"                   漂移角度: " .. math.floor(zeroBasedDriftAngle) .. "°", ALIGN_TOP_CENTRE,1,textDrawCol)
        local done = false
        if ((isDrifting or kmh > gs_driftMinSpeed) and (math.abs(driftAngle - 360.0) < gs_driftMaxAngle) or (driftAngle < gs_driftMaxAngle)) then
            isDrifting      = 1
            isDriftFinished = 1;  -- Doesn't get set to 0 until isDrifting is 0.

            if driftKeyPressed then
                 
                if driftKeyPressed ~= oldGripState then
                    VEHICLE.SET_VEHICLE_REDUCE_GRIP(veh, driftKeyPressed)
                    oldGripState = driftKeyPressed
                end
            end
            done = true
        end
        if not done and kmh < gs_driftMinSpeed then
            if driftKeyPressed then
                if driftKeyPressed ~= oldGripState then
                    VEHICLE.SET_VEHICLE_REDUCE_GRIP(veh, driftKeyPressed)
                    oldGripState = driftKeyPressed
                end
            end
            done = true
        end
        if not done then
            if driftKeyPressed == oldGripState then
                VEHICLE.SET_VEHICLE_REDUCE_GRIP(veh, false)
                oldGripState = 0
            end
            if math.abs(zeroBasedDriftAngle) > gs_driftMaxAngle then
                if zeroBasedDriftAngle > 0 then
                    VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(veh, 0, true)
                    VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(veh, 1, false)
                    newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;","~r~漂移辅助ABS系统：请您反向左转", "CHAR_CHOP", 140)
                    VEHICLE.SET_VEHICLE_STEER_BIAS(veh, math.rad(zeroBasedDriftAngle * 0.69))
                else
                    VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(veh, 1, true)
                    VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(veh, 0, false)
              
                    newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;","~r~漂移辅助ABS系统：请您反向右转", "CHAR_CHOP", 140)

                    VEHICLE.SET_VEHICLE_STEER_BIAS(veh, math.rad(zeroBasedDriftAngle * 0.69))
      
                end
            end
		else 
			VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(veh, 0, false)
			VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(veh, 1, false)
        end
    end
    if not driftKeyPressed and prevGripState then
        isDrifting      = 0
        isDriftFinished = 0
        lastDriftAngle = 0

        if driftKeyPressed ~= oldGripState then
            VEHICLE.SET_VEHICLE_REDUCE_GRIP(veh, driftKeyPressed)
            oldGripState = driftKeyPressed
        end
    end
    prevGripState = driftKeyPressed
    if isDrifting ~= wasDrifting then
        wasDrifting     = isDrifting
        changedDrifting = true
    end
end

GTLP(driftmodee,"开启", {},"按住shift键进行漂移",function(on)
	driftmod_ontick()
end)
driftSetings = GT(driftmodee, "设置", {}, "")

GTluaScript.slider(driftSetings,"最小速度", {"minispeed"}, "", 0, 10000, gs_driftMinSpeed*100, 1, function(on)
    gs_driftMinSpeed = on/100
end)

GTluaScript.slider(driftSetings,"最大角度", {"maxangle"}, "", 0, 10000,gs_driftMaxAngle*100, 1, function(on)
    gs_driftMaxAngle = on/100
end)

GTluaScript.colour(driftSetings,"文本颜色", {}, "", textDrawCol,true , function(newCol)
    textDrawCol = newCol
end)

GTLP(funfeatures_veh, "漂移模式(手动)", {"dshiftdrift"}, "按住shift进行漂移", function(on)
    if PAD.IS_CONTROL_PRESSED(21, 21) then
        VEHICLE.SET_VEHICLE_REDUCE_GRIP(player_cur_car, true)
        VEHICLE.SET_VEHICLE_REDUCE_GRIP_LEVEL(player_cur_car, 0.0)
    else
        VEHICLE.SET_VEHICLE_REDUCE_GRIP(player_cur_car, false)
    end
end)

GTTG(funfeatures_veh, "头文字D模式", {"initiald"}, "应用预定义的载具操纵配置\n使车辆能够产生漂移的效果\n这不会神奇地让你成为漂移高手喔\n也不会神奇地使每辆车都擅长漂移", function(on, click_type)
    initial_d_mode = on
    initial_d_score_thread()
    if player_cur_car ~= 0 then 
        if on then
            set_vehicle_into_drift_mode(player_cur_car)
        else
            for offset, value in pairs(last_vehicle_handling_data) do
                set_vehicle_handling_value(player_cur_car, offset, value)
            end
        end
    end
end)

GTLP(funfeatures_veh,  "相机方向推力", {"thrustindir"}, "按住X并保持此状态\n将载具推向摄相机的方向视角,用于维持漂移状态", function(on)
    if player_cur_car ~= 0 and PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then 
        if util.is_key_down("X") then 
            cam_direction()
        else 
            before_vel = ENTITY.GET_ENTITY_VELOCITY(player_cur_car)
        end
    end
end)
GTluaScript.slider_float(funfeatures_veh, "相机方向推力的速度", {"thrustindiradd"}, "设定相机方向推力的额外速度数值", 0, 3000, 125, 1, function(s)
    thrust_cam_dir_add = s * -0.001
end)

veh_func = GT(carfly, '载具功能', {}, '')

----------------------
-- 运兵直升机连接
----------------------
Cargobob_Pickup = menu.list(veh_func, "运兵直升机连接", {}, "")

menu.toggle_loop(Cargobob_Pickup, "连接最近的载具[H键]", {}, "进入运兵直升机后,按H键连接距离最近的载具",
    function()
        local cargobob = get_player_cargobob()
        if cargobob ~= 0 then
            local ent = VEHICLE.GET_ENTITY_ATTACHED_TO_CARGOBOB(cargobob)
            if not ENTITY.DOES_ENTITY_EXIST(ent) then
                local veh = get_closest_vehicle_to_player(cargobob_pickup_setting.radius)
                if ENTITY.DOES_ENTITY_EXIST(veh) then
                    if cargobob_pickup_setting.draw_line then
                        local player_pos = ENTITY.GET_ENTITY_COORDS(players.user_ped())
                        DRAW_LINE(player_pos, ENTITY.GET_ENTITY_COORDS(veh))
                    end

                    if PAD.IS_CONTROL_JUST_RELEASED(2, 104) then -- INPUT_VEH_SHUFFLE
                        if not RequestControl(veh) then
                            util.toast("未能成功控制载具")
                        end

                        VEHICLE.SET_VEHICLE_ON_GROUND_PROPERLY(veh, 5.0)

                        if not VEHICLE.DOES_CARGOBOB_HAVE_PICK_UP_ROPE(cargobob) then
                            VEHICLE.CREATE_PICK_UP_ROPE_FOR_CARGOBOB(cargobob, 0)
                        end

                        ENTITY.SET_PICK_UP_BY_CARGOBOB_DISABLED(veh, false)

                        if not VEHICLE.CAN_CARGOBOB_PICK_UP_ENTITY(cargobob, veh) then
                            util.toast("无法吊起")
                        end

                        VEHICLE.ATTACH_VEHICLE_TO_CARGOBOB(cargobob, veh, cargobob_pickup_setting.bone,
                            cargobob_pickup_setting.x, cargobob_pickup_setting.y, cargobob_pickup_setting.z)
                    end
                end
            end
        end
    end)

menu.action(Cargobob_Pickup, "强制分离连接的载具", {}, "", function()
    local cargobob = get_player_cargobob()
    if cargobob ~= 0 then
        local ent = VEHICLE.GET_ENTITY_ATTACHED_TO_CARGOBOB(cargobob)
        if ENTITY.DOES_ENTITY_EXIST(ent) then
            VEHICLE.SET_CARGOBOB_FORCE_DONT_DETACH_VEHICLE(cargobob, false)
            VEHICLE.DETACH_ENTITY_FROM_CARGOBOB(cargobob, ent)
        end
    end
end)
menu.toggle(Cargobob_Pickup, "强制无法分离载具", {}, "即使按E也无法分离连接的载具", function(toggle)
    local cargobob = get_player_cargobob()
    if cargobob ~= 0 then
        VEHICLE.SET_CARGOBOB_FORCE_DONT_DETACH_VEHICLE(cargobob, toggle)
    end
end)

menu.divider(Cargobob_Pickup, "设置")
menu.toggle(Cargobob_Pickup, "连线指示", {}, "", function(toggle)
    cargobob_pickup_setting.draw_line = toggle
end, true)
menu.slider(Cargobob_Pickup, "范围半径", { "" }, "获取最近距离载具的范围",
    0, 10000, 30, 5,
    function(value)
        cargobob_pickup_setting.radius = value
    end)
menu.slider(Cargobob_Pickup, "高度判断", { "" }, "", -1, 16777216, -1, 1, function(value)
    cargobob_pickup_setting.bone = value
end)
menu.slider_float(Cargobob_Pickup, "X", { "" }, "", -10000, 10000, 0, 10, function(value)
    cargobob_pickup_setting.x = value * 0.01
end)
menu.slider_float(Cargobob_Pickup, "Y", { "" }, "", -10000, 10000, 0, 10, function(value)
    cargobob_pickup_setting.y = value * 0.01
end)
menu.slider_float(Cargobob_Pickup, "Z", { "" }, "", -10000, 10000, -100, 10, function(value)
    cargobob_pickup_setting.z = value * 0.01
end)

local vehicle_coords_on_stop = nil
GTLP(veh_func,"防止MK2怠速下降", {}, "只能片面的防止一下", function()
    if is_ped_in_any_vehicle(players.user_ped(), false) then
        if util.get_label_text(players.get_vehicle_model(players.user())) == "Oppressor Mk II" then
            local vehicle = entities.get_user_vehicle_as_handle(false)
            local speed = math.ceil(get_entity_speed(vehicle))
            if speed > 3 or is_control_pressed(0, 71) or is_control_pressed(0, 72) or is_control_pressed(0, 63) or is_control_pressed(0, 64) or is_control_pressed(0, 61) or is_control_pressed(0, 62) then
                vehicle_coords_on_stop = nil
            else
                if vehicle_coords_on_stop == nil then
                    vehicle_coords_on_stop = get_entity_coords(vehicle)
                end
                if get_entity_height_above_ground(vehicle) >= 3 then
                    local current_coords = get_entity_coords(vehicle)
                    set_entity_coords(vehicle, current_coords.x, current_coords.y, vehicle_coords_on_stop.z, false, false, false, false)
                end
            end
        end
    end
end)

GTTG(veh_func, '自动修理载具', {"mint"}, '', function (on)
if on then
GTluaScript.trigger_commands("mint on")
else
GTluaScript.trigger_commands("mint off")
end
end)

GTLP(veh_func, "转向指示灯", {}, "", function()
    if(PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false)) then
        local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)

        local left = PAD.IS_CONTROL_PRESSED(34, 34)
        local right = PAD.IS_CONTROL_PRESSED(35, 35)
        local rear = PAD.IS_CONTROL_PRESSED(130, 130)

        if left and not right and not rear then
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 1, true)
        elseif right and not left and not rear then
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 0, true)
        elseif rear and not left and not right then
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 1, true)
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 0, true)
        else
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 0, false)
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 1, false)
        end
    end
end)

indicator_lights_list = GT(veh_func,"手动转向灯",{},"您可以设置快捷键,体验更真实的驾驶")

all_lights_opt = GTTG(indicator_lights_list,("危险双闪"), {}, "", function(on)
    if on then
        if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) then
            local vehicle = entities.get_user_vehicle_as_handle(players.user())
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 0, true)
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 1, true)
        else
            notify(T("not_in_vehicle"), notif_off)
            menu.set_value(all_lights_opt, false)
        end
    end
    if not on then
        if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) then
            local vehicle = entities.get_user_vehicle_as_handle(players.user())
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 0, false)
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 1, false)
        end
    end
end)

right_lights_opt = GTTG(indicator_lights_list,("左转向灯"), {}, "", function(on)
    if on then
        if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) then
            local vehicle = entities.get_user_vehicle_as_handle(players.user())
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 0, true)
        else
            notify(T("not_in_vehicle"), notif_off)
            menu.set_value(right_lights_opt, false)
        end
    end
    if not on then
        if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) then
            local vehicle = entities.get_user_vehicle_as_handle(players.user())
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 0, false)
        end
    end
end)

left_lights_opt = GTTG(indicator_lights_list,("右转向灯"), {}, "", function(on)
    if on then
        if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) then
            local vehicle = entities.get_user_vehicle_as_handle(players.user())
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 1, true)
        else
            notify(T("not_in_vehicle"), notif_off)
            menu.set_value(left_lights_opt, false)
        end
    end
    if not on then
        if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) then
            local vehicle = entities.get_user_vehicle_as_handle(players.user())
            VEHICLE.SET_VEHICLE_INDICATOR_LIGHTS(vehicle, 1, false)
        end
    end
end)

GTTG(veh_func, '载具无敌', {"vehgodmode"}, '', function (on)
if on then
GTluaScript.trigger_commands("vehgodmode on")
else
GTluaScript.trigger_commands("vehgodmode off")
end
end)

GTAC(veh_func, '摧毁载具', {"destroyvehicle"}, '', function ()
GTluaScript.trigger_commands("destroyvehicle")
end)

GTAC(veh_func, '删除载具', {""}, '', function ()
GTluaScript.trigger_commands("deletevehicle")
end)

GTAC(veh_func,"进入最近车辆", {}, "", function()
	if not PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) then
		local player_pos = players.get_position(players.user())
		local veh = ent_func.getClosestVehicle(player_pos)
		local ped = VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, -1, true)
		if PED.IS_PED_A_PLAYER(ped) then
		else
		    entities.delete_by_handle(ped)
			PED.SET_PED_INTO_VEHICLE(players.user_ped(), veh, -1)
		end
	end
end)

GTLP(veh_func, translate("Vehicle", "引擎保持启动"), {"alwayson"}, "", function()
	if PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) then
		local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
		VEHICLE.SET_VEHICLE_ENGINE_ON(vehicle, true, true, true)
		VEHICLE.SET_VEHICLE_LIGHTS(vehicle, 0)
		VEHICLE.SET_VEHICLE_HEADLIGHT_SHADOWS(vehicle, 2)
	end
end)

icluster = GT(speedometer_plate_root, "仪表盘位置", {}, "", function();end)

unit = 1
GTLuaScript.list_select(icluster, "单位", {"iclusterunits"}, "", {"MPH", "KPH"}, 1, function(index)
    unit = index 
end)

unit = 1
GTluaScript.list_select(icluster, "单位", {"iclusterunits"}, "", {"MPH", "KPH"}, 1, function(index)
    unit = index 
end)

speedometer_x_pos = 0.700
GTluaScript.slider_float(icluster, "车速表位置X", {}, "", 0, 1000, 700, 1, function(s)
    speedometer_x_pos = s * 0.001
end)

speedometer_y_pos = 0.800
GTluaScript.slider_float(icluster, "车速表位置Y", {}, "", 0, 1000, 800, 1, function(s)
    speedometer_y_pos = s * 0.001
end)

tachometer_x_pos = 0.830
GTluaScript.slider_float(icluster, "转速表位置X", {}, "", 0, 1000, 830, 1, function(s)
    tachometer_x_pos = s * 0.001
end)

tachometer_y_pos = 0.818
GTluaScript.slider_float(icluster, "转速表位置Y", {}, "", 0, 1000, 818, 1, function(s)
    tachometer_y_pos = s * 0.001
end)

gear_x_pos = 0.764
GTluaScript.slider_float(icluster, "齿轮位置X", {}, "", 0, 1000, 764, 1, function(s)
    gear_x_pos = s * 0.001
end)

gear_y_pos = 0.870
GTluaScript.slider_float(icluster, "齿轮位置Y", {}, "", 0, 1000, 870, 1, function(s)
    gear_y_pos = s * 0.001
end)

lights_x_pos = 0.660
GTluaScript.slider_float(icluster, "仪器位置X", {}, "", 0, 1000, 660, 1, function(s)
    lights_x_pos = s * 0.001
end)

lights_y_pos = 0.920
GTluaScript.slider_float(icluster, "仪器位置Y", {}, "", 0, 1000, 920, 1, function(s)
    lights_y_pos = s * 0.001
end)

white = {
    r = 1,
    g = 1,
    b = 1,
    a = 1.0
}

orange = {
    r = 1.0,
    g = 0.5,
    b = 0,
    a = 1
}

blue = {
    r = 0, 
    g = 0, 
    b = 1, 
    a = 1
}

green = {
    r = 0, 
    g = 1, 
    b = 0, 
    a = 1
}
GTTG(speedometer_plate_root, "仪表盘显示", {"icluster"}, "进入载具内即可显示", function(state)
UItoggle = state
local lights, high_lights = memory.alloc_int(), memory.alloc_int()
while UItoggle do 
    vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
    if vehicle ~= 0 and PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), true) then 
        local vecs = ENTITY.GET_ENTITY_SPEED_VECTOR(vehicle, true)
        local v_hdl = entities.handle_to_pointer(vehicle)
        local speed = ENTITY.GET_ENTITY_SPEED(vehicle)
        local mph = speed * 2.236936
        local kph = speed * 3.6
        local max = VEHICLE.GET_VEHICLE_ESTIMATED_MAX_SPEED(vehicle)
        local max_mph = max * 2.236936
        local max_kph = max * 3.6

        if unit == 1 then 
            measured_speed = mph 
            measured_max = max_mph
        else
            measured_speed = kph 
            measured_max = max_kph
        end
        local speed_rotation = (measured_speed/measured_max)*0.32
        if speed_rotation >= 0.75 then 
            speed_rotation = 0.75
        end
        local rpm = entities.get_rpm(v_hdl)
        if rpm == 1 then 
            -- rev limiter simulation
            rpm = rpm + math.random(-2, 2)*0.01
        end
        local tach_rotation = rpm*0.45
        directx.draw_texture(speedometer_case, 0.05, 0.5, 0.5, 0.5, speedometer_x_pos+0.15, speedometer_y_pos, 0, white)
        --directx.draw_texture(needle, 0.023, 0.023, 0.88, 0.125, speedometer_x_pos+0.15, speedometer_y_pos+0.015, speed_rotation, white)
        -- speed text also i guess what
        directx.draw_text(speedometer_x_pos+0.175, speedometer_y_pos+0.03, math.ceil(measured_speed), 5, 0.8, white, true)
        -- rpm gauge
        directx.draw_texture(tach_case, 0.05, 0.05, 0.5, 0.5, tachometer_x_pos+0.110, tachometer_y_pos-0.090, 0, white)
        -- rpm needle
        directx.draw_texture(needle, 0.023, 0.023, 0.88, 0.125, tachometer_x_pos+0.117, tachometer_y_pos-0.090, tach_rotation, white)
        -- rpm text
        directx.draw_text(tachometer_x_pos+0.108, tachometer_y_pos-0.031, math.ceil(rpm*6000), 5, 0.7, white, true)
        -- gear text 
        gear = entities.get_current_gear(v_hdl)
        if gear == 0 and vecs.y < 0 then
            gear = "R"
        end
        if VEHICLE.GET_VEHICLE_ENGINE_HEALTH(vehicle) < 1000 then
            directx.draw_texture(check_engine_light, 0.01, 0.01, 0.5, 0.5, lights_x_pos + 0.60, lights_y_pos, 0, orange)
        end
        VEHICLE.GET_VEHICLE_LIGHTS_STATE(vehicle, lights, high_lights)
        if memory.read_byte(lights) == 1 then 
            if memory.read_byte(high_lights) == 1 then 
                directx.draw_texture(high_beam, 0.01, 0.01, 0.5, 0.5, lights_x_pos + 0.30, lights_y_pos, 0, blue)
            else
                directx.draw_texture(low_beam, 0.01, 0.01, 0.5, 0.5, lights_x_pos + 0.30, lights_y_pos, 0, green)
            end
        end
        any_tires_burst = false 
        for i = 1, 4 do 
            if VEHICLE.IS_VEHICLE_TYRE_BURST(vehicle, i, false) then 
                any_tires_burst = true 
            end
        end
        if any_tires_burst then 
            directx.draw_texture(tpms, 0.01, 0.01, 0.5, 0.5, lights_x_pos + 0.08, lights_y_pos, 0, orange)
        end

        directx.draw_text(gear_x_pos + 0.18, gear_y_pos, gear, 5, 1.2, white, true)
        if VEHICLE.IS_VEHICLE_IN_BURNOUT(vehicle) or math.abs(vecs.x) > 3 then 
            directx.draw_texture(traction_control, 0.01, 0.01, 0.5, 0.5, lights_x_pos + 0.27, lights_y_pos, 0, orange)
        end
    end
    wait()
end
end)

mph_plate = false
GTTG(speedometer_plate_root, "车牌速度显示", {}, "将车牌文本设置为车辆的当前速度。", function(on)
    mph_plate = on
    if on then
        if player_cur_car ~= 0 then
            original_plate = VEHICLE.GET_VEHICLE_NUMBER_PLATE_TEXT(player_cur_car)
        else
            newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;","~r~启动时您不在车内。您将无法还原车牌文本。", "CHAR_CHOP", 140)
            original_plate = "GT"
        end
    else
        if player_cur_car ~= 0 then
            if original_plate == nil then
                original_plate = "GT"
            end
            VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(player_cur_car, original_plate)
        end
    end
end)

GTLP(veh_func, "上车时自动打开电台", {"autotune"}, "上车后执行'tune'命令.", function()
    local localped = GetLocalPed()
    if PED.IS_PED_GETTING_INTO_A_VEHICLE(localped) then
        GTluaScript.trigger_commands("tune")
    end
end)

GTAC(veh_func, "将载具上下颠倒", {}, "", function ()
    UpsideDownVehicleRotationWithKeys()
end)

local fastTurnVehicleScale = 3

veh_control = GT(carfly, '控制选项', {}, '')

GTLP(veh_control, "载具快速定制转弯", {}, "用A/D键快速转动载具.", function ()
    FastTurnVehicleWithKeys(fastTurnVehicleScale)
end)

GTluaScript.slider(veh_control, "载具快速定制转弯强度", {"vehfastturn"}, "设置自定义转弯的比例.", 1, 1000, 30, 5, function(value)
    fastTurnVehicleScale = value / 10
end)

GTLP(veh_control, "解锁你射击的载具", {"unlockvehshot"}, "这将在锁定的玩家载具上起作用.", function ()
    UnlockVehicleShoot()
end)

GTLP(veh_control, "解锁你试图进入的载具", {"unlockvehget"}, "这将在锁定的玩家载具上起作用.", function ()
    UnlockVehicleGetIn()
end)

SuperVehMultiply = 1.2

BetterSuperDrive = false
GTTG(veh_control, "速度更改 (锁定)", {"vehmultiply"}, "", function (superd)
    if superd then
        local localped = GetLocalPed()
        BetterSuperDrive = true
        util.create_thread(function()
            while BetterSuperDrive do
                if PED.IS_PED_IN_ANY_VEHICLE(localped, false) then
                        local veh = PED.GET_VEHICLE_PED_IS_IN(localped, false)
                        local vehVel = ENTITY.GET_ENTITY_VELOCITY(veh)
                        local newVel = {x = vehVel.x * SuperVehMultiply, y = vehVel.y * SuperVehMultiply, z = vehVel.z * SuperVehMultiply}
                        ENTITY.SET_ENTITY_VELOCITY(veh, newVel.x, newVel.y, newVel.z)
                        wait(100)
                end
                wait()
            end
            util.stop_thread()
        end)
    else
        BetterSuperDrive = false
    end
end)

GTTG(veh_control, "速度更改 (绑定到LShift)", {"vehmultiplyshift"}, "", function (superd)
    if superd then
        local localped = GetLocalPed()
        BetterSuperDrive = true
        util.create_thread(function()
            while BetterSuperDrive do
                if PED.IS_PED_IN_ANY_VEHICLE(localped, false) then
                    if PAD.IS_CONTROL_PRESSED(0, 21) then 
                        local veh = PED.GET_VEHICLE_PED_IS_IN(localped, false)
                        local vehVel = ENTITY.GET_ENTITY_VELOCITY(veh)
                        local newVel = {x = vehVel.x * SuperVehMultiply, y = vehVel.y * SuperVehMultiply, z = vehVel.z * SuperVehMultiply}
                        ENTITY.SET_ENTITY_VELOCITY(veh, newVel.x, newVel.y, newVel.z)
                        wait(100)
                    end
                end
                wait()
            end
            util.stop_thread()
        end)
    else
        BetterSuperDrive = false
    end
end)

GTluaScript.slider(veh_control, "速度调节 (/100)", {"vehmultnum"}, "除以 100.", 1, 1000, 120, 10, function(val)
    SuperVehMultiply = val/100
end)

GTluaScript.slider(veh_func, "更换座位", {""}, "", -1, 6, -1, 1, function(value)

        local ourped = PLAYER.PLAYER_PED_ID()

    if PED.IS_PED_IN_ANY_VEHICLE(ourped, false) then

        local veh = PED.GET_VEHICLE_PED_IS_IN(ourped, false)

        PED.SET_PED_INTO_VEHICLE(ourped, veh, value)

    else

        newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;","~r~进入载具才能生效", "CHAR_CHOP", 140)
    end

end)


local player_ped_id
local delta_time
local player_pos
util.create_tick_handler(function ()
    player_ped_id = PLAYER.PLAYER_PED_ID()
    delta_time = MISC.GET_FRAME_TIME()
    player_pos = ENTITY.GET_ENTITY_COORDS(player_ped_id)
    return true
end)


local math_funcs = b_math_funcs.new()
local shitty_gps_colour_a = {r = 255,g = 0,b = 255,a = 255}
local shitty_gps_colour_b = {r = 255,g = 255,b = 255,a = 255}
local shitty_gps_run = false
GTTG(veh_func, "GPS导航", {"导航提示"}, "", function(value)

    local p_direction = memory.alloc(1) 
    local p_5 = memory.alloc(4) 
    local p_distToNxJunction = memory.alloc(4) 
    local p_screenX = memory.alloc(4) 
    local p_screenY = memory.alloc(4) 

    local turn_dir = 0
    shitty_gps_run = value

    if value then
    util.create_tick_handler(function ()
    local vehicle = PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), false)

    local waypoint_pos = get_waypoint_coords()
    local total = waypoint_pos.x + waypoint_pos.y + waypoint_pos.z

    if total ~= 0 and ENTITY.IS_ENTITY_A_VEHICLE(vehicle) then
        local height = ENTITY.GET_ENTITY_HEIGHT(vehicle, player_pos.x, player_pos.y, player_pos.z, true, false)

        PATHFIND.GENERATE_DIRECTIONS_TO_COORD(
            waypoint_pos.x,
            waypoint_pos.y,
            waypoint_pos.z,
            0,
            p_direction,
            p_5,
            p_distToNxJunction
        )

        local direction = memory.read_byte(p_direction)
        local distToNxJunction = memory.read_float(p_distToNxJunction)



        GRAPHICS.GET_SCREEN_COORD_FROM_WORLD_COORD(
            player_pos.x,
            player_pos.y,
            player_pos.z + 1.5 + height,
            p_screenX,
            p_screenY
        )
        local screen_x = memory.read_float(p_screenX)
        local screen_y = memory.read_float(p_screenY)

       if direction == 1 then
            turn_dir = math_funcs.lerp(turn_dir, 180, 5 * delta_time)
            directx.draw_text(screen_x, screen_y, "可以的话请调头", ALIGN_CENTRE, 1, shitty_gps_colour_a)
        elseif direction == 3 then
            turn_dir =  math_funcs.lerp(turn_dir, -90, 5 * delta_time)
            directx.draw_text(screen_x,screen_y,"左转 " .. math.floor(distToNxJunction) .. " 米",ALIGN_CENTRE,1,shitty_gps_colour_a)
        elseif direction == 6 then
            turn_dir =  math_funcs.lerp(turn_dir, -145, 5 * delta_time)
            directx.draw_text(screen_x,screen_y,"向左急转弯 " .. math.floor(distToNxJunction) .. " 米",ALIGN_CENTRE,1,shitty_gps_colour_a)
        elseif direction == 4 then
            turn_dir =  math_funcs.lerp(turn_dir, 90, 5 * delta_time)
            directx.draw_text(screen_x,screen_y,"右转 " .. math.floor(distToNxJunction) .. " 米",ALIGN_CENTRE,1,shitty_gps_colour_a)
        elseif direction == 7 then
            turn_dir =  math_funcs.lerp(turn_dir, 145, 5 * delta_time)
            directx.draw_text(screen_x,screen_y,"向右急转弯 " .. math.floor(distToNxJunction) .. " 米",ALIGN_CENTRE,1,shitty_gps_colour_a)
        elseif direction == 8 then
            turn_dir =  math_funcs.lerp(turn_dir, 0, 5 * delta_time)
            directx.draw_text(screen_x, screen_y, "正在计算新路线    ", ALIGN_CENTRE, 1, shitty_gps_colour_a)
        else
            turn_dir =  math_funcs.lerp(turn_dir, 0, 5 * delta_time)
        end
        local direction = ENTITY.GET_ENTITY_FORWARD_VECTOR(player_ped_id)
        local angle = b_vectors.new().vector2.get_angle(direction, {x = 0, y = 1})
        if b_vectors.new().vector2.dot({x = direction.x, y = direction.y}, {x = 1, y = 0}) > 0 then
            angle = -angle
        end
        local draw_pos = b_common_funcs.new().get_pos_above_entity(vehicle)
        draw_pos.z = draw_pos.z + 0.4
        drawing_funcs.draw_arrow(draw_pos, angle - math.rad(turn_dir), 1, shitty_gps_colour_a, shitty_gps_colour_b)
    end

    return shitty_gps_run
    end)
    else
        memory.free(p_distToNxJunction)
        memory.free(p_direction)
        memory.free(p_5)
        memory.free(p_screenX)
        memory.free(p_screenY)
    end
end)

    GTluaScript.slider_text(jesus_main, "驾驶风格", {}, "单击以选择驾驶风格", style_names, function(index, value)
        pluto_switch value do
            case "正常":
                style = 786603
                break
            case "冲刺":
                style = 1074528293
                break
            case "半冲刺":
                style = 8388614
                break
            case "反向":
                style = 1076
                break
            case "无视红绿灯":
                style = 2883621
                break
            case "避开交通":
                style = 786603
                break
            case "极度避开交通":
                style = 6
                break
            case "有时超车":
                style = 5
                break
            end
        end)
        
    jesus_toggle = GTTG(jesus_main, "启用", {}, "", function(toggled)
        if toggled then
            local player = players.user_ped()
            local pos = ENTITY.GET_ENTITY_COORDS(player, false)
            local player_veh = entities.get_user_vehicle_as_handle()
    
            if not PED.IS_PED_IN_ANY_VEHICLE(player, false) then 
                util.toast("请在载具里使用. :)")
            return end
    
            local jesus = util.joaat("u_m_m_jewelsec_01")
            request_model(jesus)
    
            
            jesus_ped = entities.create_ped(26, jesus, pos, 0)
            ENTITY.SET_ENTITY_INVINCIBLE(jesus_ped, true)
            PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(jesus_ped, true)
            PED.SET_PED_INTO_VEHICLE(player, player_veh, -2)
            PED.SET_PED_INTO_VEHICLE(jesus_ped, player_veh, -1)
            PED.SET_PED_KEEP_TASK(jesus_ped, true)
    
            if HUD.IS_WAYPOINT_ACTIVE() then
                local pos = HUD.GET_BLIP_COORDS(HUD.GET_FIRST_BLIP_INFO_ID(8))
                TASK.TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE(jesus_ped, player_veh, pos.x, pos.y, pos.z, 9999, style, 0)
            else
                util.toast("请先设置一个导航点. :/")
                    GTluaScript.set_value(jesus_toggle, false)
            end
        else
            if jesus_ped ~= nil then 
                entities.delete_by_handle(jesus_ped)
            end
        end
    end)

    function GotoCoordinateTask(driver, vehicle, coords, smartMethod, speed, style)
        if smartMethod then
            TASK.TASK_VEHICLE_GOTO_NAVMESH(driver, vehicle, coords.x, coords.y, coords.z, speed, style, 5.0)
        else
            local vehicleHash = ENTITY.GET_ENTITY_MODEL(vehicle)
            TASK.TASK_VEHICLE_DRIVE_TO_COORD(driver, vehicle, coords.x, coords.y, coords.z, speed, 0.0, vehicleHash, style, 5.0, 0.0)    
        end
    end
    GTAC(jesus_main, "自动驾驶(自我)", {}, "", function()
        local vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
        if vehicle == 0 then util.toast("你不在载具内") end
        if VEHICLE.IS_VEHICLE_SEAT_FREE(vehicle, -1, false) then util.toast("你需要在驾驶位") end
        if not HUD.IS_WAYPOINT_ACTIVE() then util.toast("没有标记点") end
        local waypointBlip = HUD.GET_FIRST_BLIP_INFO_ID(8)
        local waypoint = HUD.GET_BLIP_COORDS(waypointBlip)
        GotoCoordinateTask(players.user_ped(), vehicle, waypoint, useSmartMethod, 50.0, 1074528293)
    end)

GTLP(veh_control, "显示载具旋转和速度", {}, "", function()
    local veh = PED.GET_VEHICLE_PED_IS_IN(GetLocalPed(), false)
    local vv = ENTITY.GET_ENTITY_ROTATION(veh, 2)
    local velMag = ENTITY.GET_ENTITY_SPEED_VECTOR(veh, true).y
    local entSpeed = ENTITY.GET_ENTITY_SPEED(veh)
    directx.draw_text(0.07, 0, "高度: " .. v3.getX(vv), 1, 0.7, WhiteText, false)
    directx.draw_text(0.07, 0.02, "弯度: " .. v3.getY(vv), 1, 0.7, WhiteText, false)
    directx.draw_text(0.07, 0.04, "偏移度: " .. v3.getZ(vv), 1, 0.7, WhiteText, false)
    directx.draw_text(0.07, 0.06, "加速度: " .. tostring(velMag), 1, 0.7, WhiteText, false)
    directx.draw_text(0.07, 0.08, "速度: " .. tostring(entSpeed), 1, 0.7, WhiteText, false)
end)

set = {}
set.alert = {}
GTTG(carfly, '车辆生成', {'Valiases'}, '激活用于生成的车辆名称别名列表，如果多人运行它，您可以使用它来关闭它', function (on)
    valiases_spawn.vehicle_alias = on
end)

valiases_spawn.vehicle_aliases = GT(carfly, '车辆生成列表', {}, '用于生成的车辆名称别名列表')
veh_spawn_see()

mph_unit = "KPH"
GTLuaScript.list_action(speedometer_plate_root, "速度单位", {}, "", {"KPH", "MPH"}, function(index, value, click_type)
    mph_unit = value
end)

GTLuaScript.list_action(chauffeur_root, "传唤司机", {"summonchauffeur"}, "", {"Stretch", "T20", "Kuruma"}, function(index, value, click_type)
    summ_car(index, value)
end)

GTAC(chauffeur_root, "驾车前往航点", {}, "", function(click_type)
    summ_car_topoint()
end)

GTAC(chauffeur_root, "传送到驾驶室", {}, "", function(click_type)
    summ_car_tp()
end)

GTAC(chauffeur_root, "自我毁灭", {}, "", function(click_type)
    summ_car_bmob()
end)

GTLP(veh_func, "载具效果", {}, "", function ()
    cargoodeffect()
end)

GTluaScript.slider_text(veh_func,"设置载具效果", {}, "", carvis, function (index)
    set_carvis(index) 
end)

local fastTurnVehicleScale = 3

GTLP(veh_control, "车辆快速自定义转弯", {}, "用 A/D 键快速转动您的车辆。", function ()
    FastTurnVehicleWithKeys(fastTurnVehicleScale)
end)

GTluaScript.slider(veh_control, "车辆快速自定义转弯刻度（/10)", {}, "设置自定义转弯的比例。", 1, 1000, 30, 5, function(value)
    fastTurnVehicleScale = value / 10
end)

	GTAC(veh_func, translate("Player - Vehicle", "清洁载具"), {"cleanvehicle"}, "", function()
		local vehicle = get_vehicle_player_is_in(pId)
		if ENTITY.DOES_ENTITY_EXIST(vehicle) and request_control(vehicle, 1000) then
			VEHICLE.SET_VEHICLE_DIRT_LEVEL(vehicle, 0.0)
		end
	end, nil, nil, COMMANDPERM_FRIENDLY)

GTluaScript.click_slider(veh_func, translate("Player - Vehicle", "设置污垢级别"), {""}, "", 0, 15, 0, 1, function(s)
    if player_cur_car ~= 0 then
        VEHICLE.SET_VEHICLE_DIRT_LEVEL(player_cur_car, s)
    end
end)

GTLP(rgbvm, '彩虹载具', {}, '将载具颜色和霓虹灯更改为彩色', function ()
    rainbow_car()
end)

GTluaScript.slider(rgbvm, '速度', {''}, '调整车漆颜色变换的速度', 1, 1000, 100, 10, function (c)
    set_speed_rainbowcar(c)
end)

GTLP(rgbvm, '彩虹大灯', {}, '将霓虹灯/大灯/内饰更改为相同颜色', function ()
    rainbow_car_light()
end)
  
GTluaScript.slider(rgbvm, '速度', {''}, '调整灯光颜色变换的速度', 1, 1000, 100, 10, function (c)
    set_speed_light(c)
end)

GTLP(veh_func, "解锁瞄准乘客", {}, "允许您射击载具内的其他乘客", function()
    hittheplayerincar()
end)

noaccident = false
GTTG(veh_func, "避免事故", {"accidentavoidance"}, "使用全新技术避免车祸,特斯拉认证\n仍然需要具备一定的驾驶能力", function(on)
    if on then
        noaccident = true
        aa_thread()
    else
        noaccident = false
    end
end)

GTTG(veh_func, '减少翘头', {'Rburnout'}, '使载具不容易翘头,主要针对于肌肉车的翘头减速', function (tog)
    PHYSICS.SET_IN_ARENA_MODE(tog)
end)

renderscorched = false
GTTG(veh_func, "烤焦载具", {"renderscorched"}, "烧焦您的载具", function(on)
    if on then
        renderscorched = true
    else
        renderscorched = false
        if player_cur_car ~= 0 then
            ENTITY.SET_ENTITY_RENDER_SCORCHED(player_cur_car, false)
        end
    end
end, false)

GTAC(veh_func, "强行离开载具", {"forceleaveveh"}, "紧急情况下强行离开车辆", function(click_type)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped())
    TASK.TASK_LEAVE_ANY_VEHICLE(players.user_ped(), 0, 16)
end)

GTluaScript.click_slider(veh_control, "垂直堆叠", {"stackvehvert"}, "", 1, 10, 3, 1, function(s)
    setstacky(s)
end)

GTluaScript.click_slider(veh_control, "水平堆叠", {"stackvehhoriz"}, "", 1, 10, 3, 1, function(s)
    setstackx(s)
end)

GTLP(veh_func, "随机升级", {}, "仅适用于您出于某种原因生成的车辆", function()
    ramdomupdatecar()
end)

GTLP(veh_func, "强制生成反制系统", {"forcecms"}, "当您使用鸣笛键时,在任何载具中强制执行反制系统", function(on)
    forcecmsoncar()
end)

GTAC(veh_func, "远程呼叫载具", {"teslasummon"}, "非常有趣,您的车辆将会自动开过来;但由于多种原因经常中断,请进行多次尝试", function(click_type)
    teslasummoncar()
end)

GTLP(veh_func, "喇叭轰炸", {"lshornspam"}, "哔哔哔!!!", function(toggle)
    carlshormspam()
end)

GTTG(vehicle_fly, "载具飞行", {"vehfly"}, "我建议为此选项设置热键。", function(on_click)
    is_vehicle_flying = on_click
end)

GTluaScript.slider(vehicle_fly, "速度", {"speed"}, "", 1, 100, 6, 1, function(on_change) 
    speed = on_change
end)
GTTG(vehicle_fly, "触发后不停止", {"dontstop"}, "", function(on_click)
    dont_stop = on_click
end)

GTTG(vehicle_fly, "无碰撞", {"nocolision"}, "", function(on_click)
    no_collision = on_click
end)


util.create_tick_handler(function() 
    VEHICLE.SET_VEHICLE_GRAVITY(PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), false), not is_vehicle_flying)
    if is_vehicle_flying then do_vehicle_fly() else ENTITY.SET_ENTITY_COLLISION(PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), false), true, TRUE); end
    return true
end)
util.on_stop(function() 
    VEHICLE.SET_VEHICLE_GRAVITY(PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), false), true)
	ENTITY.SET_ENTITY_COLLISION(PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), false), true, TRUE);
end)

local bodyguardMenu <const> = BodyguardMenu.new(funfeatures, "保镖选项", {})


GTluaScript.click_slider(visuals, "醉酒模式", {}, "", 0, 5, 1, 1, function(val)
    drunkmode(val)
end)

visual_setting()

local allcrash = GT(custselc, "全局崩溃", {}, "魔怔选项,请您慎重!", function(); end)

local allguyssound = GT(custselc, "全局声音", {}, "", function(); end)

local allevent = GT(custselc, "全局事件", {}, "超级大坏蛋选项!", function(); end)
--
fuckjp = GT(custselc, "自动崩溃小日本", {}, "", function ()
end)
getsd = GTAC(fuckjp, "获取数据", {}, "", function ()
    menu.set_visible(getsd,false)
    dofile(filesystem.scripts_dir() .."lib/GTSCRIPTS/GTA/fuckjp.lua")
end)

vehtroll = GT(custselc,("战局载具恶搞"))

GTAC(vehtroll,("随机入侵玩家载具"), {}, "", function()
    if util.is_session_started() then
        local pids = players.list(false, true, true)
        local pid = pids[math.random(#pids)]
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local loops = 0
        if pid ~= players.user() then
            if not PED.IS_PED_IN_ANY_VEHICLE(ped, true) then
                repeat
                    pid = pids[math.random(#pids)]
                    ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
                    loops = loops + 1
                    util.yield(0)
                until(PED.IS_PED_IN_ANY_VEHICLE(ped, true) or loops == 31)
            end
            TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
            control_vehicle(pid, true, function(vehicle)
                PED.SET_PED_INTO_VEHICLE(players.user_ped(), vehicle, -1)
            end)
        end
    end
end)

GTLP(vehtroll,("爆炸所有车辆"), {}, "", function()
local vehicles = entities.get_all_vehicles_as_handles()
local user_vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), true)
    for _, vehicle in pairs(vehicles) do
        if vehicle ~= user_vehicle then
            VEHICLE.EXPLODE_VEHICLE(vehicle, true, false)
        end
    end
    wait(2000)
end)

GTLP(vehtroll,("冻结所有车辆"), {}, "", function()
local vehicles = entities.get_all_vehicles_as_handles()
local user_vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), true)
    for _, vehicle in pairs(vehicles) do
        if vehicle ~= user_vehicle then
            ENTITY.FREEZE_ENTITY_POSITION(vehicle, true)
        end
    end
end, function()
    local vehicles = entities.get_all_vehicles_as_handles()
    for _, vehicle in pairs(vehicles) do
        ENTITY.FREEZE_ENTITY_POSITION(vehicle, false)
    end
end)

GTLP(vehtroll,("关闭所有重力"), {}, "", function()
local vehicles = entities.get_all_vehicles_as_handles()
local user_vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), true)
    for _, vehicle in pairs(vehicles) do
        if vehicle ~= user_vehicle then
            VEHICLE.SET_VEHICLE_GRAVITY(vehicle, false)
        end
    end
end, function()
    local vehicles = entities.get_all_vehicles_as_handles()
    for _, vehicle in pairs(vehicles) do
        VEHICLE.SET_VEHICLE_GRAVITY(vehicle, true)
    end
end)

GTLP(vehtroll,("所有车辆跳跃"), {}, "", function()
local vehicles = entities.get_all_vehicles_as_handles()
local user_vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), true)
    for _, vehicle in pairs(vehicles) do
        if vehicle ~= user_vehicle then
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 3, 0, 0, 10, 0.0, 0.0, 0.0, 0, true, false, true, false, true)
        end
    end
    wait(2000)
end)

GTLP(vehtroll,("车辆暴乱模式"), {}, "", function()
local vehicles = entities.get_all_vehicles_as_handles()
local user_vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), true)
    for _, vehicle in pairs(vehicles) do
        if vehicle ~= user_vehicle then
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 3, math.random(20, 100), math.random(20, 100), math.random(20, 100), 0.0, 0.0, 0.0, 0, true, false, true, false, true)
        end
    end
    wait(2000)
end)

GTLP(vehtroll,("所有车辆翻转"), {}, "", function()
local vehicles = entities.get_all_vehicles_as_handles()
local user_vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), true)
    for _, vehicle in pairs(vehicles) do
        if vehicle ~= user_vehicle then
            ENTITY.SET_ENTITY_ROTATION(vehicle, 0, 180, 0, 1, true)
        end
    end
end, function()
    local vehicles = entities.get_all_vehicles_as_handles()
    local user_vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), true)
    for _, vehicle in pairs(vehicles) do
        if vehicle ~= user_vehicle then
            ENTITY.SET_ENTITY_ROTATION(vehicle, 0, 0, 0, 1, true)
        end
    end
end)

GTLP(vehtroll,("删除所有车辆"), {}, "", function()
local my_pos = players.get_position(players.user())
    CLEAR_AREA_OF_VEHICLES(my_pos.x, my_pos.y, my_pos.z, 10000, false, false, false, false, false, false, false)
    wait(1000)
end)
--

apforcedacts_root = GT(custselc, "强迫载具行动", {""}, "")

GTAC(apforcedacts_root, "传送载具到我", {"tpavtome"}, "这可能有效，也可能无效。如果这不起作用，它不是一个bug", function(on_click)
    tp_all_player_cars_to_coords(ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true))
end)

forceteleplace()


    local antichatspam = GT(custselc, '反聊天轰炸', {}, '')

    local messageTable = {}
    chat.on_message(function(pid, message_sender, text, team_chat)
        if pid == players.user() then return end
        if not chatSpamSettings.enabled then return end
        if team_chat and chatSpamSettings.ignoreTeam then return end

        if messageTable[pid] == nil then
            messageTable[pid] = {}
        end

        local messageCount = (#messageTable[pid] != nil and #messageTable[pid] or 0)
        messageTable[pid][messageCount + 1] = text

        if #messageTable[pid] < chatSpamSettings.identicalMessages then return end
        for i = 1, #messageTable[pid] - 1 do
            if messageTable[pid][#messageTable[pid]] != messageTable[pid][#messageTable[pid] - i] then
                messageTable[pid] = {}
                return
            end
            if i == #messageTable[pid] - 1 then
                menu.trigger_commands('crash'.. players.get_name(pid))
                menu.trigger_commands('kick'.. players.get_name(pid))
                util.toast('玩家' ..' '.. players.get_name(pid) ..' '.. '因聊天轰炸已被移除')
            end
        end
    end)
--
Vehicle_DoorLock_options = GT(custselc, "载具锁门", {}, "")

VehicleDoorsLock_ListItem = {
{ "解锁" }, --VEHICLELOCK_UNLOCKED == 1
{ "上锁" }, --VEHICLELOCK_LOCKED
{ "LOCKOUT PLAYER ONLY",     {}, "只对玩家锁门？" }, --VEHICLELOCK_LOCKOUT_PLAYER_ONLY
{ "玩家锁定在里面" }, --VEHICLELOCK_LOCKED_PLAYER_INSIDE
{ "LOCKED INITIALLY" }, --VEHICLELOCK_LOCKED_INITIALLY
{ "强制关闭车门" }, --VEHICLELOCK_FORCE_SHUT_DOORS
{ "上锁但可被破坏",   {}, "可以破开车窗开门" }, --VEHICLELOCK_LOCKED_BUT_CAN_BE_DAMAGED
{ "上锁但后备箱解锁" }, --VEHICLELOCK_LOCKED_BUT_BOOT_UNLOCKED
{ "上锁无乘客" }, --VEHICLELOCK_LOCKED_NO_PASSENGERS
{ "不能进入",            {}, "按F无上车动作" } --VEHICLELOCK_CANNOT_ENTER
}
vehicle_door_lock_select = 1 --选择的锁门类型
GTLuaScript.list_select(Vehicle_DoorLock_options, "锁门类型", {}, "", VehicleDoorsLock_ListItem, 1, function(value)
    vehicle_door_lock_select = value
end)

GTAC(Vehicle_DoorLock_options, "设置载具锁门", {}, "", function()
    local vehicle = entities.get_user_vehicle_as_handle()
    if vehicle ~= 0 then
        VEHICLE.SET_VEHICLE_DOORS_LOCKED(vehicle, vehicle_door_lock_select)
    end
end)

GTTG(Vehicle_DoorLock_options, "对所有玩家锁门", {}, "", function(toggle)
    local vehicle = entities.get_user_vehicle_as_handle()
    if vehicle ~= 0 then
        VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_ALL_PLAYERS(vehicle, toggle)
    end
end)
GTTG(Vehicle_DoorLock_options, "对所有团队锁门", {}, "", function(toggle)
    local vehicle = entities.get_user_vehicle_as_handle()
    if vehicle ~= 0 then
        VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_ALL_TEAMS(vehicle, toggle)
    end
end)
--
    GTTG(antichatspam, '反聊天轰炸', {'antiChatSpam'}, '如果有人不断发送相同的聊天信息将对他们进行崩溃与踢除', function(toggle)
        chatSpamSettings.enabled = toggle
    end)

    GTTG(antichatspam, '忽略团队聊天', {'ignoreTeamSpam'}, '', function(toggle)
        chatSpamSettings.enabled = toggle
    end, chatSpamSettings.ignoreTeam)

    GTluaScript.slider(antichatspam, '相同信息', {'identicalChatMessages'}, '检测相同的聊天信息数值', 2, 9999, chatSpamSettings.identicalMessages, 1, function(value)
        chatSpamSettings.identicalMessages = value
    end)

    local colouredotr = GT(custselc, '标记人间蒸发玩家', {}, '')

    GTLP(colouredotr, '标记人间蒸发玩家', {'colouredOtrReveal'}, '用彩色光点标记人间蒸发的玩家.', function()
        local playerList = players.list(false, true, true)
        for i, pid in pairs(playerList) do
            if players.is_otr(pid) and not markedPlayers[pid] then
                local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
                markedPlayers[pid] = HUD.ADD_BLIP_FOR_ENTITY(ped)
                HUD.SET_BLIP_COLOUR(markedPlayers[pid], otrBlipColour)
                HUD.SHOW_HEADING_INDICATOR_ON_BLIP(markedPlayers[pid], true)
            elseif players.is_otr(pid) then
                HUD.SET_BLIP_COLOUR(markedPlayers[pid], otrBlipColour)
            elseif not players.is_otr(pid) and markedPlayers[pid] then
                util.remove_blip(markedPlayers[pid])
                markedPlayers[pid] = nil
            end
        end
    end, function()
        local playerList = players.list(false, true, true)
        for i, pid in pairs(playerList) do
            if markedPlayers[pid] then
                util.remove_blip(markedPlayers[pid])
                markedPlayers[pid] = nil
            end
        end
    end)

    local otr_colour_slider = GTluaScript.slider(colouredotr, '人间蒸发 显示颜色', {'ortRevealColour'}, '',1, 81, otrBlipColour, 1, function(value)
        otrBlipColour = value + (value > 71 and 1 or 0) + (value > 77 and 2 or 0)
    end)

    GTLP(colouredotr, '人间蒸发 rgb颜色', {'JSortRgbReveal'}, '', function()
        GTluaScript.set_value(otr_colour_slider, (otrBlipColour == 84 and 1 or otrBlipColour + 1))
        wait(250)
    end)

    gameplay = GT(custselc,"线上检查")

    GTLP(gameplay, "聊天记录", {}, "", function(g)
        for chat.get_history() as msg do
            local str = msg.sender_name.." ["..(msg.team_chat ? "团队" : "所有")..(msg.is_auto ? ", 自由" : "").."] "..msg.contents
            if msg.time ~= 0 then
                str = "["..os.date('%H:%M:%S', msg.time).."] "..str
            end
            util.draw_debug_text(str)
        end
    end)
    
    GTLP(gameplay, "检查打字", {}, "", function(g)
        local isOpen = chat.is_open()
        if isOpen then
            for pid = 0,31 do
            if PLAYER.GET_PLAYER_PED(pid) ~= 0 then
            util.draw_debug_text(players.get_name(pid).."正在打字...")
            end
            end
        end
    end)

    GTTG(gameplay, "事件通知", {}, "", function(g)
        if g then
            players.on_flow_event_done(function(p, name, extra)
                name = lang.get_localised(name)
                if extra then
                    name ..= " ("
                    name ..= extra
                    name ..= ")"
                end
                util.toast(players.get_name(p)..": "..name)
            end)
        end
    end)

    GTTG(allevent, "警察屏蔽所有玩家", {}, "所有的玩家不再遭到警察攻击", function (f)
        if f then 
            for pid = 0, 32 do
                PLAYER.SET_POLICE_IGNORE_PLAYER(pid, true)
            end
        else
            for pid = 0, 32 do
                PLAYER.SET_POLICE_IGNORE_PLAYER(pid, false)
            end
        end
    end)

    GTTG(allevent, "所有NPC屏蔽玩家", {}, "所有的NPC不再对玩家产生行动", function (f)
        if f then
            for pid = 0, 32 do
                PLAYER.SET_EVERYONE_IGNORE_PLAYER(pid, true)
            end
        else
            for pid = 0, 32 do
                PLAYER.SET_EVERYONE_IGNORE_PLAYER(pid, false)
            end
        end
    end)

    GTTG(allevent, "所有玩家幽灵模式", {}, "", function (f)
        if f then 
            for pid = 0, 32 do
                NETWORK.SET_REMOTE_PLAYER_AS_GHOST(pid, true)
            end
        else
            for pid = 0, 32 do
                NETWORK.SET_REMOTE_PLAYER_AS_GHOST(pid, false)
            end
        end
    end)

    nukeall = GTLuaScript.list(allevent, "全局核弹")
    --
    local get_coords = function(entity)
        entity = entity or PLAYER.PLAYER_PED_ID()
        return ENTITY.GET_ENTITY_COORDS(entity, true)
    end

    local play_all = function(sound, sound_group, wait_for)
        for i=0, 31, 1 do
            AUDIO.PLAY_SOUND_FROM_ENTITY(-1, sound, PLAYER.GET_PLAYER_PED(i), sound_group, true, 20)
        end
        util.yield(wait_for)
    end

    local explode_all = function(earrape_type, wait_for)
        for i=0, 31, 1 do
            coords = get_coords(PLAYER.GET_PLAYER_PED(i))
            FIRE.ADD_EXPLOSION(coords.x, coords.y, coords.z, 0, 100, true, false, 150, false)
            if earrape_type == EARRAPE_BED then
                AUDIO.PLAY_SOUND_FROM_COORD(-1, "Bed", coords.x, coords.y, coords.z, "WastedSounds", true, 999999999, true)
            end
            if earrape_type == EARRAPE_FLASH then
                AUDIO.PLAY_SOUND_FROM_COORD(-1, "MP_Flash", coords.x, coords.y, coords.z, "WastedSounds", true, 999999999, true)
                AUDIO.PLAY_SOUND_FROM_COORD(-1, "MP_Flash", coords.x, coords.y, coords.z, "WastedSounds", true, 999999999, true)
                AUDIO.PLAY_SOUND_FROM_COORD(-1, "MP_Flash", coords.x, coords.y, coords.z, "WastedSounds", true, 999999999, true)
            end
        end
        util.yield(wait_for)
    end

    GTAC(nukeall, "全局核弹", {}, "", function()
        util.toast("核弹来咯")
        play_all("Air_Defences_Activated", "DLC_sum20_Business_Battle_AC_Sounds", 3000)
        play_all("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 1000)
        play_all("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 1000)
        play_all("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 500)
        play_all("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 500)
        play_all("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 125)
        play_all("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 125)
        play_all("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 125)
        play_all("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 125)
        play_all("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 125)
        play_all("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 125)
        play_all("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 125)
        play_all("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 125)
        explode_all(EARRAPE_FLASH, 0)
        explode_all(EARRAPE_FLASH, 150)
        explode_all(EARRAPE_BED, 0)
        explode_all(EARRAPE_NONE, 0)
    end)

    all_nuke_height = 40
    menu.slider(nukeall, "核弹高度", {"nukehigher"}, "", 10, 100, nuke_height, 10, function(value)
    all_nuke_height = value
    end)

    function executeNuke(pos)	
        for a = 0, nuke_height, 4 do
            FIRE.ADD_EXPLOSION(pos.x, pos.y, pos.z + a, 8, 10, true, false, 1, false)	
            util.yield(50)
        end
        FIRE.ADD_EXPLOSION(pos.x +8, pos.y +8, pos.z + nuke_height, 82, 10, true, false, 1, false)
        FIRE.ADD_EXPLOSION(pos.x +8, pos.y -8, pos.z + nuke_height, 82, 10, true, false, 1, false)
        FIRE.ADD_EXPLOSION(pos.x -8, pos.y +8, pos.z + nuke_height, 82, 10, true, false, 1, false)
        FIRE.ADD_EXPLOSION(pos.x -8, pos.y -8, pos.z + nuke_height, 82, 10, true, false, 1, false)
    end
    --
    GTTG(allevent, "风车别墅派对", {"blockeclipse"}, "在别墅生成风车\nGet Fuck off them", function(on_toggle)
        if on_toggle then
        local hash = 1952396163
        loadModel(hash)
        for i = 0, 180, 8 do
            local wall = OBJECT.CREATE_OBJECT_NO_OFFSET(hash, -796.4927, 310.48416, 50.49049, true, true, true)
            ENTITY.SET_ENTITY_HEADING(wall, toFloat(i))
            wait(10)
        end
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash) 
        else
        menu.trigger_commands("clearblocks")
        end
        end)

    GTTG(allevent, "风车赌场派对", {"blockcasino"}, "在赌场生成风车\nGet Fuck off them", function(on_toggle)
        if on_toggle then
        local hash = 1952396163
        loadModel(hash)
        for i = 0, 180, 8 do
            local wall = OBJECT.CREATE_OBJECT_NO_OFFSET(hash, 920.657, 48.360252, 44.913666, true, true, true)
            ENTITY.SET_ENTITY_HEADING(wall, toFloat(i))
            wait(10)
        end
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash) 
    else
        menu.trigger_commands("clearblocks")
        end
    end)

    GTAC(allevent, "清除所有阻止", {"clearblocks"}, "", function()
        local count = 0
        for k,ent in pairs(entities.get_all_objects_as_handles()) do
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
            entities.delete_by_handle(ent)
            count = count + 1
            wait()
        end
    end)

    GTLP(allevent, "NPC无敌", {"godmodenpc"}, "", function(on_toggle)
    all_peds = entities.get_all_peds_as_handles()
    for k,ped in pairs(all_peds) do
        if not PED.IS_PED_A_PLAYER(ped) then
            if PED.IS_PED_IN_ANY_VEHICLE(ped, true) then
            end
            ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
            wait(100)
        end
    end
end)

    GTLP(allevent, "NPC不可见", {""}, "", function(on_toggle)
    all_peds = entities.get_all_peds_as_handles()
    for k,ped in pairs(all_peds) do
        if not PED.IS_PED_A_PLAYER(ped) then
            if PED.IS_PED_IN_ANY_VEHICLE(ped, true) then
            end
            ENTITY.SET_ENTITY_VISIBLE(ped, false, 0)
            wait(100)
        end
    end
end)

    freemode_event = GT(allevent, "自由模式事件", {}, "")

    GTAC(freemode_event, "一键清场", {}, "", function () 
        for pid = 0, 31 do
         if pid ~= players.user() and players.exists(pid) then
        util.trigger_script_event(1 << pid, {1103127469, pid, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, math.random(1, 10)}})
        util.trigger_script_event(1 << pid, {1103127469, pid, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}})
        util.trigger_script_event(1 << pid, {1103127469, pid, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}})
        end
        end
    end)
    
    GTAC(freemode_event, "自由模式事件(恶劣天气任务)", {}, "", function () 
        for pid = 0, 31 do
            if pid ~= players.user() and players.exists(pid) then
            util.trigger_script_event(1 << pid,{ -3190849701, pid, {1, -4294967033, -1}, PLAYER.GET_PLAYER_INDEX(), pid})
            util.trigger_script_event(1 << pid,{ -3190849701, pid, {1, -4294967033, -1}, PLAYER.GET_PLAYER_INDEX(), pid})
            util.trigger_script_event(1 << pid,{ -3190849701, pid, {1, -4294967033, -1}, PLAYER.GET_PLAYER_INDEX(), pid})
            util.trigger_script_event(1 << pid,{ -3190849701, pid, {1, -4294967033, -1}, PLAYER.GET_PLAYER_INDEX(), pid})
            util.trigger_script_event(1 << pid,{ -3190849701, pid, {1, -4294967033, -1}, PLAYER.GET_PLAYER_INDEX(), pid})
            util.trigger_script_event(1 << pid,{ -3190849701, pid, {1, -4294967033, -1}, PLAYER.GET_PLAYER_INDEX(), pid})
            util.trigger_script_event(1 << pid,{ -3190849701, pid, {1, -4294967033, -1}, PLAYER.GET_PLAYER_INDEX(), pid})
            util.trigger_script_event(1 << pid,{ -3190849701, pid, {1, -4294967033, -1}, PLAYER.GET_PLAYER_INDEX(), pid})
            end
        end
    end)
    
    GTAC(freemode_event, "自由模式事件(撤退政策)", {}, "", function () 
        for k,pid in pairs(players.list(false, true, true)) do
            util.trigger_script_event(1 << pid, {2156573948, 2, 0, 0, 4, 0,PLAYER.GET_PLAYER_INDEX(), pid})
        end
    end)
    
    GTAC(freemode_event, "自由模式事件(离岸之财)", {}, "", function () 
        for pid = 0, 31 do
            if pid ~= players.user() and players.exists(pid) then
            util.trigger_script_event(1 << pid, {374302127,pid, 1, PLAYER.GET_PLAYER_INDEX(), pid})
            util.trigger_script_event(1 << pid, {2347253207,pid, 1,0, PLAYER.GET_PLAYER_INDEX(), pid})
            util.trigger_script_event(1 << pid, {2156573948, 1,pid, 3, PLAYER.GET_PLAYER_INDEX(), pid})
            end
        end
    end)
    
    GTAC(freemode_event, "自由模式事件(行迹败露)", {}, "", function () 
        for pid = 0, 31 do
            if pid ~= players.user() and players.exists(pid) then
            util.trigger_script_event(1 << pid, {2156573948,pid, 1,4, PLAYER.GET_PLAYER_INDEX(), pid})
            end
        end
    end)
    
    GTAC(freemode_event, "自由模式事件(猎杀叛徒)", {}, "", function () 
        for pid = 0, 31 do
            if pid ~= players.user() and players.exists(pid) then
            util.trigger_script_event(1 << pid, {2156573948,pid, 1,5, PLAYER.GET_PLAYER_INDEX(), pid})
            end
        end
    end)
    
    GTAC(freemode_event, "自由模式事件(数据泄露)", {}, "", function () 
        for pid = 0, 31 do
            if pid ~= players.user() and players.exists(pid) then
            util.trigger_script_event(1 << pid, {2156573948,pid, 1,8, PLAYER.GET_PLAYER_INDEX(), pid})
            end
        end
    end)
    
    GTAC(freemode_event, "自由模式事件(工作纠纷)", {}, "", function () 
        for pid = 0, 31 do
            if pid ~= players.user() and players.exists(pid) then
            util.trigger_script_event(1 << pid, {2156573948,pid, 1,7, PLAYER.GET_PLAYER_INDEX(), pid})
            util.trigger_script_event(1 << pid, {374302127,pid, 1, PLAYER.GET_PLAYER_INDEX(), pid})
            util.trigger_script_event(1 << pid, {2347253207, pid, 1, 0, PLAYER.GET_PLAYER_INDEX(), pid})
            end
        end
    end)
    
    GTAC(allevent, "全局获得加特林", {""}, "可以与(发送玩家海滩)搭配喔~\n见证一场在海滩上的厮杀盛宴", function()
        for pid = 0,3 do--获取队友ped
        pedp = players.user_ped(pid)
        minigun = 1119849093--加特林hash
        menu.trigger_commands("disarmall on")
        wait(100)
        menu.trigger_commands("disarmall off")
        WEAPON.GIVE_DELAYED_WEAPON_TO_PED(pedp,minigun,0,1)
        WEAPON.SET_PED_AMMO(pedp,minigun,9999)
        wait(100)
        end
    end)

    GTAC(allevent, "全局上岛[新版]", {}, "", function ()
        sendscriptevent_three()
    end)

GTLP(allevent, '爆炸所有人', {'explodeap'}, '爆炸所有玩家.', function()
menu.trigger_commands("explodeall")
end)

GTAC(allevent, "劫持所有载具", {"hijackall"}, "生成一个劫匪NPC，把他们从车里带出来并开走开.", function()
    for _, pid in players.list(false, true, true) do
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local pos = players.get_position(pid)

        if ENTITY.DOES_ENTITY_EXIST(ped) and PED.IS_PED_IN_ANY_VEHICLE(ped, false) then
            GTluaScript.trigger_commands("hijack " .. players.get_name(pid))
        end
    end
end)

GTLP(allevent, "震动屏幕", {}, "让每个人的屏幕震动", function()
    for k,v in pairs(players.list(false, true, true)) do
        shake_player(v, 5000)
        wait()
    end
    wait(1000)
end)

GTAC(allevent, "困住所有玩家", {}, "", function () 
for pid = 0, 31 do
    if pid ~= players.user() and players.exists(pid) then
        local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(pid))
        pos.z = pos.z + 0.95  
        local pos1 = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(pid))
        pos1.z = pos1.z - 0.90
        local cage = util.joaat("prop_feeder1_cr")
        STREAMING.REQUEST_MODEL(cage)
        OBJECT.CREATE_OBJECT_NO_OFFSET(cage, pos.x, pos.y ,pos.z , true, true)
        OBJECT.CREATE_OBJECT_NO_OFFSET(cage, pos1.x, pos1.y ,pos1.z , true, true)
    end
end
end)

GTLP(allevent, "全局随机事件", {}, "", function () 
for pid = 0, 31 do
    if pid ~= players.user() and players.exists(pid) then
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local coords = ENTITY.GET_ENTITY_COORDS(target_ped)
        FIRE.ADD_EXPLOSION(coords['x'], coords['y'], coords['z'], math.random(0, 82), 1.0, true, false,0.0)
    end
end

GTLP(allevent, "混乱车辆", {}, "车辆到处乱窜",function()
    for i, veh in ipairs(entities.get_all_vehicles_as_handles()) do
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
        ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(veh, 1, 0.0, 10.0, 0.0, true, true, true, true) 
    end
end)

GTTG(allevent, "暴乱城市", {}, "周围的npc会进入无差别攻击模式！", function(toggle)
    MISC.SET_RIOT_MODE_ENABLED(toggle)
end)
end)

GTLP(allevent,  "赌场陷阱", {"trapbase"}, "", function() 
    local mdl = util.joaat("hei_prop_ss1_mpint_garage2")
    request_model(mdl)
    if trap_obj == nil or trap_obj2 == nil or not ENTITY.DOES_ENTITY_EXIST(trap_obj) or not ENTITY.DOES_ENTITY_EXIST(trap_obj2) then
        trap_obj = entities.create_object(mdl, v3(1089.62, 206.334, -48.473))
        trap_obj2 = entities.create_object(mdl, v3(1090.0166, 213.826, -48.473))
        ENTITY.SET_ENTITY_HEADING(trap_obj2, 31.0)
        local objs = {trap_obj, trap_obj2}
        for _, obj in objs do
            entities.set_can_migrate(entities.handle_to_pointer(obj), false)
            ENTITY.FREEZE_ENTITY_POSITION(obj, true)
            ENTITY.SET_ENTITY_NO_COLLISION_ENTITY(players.user_ped(), obj, false)
        end
    end
    wait()
end, function()
    local objs = {trap_obj, trap_obj2}
    for _, obj in objs do
        if obj ~= nil then
            NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(obj)
            entities.delete_by_handle(obj)
        end
    end
end)

GTAC(allevent, "发送到高尔夫俱乐部", {"golf"}, "让战局中所有人都去打高尔夫.", function()
    for _, pid in players.list(false, true, true) do
        util.trigger_script_event(1 << pid, {1103127469, players.user(), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, math.random(1, 10)})
        util.trigger_script_event(1 << pid, {1103127469, players.user(),0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1})
    end
end)

GTAC(allevent, "将所有人传送到海洋", {"alltpvehocean"}, "", function()
    TeleportEveryonesVehicleToOcean()
end)

VehTeleportLoadIterations = 20
GTluaScript.slider(allevent, "循环加载载具传送", {"vehloaditerations"}, "请记住,每次循环都是十分之一秒.默认值为20秒或2秒.", 1, 100, 20, 1, function(value)
    VehTeleportLoadIterations = value
end)

GTAC(allevent, "移除所有人的载具无敌", {"allremovevehgod"}, "", function ()
    RemoveVehicleGodmodeForAll()
end)

GTLP(allevent, "加入战局时向玩家敬酒", {}, "", function ()
    CheckLobbyForPlayers()
end)

    GTTG(allevent, "飞机坠落", {},"各种飞机坠毁事件", function(on)
        angry_planes = on
        start_angryplanes_thread()
    end)

    GTTG(allevent, '定点轰炸', {'nukeWP'}, '选择标记点', function ()
        lhbj()
    end)

    GTAC(allguyssound, "空袭", {}, "模仿空袭", function()
        util.toast("空袭来临!!!")
        GTYYDS.GTYYDS1("Air_Defences_Activated", "DLC_sum20_Business_Battle_AC_Sounds", 3000)
        GTYYDS.GTYYDS1("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 1000)
        GTYYDS.GTYYDS1("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 1000)
        GTYYDS.GTYYDS1("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 500)
        GTYYDS.GTYYDS1("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 500)
        GTYYDS.GTYYDS1("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 125)
        GTYYDS.GTYYDS1("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 125)
        GTYYDS.GTYYDS1("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 125)
        GTYYDS.GTYYDS1("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 125)
        GTYYDS.GTYYDS1("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 125)
        GTYYDS.GTYYDS1("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 125)
        GTYYDS.GTYYDS1("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 125)
        GTYYDS.GTYYDS1("5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 125)
        GTYYDS.GTYYDS2(EARRAPE_FLASH, 0)
        GTYYDS.GTYYDS2(EARRAPE_FLASH, 150)
        GTYYDS.GTYYDS2(EARRAPE_BED, 0)
        GTYYDS.GTYYDS2(EARRAPE_NONE, 0)
    end)


    GTAC(allguyssound, "防空警报", {"AirDefencesSound"}, "", function()
        fangkongjingbao()
    end)
            
    GTAC(allguyssound, "噪音", {"badsound", "earrape"}, "超大声!!!请降低您的音量\n在战局中播放,对玩家有效", function()
        zaoyin()
    end)

    function GetLocalPed()
    return PLAYER.PLAYER_PED_ID()
end

G_GeneratedList = false

function AddEntityToList(listName, handle, generatedCheck)
    if ((not G_GeneratedList) and generatedCheck) or (not generatedCheck) then
        G_GeneratedList = true
        local lis = GT(allcrash, listName .. " handle " .. handle, {}, "")
        GTAC(lis, "删除", {}, "", function()
            entities.delete_by_handle(handle)
            GTluaScript.delete(lis)
            G_GeneratedList = false
        end)
        GTAC(lis, "传送到实体", {}, "", function()
            local pos = ENTITY.GET_ENTITY_COORDS(handle)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(GetLocalPed(), pos.x, pos.y, pos.z + 1, false, false, false)
        end)
        GTAC(lis, "驾驶实体", {}, "", function()
            PED.SET_PED_INTO_VEHICLE(GetLocalPed(), handle, -1)
        end)
        GTAC(lis, "传送到我", {}, "", function()
            local pos = ENTITY.GET_ENTITY_COORDS(GetLocalPed())
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(handle, pos.x, pos.y, pos.z + 1, false, false, false)
        end)
    end
end
planes = {'microlight', 'cuban800', 'tula', 'alphaz1', 'velum2', 'nimbus', 'seabreeze'} 
coords = {
    {-1718.5878, -982.02405, 322.83115},
    {-2671.5007, 3404.2637, 455.1972},
    {9.977266, 6621.406, 306.46536 },
    {3529.1458, 3754.5452, 109.96472},
    {252, 2815, 120},
}
to_ply = 1

crashr = GT(allcrash, '全局崩溃', {}, '')

    function Change_player_model(hash)
    local model_hash = hash
    STREAMING.REQUEST_MODEL(model_hash)
    while(not STREAMING.HAS_MODEL_LOADED(model_hash))
    do
		wait(0)
    end
    PLAYER.SET_PLAYER_MODEL(model_hash)
    STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(model_hash)
end

sancrashr = GT(crashr, '全局伞崩', {}, '')
donggeb = GT(crashr, '董哥崩', {}, '')

GTAC(crashr, "SARS崩溃", {}, "无法检测到是您使用的全局崩溃", function()
    PHYSICS.ROPE_LOAD_TEXTURES()
    local hashes = {2132890591, 2727244247}
    local pc = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(0,PlayerID))
    local veh = VEHICLE.CREATE_VEHICLE(#hashes, pc.x + 5, pc.y, pc.z, 0, true, true, false)
    local ped = PED.CREATE_PED(26, hashes[2], pc.x, pc.y, pc.z + 1, 0, true, false)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh); NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ped)
    ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
    ENTITY.SET_ENTITY_VISIBLE(ped, false, 0)
    ENTITY.SET_ENTITY_VISIBLE(veh, false, 0)
    local rope = PHYSICS.ADD_ROPE(pc.x + 5, pc.y, pc.z, 0, 0, 0, 1, 1, 0.0000000000000000000000000000000000001, 1, 1, true, true, true, 1, true, 0)
    local vehc = ENTITY.GET_ENTITY_COORDS(veh); local pedc = ENTITY.GET_ENTITY_COORDS(ped)
    PHYSICS.ATTACH_ENTITIES_TO_ROPE(rope, veh, ped, vehc.x, vehc.y, vehc.z, pedc.x, pedc.y, pedc.z, 2, 0, 0, "Center", "Center")
    wait(1000)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh); NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ped)
    entities.delete_by_handle(veh); entities.delete_by_handle(ped)
    PHYSICS.DELETE_CHILD_ROPE(rope)
    PHYSICS.ROPE_UNLOAD_TEXTURES()
end)

GTAC(crashr, "第六感", {"sixfeel"}, "SARS增强版", function()
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(0,PlayerID))
    local ppos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    pos.x = pos.x+5
    ppos.z = ppos.z+1
    Utillitruck3 = entities.create_vehicle(2132890591, pos, 0)
    Utillitruck3_pos = ENTITY.GET_ENTITY_COORDS(Utillitruck3)
    kur = entities.create_ped(26, 2727244247, ppos, 0)
    kur_pos = ENTITY.GET_ENTITY_COORDS(kur)
    ENTITY.SET_ENTITY_INVINCIBLE(kur, true)
    newRope = PHYSICS.ADD_ROPE(pos.x, pos.y, pos.z, 0, 0, 0, 1, 1, 0.0000000000000000000000000000000000001, 1, 1, true, true, true, 1.0, true, "Center")
    PHYSICS.ATTACH_ENTITIES_TO_ROPE(newRope, Utillitruck3, kur, Utillitruck3_pos.x, Utillitruck3_pos.y, Utillitruck3_pos.z, kur_pos.x, kur_pos.y, kur_pos.z, 2, 0, 0, "Center", "Center")
    wait(100)
    ENTITY.SET_ENTITY_INVINCIBLE(kur, true)
    newRope = PHYSICS.ADD_ROPE(pos.x, pos.y, pos.z, 0, 0, 0, 1, 1, 0.0000000000000000000000000000000000001, 1, 1, true, true, true, 1.0, true, "Center")
    PHYSICS.ATTACH_ENTITIES_TO_ROPE(newRope, Utillitruck3, kur, Utillitruck3_pos.x, Utillitruck3_pos.y, Utillitruck3_pos.z, kur_pos.x, kur_pos.y, kur_pos.z, 2, 0, 0, "Center", "Center") 
    wait(100)
    PHYSICS.ROPE_LOAD_TEXTURES()
    local hashes = {2132890591, 2727244247}
    local pc = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    local veh = VEHICLE.CREATE_VEHICLE(#hashes, pc.x + 5, pc.y, pc.z, 0, true, true, false)
    local ped = PED.CREATE_PED(26, hashes[2], pc.x, pc.y, pc.z + 1, 0, true, false)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh); NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ped)
    ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
    ENTITY.SET_ENTITY_VISIBLE(ped, false, 0)
    ENTITY.SET_ENTITY_VISIBLE(veh, false, 0)
    local rope = PHYSICS.ADD_ROPE(pc.x + 5, pc.y, pc.z, 0, 0, 0, 1, 1, 0.0000000000000000000000000000000000001, 1, 1, true, true, true, 1, true, 0)
    local vehc = getEntityCoords(veh); local pedc = getEntityCoords(ped)
    PHYSICS.ATTACH_ENTITIES_TO_ROPE(rope, veh, ped, vehc.x, vehc.y, vehc.z, pedc.x, pedc.y, pedc.z, 2, 0, 0, "Center", "Center")
    wait(1000)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh); NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ped)
    PHYSICS.DELETE_CHILD_ROPE(rope)
    PHYSICS.ROPE_UNLOAD_TEXTURES()
end)

GTAC(crashr, "星穹铁道", {"miHoYo"}, "miHoYo!!!", function()
    menu.trigger_commands("flashboom")
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(0,PlayerID))
    local ppos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    pos.x = pos.x+5
    ppos.z = ppos.z+1
    Utillitruck3 = entities.create_vehicle(2132890591, pos, 0)
    Utillitruck3_pos = ENTITY.GET_ENTITY_COORDS(Utillitruck3)
    kur = entities.create_ped(26, 2727244247, ppos, 0)
    kur_pos = ENTITY.GET_ENTITY_COORDS(kur)
    ENTITY.SET_ENTITY_INVINCIBLE(kur, true)
    newRope = PHYSICS.ADD_ROPE(pos.x, pos.y, pos.z, 0, 0, 0, 1, 1, 0.0000000000000000000000000000000000001, 1, 1, true, true, true, 1.0, true, "Center")
    PHYSICS.ATTACH_ENTITIES_TO_ROPE(newRope, Utillitruck3, kur, Utillitruck3_pos.x, Utillitruck3_pos.y, Utillitruck3_pos.z, kur_pos.x, kur_pos.y, kur_pos.z, 2, 0, 0, "Center", "Center")
    wait(100)
    ENTITY.SET_ENTITY_INVINCIBLE(kur, true)
    newRope = PHYSICS.ADD_ROPE(pos.x, pos.y, pos.z, 0, 0, 0, 1, 1, 0.0000000000000000000000000000000000001, 1, 1, true, true, true, 1.0, true, "Center")
    PHYSICS.ATTACH_ENTITIES_TO_ROPE(newRope, Utillitruck3, kur, Utillitruck3_pos.x, Utillitruck3_pos.y, Utillitruck3_pos.z, kur_pos.x, kur_pos.y, kur_pos.z, 2, 0, 0, "Center", "Center") 
    wait(100)
    PHYSICS.ROPE_LOAD_TEXTURES()
    local hashes = {2132890591, 2727244247}
    local pc = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    local veh = VEHICLE.CREATE_VEHICLE(#hashes, pc.x + 5, pc.y, pc.z, 0, true, true, false)
    local ped = PED.CREATE_PED(26, hashes[2], pc.x, pc.y, pc.z + 1, 0, true, false)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh); NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ped)
    ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
    ENTITY.SET_ENTITY_VISIBLE(ped, false, 0)
    ENTITY.SET_ENTITY_VISIBLE(veh, false, 0)
    local rope = PHYSICS.ADD_ROPE(pc.x + 5, pc.y, pc.z, 0, 0, 0, 1, 1, 0.0000000000000000000000000000000000001, 1, 1, true, true, true, 1, true, 0)
    local vehc = getEntityCoords(veh); local pedc = getEntityCoords(ped)
    PHYSICS.ATTACH_ENTITIES_TO_ROPE(rope, veh, ped, vehc.x, vehc.y, vehc.z, pedc.x, pedc.y, pedc.z, 2, 0, 0, "Center", "Center")
    wait(1000)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh); NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ped)
    PHYSICS.DELETE_CHILD_ROPE(rope)
    PHYSICS.ROPE_UNLOAD_TEXTURES()
end)

GTAC(sancrashr, "沉鱼落雁", {""}, "", function (on)
for i = 0 , 1 do
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()), 0, 0, 1000)
    PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(players.user(),-692292317)
    TASK.TASK_PARACHUTE_TO_TARGET(players.user_ped(players.user()),-1087,-3012,13.94)
    wait(1200)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    TASK.SET_PARACHUTE_TASK_THRUST(players.user_ped(players.user()),1000)
    end
for i = 0 , 1 do
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()), 0, 0, 1000)
    PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(players.user(),-2071359746)
    TASK.TASK_PARACHUTE_TO_TARGET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),-1087,-3012,13.94)
    wait(1200)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    TASK.SET_PARACHUTE_TASK_THRUST(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),1000)
    end
for i = 0 , 1 do
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()), 0, 0, 1000)
    PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(players.user(),0xFE141DA6)
    TASK.TASK_PARACHUTE_TO_TARGET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),-1087,-3012,13.94)
    wait(1200)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    TASK.SET_PARACHUTE_TASK_THRUST(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),1000)
    end
for i = 0 , 1 do
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()), 0, 0, 1000)
    PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(players.user(),0x7CAB34D0)
    TASK.TASK_PARACHUTE_TO_TARGET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),-1087,-3012,13.94)
    wait(1200)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    TASK.SET_PARACHUTE_TASK_THRUST(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),1000)
    end
for i = 0 , 1 do
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()), 0, 0, 1000)
    PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(players.user(),0x6A59902D)
    TASK.TASK_PARACHUTE_TO_TARGET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),-1087,-3012,13.94)
    wait(1200)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    TASK.SET_PARACHUTE_TASK_THRUST(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),1000)
    end
for i = 0 , 1 do
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()), 0, 0, 1000)
    PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(players.user(),0xAF62F6B2)
    TASK.TASK_PARACHUTE_TO_TARGET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),-1087,-3012,13.94)
    wait(1200)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped(players.user()))
    TASK.SET_PARACHUTE_TASK_THRUST(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),1000)
    end
for i = 0 , 1 do
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()), 0, 0, 1000)
    PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(players.user(),0x3D6AAA9B)
    TASK.TASK_PARACHUTE_TO_TARGET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),-1087,-3012,13.94)
    wait(1200)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    TASK.SET_PARACHUTE_TASK_THRUST(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),1000)
    end
for i = 0 , 1 do
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()), 0, 0, 1000)
    PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(players.user(),634122469)
    TASK.TASK_PARACHUTE_TO_TARGET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),-1087,-3012,13.94)
    wait(1200)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    TASK.SET_PARACHUTE_TASK_THRUST(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),1000)
    end
for i = 0 , 1 do
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()), 0, 0, 1000)
    PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(players.user(),634122469)
    TASK.TASK_PARACHUTE_TO_TARGET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),-1087,-3012,13.94)
    wait(1200)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    TASK.SET_PARACHUTE_TASK_THRUST(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),1000)
    end
for i = 0 , 1 do
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()), 0, 0, 1000)
    PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(players.user(),28071787)
    TASK.TASK_PARACHUTE_TO_TARGET(players.user_ped(players.user()),-1087,-3012,13.94)
    wait(1200)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    TASK.SET_PARACHUTE_TASK_THRUST(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),1000)
    end
for i = 0 , 1 do
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()), 0, 0, 1000)
    PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(players.user(),3628567820)
    TASK.TASK_PARACHUTE_TO_TARGET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),-1087,-3012,13.94)
    wait(1200)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    TASK.SET_PARACHUTE_TASK_THRUST(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),1000)
    end
for i = 0 , 1 do
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()), 0, 0, 1000)
    PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(players.user(),2478845327)
    TASK.TASK_PARACHUTE_TO_TARGET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),-1087,-3012,13.94)
    wait(1200)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    TASK.SET_PARACHUTE_TASK_THRUST(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),1000)
    end
for i = 0 , 1 do
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()), 0, 0, 1000)
    PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(players.user(),965689831)
    TASK.TASK_PARACHUTE_TO_TARGET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),-1087,-3012,13.94)
    wait(1200)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    TASK.SET_PARACHUTE_TASK_THRUST(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),1000)
    end
for i = 0 , 1 do
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()), 0, 0, 1000)
    PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(players.user(),366178255)
    TASK.TASK_PARACHUTE_TO_TARGET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),-1087,-3012,13.94)
    wait(1200)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    TASK.SET_PARACHUTE_TASK_THRUST(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),1000)
    end
for i = 0 , 1 do
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()), 0, 0, 1000)
    PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(players.user(),2180801487)
    TASK.TASK_PARACHUTE_TO_TARGET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),-1087,-3012,13.94)
    wait(1200)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    TASK.SET_PARACHUTE_TASK_THRUST(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),1000)
    end
for i = 0 , 1 do
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()), 0, 0, 1000)
    PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(players.user(),609884033)
    TASK.TASK_PARACHUTE_TO_TARGET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),-1087,-3012,13.94)
    wait(1200)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    TASK.SET_PARACHUTE_TASK_THRUST(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),1000)
    end
for i = 0 , 1 do
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()), 0, 0, 1000)
    PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(players.user(),1264117114)
    TASK.TASK_PARACHUTE_TO_TARGET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),-1087,-3012,13.94)
    wait(1200)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()))
    TASK.SET_PARACHUTE_TASK_THRUST(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()),1000)
    end
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID()), -1087,-3012,13.94)
    wait(200)
end)

TTPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user())
TTPos = ENTITY.GET_ENTITY_COORDS(TTPed, true)

GTAC(sancrashr, "载具伞崩V1", {}, "崩溃全局玩家", function ()
    carcrashv1()
end)

GTAC(sancrashr, "载具伞崩V2", {}, "崩溃全局玩家", function ()
    gtoast("开始崩溃，请反复按空格键")
local spped = PLAYER.PLAYER_PED_ID()
local ppos = ENTITY.GET_ENTITY_COORDS(spped, true)
    local SelfPlayerPos = ENTITY.GET_ENTITY_COORDS(spped, true)
    local Ruiner2 = CreateVehicle(util.joaat("Ruiner2"), SelfPlayerPos, ENTITY.GET_ENTITY_HEADING(TTPed), true)
    PED.SET_PED_INTO_VEHICLE(spped, Ruiner2, -1)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(Ruiner2, SelfPlayerPos.x, SelfPlayerPos.y, 800, false, true, true)
    wait(200)
    VEHICLE.VEHICLE_SET_PARACHUTE_MODEL_OVERRIDE(Ruiner2, 148511758)
    VEHICLE.VEHICLE_START_PARACHUTING(Ruiner2, true)
    wait(300000)
    entities.delete_by_handle(Ruiner2)
ENTITY.SET_ENTITY_COORDS_NO_OFFSET(spped, ppos.x, ppos.y, ppos.z, false, true, true)
end)

GTAC(sancrashr, "载具伞崩V3", {}, "崩溃全局玩家", function ()
    newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;","~r~开始崩溃", "CHAR_CHOP", 140)
    local SelfPlayerPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID())
    local PreviousPlayerPos = ENTITY.GET_ENTITY_COORDS(SelfPlayerPed, true)
    --^^
    local user = players.user()
    local user_ped = players.user_ped()
    local pos = players.get_position(user)
    ---^^
    local spped = PLAYER.PLAYER_PED_ID()
    local ppos = ENTITY.GET_ENTITY_COORDS(spped, true)
    for i = 1, 5 do
        local SelfPlayerPos = ENTITY.GET_ENTITY_COORDS(spped, true)
        local Ruiner2 = CreateVehicle(util.joaat("Ruiner2"), SelfPlayerPos, ENTITY.GET_ENTITY_HEADING(TTPed), true)
        PED.SET_PED_INTO_VEHICLE(spped, Ruiner2, -1)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(Ruiner2, SelfPlayerPos.x, SelfPlayerPos.y, 200, false, true, true)
        wait(100)
        VEHICLE.VEHICLE_SET_PARACHUTE_MODEL_OVERRIDE(Ruiner2, 	3235319999)
        VEHICLE.VEHICLE_START_PARACHUTING(Ruiner2, true)
        wait(100)
        entities.delete_by_handle(Ruiner2)
    end

    for i = 1, 10 do
        local SelfPlayerPos = ENTITY.GET_ENTITY_COORDS(spped, true)
        local Ruiner2 = CreateVehicle(util.joaat("Ruiner2"), SelfPlayerPos, ENTITY.GET_ENTITY_HEADING(TTPed), true)
        PED.SET_PED_INTO_VEHICLE(spped, Ruiner2, -1)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(Ruiner2, SelfPlayerPos.x, SelfPlayerPos.y, 2000, false, true, true)
        wait(120)
        VEHICLE.VEHICLE_SET_PARACHUTE_MODEL_OVERRIDE(Ruiner2, 	260873931)
        VEHICLE.VEHICLE_START_PARACHUTING(Ruiner2, true)
        wait(120)
        entities.delete_by_handle(Ruiner2)
    end

    for i = 1, 10 do
        local SelfPlayerPos = ENTITY.GET_ENTITY_COORDS(spped, true)
        local Ruiner2 = CreateVehicle(util.joaat("Ruiner2"), SelfPlayerPos, ENTITY.GET_ENTITY_HEADING(TTPed), true)
        PED.SET_PED_INTO_VEHICLE(spped, Ruiner2, -1)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(Ruiner2, SelfPlayerPos.x, SelfPlayerPos.y, 1000, false, true, true)
        wait(100)
        VEHICLE.VEHICLE_SET_PARACHUTE_MODEL_OVERRIDE(Ruiner2, 	546252211)
        VEHICLE.VEHICLE_START_PARACHUTING(Ruiner2, true)
        wait(100)
        entities.delete_by_handle(Ruiner2)
    end


    for i = 1, 8 do
        local SelfPlayerPos = ENTITY.GET_ENTITY_COORDS(spped, true)
        local Ruiner2 = CreateVehicle(util.joaat("Ruiner2"), SelfPlayerPos, ENTITY.GET_ENTITY_HEADING(TTPed), true)
        PED.SET_PED_INTO_VEHICLE(spped, Ruiner2, -1)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(Ruiner2, SelfPlayerPos.x, SelfPlayerPos.y, 800, false, true, true)
        wait(200)
        VEHICLE.VEHICLE_SET_PARACHUTE_MODEL_OVERRIDE(Ruiner2, 	148511758)
        VEHICLE.VEHICLE_START_PARACHUTING(Ruiner2, true)
        wait(200)
        entities.delete_by_handle(Ruiner2)
    end

    for i = 1, 10 do
        local SelfPlayerPos = ENTITY.GET_ENTITY_COORDS(spped, true)
        local Ruiner2 = CreateVehicle(util.joaat("Ruiner2"), SelfPlayerPos, ENTITY.GET_ENTITY_HEADING(TTPed), true)
        PED.SET_PED_INTO_VEHICLE(spped, Ruiner2, -1)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(Ruiner2, SelfPlayerPos.x, SelfPlayerPos.y, 500, false, true, true)
        wait(100)
        VEHICLE.VEHICLE_SET_PARACHUTE_MODEL_OVERRIDE(Ruiner2, 	260873931)
        VEHICLE.VEHICLE_START_PARACHUTING(Ruiner2, true)
        wait(100)
        entities.delete_by_handle(Ruiner2)
    end
    wait(200)

    for i = 1, 5 do
        local SelfPlayerPos = ENTITY.GET_ENTITY_COORDS(spped, true)
        local Ruiner2 = CreateVehicle(util.joaat("Ruiner2"), SelfPlayerPos, ENTITY.GET_ENTITY_HEADING(TTPed), true)
        PED.SET_PED_INTO_VEHICLE(spped, Ruiner2, -1)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(Ruiner2, SelfPlayerPos.x, SelfPlayerPos.y, 300, false, true, true)
        wait(500)
        VEHICLE.VEHICLE_SET_PARACHUTE_MODEL_OVERRIDE(Ruiner2, 1381105889)
        VEHICLE.VEHICLE_START_PARACHUTING(Ruiner2, true)
        wait(500)
        entities.delete_by_handle(Ruiner2)
    end

    for i = 1, 25 do
        local SelfPlayerPos = ENTITY.GET_ENTITY_COORDS(spped, true)
        local Ruiner2 = CreateVehicle(util.joaat("Ruiner2"), SelfPlayerPos, ENTITY.GET_ENTITY_HEADING(TTPed), true)
        PED.SET_PED_INTO_VEHICLE(spped, Ruiner2, -1)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(Ruiner2, SelfPlayerPos.x, SelfPlayerPos.y, 200, false, true, true)
        wait(150)
        VEHICLE.VEHICLE_SET_PARACHUTE_MODEL_OVERRIDE(Ruiner2, 	1500925016)
        VEHICLE.VEHICLE_START_PARACHUTING(Ruiner2, true)
        wait(150)
        entities.delete_by_handle(Ruiner2)
    end
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(spped, ppos.x, ppos.y, ppos.z, false, true, true)
    --^^
    for n = 0 , 2 do
        local object_hash = util.joaat("prop_logpile_06b")
        STREAMING.REQUEST_MODEL(object_hash)
          while not STREAMING.HAS_MODEL_LOADED(object_hash) do
           wait()
        end
        PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(PLAYER.PLAYER_ID(),object_hash)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(SelfPlayerPed, 0,0,100, false, true, true)
        WEAPON.GIVE_DELAYED_WEAPON_TO_PED(SelfPlayerPed, 0xFBAB5776, 100, false)
        wait(800)
        for i = 0 , 1 do
            PED.FORCE_PED_TO_OPEN_PARACHUTE(SelfPlayerPed)
        end
        wait(800)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(SelfPlayerPed, PreviousPlayerPos.x, PreviousPlayerPos.y, PreviousPlayerPos.z, false, true, true)

        local object_hash2 = util.joaat("prop_beach_parasol_03")
        STREAMING.REQUEST_MODEL(object_hash2)
          while not STREAMING.HAS_MODEL_LOADED(object_hash2) do
           wait()
        end
        PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(PLAYER.PLAYER_ID(),object_hash2)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(SelfPlayerPed, 0,0,100, 0, 0, 1)
        WEAPON.GIVE_DELAYED_WEAPON_TO_PED(SelfPlayerPed, 0xFBAB5776, 100, false)
        wait(800)
        for i = 0 , 1 do
            PED.FORCE_PED_TO_OPEN_PARACHUTE(SelfPlayerPed)
        end
        wait(800)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(SelfPlayerPed, PreviousPlayerPos.x, PreviousPlayerPos.y, PreviousPlayerPos.z, false, true, true)
    end
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(SelfPlayerPed, PreviousPlayerPos.x, PreviousPlayerPos.y, PreviousPlayerPos.z, false, true, true)


    PLAYER.SET_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(players.user(), 0xFBF7D21F)
    WEAPON.GIVE_DELAYED_WEAPON_TO_PED(user_ped, 0xFBAB5776, 100, false)
    TASK.TASK_PARACHUTE_TO_TARGET(user_ped, pos.x, pos.y, pos.z)
    wait()
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(user_ped)
    wait(300)
    WEAPON.GIVE_DELAYED_WEAPON_TO_PED(user_ped, 0xFBAB5776, 100, false)
    PLAYER.CLEAR_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(user)
    wait(1000)

    for i = 1, 10 do
        util.spoof_script("freemode", SYSTEM.WAIT)
    end
    ENTITY.SET_ENTITY_HEALTH(user_ped, 0)
    NETWORK.NETWORK_RESURRECT_LOCAL_PLAYER(pos.x,pos.y,pos.z, 0, false, false, 0)
    for i = 1, 2 do
        local SelfPlayerPos = ENTITY.GET_ENTITY_COORDS(spped, true)
        local Ruiner2 = CreateVehicle(util.joaat("Ruiner2"), SelfPlayerPos, ENTITY.GET_ENTITY_HEADING(TTPed), true)
        PED.SET_PED_INTO_VEHICLE(spped, Ruiner2, -1)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(Ruiner2, SelfPlayerPos.x, SelfPlayerPos.y, 150, false, true, true)
        wait(200)
        VEHICLE.VEHICLE_SET_PARACHUTE_MODEL_OVERRIDE(Ruiner2, 	1500925016)
        VEHICLE.VEHICLE_START_PARACHUTING(Ruiner2, true)
        wait(200)
        entities.delete_by_handle(Ruiner2)
    end
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(spped, ppos.x, ppos.y, ppos.z, false, true, true)
    for i = 1, 2 do
    PLAYER.SET_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(players.user(), 0xFBF7D21F)
    WEAPON.GIVE_DELAYED_WEAPON_TO_PED(user_ped, 0xFBAB5776, 100, false)
    TASK.TASK_PARACHUTE_TO_TARGET(user_ped, pos.x, pos.y, pos.z)
    wait()
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(user_ped)
    wait(200)
    WEAPON.GIVE_DELAYED_WEAPON_TO_PED(user_ped, 0xFBAB5776, 100, false)
    PLAYER.CLEAR_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(user)
    wait(4500)
    for i = 1, 2 do
        util.spoof_script("freemode", SYSTEM.WAIT)
    end
    ENTITY.SET_ENTITY_HEALTH(user_ped, 0)
    NETWORK.NETWORK_RESURRECT_LOCAL_PLAYER(pos.x,pos.y,pos.z, 0, false, false, 0)

end
end)

    GTAC(sancrashr, "人物伞崩全局V1", {}, "崩溃全局玩家", function()
        personlcrashv1()
    end)

    GTAC(sancrashr,"人物伞崩全局V2",{},"崩溃全局玩家",function()
        personalcrashv2()
    end)

    GTAC(sancrashr,"人物伞崩全局V3",{},"崩溃全局玩家",function()
        personalcrashv3()
    end)

    GTAC(sancrashr, "人物伞崩全局V4", {}, "崩溃全局玩家", function()
        personalcrashv4()
    end)

    GTAC(sancrashr, "人物伞崩全局V5", {}, "崩溃全局玩家", function()
        personalcrashv5()
    end)

    GTAC(sancrashr,"人物伞崩全局V6",{},"崩溃全局玩家",function()
        rlengzhan()
    end)

GTAC(sancrashr, "人物伞崩全局V7", {""}, "崩溃全局玩家", function()
    PLAYER.SET_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(PLAYER.PLAYER_ID(),0xE5022D03)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()))
    wait(20)
    local p_pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid))
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),p_pos.x,p_pos.y,p_pos.z,false,true,true)
    WEAPON.GIVE_DELAYED_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()), 0xFBAB5776, 1000, false)
    TASK.TASK_PARACHUTE_TO_TARGET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),-1087,-3012,13.94)
    wait(500)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()))
    wait(1000)
    PLAYER.CLEAR_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(PLAYER.PLAYER_ID())
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()))
 end)

 GTluaScript.click_slider(sancrashr,"人物伞崩全局V8", {""}, "1 = 车伞 , 2 = 伞崩", 1, 2, 1, 1, function(on_change)
	if on_change == 1 then
    local user = players.user_ped()
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()))
    local old_pos = ENTITY.GET_ENTITY_COORDS(user, false)
    local mdl = util.joaat("apa_mp_apa_yacht")
    BlockSyncs(pid, function()
    PLAYER.SET_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(PLAYER.PLAYER_ID(),0xE5022D03)
    local TPP = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PlayerID)
    local SelfPlayerPos = ENTITY.GET_ENTITY_COORDS(TPP, true)
    local SelfPlayerPed = CreatePed(26, util.joaat("player_one"), SelfPlayerPos, ENTITY.GET_ENTITY_HEADING(TargetPlayerPed))  
    for i = 0 , -1 do 
    local SelfPlayerPed = CreatePed(26, util.joaat("player_one"), SelfPlayerPos, ENTITY.GET_ENTITY_HEADING(TargetPlayerPed))      
    ENTITY.SET_ENTITY_INVINCIBLE(SelfPlayerPed, true)
    wait()
    end
    for i = 1, 20 do                     
    ENTITY.SET_ENTITY_INVINCIBLE(SelfPlayerPed, true)
    local Ruiner2 = CreateVehicle(util.joaat("Ruiner2"), SelfPlayerPos, ENTITY.GET_ENTITY_HEADING(TargetPlayerPed), true)
    PED.SET_PED_INTO_VEHICLE(SelfPlayerPed, Ruiner2, -1)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(Ruiner2, SelfPlayerPos.x, SelfPlayerPos.y, 1000, false, true, true)
    wait(200)
    PLAYER.SET_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(PLAYER.PLAYER_ID(),0xE5022D03)
    VEHICLE._SET_VEHICLE_PARACHUTE_MODEL(Ruiner2, util.joaat("prop_logpile_07b"))
    VEHICLE._SET_VEHICLE_PARACHUTE_ACTIVE(Ruiner2, true)
    wait(200)
    entities.delete_by_handle(Ruiner2)
    end
end)
    end
	if on_change == 2 then
        newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;","~r~崩溃开始", "CHAR_CHOP", 140)
        local user = players.user_ped()
        local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid))
        local old_pos = ENTITY.GET_ENTITY_COORDS(user, false)
        local mdl = util.joaat("apa_mp_apa_yacht")
        BlockSyncs(pid, function()
        PLAYER.SET_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(PLAYER.PLAYER_ID(),0xE5022D03)
        local TPP = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PlayerID)
        local SelfPlayerPos = ENTITY.GET_ENTITY_COORDS(TPP, true)
        local SelfPlayerPed = CreatePed(26, util.joaat("player_one"), SelfPlayerPos, ENTITY.GET_ENTITY_HEADING(TargetPlayerPed))  
        for i = 0 , -1 do 
        local SelfPlayerPed = CreatePed(26, util.joaat("player_one"), SelfPlayerPos, ENTITY.GET_ENTITY_HEADING(TargetPlayerPed))      
        ENTITY.SET_ENTITY_INVINCIBLE(SelfPlayerPed, true)
        wait()
        end
        for i = 1, 20 do                     
        ENTITY.SET_ENTITY_INVINCIBLE(SelfPlayerPed, true)
        local Ruiner2 = CreateVehicle(util.joaat("Ruiner2"), SelfPlayerPos, ENTITY.GET_ENTITY_HEADING(TargetPlayerPed), true)
        PED.SET_PED_INTO_VEHICLE(SelfPlayerPed, Ruiner2, -1)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(Ruiner2, SelfPlayerPos.x, SelfPlayerPos.y, 1000, false, true, true)
        wait(200)
        PLAYER.SET_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(PLAYER.PLAYER_ID(),0xE5022D03)
        VEHICLE._SET_VEHICLE_PARACHUTE_MODEL(Ruiner2, util.joaat("v_ilev_light_wardrobe_face"))
        VEHICLE._SET_VEHICLE_PARACHUTE_ACTIVE(Ruiner2, true)
        wait(200)
        entities.delete_by_handle(Ruiner2)
        end
        newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;","~r~崩溃结束", "CHAR_CHOP", 140)
    end)
end
end)



    GTAC(crashr, "韦德崩溃", {}, "崩溃全局玩家", function()
        wadecrash()
    end)

    GTAC(crashr, "耶稣的救赎", {}, "", function ()
        jesus_help_me()
    end)

    GTAC(crashr, "大傻逼全局崩", {}, "大概率自崩", function (on)
    wait(9000)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(players.user_ped(),players.user_ped(), 1, 1, 1, 1, 1, 1, 1, true, true, true, false, 1, true)
    end)

 GTAC(donggeb,"董哥崩溃v1",{}, "", function()
    Change_player_model(0x9C9EFFD8)
    local land_area = {
        v3(1798.031,-2831.863,3.562),
        v3(-245.300,-656.019,33.168),
        v3(-2561.787,3175.436,32.820),
        v3(58.667,7198.895,3.372),
        v3(1279.582,3064.881,40.534),
        v3(3003.555,5777.601,300.729),
        v3(460.582,5572.078,781.179),
        v3(3615.213,5024.245,11.396),
        v3(3668.583,5645.834,11.537),
        v3(2027.388,-1588.856,251.008),
        v3(-1240.75,-587.97,27.25)
        }
    for i ,crashpos in pairs(land_area) do
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped(players.user()))
    wait(0)
        local crash_num = 2
        pack_crash = util.create_thread(function()
            while crash_num == 2 do
                    for set_para_packmodel = 0 ,50 do
                        crash_pack = ENTITY.ATTACH_ENTITY_BONE_TO_ENTITY_BONE_Y_FORWARD(players.user(),util.joaat("v_res_tt_fridge"))
                        wait(100)      				
                    end
                end
        end,nil)
        pos = crashpos
        pos.z = pos.z + 0.22
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(crashpos, pos.x, pos.y, pos.z)
        WEAPON.GIVE_DELAYED_WEAPON_TO_PED(players.user_ped(players.user()),0xFBAB5776,1000,false)
        TASK.TASK_PARACHUTE_TO_TARGET(players.user_ped(players.user()),-1087,-3012,13.94)
        wait(600)
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped(players.user()))		
        wait(1000)
    end
    ENTITY.ATTACH_ENTITY_BONE_TO_ENTITY_BONE_Y_FORWARD(players.user()) 
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped(players.user()))
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(players.user_ped(players.user()),-1087,-3012,13.94)
end)

GTAC(donggeb, "董哥崩溃v2", {}, "", function()
    PLAYER.SET_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(PLAYER.PLAYER_ID(),0xE5022D03)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()))
    wait(3)
    local p_pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid))
ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),p_pos.x,p_pos.y,p_pos.z,false,true,true)
    WEAPON.GIVE_DELAYED_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()), 0xFBAB5776, 1000, false)
    TASK.TASK_PARACHUTE_TO_TARGET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),-1087,-3012,13.94)
    wait(300)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()))
    wait(1000)
    PLAYER.CLEAR_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(PLAYER.PLAYER_ID())
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()))
end)

GTAC(donggeb, "董哥崩溃v3", {}, "如停不下来请关闭脚本", function()
dgcrash()
end) 

GTAC(crashr, "同步崩溃", {}, "", function(state)   
    fishmm = state
        local TargetPPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(0,PlayerID)
        local TargetPPos = ENTITY.GET_ENTITY_COORDS(TargetPPed)
        ENTITY.SET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),-1992.8982, -780.7021, -0.37660158, false, false, false, false)
        menu.trigger_commands("levitatepassivemax 0")
        menu.trigger_commands("levitateassistup 0")
        menu.trigger_commands("levitateassistdown 0")
        menu.trigger_commands("noguns")
        menu.trigger_commands("invisibility on")
        wait(1000)
        menu.trigger_commands("acfish")
        wait(100)
        menu.trigger_commands("levitate on")
        wait(100)
        WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),-1813897027,15,true,true)
        wait(100)
        ENTITY.SET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),TargetPPos.x,TargetPPos.y,TargetPPos.z, false, false, false, false)
        wait(100)
    wait(9000)
    if PED.IS_PED_MALE(PLAYER.PLAYER_PED_ID()) then
        menu.trigger_commands("mpmale")
    else
        menu.trigger_commands("mpfemale")
    end
    menu.trigger_commands("levitatepassivemax 0.6")
    menu.trigger_commands("levitateassistup 0.6")
    menu.trigger_commands("levitateassistdown 0.6")
    menu.trigger_commands("levitate off")
    menu.trigger_commands("noguns")
    menu.trigger_commands("invisibility off")
    notification("ok",colors.red)
    newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;","~r~ok", "CHAR_CHOP", 140)
    while fishmm do
        wait()
        PAD._SET_CONTROL_NORMAL(0, 25, 1)
    end
    end)

GTAC(crashr, "绳子崩溃", {"math"}, "", function()
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(0,pid))
    local ppos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(0,pid))
    pos.x = pos.x+5
    ppos.z = ppos.z+1
    Utillitruck3 = entities.create_vehicle(2132890591, pos, 0)
    Utillitruck3_pos = ENTITY.GET_ENTITY_COORDS(Utillitruck3)
    kur = entities.create_ped(26, 2727244247, ppos, 0)
    kur_pos = ENTITY.GET_ENTITY_COORDS(kur)

    ENTITY.SET_ENTITY_INVINCIBLE(kur, true)
    newRope = PHYSICS.ADD_ROPE(pos.x, pos.y, pos.z, 0, 0, 0, 1, 1, 0.0000000000000000000000000000000000001, 1, 1, true, true, true, 1.0, true, "Center")
    PHYSICS.ATTACH_ENTITIES_TO_ROPE(newRope, Utillitruck3, kur, Utillitruck3_pos.x, Utillitruck3_pos.y, Utillitruck3_pos.z, kur_pos.x, kur_pos.y, kur_pos.z, 2, 0, 0, "Center", "Center")
    wait(100)
    ENTITY.SET_ENTITY_INVINCIBLE(kur, true)
    newRope = PHYSICS.ADD_ROPE(pos.x, pos.y, pos.z, 0, 0, 0, 1, 1, 0.0000000000000000000000000000000000001, 1, 1, true, true, true, 1.0, true, "Center")
    PHYSICS.ATTACH_ENTITIES_TO_ROPE(newRope, Utillitruck3, kur, Utillitruck3_pos.x, Utillitruck3_pos.y, Utillitruck3_pos.z, kur_pos.x, kur_pos.y, kur_pos.z, 2, 0, 0, "Center", "Center") 
    wait(100)

    PHYSICS.ROPE_LOAD_TEXTURES()
    local hashes = {2132890591, 2727244247}
    local pc = getEntityCoords(getPlayerPed(0,pid))
    local veh = VEHICLE.CREATE_VEHICLE(#hashes, pc.x + 5, pc.y, pc.z, 0, true, true, false)
    local ped = PED.CREATE_PED(26, hashes[2], pc.x, pc.y, pc.z + 1, 0, true, false)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh); NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ped)
    ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
    ENTITY.SET_ENTITY_VISIBLE(ped, false, 0)
    ENTITY.SET_ENTITY_VISIBLE(veh, false, 0)
    local rope = PHYSICS.ADD_ROPE(pc.x + 5, pc.y, pc.z, 0, 0, 0, 1, 1, 0.0000000000000000000000000000000000001, 1, 1, true, true, true, 1, true, 0)
    local vehc = getEntityCoords(veh); local pedc = getEntityCoords(ped)
    PHYSICS.ATTACH_ENTITIES_TO_ROPE(rope, veh, ped, vehc.x, vehc.y, vehc.z, pedc.x, pedc.y, pedc.z, 2, 0, 0, "Center", "Center")
    wait(1000)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh); NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ped)
    PHYSICS.DELETE_CHILD_ROPE(rope)
    PHYSICS.ROPE_UNLOAD_TEXTURES()
end)

    GTAC(crashr, "核弹崩溃", {""}, "", function()
    local TargetPlayerPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(0,pid)
    local TargetPlayerPos = ENTITY.GET_ENTITY_COORDS(TargetPlayerPed, true)
    local Object_pizza1 = CreateVehicle(1131912276,TargetPlayerPos,0)
    local Object_pizza2 =CreateObject(2981279339,TargetPlayerPos)
        TargetPlayerPos.y = TargetPlayerPos.y + 2
        TargetPlayerPos.z = TargetPlayerPos.z + 70 
        ENTITY.SET_ENTITY_ALPHA(Object_pizza1, 255)
        ENTITY.SET_ENTITY_VISIBLE(Object_pizza1, false, 0)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(Object_pizza1, TargetPlayerPos.x, TargetPlayerPos.y, TargetPlayerPos.z, false, true, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(Object_pizza2,Object_pizza1, 0,  0.0, 0.00, 0.00, 1.0, 1.0,1, true, false, true, false, 0, true)
    wait(5000)
    do
        for i = 0, 30 do 
            pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(0,pid))
            for j = -2, 2 do 
                for k = -2, 2 do 
                    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(0,pid))
                    FIRE.ADD_OWNED_EXPLOSION(PLAYER.PLAYER_PED_ID(), pos.x + j, pos.y + j, pos.z + (30 - i), 29, 999999.99, true, false, 8)
                end
            end
            wait(20)
        end
    end    
    entities.delete_by_handle(Object_pizza1)
    entities.delete_by_handle(Object_pizza2)
    PLAYER.SET_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(PLAYER.PLAYER_ID(),0xE5022D03)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()))
    wait(1)
    local p_pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(0,pid))
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),p_pos.x,p_pos.y,p_pos.z,false,true,true)
    WEAPON.GIVE_DELAYED_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()), 0xFBAB5776, 1000, false)
    TASK.TASK_PARACHUTE_TO_TARGET(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),-1087,-3012,13.94)
    wait(300)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()))
    wait(1000)
    PLAYER.CLEAR_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(PLAYER.PLAYER_ID())
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()))

    local TargetPlayerPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(0,pid)
    local TargetPlayerPos = ENTITY.GET_ENTITY_COORDS(TargetPlayerPed, true)
    local SelfPlayerPed = PLAYER.PLAYER_PED_ID()
    local SelfPlayerPos = ENTITY.GET_ENTITY_COORDS(SelfPlayerPed, true)
    SelfPlayerPos.x = SelfPlayerPos.x + 10
    TargetPlayerPos.x = TargetPlayerPos.x + 10
    local carc = CreateVehicle(2598821281, TargetPlayerPos, ENTITY.GET_ENTITY_HEADING(SelfPlayerPed), true)
    local carcPos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(0,pid))
    local pedc = CreatePed(26, 2597531625, TargetPlayerPos, 0)
    local pedcPos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(0,pid))
    local ropec = PHYSICS.ADD_ROPE(TargetPlayerPos.x, TargetPlayerPos.y, TargetPlayerPos.z, 0, 0, 0, 1, 1, 0.00300000000000000000000000000000000000000000000001, 1, 1, true, true, true, 1.0, true, 0)
    PHYSICS.ATTACH_ENTITIES_TO_ROPE(ropec,carc,pedc,carcPos.x, carcPos.y, carcPos.z ,pedcPos.x, pedcPos.y, pedcPos.z,2, false, false, 0, 0, "Center","Center")
    wait(3500)
    PHYSICS.DELETE_CHILD_ROPE(ropec)
    entities.delete_by_handle(carc)
    entities.delete_by_handle(pedc)
    end)

GTAC(crashr, "闪电崩溃", {"flashboom"}, "", function(on_loop)
    PHYSICS.ROPE_LOAD_TEXTURES()
    local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped())
    local ppos = ENTITY.GET_ENTITY_COORDS(players.user_ped())
    pos.x = pos.x+5
    ppos.z = ppos.z+1
    cargobob = entities.create_vehicle(2132890591, pos, 0)
    cargobob_pos = ENTITY.GET_ENTITY_COORDS(cargobob)
    kur = entities.create_ped(26, 2727244247, ppos, 0)
    kur_pos = ENTITY.GET_ENTITY_COORDS(kur)
    ENTITY.SET_ENTITY_INVINCIBLE(kur, true)
    newRope = PHYSICS.ADD_ROPE(pos.x, pos.y, pos.z, 0, 0, 0, 1, 1, 0.0000000000000000000000000000000000001, 1, 1, true, true, true, 1.0, true, "Center")
    PHYSICS.ATTACH_ENTITIES_TO_ROPE(newRope, cargobob, kur, cargobob_pos.x, cargobob_pos.y, cargobob_pos.z, kur_pos.x, kur_pos.y, kur_pos.z, 2, 0, 0, "Center", "Center")
end)

GTLP(crashr, "绳索崩溃全局", {"ropecrash"}, "", function(on_loop)
    PHYSICS.ROPE_LOAD_TEXTURES()
    local hashes = {2132890591, 2727244247}
    local pc = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(0,pid))
    local veh = VEHICLE.CREATE_VEHICLE(#hashes, pc.x + 5, pc.y, pc.z, 0, true, true, false)
    local ped = PED.CREATE_PED(26, hashes[2], pc.x, pc.y, pc.z + 1, 0, true, false)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh); NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ped)
    ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
    ENTITY.SET_ENTITY_VISIBLE(ped, false, 0)
    ENTITY.SET_ENTITY_VISIBLE(veh, false, 0)
    local rope = PHYSICS.ADD_ROPE(pc.x + 5, pc.y, pc.z, 0, 0, 0, 1, 1, 0.0000000000000000000000000000000000001, 1, 1, true, true, true, 1, true, 0)
    local vehc = getEntityCoords(veh); local pedc = getEntityCoords(ped)
    PHYSICS.ATTACH_ENTITIES_TO_ROPE(rope, veh, ped, vehc.x, vehc.y, vehc.z, pedc.x, pedc.y, pedc.z, 2, 0, 0, "Center", "Center")
    wait(1000)
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh); NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ped)
    entities.delete_by_handle(veh); entities.delete_by_handle(ped)
    PHYSICS.DELETE_CHILD_ROPE(rope)
    PHYSICS.ROPE_UNLOAD_TEXTURES()
    end)

GTAC(crashr, "全局崩溃V9", {}, "请按住发送键5或空格", function()
    menu.trigger_commands("anticrashcamera on")
    if PED.IS_PED_IN_ANY_VEHICLE(GetLocalPed(), false) then
        local jet = PED.GET_VEHICLE_PED_IS_IN(GetLocalPed(), false)
        -- if VEHICLE.GET_VEHICLE_CLASS(jet) == 16 then --16 class is planes
        -- jet_netID = NETWORK.NETWORK_GET_NETWORK_ID_FROM_ENTITY(jet)
        ENTITY.SET_ENTITY_PROOFS(jet, true, true, true, true, true, true, true, true)
        -- ENTITY.SET_ENTITY_ROTATION(jet, 0, 0, 0, 2, true) -- rotation sync fuck
        -- local let_coords = coords[math.random(1, #coords)]--function() for i =1, 32 do if PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(i) then return ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(i)) end end end
        if players.exists(to_ply) then 
            local asda = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(to_ply)) 
            util.toast('Player ID: '..to_ply..' | asda.x: '.. asda.x.. 'asda.y: '.. asda.y..'asda.z: '.. asda.z)
            ENTITY.SET_ENTITY_COORDS(jet, asda.x, asda.y, asda.z + 50, false, false, false, true) 
            to_ply = to_ply +1
        else 
            if to_ply >= 32 then to_ply = 0 end
            to_ply = to_ply +1 
            local let_coords = coords[math.random(1, #coords)]
            ENTITY.SET_ENTITY_COORDS(jet, let_coords[1], let_coords[2], let_coords[3], false, false, false, true) 
        end
            
        ENTITY.SET_ENTITY_VELOCITY(jet, 0, 0, 0) -- velocity sync fuck
        ENTITY.SET_ENTITY_ROTATION(jet, 0, 0, 0, 2, true) -- rotation sync fuck
        local pedpos = ENTITY.GET_ENTITY_COORDS(GetLocalPed())
        pedpos.z = pedpos.z + 10
        for i = 1, 2 do
            local s_plane = planes[math.random(1, #planes)]
            RqModel(util.joaat(s_plane))
            local veha1 = entities.create_vehicle(util.joaat(s_plane), pedpos, 0)

            ENTITY.ATTACH_ENTITY_TO_ENTITY_PHYSICALLY(veha1, jet, 0, 0, 0, 0, 5 + (2 * i), 0, 0, 0, 0, 0, 0, 1000, true,
                true, true, true, 2)
        end
        AddEntityToList("Plane: ", jet, true)
        util.toast("等待同步5秒...")
        wait(3500) -- 5k is original
        for i = 1, 25 do -- 50 is original
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(jet, math.random(0, 2555), math.random(0, 2815), math.random(1, 1232), false, false, false) 
            --ENTITY.SET_ENTITY_COORDS_NO_OFFSET(jet, 252, 2815, 120, false, false, false) -- far away teleport (sync fuck)
            wait()
        end
    else
        util.toast("警告|你不在车里")
        RqModel(util.joaat('hydra'))
        local spawn_in = entities.create_vehicle(util.joaat('hydra'), ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID()), 0.0)
        PED.SET_PED_INTO_VEHICLE(PLAYER.PLAYER_PED_ID(), spawn_in, -1)
    end
    
end)
GTAC(crashr, "防崩镜头关闭", {}, "", function()
    menu.trigger_commands("anticrashcamera off")
end)

    GTAC(crashr,"声音崩溃",{},"崩溃全局",function()
        soundcrash_all()
    end)

	GTAC(crashr, "数学崩溃", {}, "", function()
        numbercrash()
    end)

    menu.action(crashr, "大自然全局崩溃", {}, "", function()
        natural_crash_all()
    end) 

GTAC(crashr, "载具崩溃", {}, "", function()
    local model = {}
    local pos <const> = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(0,PlayerID)) pos.z = pos.z + 10
    local all_vel = entities.get_all_vehicles_as_handles()
    local crash = {}
    for parachute, model in pairs(all_vel) do
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(model,pos.x, pos.y, pos.z)
    crash[parachute] = set_vehicle_any_parachute(model,ENTITY.GET_ENTITY_MODEL(model),0x2b778668)
    for PlayerID = 0 ,32 do
    local peds = players.user_ped(PlayerID)
    if PlayerID ~= players.user() and players.exists(PlayerID) then
    PED.SET_PED_INTO_VEHICLE(peds,model,-1)
    VEHICLE._SET_VEHICLE_PARACHUTE_ACTIVE(model,true)
    wait(300)
    entities.delete_by_handle(model)
    end
    end
    end
    end)
	
	GTAC(crashr, "不知名崩", {}, "", function()
        nothingcrash()
    end)

    kickr = GT(allcrash, '全局踢出', {}, '')
    
    TXC_SLOW = false

    GTAC(kickr, "AIO踢", {"allaiokick", "allaiok"}, "可能在某些菜单上不起作用.", function ()
        AIOKickAll()
    end)

    GTTG(kickr, "更慢但是更好的AIO踢", {}, "", function (on)
        TXC_SLOW = on
        if SE_Notifications then
            util.toast("" .. tostring(on))
        end
    end)

    GTTG(kickr, "Metodo踢出 V1", {"bkick1"}, "", function(on_toggle)
    local BlockNetEvents = menu.ref_by_path("Online>Protections>Events>Raw Network Events>Any Event>Block>Enabled")
    local UnblockNetEvents = menu.ref_by_path("Online>Protections>Events>Raw Network Events>Any Event>Block>Disabled")
    local BlockIncSyncs = menu.ref_by_path("Online>Protections>Syncs>Incoming>Any Incoming Sync>Block>Enabled")
    local UnblockIncSyncs = menu.ref_by_path("Online>Protections>Syncs>Incoming>Any Incoming Sync>Block>Disabled")
    local BlockBailing = menu.ref_by_path("Online>Protections>Block Bailing>Player No Longer In Session")
    local BlockBailing2 = menu.ref_by_path("Online>Protections>Block Bailing>Switching Primary Crew")
    local BlockBailing3 = menu.ref_by_path("Online>Protections>Block Bailing>Spectating Related")
    local BlockBailing4 = menu.ref_by_path("Online>Protections>Block Bailing>Other Reasons")
    local BlockJoin = menu.ref_by_path("Online>Protections>Block Join Karma")
    if on_toggle then
        menu.trigger_commands("nobgscript on")
        menu.trigger_commands("skipbroadcast on")
        menu.trigger_commands("speedupspawn on")
        menu.trigger_commands("speedupfmmc on")
        menu.trigger_commands("skipswoopdown on")
        menu.trigger_commands("nospawnactivities on")
        menu.trigger_commands("showtransitionstate on")
        menu.trigger_command(BlockIncSyncs)
        menu.trigger_command(BlockNetEvents)
        menu.trigger_command(BlockBailing, "on")
        menu.trigger_command(BlockBailing2, "on")
        menu.trigger_command(BlockBailing3, "on")
        menu.trigger_command(BlockBailing4, "on")
        menu.trigger_command(BlockJoin, "on")
        util.toast("已激活，现在进入疗程，准备踢腿")
    else
        menu.trigger_commands("nobgscript off")
        menu.trigger_commands("skipbroadcast off")
        menu.trigger_commands("speedupspawn off")
        menu.trigger_commands("speedupfmmc off")
        menu.trigger_commands("skipswoopdown off")
        menu.trigger_commands("nospawnactivities off")
        menu.trigger_commands("showtransitionstate off")
        menu.trigger_command(UnblockIncSyncs)
        menu.trigger_command(UnblockNetEvents)
        menu.trigger_command(BlockBailing3, "off")
        util.toast("听着，一切都停止了")
    end
end)

GTTG(kickr, "Metodo踢出 V2", {"bkick2"}, "", function(on_toggle)
local BlockNetEvents = menu.ref_by_path("Online>Protections>Events>Raw Network Events>Any Event>Block>Enabled")
local UnblockNetEvents = menu.ref_by_path("Online>Protections>Events>Raw Network Events>Any Event>Block>Disabled")
local BlockIncSyncs = menu.ref_by_path("Online>Protections>Syncs>Incoming>Any Incoming Sync>Block>Enabled")
local UnblockIncSyncs = menu.ref_by_path("Online>Protections>Syncs>Incoming>Any Incoming Sync>Block>Disabled")
local BlockBailing = menu.ref_by_path("Online>Protections>Block Bailing>Player No Longer In Session")
local BlockBailing2 = menu.ref_by_path("Online>Protections>Block Bailing>Switching Primary Crew")
local BlockBailing3 = menu.ref_by_path("Online>Protections>Block Bailing>Spectating Related")
local BlockBailing4 = menu.ref_by_path("Online>Protections>Block Bailing>Other Reasons")
local ShowNotis = menu.ref_by_path("Online>Protections>Events>Raw Network Events>Any Event>Notification>Enabled")
local BlockRaw = menu.ref_by_path("Online>Protections>Events>Raw Network Events>Any Event>Block>Enabled")
local UnShowNotis = menu.ref_by_path("Online>Protections>Events>Raw Network Events>Any Event>Notification>Disabled")
local UnBlockRaw = menu.ref_by_path("Online>Protections>Events>Raw Network Events>Any Event>Block>Disabled")
if on_toggle then
    menu.trigger_commands("nobgscript on")
    menu.trigger_commands("skipbroadcast on")
    menu.trigger_commands("speedupspawn on")
    menu.trigger_commands("speedupfmmc on")
    menu.trigger_commands("skipswoopdown on")
    menu.trigger_commands("nospawnactivities on")
    menu.trigger_commands("showtransitionstate on")
    menu.trigger_command(BlockIncSyncs)
    menu.trigger_command(BlockNetEvents)
    menu.trigger_command(BlockBailing, "on")
    menu.trigger_command(BlockBailing2, "on")
    menu.trigger_command(BlockBailing3, "on")
    menu.trigger_command(BlockBailing4, "on")
    menu.trigger_command(ShowNotis)
    menu.trigger_command(BlockRaw)
    util.toast("已激活，现在进入疗程，准备踢腿")
else
    menu.trigger_commands("nobgscript off")
    menu.trigger_commands("skipbroadcast off")
    menu.trigger_commands("speedupspawn off")
    menu.trigger_commands("speedupfmmc off")
    menu.trigger_commands("skipswoopdown off")
    menu.trigger_commands("nospawnactivities off")
    menu.trigger_commands("showtransitionstate off")
    menu.trigger_command(UnblockIncSyncs)
    menu.trigger_command(UnblockNetEvents)
    menu.trigger_command(BlockBailing3, "off")
    menu.trigger_command(UnShowNotis)
    menu.trigger_command(UnBlockRaw)
    util.toast("听着，一切都停止了")
end
end)

GTTG(kickr, "Metodo踢出 V3", {"bkick3"}, "", function(on_toggle)
    local BlockNetEvents = menu.ref_by_path("Online>Protections>Events>Raw Network Events>Any Event>Block>Enabled")
    local UnblockNetEvents = menu.ref_by_path("Online>Protections>Events>Raw Network Events>Any Event>Block>Disabled")
    local BlockIncSyncs = menu.ref_by_path("Online>Protections>Syncs>Incoming>Any Incoming Sync>Block>Enabled")
    local UnblockIncSyncs = menu.ref_by_path("Online>Protections>Syncs>Incoming>Any Incoming Sync>Block>Disabled")
    local BlockBailing = menu.ref_by_path("Online>Protections>Block Bailing>Player No Longer In Session")
    local BlockBailing2 = menu.ref_by_path("Online>Protections>Block Bailing>Switching Primary Crew")
    local BlockBailing3 = menu.ref_by_path("Online>Protections>Block Bailing>Spectating Related")
    local BlockBailing4 = menu.ref_by_path("Online>Protections>Block Bailing>Other Reasons")
    local ShowNotis = menu.ref_by_path("Online>Protections>Events>Raw Network Events>Any Event>Notification>Enabled")
    local BlockRaw = menu.ref_by_path("Online>Protections>Events>Raw Network Events>Any Event>Block>Enabled")
    local UnShowNotis = menu.ref_by_path("Online>Protections>Events>Raw Network Events>Any Event>Notification>Disabled")
    local UnBlockRaw = menu.ref_by_path("Online>Protections>Events>Raw Network Events>Any Event>Block>Disabled")
    local DontAsk = menu.ref_by_path("Online>Transitions>Speed Up>Don't Ask For Permission To Spawn")
    if on_toggle then
        menu.trigger_commands("nobgscript on")
        menu.trigger_commands("skipbroadcast on")
        menu.trigger_commands("speedupspawn on")
        menu.trigger_commands("speedupfmmc on")
        menu.trigger_commands("skipswoopdown on")
        menu.trigger_commands("nospawnactivities on")
        menu.trigger_commands("showtransitionstate on")
        menu.trigger_command(BlockIncSyncs)
        menu.trigger_command(BlockNetEvents)
        menu.trigger_command(BlockBailing, "on")
        menu.trigger_command(BlockBailing2, "on")
        menu.trigger_command(BlockBailing3, "on")
        menu.trigger_command(BlockBailing4, "on")
        menu.trigger_command(ShowNotis)
        menu.trigger_command(BlockRaw)
        menu.trigger_command(DontAsk, "on")
        util.toast("已激活，现在进入疗程，准备踢腿")
    else
        menu.trigger_commands("nobgscript off")
        menu.trigger_commands("skipbroadcast off")
        menu.trigger_commands("speedupspawn off")
        menu.trigger_commands("speedupfmmc off")
        menu.trigger_commands("skipswoopdown off")
        menu.trigger_commands("nospawnactivities off")
        menu.trigger_commands("showtransitionstate off")
        menu.trigger_command(UnblockIncSyncs)
        menu.trigger_command(UnblockNetEvents)
        menu.trigger_command(BlockBailing3, "off")
        menu.trigger_command(UnShowNotis)
        menu.trigger_command(UnBlockRaw)
        menu.trigger_command(DontAsk, "off")
        util.toast("听着，一切都停止了")
    end
end)

GTTG(kickr, "Eso踢出", {}, "", function(on)
    if on then
        menu.trigger_commands("bkick1 on")
    else
        menu.trigger_commands("bkick1 off")
    end
end)

GTAC(allcrash, "噪音污染", {"badsound", "earrape"}, "超大声!!!请降低您的音量\n在战局中播放,对玩家有效", function()
    zaoyin()
    wait(500)
    notification("~y~D'ooooooooooooooooh!!!!!!!!!",colors.blue)
end)

GTTG(allcrash, "可爱之力", {"diudiupower"}, "当播放完聊天框内容后自动崩溃全局", function (diudiu)
    if diudiu then
        chat.send_message("哈喽,大家好鸭~", false, true, true)
        wait(4000)
        chat.send_message("我是躲在角落里瑟瑟发抖", false, true, true)
        wait(1500)
        chat.send_message("并且", false, true, true)
        wait(2000)
        chat.send_message("平易近人,乐于助人", false, true, true)
        wait(2000)
        chat.send_message("和颜悦色,慈眉善目", false, true, true)
        wait(2000)
        chat.send_message("温柔善良,和蔼可亲", false, true, true)
        wait(2000)
        chat.send_message("的一只可爱小绿玩儿", false, true, true)
        wait(3000)
        chat.send_message("希望大家能够跟我一样啦", false, true, true)
        wait(2000)
        chat.send_message("在战局中做一个可爱的乖孩纸", false, true, true)
        wait(2000)
        chat.send_message("大家一定要和平相处!!!", false, true, true)
        wait(2000)
        chat.send_message("共创绿色核平铀好的洛圣都喔", false, true, true)
        wait(4000)
        chat.send_message("哎呀,打错字啦!破输入法儿", false, true, true)
        wait(3000)
        chat.send_message("是绿色和平友好!!!", false, true, true)
        wait(3000)
        chat.send_message("大家也要好好学习,天天向上喔", false, true, true)
        wait(2000)
        chat.send_message("也要保护好眼睛喔", false, true, true)
        wait(4000)
        chat.send_message("哎呀呀,露馅啦", false, true, true)
        wait(1000)
        chat.send_message("靠杯喔", false, true, true)
        wait(2000)
        chat.send_message("好叭,我不是绿玩儿", false, true, true)
        wait(3000)
        chat.send_message("但我相信洛圣都是民风淳朴滴!", false, true, true)
        wait(3000)
        chat.send_message("绝对不可能被仙术污染和平的环境!", false, true, true)
        wait(4000)
        chat.send_message("欸？我的仙术检测了有人用全局崩溃!", false, true, true)
        wait(2000)
        chat.send_message("我一定会保护好你们滴!!!", false, true, true)
        wait(3000)
        chat.send_message("好强的全局崩溃,我坚持不住了啦!", false, true, true)
        wait(2000)
        chat.send_message("可爱滴绿玩们快跑呀!!!", false, true, true)
        wait(3000)
        chat.send_message("蹭现在还有时间,快点离开这个战局!!!", false, true, true)
        wait(3000)     
        chat.send_message("快鸭!", false, true, true)
        wait(2000)
        chat.send_message("快鸭!!!", false, true, true)
        wait(2000)
        chat.send_message("快鸭!!!!!!!!!!", false, true, true)
        wait(3000)
        notification("~p~执行全局崩溃，请稍等...",colors.red)
        menu.trigger_commands("sixfeel")
        menu.trigger_commands("diudiupower off")
    end
end)

GTTG(allcrash, "魔怔之力", {"evilpower"}, "当播放完聊天框内容后自动崩溃全局", function (evil)
    if evil then
        fangkongjingbao()
        chat.send_message("大家好", false, true, true)
        wait(3000)
        chat.send_message("欸?哪来的声音?", false, true, true)
        wait(3000)
        chat.send_message("怎么会有防空警报呢?", false, true, true)
        wait(3000)
        chat.send_message("我靠,有歪瓜!!!", false, true, true)
        wait(3000)
        chat.send_message("欸?原来我就是那个歪瓜呀", false, true, true)
        wait(2000)
        chat.send_message("不好意思不好意思,我点错啦", false, true, true)
        wait(2000)
        chat.send_message("其实也没什么不好意思的", false, true, true)
        wait(2000)
        chat.send_message("我是故意的哈哈", false, true, true)
        wait(2000)
        chat.send_message("不要骂我", false, true, true)
        wait(1500)
        chat.send_message("不要骂我啦", false, true, true)
        wait(1500)
        chat.send_message("不要骂我,求求你啦", false, true, true)
        wait(1500)
        chat.send_message("哎呀,又点错啦！", false, true, true)
        wait(1500)
        chat.send_message("要全局崩溃了啦", false, true, true)
        wait(1000)
        chat.send_message("绿玩们快走哇!!!", false, true, true)
        wait(1000)
        chat.send_message("3", false, true, true)
        wait(1000)
        chat.send_message("2", false, true, true)
        wait(1000)
        chat.send_message("1", false, true, true)
        wait(1000)
        chat.send_message("来不及喽", false, true, true)
        wait(1000)
        chat.send_message("祝你们玩得开心哈哈", false, true, true)
        wait(1000)
        notification("~p~执行全局崩溃，请稍等...",colors.red)
        menu.trigger_commands("sixfeel")
        menu.trigger_commands("evilpower off")
    end
end)

crewlist = GT(onlinemode, "设置帮会等级", {}, "帮会0是你的活跃帮会")
for i = 0, 4, 1 do
    i = tostring(i)
    local crew_level_stat = "MPPLY_CREW_LOCAL_XP_" .. i
    local crew_id_stat = "MPPLY_CREW_" .. i .. "_ID"

    local crew_current_menu
    local crew_id_menu
    local crew_rp_menu

    local crew_menu = GT(crewlist, "帮会 " .. i, {}, "", function()
        local crew_id = get_stat_int(crew_id_stat)
        local crew_rp = get_stat_int(crew_level_stat)

        menu.set_value(crew_id_menu, crew_id)
        menu.set_value(crew_rp_menu, crew_rp)

        local current_crew_level = get_stat_int("MPPLY_CURRENT_CREW_RANK")
        if current_crew_level > 8000 then current_crew_level = 8000 end
        if current_crew_level < 1 then current_crew_level = 1 end
        local current_crew_rp_min = util.get_rp_required_for_rank(current_crew_level)
        local current_crew_rp_max = util.get_rp_required_for_rank(current_crew_level + 1)

        if crew_rp >= current_crew_rp_min and crew_rp < current_crew_rp_max then
            menu.set_value(crew_current_menu, current_crew_level)
            menu.set_visible(crew_current_menu, true)
        else
            menu.set_visible(crew_current_menu, false)
        end
    end)

    crew_id_menu = menu.readonly(crew_menu, "帮会ID")
    crew_rp_menu = menu.readonly(crew_menu, "帮会经验")
    crew_current_menu = menu.readonly(crew_menu, "当前帮会等级")


    local crew_level = menu.slider(crew_menu, "帮会等级", { "crew" .. i .. "level" }, "", 1, 8000, 1, 1,
        function(value)
        end)

    menu.action(crew_menu, "设置帮会等级", { "setcrew" .. i .. "level" }, "", function()
        local rp = util.get_rp_required_for_rank(menu.get_value(crew_level))
        set_stat_int(crew_level_stat, rp)
        util.toast("完成! 可能需要重新切换战局")
    end)
end

local online_funfeatures = GT(onlinemode, '娱乐选项', {}, '')

GTAC(online_funfeatures, '雪球大战', {}, '给战局中的每个人赠送雪球并手机通知他们', function ()
    local plist = players.list()
    local snowballs = util.joaat('WEAPON_SNOWBALL')
    for i = 1, #plist do
        local plyr = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(plist[i])
        WEAPON.GIVE_DELAYED_WEAPON_TO_PED(plyr, snowballs, 20, true)
        WEAPON.SET_PED_AMMO(plyr, snowballs, 20)
        players.send_sms(plist[i], players.user(), '雪球大战!你获得了雪球')
        wait()
    end
end)

GTAC(online_funfeatures, '烟花派对', {}, '给战局中的每个人赠送烟花发射器并手机通知他们', function ()
    local plist = players.list()
    local fireworks = util.joaat('weapon_firework')
    for i = 1, #plist do
        local plyr = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(plist[i])
        WEAPON.GIVE_DELAYED_WEAPON_TO_PED(plyr, fireworks, 20, true)
        WEAPON.SET_PED_AMMO(plyr, fireworks, 20)
        players.send_sms(plist[i], players.user(), '烟花派对!你获得了烟花')
        wait()
    end
end)

GTLP(online_funfeatures, '金钱追踪', {}, '到处都是假钱袋', function ()
    local targets = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user())
    local tar1 = ENTITY.GET_ENTITY_COORDS(players.user_ped(), true)
    Streamptfx('scr_exec_ambient_fm')
    if TASK.IS_PED_WALKING(targets) or TASK.IS_PED_RUNNING(targets) or TASK.IS_PED_SPRINTING(targets) then
        GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD('scr_ped_foot_banknotes', tar1.x, tar1.y, tar1.z - 1, 0, 0, 0, 1.0, true, true, true)
    end
    
end)

GTAC(online_funfeatures, '停止观看', {'sspect'}, '停止在战局里观看任何人', function ()
    Specon(players.user())
    Specoff(players.user())
end)

GTLP(online_funfeatures, '增加虎鲸导向导弹射程', {'krange'}, '你现在可在地图的任何地方使用', function ()
    if util.is_session_started() then
    memory.write_float(memory.script_global(262145 + 30176), 200000.0)
    end
end)


chat_presets_root = GT(onlinemode, "聊天预设", {"lancescriptchatpresets"},"聊天预设,为方便起见")

GTAC(chat_presets_root, "真实本地化 \"DOX\"", {}, "向每个人发送本地化的 \"DOX\" 。每个人都会认为你正在发出所有人的信息,而实际上,每个人都看到了自己的信息,没有人看到其他人。", function(click_type)
    showrealip()
end)

GTAC(chat_presets_root, "虚假的崩溃", {}, "发送本地化的假崩溃百分比条", function(click_type)
    chatcrash()
end)

GTAC(chat_presets_root, "虚假黑客", {}, "发出一个本地化的假黑入百分比条", function(click_type)
    fakechathacking()
end)

GTAC(chat_presets_root, "随机笑话", {"randomjoke"}, "随便讲个笑话", function(click_type)
    ramdomjokelol()
end)

GTLP(chat_presets_root, "随机笑话循环", {"randomjokeloop"}, "讲一个随机笑话，五秒循环一次", function(click_type)
    loopchatjoke()
end)
for k,v in pairs(chat_presets) do
    GTAC(chat_presets_root, k, {}, "\"" .. v .. "\"", function(click_type)
        chat.send_message(v, false, true, true)
    end)
end

randomizer_root = GT(onlinemode, "虚假随机", {"lsrandomizer"}, "随机化Stand中的一些菜单数值,但是这不会为您启用Stand中的选项,它只会随机输入数值")


GTTG(randomizer_root, "随机虚假名字", {}, "开启后切换战局才能生效.", function(on)
    ramdomfakename(on)
end)

GTTG(randomizer_root, "随机虚假IP", {}, "", function(on)
    ramdomfakeip(on)
end)

random_rank_spoof = false
GTTG(randomizer_root, "随机虚假等级", {}, "", function(on)
    ramdomfakelvl(on)
end)

GTLP(randomizer_root, "虚假短信名称", {}, "", function(on)
    spamtextname(on)
end)

    local fakemoney = GT(onlinemode, '虚假金钱', {'JSfakeMoney'}, '添加假钱,只能看不能花')


        GTAC(fakemoney, '添加假钱', {'JSaddFakeMoney'}, '添加假钱1次', function()
            addfakemoney()
        end)

        GTLP(fakemoney, '循环假钱', {'JSloopFakeMoney'}, '设置循环添加假钱的延迟', function()
            loopaddfakemoney()
        end)

        GTTG(fakemoney, '显示"交易处理中"', {'JSfakeTransaction'}, '添加假钱时右下角显示关于"交易处理中"的信息', function(toggle)
            fakeMoneyTransactionPending = toggle
        end, fakeMoneyTransactionPending)

        local fakemoneyloopdelayasd = GT(fakemoney, '假钱循环延迟', {'JSexpDelay'}, '让您为假钱循环设置自定义延迟.')
        generateDelaySettings(fakemoneyloopdelayasd, '假钱循环延迟', fakeMoneyLoopDelay)

        GTluaScript.slider(fakemoney, '银行假钱', {'JSbankFakeMoney'}, '将会有多少假钱被添加到您的银行', -2000000000, 2000000000, bankFakeMoney, 1, function(value)
            bankFakeMoney = value
        end)

        GTluaScript.slider(fakemoney, '现金假钱', {'JScashFakeMoney'}, '将会有多少假钱以现金形式添加', -2000000000, 2000000000, cashFakeMoney, 1, function(value)
            cashFakeMoney = value
        end)

    local safemonitormode = GT(onlinemode, '保险箱监视器', {'JSsm'}, '允许您监视您的保险箱\n不会影响正在增加的钱')

    local safeMonitorToggle = false
    GTTG(safemonitormode, '启用监视', {'SMtoggleAllSelected'}, '启用监视所有已选择的选项', function(toggle)
        safeMonitorToggle = toggle
    end)

    generateToggles(JS_tbls.safeManagerToggles, safemonitormode, false)

    local monitorsettings = GT(safemonitormode, '保险箱监视器设置', {'SMsettings'}, '屏幕文字信息设置')

    smSettings = new.hudSettings(-3, 0, 2)
    generateHudSettings(monitorsettings, 'SM', smSettings)

    local casinoasd = GT(onlinemode, '恢复选项[风险]', {''}, '低-中风险选项,但不排除风险')

    GTD(casinoasd, "致幻剂实验室管理")
GTluaScript.click_slider(casinoasd, "产品容量", {"productcapacity"}, "", 0, 1000, 160, 1, function(capacity)
    memory.write_int(memory.script_global(262145 + 18949), capacity) 
end)

GTTG(casinoasd, "免费供应", {"supplycost"}, "", function()
    memory.write_int(memory.script_global(262145 + 21869), 0)
    memory.write_int(memory.script_global(262145 + 21869), 60000)
end)

GTTG(casinoasd, "提高生产效率", {"increaseproductionspeed"}, "", function()
    memory.write_int(memory.script_global(262145 + 17396), 100) 
    memory.write_int(memory.script_global(262145 + 17396), 135000) 
end)

GTAC(casinoasd, "重新补给致幻剂", {"resupplyacid"}, "", function()
    local time = NETWORK.GET_CLOUD_TIME_AS_INT() - memory.read_int(memory.script_global(262145 + 18954))
    memory.write_int(memory.script_global(1648637 + 1 + 6), time)
end)

GTluaScript.click_slider(casinoasd, "出售价值倍数", {"value"}, "警告：经测试，安全金额约为200万。尽量不要超过，除非你头铁不怕封.", 0, 10000, 1, 1, function(value)
    memory.write_int(memory.script_global(262145 + 17425), value * 1485) 
end)

    GTLP(casinoasd, '幸运转盘冷却Lucky', {'JSlwCool'}, '告诉您幸运转盘是否可用或距离它还有多长冷却时间.', function()
        casinolucky()
    end)

    GTAC(casinoasd, '赌场 赢/输', {'JScasinoLP'}, '告诉您在赌场赚了多少或输了多少.', function()
        casinolp()
    end)

    GTAC(casinoasd, "前往名钻豪华赌场!", {"tpcasino"}, "", function(click_type)
    ENTITY.SET_ENTITY_COORDS(players.user_ped(), 924.5333, 46.603252, 81.10639 , 1, 0, 0, 1)
end)

GTAC(casinoasd, "前往钻石赌博区!", {"tpslot"}, "闪闪发光!", function(click_type)
    math.randomseed()
    math.random()
    math.random()
    math.random()
    local r = math.random(1,3)
    if(r == 1) then
        ENTITY.SET_ENTITY_COORDS(players.user_ped(), 1113.7837, 239.45398, -49.84081 , 1, 0, 0, 1)
    elseif (r==2) then
        ENTITY.SET_ENTITY_COORDS(players.user_ped(), 1116.7186, 228.10817, -49.84075 , 1, 0, 0, 1)
    elseif (r==3) then
        ENTITY.SET_ENTITY_COORDS(players.user_ped(), 1137.0839, 252.51076, -51.035732 , 1, 0, 0, 1)
    end
end)

GTAC(casinoasd, "前往出纳员!", {"tpcashier"}, "去拿你辛苦工作的报酬吧!", function(click_type)
    ENTITY.SET_ENTITY_COORDS(players.user_ped(), 1116.0076, 219.90002, -49.435116 , 1, 0, 0, 1)
end)

GTAC(casinoasd, "循环赌博", {"startcasinoloop"}, "自动赢得老虎机头奖和离开老虎机: 这样你就不会触发赌场冷却时间. 建议用鼠标自动点击器挂机赚钱", function(click_type)
    loop = not loop
    util.show_corner_help("欢迎来到高端人士交际圈! 一定要下最大赌注.")
    while(loop) do
        GTluaScript.trigger_commands("rigslotmachines jackpot")
        for i=1,100 do 
            util.show_corner_help("回合获胜")
            wait(100)
        end
        GTluaScript.trigger_commands("rigslotmachines loss")
        for i=1,100 do 
            util.show_corner_help("回合输了")
            wait(100)
        end
    end
    util.toast("再见! 希望你赚了很多钱!")
end)

GTAC(casinoasd, "俄罗斯轮盘", {"roulette"}, "带你去俄罗斯轮盘,把它调到1.在第一张12上下注50k,在第一张1上下注5k", function(click_type)
    ENTITY.SET_ENTITY_COORDS(players.user_ped(), 1133.4238, 263.72913, -51.03577 , 1, 0, 0, 1)
    GTluaScript.trigger_commands("rigroulette 1")
end)

    GTAC(casinoasd, "随机传送", {"randomtp"}, "*使用自担风险* 可能会让你在地图或其他奇怪的东西下生成", function(click_type)
        local x,y,z,distToGround, currentHeight
        math.randomseed()
        math.random()
        math.random()
        math.random()
        x = math.random(-3430, 4130)
        y = math.random(-3560, 8000)
        GTluaScript.trigger_commands("posx "..x)
        GTluaScript.trigger_commands("posy "..y)
        GTluaScript.trigger_commands("posz "..ENTITY.GET_ENTITY_HEIGHT_ABOVE_GROUND(players.user_ped()))
end)

    local timetrialsasd = GT(onlinemode, '时间挑战赛', {'JStt'}, '')

    GTD(timetrialsasd, '时间挑战赛')

    GTLP(timetrialsasd, '时间挑战赛 最佳记录', {'JSbestTT'}, '', function()
        besttime()
    end)

    GTAC(timetrialsasd, '传送到时间挑战赛', {'JStpToTT'}, '', function()
        tptotime()
    end)

    GTD(timetrialsasd, 'RC匪徒时间挑战赛')

    GTLP(timetrialsasd, 'RC匪徒时间挑战赛 最佳记录', {'JSbestRcTT'}, '', function()
        bestrctime()
    end)

    GTAC(timetrialsasd, '传送到RC匪徒时间挑战赛', {'JStpToRcTT'}, '', function()
        tptorctime()
    end)


    local blockareas = GT(onlinemode, '阻挡区域', {'JSblock'}, '生成空气墙阻挡某些区域\n这能够让战局玩家无法进入该区域\n请不要在正在加载战局状态时使用')

    GTLP(blockareas, '自定义阻挡', {}, '使您能够通过按"B"来阻挡您面前的区域.', function()
        blocksomewhere()
    end)

    local blocklsc = GT(blockareas, '阻挡洛圣都改车王', {'JSblockLSC'}, '阻挡进入洛圣都改车王.')
    local blockcasino = GT(blockareas, '阻挡赌场', {'JSblockCasino'}, '阻挡进入赌场.')
    local jsblockcasino = GT(blockareas, '阻挡花园银行', {'JSblockCasino'}, '阻挡进入花园银行.')

    local blockAreasActions = {
        --Orbital block
        {root = blockareas, name = '天基炮发射室', coordinates = {{335.95837, 4834.216, -60.99977}}, blocked = false},
        -- Lsc blocks
        {root = blocklsc, name = '伯顿', coordinates = {{-357.66544, -134.26419, 38.23775}}, blocked = false},
        {root = blocklsc, name = 'LSIA', coordinates = {{-1144.0569, -1989.5784, 12.9626}}, blocked = false},
        {root = blocklsc, name = '梅萨', coordinates = {{721.08496, -1088.8752, 22.046721}}, blocked = false},
        {root = blocklsc, name = '布莱恩县', coordinates = {{115.59574, 6621.5693, 31.646144}, {110.460236, 6615.827, 31.660228}}, blocked = false},
        {root = blocklsc, name = '佩立托湾', coordinates = {{115.59574, 6621.5693, 31.646144}, {110.460236, 6615.827, 31.660228}}, blocked = false},
        {root = blocklsc, name = '本尼车坊', coordinates = {{-205.6571, -1309.4313, 31.093222}}, blocked = false},
        -- Casino blocks
        {root = blockcasino, name = '赌场入口', coordinates = {{924.3438, 49.19933, 81.10636}, {922.5348, 45.917263, 81.10635}}, blocked = false},
        {root = blockcasino, name = '赌场车库', coordinates = {{935.29553, -0.5328601, 78.56404}}, blocked = false},
        {root = blockcasino, name = '幸运转盘', coordinates = {{1110.1014, 228.71582, -49.935845}}, blocked = false},
        --Maze bank block
        {root = jsblockcasino, name = '花园银行入口', coordinates = {{-81.18775, -795.82874, 44.227295}}, blocked = false},
        {root = jsblockcasino, name = '花园银行车库', coordinates = {{-77.96956, -780.9376, 38.473335}, {-82.82901, -781.81635, 38.50093}}, blocked = false},
        --Mc block
        {root = blockareas, name = '霍伊会所', coordinates = {{-17.48541, -195.7588, 52.370953}, {-23.452509, -193.01324, 52.36245}}, blocked = false},
        --Arena war garages
        {root = blockareas, name = '竞技场车库', coordinates = {
            {-362.912, -1870.2249, 20.527836}, {-367.41855, -1872.5348, 20.527836},
            {-375.58344, -1874.6719, 20.527828},  {-379.9853, -1876.0894, 20.527828},
            {-386.49762, -1880.2793, 20.527842},  {-390.3558, -1883.0833, 20.527842},
            {-396.9259, -1883.9537, 21.542086}
        }, blocked = false},
    }
        
    
    for i = 1, #blockAreasActions do
        local areaName = blockAreasActions[i].name
        GTAC(blockAreasActions[i].root, '阻挡' ..' '.. areaName, {}, '', function ()
            if not blockAvailable(blockAreasActions[i].blocked, (areaName == '洛圣都国际机场' and areaName or string.capitalize(areaName))) then return end
            setBlockStatus(true)
            blockAreasActions[i].blocked = true
            for j = 1, #blockAreasActions[i].coordinates do
                block(blockAreasActions[i].coordinates[j])
            end
            setBlockStatus(false, areaName)
        end)
    end


local services <const> = GT(onlinemode, "服务请求", {}, "")


GTAC(services, "即时纳米无人机", {}, "", function()
    nanodrone()
end)

GTAC(services, "请求豪华直升机", {}, "", function()
    luxuryhelicopter()
end)

GTAC(services, "即时RC匪徒", {}, "", function()
    bandito()
end)

GTAC(services, "即时遥控RC坦克", {}, "", function ()
    rctank()
end)

TeleRoot = GT(onlinemode, '传送', {}, '')

Proptp = GT(TeleRoot, '资产传送', {'tpprop'}, '传送到所拥有的资产', function()
    tp_prop()
end)

local vteles = GT(TeleRoot, '载具传送', {}, '')

GTAC(vteles, '传送到复仇者', {'tpaven'}, '传送到设施', function ()
    tp_aven()
end)

GTAC(vteles, '传送到虎鲸', {'tpkosatka'}, '传送到佩里科岛抢劫面板', function ()
    tp_kosa()
end)

GTAC(vteles, '传送到机动作战中心', {'tpMOC'}, '传送到地堡', function ()
    tp_moc()
end)

GTAC(vteles, '传送到恐霸', {'tpterro'}, '传送到夜总会', function ()
    tp_terro()
end)

local cargoteles = GT(TeleRoot, 'CEO仓库传送', {}, '')

GTAC(cargoteles, '传送到特殊货物', {'tpscargo'}, '传送并拾取特殊货物', function ()
    tp_scargo()
end)

GTAC(cargoteles, '传送到载具货物', {'tpvcargo'}, '传送并拾取载具货物', function ()
    tp_vcargo()
end)

local intteles = GT(TeleRoot, '室内传送', {}, '')

GTAC(intteles, '传送到电脑', {'tpdesk'}, '传送到办公桌上的电脑', function ()
    tp_desk()
end)

GTAC(intteles, '传送到夜总会的人', {'tpNCPerson'}, '传送到需要接送的夜总会员工', function ()
    tp_NCperson()
end)

GTAC(intteles, '传送到保险柜', {'tpsafe'}, '传送到事务所/游戏厅/夜总会内的保险箱', function ()
    tp_safe()
end)

GTAC(TeleRoot, '传送到摩托帮货物', {'tpMCproduct'}, '传送并拾取摩托帮货物', function ()
    tp_mcproduct()
end)

GTAC(TeleRoot, '传送到地堡货物', {'tpBSupplies'}, '传送并拾取地堡货物', function ()
    tp_bsupplies()
end)

GTAC(TeleRoot, '传送到公共电话亭', {'tppayphone'}, '传送到公共电话亭(必须已经打电话给富兰克林请求暗杀差事)', function ()
    tp_payphone()
end)

GTAC(TeleRoot, '传送到出口码头', {'tpEED'}, '传送到出口码头', function ()
    tp_eed()
end)

GTLuaScript.list_action(onlinemode, "宣布", {""}, "在聊天框中公开宣布玩家信息", { "最佳抢劫目标", "最穷的玩家", "最富的玩家", "最性奋的玩家"}, function(index, value, click_type)
    local ret = nil
    pluto_switch index do 
        case 1: 
            ret = get_best_mug_target()
            break
        case 2: 
            ret = get_poorest_player()
            break
        case 3:
            ret = get_richest_player()
            break
        case 4:
            ret = get_horniest_player()
            break
    end
    if ret ~= nil then
        chat.send_message(ret, false, true, true)
    end
end)

    onlineuse = GT(onlinemode, '其他', {}, '')

    GTD(onlineuse, "无视犯罪")

    GTAC(onlineuse, "警察无视犯罪", { "no_cops" }, "莱斯特", function()
        SET_INT_GLOBAL(2815059 + 4624, 5)
        SET_INT_GLOBAL(2815059 + 4625, 1)
        SET_INT_GLOBAL(2815059 + 4627, NETWORK.GET_NETWORK_TIME())
    end)
    
    GTAC(onlineuse, "贿赂当局", {}, "CEO技能", function()
        SET_INT_GLOBAL(2815059 + 4624, 81)
        SET_INT_GLOBAL(2815059 + 4625, 1)
        SET_INT_GLOBAL(2815059 + 4627, NETWORK.GET_NETWORK_TIME())
    end)
    
    GTLP(onlineuse, "锁定倒计时", {}, "无视犯罪的倒计时", function()
        SET_INT_GLOBAL(2815059 + 4627, NETWORK.GET_NETWORK_TIME())
    end)
    
    GTD(onlineuse, "")
    
    local other_options_SnackArmour = menu.list(onlineuse, "零食护甲编辑", {}, "")
    
    GTAC(other_options_SnackArmour, "补满全部零食", {}, "", function()
        STAT_SET_INT("NO_BOUGHT_YUM_SNACKS", 30)
        STAT_SET_INT("NO_BOUGHT_HEALTH_SNACKS", 15)
        STAT_SET_INT("NO_BOUGHT_EPIC_SNACKS", 5)
        STAT_SET_INT("NUMBER_OF_ORANGE_BOUGHT", 10)
        STAT_SET_INT("NUMBER_OF_BOURGE_BOUGHT", 10)
        STAT_SET_INT("NUMBER_OF_CHAMP_BOUGHT", 5)
        STAT_SET_INT("CIGARETTES_BOUGHT", 20)
        util.toast("完成！")
    end)
    
    GTAC(other_options_SnackArmour, "补满全部护甲", {}, "", function()
        STAT_SET_INT("MP_CHAR_ARMOUR_1_COUNT", 10)
        STAT_SET_INT("MP_CHAR_ARMOUR_2_COUNT", 10)
        STAT_SET_INT("MP_CHAR_ARMOUR_3_COUNT", 10)
        STAT_SET_INT("MP_CHAR_ARMOUR_4_COUNT", 10)
        STAT_SET_INT("MP_CHAR_ARMOUR_5_COUNT", 10)
        util.toast("完成！")
    end)
    
    GTAC(other_options_SnackArmour, "补满呼吸器", {}, "", function()
        STAT_SET_INT("BREATHING_APPAR_BOUGHT", 20)
        util.toast("完成！")
    end)
    
    GTD(other_options_SnackArmour, "零食")

    GTluaScript.click_slider(other_options_SnackArmour, "PQ豆", {}, "+15 Health", 0, 99, 30, 1, function(value)
        STAT_SET_INT("NO_BOUGHT_YUM_SNACKS", value)
        util.toast("完成！")
    end)
    GTluaScript.click_slider(other_options_SnackArmour, "宝力旺", {}, "+45 Health", 0, 99, 15, 1, function(value)
        STAT_SET_INT("NO_BOUGHT_HEALTH_SNACKS", value)
        util.toast("完成！")
    end)
    GTluaScript.click_slider(other_options_SnackArmour, "麦提来", {}, "+30 Health", 0, 99, 5, 1, function(value)
        STAT_SET_INT("NO_BOUGHT_EPIC_SNACKS", value)
        util.toast("完成！")
    end)
    GTluaScript.click_slider(other_options_SnackArmour, "易可乐", {}, "+36 Health", 0, 99, 10, 1, function(value)
        STAT_SET_INT("NUMBER_OF_ORANGE_BOUGHT", value)
        util.toast("完成！")
    end)
    GTluaScript.click_slider(other_options_SnackArmour, "尿汤啤", {}, "", 0, 99, 10, 1, function(value)
        STAT_SET_INT("NUMBER_OF_BOURGE_BOUGHT", value)
        util.toast("完成！")
    end)
    GTluaScript.click_slider(other_options_SnackArmour, "蓝醉香槟", {}, "", 0, 99, 5, 1, function(value)
        STAT_SET_INT("NUMBER_OF_CHAMP_BOUGHT", value)
        util.toast("完成！")
    end)
    GTluaScript.click_slider(other_options_SnackArmour, "香烟", {}, "-5 Health", 0, 99, 20, 1, function(value)
        STAT_SET_INT("CIGARETTES_BOUGHT", value)
        util.toast("完成！")
    end)

    GTAC(onlineuse, "请求重型装甲", {}, "请求弹道装甲和火神机枪", function()
        SET_INT_GLOBAL(2815059 + 884, 1)
    end)
    
    GTAC(onlineuse, "重型装甲包裹 传送到我", {}, "", function()
        local entity_model_hash = 1688540826
        for k, ent in pairs(entities.get_all_pickups_as_handles()) do
            local EntityHash = ENTITY.GET_ENTITY_MODEL(ent)
            if EntityHash == entity_model_hash and ENTITY.IS_ENTITY_A_MISSION_ENTITY(ent) then
                local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.PLAYER_PED_ID(), 0.0, 2.0, 0.0)
                ENTITY.SET_ENTITY_COORDS(ent, coords.x, coords.y, coords.z, true, false, false, false)
            end
        end
    end)

    GTAC(onlineuse, "跳过破解", { "" }, "所有的破解、骇入、钻孔等等", function()
        local script = "fm_mission_controller_2020"
        if IS_SCRIPT_RUNNING(script) then
            -- Skip The Hacking Process
            if GET_INT_LOCAL(script, 23669) == 4 then
                SET_INT_LOCAL(script, 23669, 5)
            end
            -- Skip Cutting The Sewer Grill
            if GET_INT_LOCAL(script, 28446) == 4 then
                SET_INT_LOCAL(script, 28446, 6)
            end
            -- Skip Cutting The Glass
            SET_FLOAT_LOCAL(script, 29685 + 3, 100)
    
            SET_INT_LOCAL(script, 975 + 135, 3) -- For ULP Missions
        end
    
        script = "fm_mission_controller"
        if IS_SCRIPT_RUNNING(script) then
            -- For Fingerprint
            if GET_INT_LOCAL(script, 52964) ~= 1 then
                SET_INT_LOCAL(script, 52964, 5)
            end
            -- For Keypad
            if GET_INT_LOCAL(script, 54026) ~= 1 then
                SET_INT_LOCAL(script, 54026, 5)
            end
            -- Skip Drilling The Vault Door
            local Value = GET_INT_LOCAL(script, 10101 + 37)
            SET_INT_LOCAL(script, 10101 + 7, Value)
    
            -- Doomsday Heist
            SET_INT_LOCAL(script, 1509, 3)       -- For ACT I, Setup: Server Farm (Lester)
            SET_INT_LOCAL(script, 1540, 2)
            SET_INT_LOCAL(script, 1266 + 135, 3) -- For ACT III
    
            -- Fleeca Heist
            SET_INT_LOCAL(script, 11760 + 24, 7)     -- Skip The Hacking Process
            SET_FLOAT_LOCAL(script, 10061 + 11, 100) -- Skip Drilling
    
            -- Pacific Standard Heist
            SET_LOCAL_BIT(script, 9767, 9) -- Skip The Hacking Process
        end
    end)

    function STEALTH_LOOP_COMBINED()
    SET_INT_GLOBAL(1969112,1)
    util.log("已增加50万")
    wait(1)
    SET_INT_GLOBAL(1969112,1)
    util.log("已增加75万")
    wait(1)
    end

    recovery = GT(onlinemode, "金钱选项")

    loop750 = GTAC(recovery, '50万金钱', {""}, '$$$\n<GRANDTOURING免责声明>\n风险随着您使用的次数而增加\n请不要无脑地频繁使用该功能\n您如果因此封禁脚本概不负责', function()
        menu.show_warning(loop750, 2, "GRANDTOURINGVIP 警告(免责声明)\n此项功能未经广泛测试，可能是一项不安全的功能\n您想要继续吗？", function()
        STEALTH_LOOP_COMBINED()
        menu.trigger_commands("accepterrorstr")
        wait(1000)
        menu.trigger_commands("accepterrorstr")
        end)
    end)
    
    GTTG(recovery, '循环掉钱[2000]', {}, '', function (f)
        gt = f
        while gt do
            request_model(0x749B5065)
            local coords = players.get_position(players.user())
            local peds = entities.create_ped(6, 0x749B5065, coords ,ENTITY.GET_ENTITY_HEADING(players.user_ped())) 
            ENTITY.SET_ENTITY_VISIBLE(peds, false)
            PED.SET_PED_MONEY(peds, 2000)
            PED.SET_PED_CONFIG_FLAG(peds, 392, true) 
            ENTITY.SET_ENTITY_HEALTH(peds,0)
            wait(200)
            entities.delete_by_handle(peds)
        end
        gt = false
    end)

    GTAC(onlinemode, "一键解锁成就", {''}, "几乎无风险\n但可能造成云存档失败", function(f)
        for i=0,77 do
        PLAYER.GIVE_ACHIEVEMENT_TO_PLAYER(i)
        end
    end)
    
    GTTG(onlinemode, "文明你我他", {"endracism"}, "自动踢掉说脏话的玩家", function(on)
        end_racism = on
    end)
    
    GTTG(onlinemode, "结束同性恋", {"endhomophobia"}, "自动踢出男同言论的玩家", function(on)
        end_homophobia = on
    end)

    chat.on_message(function(packet_sender, message_sender, text, team_chat)
        toxicshit(packet_sender, message_sender, text, team_chat)
    end)


    throttler = GT(protex, "自动节流器", {}, "")

    require "lib.GTSCRIPTS.E"

    local pool_limiter = GT(protex, "实体池限制", {}, "")

    local block_event_anthing = GT(protex, "阻止选项", {}, "", function() end)

    local block_effect = GT(protex, "拦截选项", {}, "", function() end)
    

	require("lib.GTSCRIPTS.N")

    adbotblock = GT(protex, "广告拦截", {"blockidiotbot"}, "自动踢出聊天频道里发送广告的混蛋", function(on)
    end)
    
    GTD(adbotblock, "抢战局主机效果更佳")

    kick_ad_bot = false
    GTTG(adbotblock, "启用拦截广告", {"blockidiotbot"}, "自动踢出聊天频道里发送广告的混蛋", function(on)
        kick_ad_bot = on
    end)

    kick_ad_bot_chat = 1
    GTluaScript.slider_text(adbotblock, "发送踢出内容", {"blockidiotbot"}, "发送踢出内容到公屏", {"通知","Stand通知","团队聊天不联网", "团队聊天联网", "全局聊天不联网", "全局聊天联网"}, function(s)
        kick_ad_bot_chat = s
    end)
    GTD(adbotblock, "更新选项")
    GTTG(adbotblock, "强劲拦截踢出广告机", {}, "拦截广告机的同时拦截手机短信广告", function (on)
        local antibot = menu.ref_by_path("Online>Chat>Reactions>Advertisement>Kick>Enabled")
        local antitext = menu.ref_by_path("Online>Protections>Text Messages>Advertisement>Kick>Enabled")

        local antibotoff = menu.ref_by_path("Online>Chat>Reactions>Advertisement>Kick>Disabled")
        local antitextoff = menu.ref_by_path("Online>Protections>Text Messages>Advertisement>Kick>Disabled")
        if on then
            menu.trigger_command(antibot)
            menu.trigger_command(antitext)
        else
            menu.trigger_command(antibotoff)
            menu.trigger_command(antitextoff)
        end
    end)

    chat.on_message(function(sender_player_id, sender_player_name, message, is_team_chat)
        if kick_ad_bot then 
        if sender_player_id ~= players.user() then
            for n, w in pairs(banned_words) do
                if string.find(string.lower(message), w) then
                    if (kick_ad_bot_chat == 1) then	
                        notification("检测到广告机\n昵称:"..players.get_name(sender_player_name).."\nRID:"..players.get_rockstar_id(sender_player_name).. "\nIP:"..get_external_ip(sender_player_name) .." 已自动踢出.", colors.blue)
                    end if (kick_ad_bot_chat == 2) then	
                        util.toast("检测到广告机\n昵称:"..players.get_name(sender_player_name).."\nRID:"..players.get_rockstar_id(sender_player_name).. "\nIP:"..get_external_ip(sender_player_name) .." 已自动踢出.")
                    end if (kick_ad_bot_chat == 3) then
                        chat.send_message("检测到广告机\n昵称:"..players.get_name(sender_player_name).."\nRID:"..players.get_rockstar_id(sender_player_name).. "\nIP:"..get_external_ip(sender_player_name) .." 已自动踢出.", true, true, false)
                    end if (kick_ad_bot_chat == 4) then
                        chat.send_message("检测到广告机\n昵称:"..players.get_name(sender_player_name).."\nRID:"..players.get_rockstar_id(sender_player_name).. "\nIP:"..get_external_ip(sender_player_name) .." 已自动踢出.", true, true, true)
                    end if (kick_ad_bot_chat == 5) then
                        chat.send_message("检测到广告机\n昵称:"..players.get_name(sender_player_name).."\nRID:"..players.get_rockstar_id(sender_player_name).. "\nIP:"..get_external_ip(sender_player_name) .." 已自动踢出.", false, true, false)
                    end if (kick_ad_bot_chat == 6) then
                        chat.send_message("检测到广告机\n昵称:"..players.get_name(sender_player_name).."\nRID:"..players.get_rockstar_id(sender_player_name).. "\nIP:"..get_external_ip(sender_player_name) .." 已自动踢出.", false, true, true)
                    end
                    util.log("检测到广告机昵称 "..players.get_name(sender_player_name).." RID:"..players.get_rockstar_id(sender_player_name).. " IP:"..get_external_ip(sender_player_name) .." 已自动踢出.")
                    if players.exists(sender_player_name) then
                    menu.trigger_commands("networkbail ".. players.get_name(sender_player_name))
                    end
                    if players.exists(sender_player_name) then
                    menu.trigger_commands("invitehome ".. players.get_name(sender_player_name))
                    end
                    if players.exists(sender_player_name) then
                    menu.trigger_commands("tpcayo ".. players.get_name(sender_player_name))
                    end
                    if players.exists(sender_player_name) then
                    menu.trigger_commands("gotobeach ".. players.get_name(sender_player_name))
                    end
                    if players.exists(sender_player_name) then
                    menu.trigger_commands("adaptivekick ".. players.get_name(sender_player_name))
                   end
                end
            end
        end
    end
end)


    local anti_mugger = GT(protex, "拦截劫匪")

    GTLP(anti_mugger, "拦截劫匪(自我)", {"blockstealerself"}, "防止您被抢劫", function() 
        blockstealer()
    end)

    GTLP(anti_mugger, "拦截劫匪(全局)", {"blockstealermult"}, "防止战局玩家被抢劫", function()
        blockstealerother()
    end)
    
    GTLP(anti_mugger, "显示劫匪", {}, "", function ()
        show_mugger()
    end)

    GTLP(anti_mugger, "其他人", {}, "防止战局玩家被抢劫", function()
    if NETWORK.NETWORK_IS_SCRIPT_ACTIVE("am_gang_call", 0, true, 0) then
        local ped_netId = memory.script_local("am_gang_call", 63 + 10 + (0 * 7 + 1))
        local sender = memory.script_local("am_gang_call", 287)
        local target = memory.script_local("am_gang_call", 288)
        local player = players.user()

        util.spoof_script("am_gang_call", function()
            if memory.read_int(target) ~= player and memory.read_int(sender) ~= player
            and NETWORK.NETWORK_DOES_NETWORK_ID_EXIST(memory.read_int(ped_netId)) 
            and NETWORK.NETWORK_REQUEST_CONTROL_OF_NETWORK_ID(memory.read_int(ped_netId)) then
                local mugger = NETWORK.NET_TO_PED(memory.read_int(ped_netId))
                entities.delete_by_handle(mugger)
                util.toast("拦截劫匪发送来自 " .. players.get_name(memory.read_int(sender)) .. " to " .. players.get_name(memory.read_int(target)))
            end
        end)
    end
end)


crash_cf = GT(protex, "攻击嘲讽")
local toxic_text = "\n崩你妈个臭逼,崩不掉只会狗叫,你妈是不是骨灰盒被扬了,你他妈的全家是不是吃三鹿奶粉长大的,死脑残!!"
GTAC(crash_cf, "嘲讽文字", {"Customizeidicule"}, "点击修改嘲讽文字", function(value)
    toxic_text = inputC("", 99, toxic_text)
end)

GTLP(crash_cf, "开启攻击嘲讽", {"toxic_text"}, "", function()
    for _, pid in ipairs(players.list(false, true, true)) do
        if players.is_marked_as_attacker(pid,1 << 0x03) or players.is_marked_as_attacker(pid,1 << 0x04) or players.is_marked_as_attacker(pid,1 << 0x05) or players.is_marked_as_attacker(pid,1 << 0x0C) or players.is_marked_as_attacker(pid,1 << 0x0D) or players.is_marked_as_attacker(pid,1 << 0x0E) then
           chat.send_message(PLAYER.GET_PLAYER_NAME(pid).. toxic_text,false,true,true)
           break
        end
    end
end)

anti_crash = GT(protex, "崩溃保护")

GTLP(anti_crash, "攻击反弹V1", {"crashrebound"}, "", function()
    for _, pid in ipairs(players.list(false, true, true)) do
        if players.is_marked_as_attacker(pid,1 << 0x03) or players.is_marked_as_attacker(pid,1 << 0x04) or players.is_marked_as_attacker(pid,1 << 0x05) or players.is_marked_as_attacker(pid,1 << 0x0C) or players.is_marked_as_attacker(pid,1 << 0x0D) or players.is_marked_as_attacker(pid,1 << 0x0E) then
            menu.trigger_commands("yycrashV2") 
                break
            end
        end

end)

GTLP(anti_crash, "攻击反弹V2", {"crashrebound2"}, "", function()
        _U_hack_list={}
        while true do
        wait(0)
        for pid=0,31 do
        if pid~= PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()) then
        if players.is_marked_as_attacker(pid,1 << 0x03) or players.is_marked_as_attacker(pid,1 << 0x04) or players.is_marked_as_attacker(pid,1 << 0x05) or players.is_marked_as_attacker(pid,1 << 0x0C) or players.is_marked_as_attacker(pid,1 << 0x0D) or players.is_marked_as_attacker(pid,1 << 0x0E) then
        if not _U_hack_list[pid+1] then
        menu.trigger_commands("yycrashV2") 
        _U_hack_list[pid+1]=true
        end
        else
            _U_hack_list[pid+1]=false
                end
            end
        end
    end
end)

GTLP(anti_crash, "阻止克隆", {""}, "", function()
    for i, ped in ipairs(entities.get_all_peds_as_handles()) do
    if ENTITY.GET_ENTITY_MODEL(ped) == ENTITY.GET_ENTITY_MODEL(players.user_ped()) and not PED.IS_PED_A_PLAYER(ped) and not util.is_session_transition_active() then
        util.toast("检测到克隆模型。清除中......")
        entities.delete_by_handle(ped)
        wait(100)
    end
    end
end)

GTLP(anti_crash, "阻止实体生成", {"antient"}, "请谨慎使用\n此功能为侵入性功能\n阻止所有实体的生成", function(on_loop)
    local ct = 0
    for k,ent in pairs(entities.get_all_vehicles_as_handles()) do
        ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
        entities.delete_by_handle(ent)

        ct = ct + 1
    end
    for k,ent in pairs(entities.get_all_peds_as_handles()) do
        if not PED.IS_PED_A_PLAYER(ent) then
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
            entities.delete_by_handle(ent)

        end
        ct = ct + 1
    end
    for k,ent in pairs(entities.get_all_objects_as_handles()) do
        if ent ~= PLAYER.PLAYER_PED_ID() then
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
            entities.delete_by_handle(ent)
            ct = ct + 1
        end
    end
        for k,ent in pairs(entities.get_all_pickups_as_handles()) do
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, false, false)
            entities.delete_by_handle(ent)
            wait()
        return
    end
end)

GTAC(anti_crash, "关闭所有声音", {""}, "强制停止所有声音事件", function()
		for i=-1,100 do
			AUDIO.STOP_SOUND(i)
			AUDIO.RELEASE_SOUND_ID(i)
		end
	end)

GTAC(anti_crash, "删除手机铃声", {}, "让手机不再响铃", function()
    local player = PLAYER.PLAYER_PED_ID()
    menu.trigger_commands("nophonespam on")
    if AUDIO.IS_PED_RINGTONE_PLAYING(player) then
        for i = -1, 100 do
            AUDIO.STOP_PED_RINGTONE(i)
            AUDIO.RELEASE_SOUND_ID(i)
        end

    end
    wait(1000)
    menu.trigger_commands("nophonespam off")
end)
    anti_other = GT(protex, "其他保护")
    local admin_bail = true
    GTTG(anti_other, "管理员退出", {"adminbail"}, "当GTAV管理员加入自动退出战局", function(on)
        admin_bail = on
        while admin_bail do
            if util.is_session_started() then
                for _, pid in players.list(false, true, true) do 
                    if players.is_marked_as_admin(pid) then 
                        notify("检测到管理员！快跑！.")
                        menu.trigger_commands("quickbail")
                    end    
                end
            end
            wait()
        end
    end, false)

GTTG(anti_other, "阻止入侵载具", {}, "此选项对玩家以及NPC均起效", function(f)
    if f then
        menu.trigger_commands("nojacking on")
    else
        menu.trigger_commands("nojacking off")
    end
end)

local kick_time = 0
GTLP(anti_other, "自动踢出无敌玩家", {""}, "", function()
    for players.list(false, false, true) as pid do
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local old_pos = players.get_position(pid)
        wait(100)
        local cur_pos = players.get_position(pid)
        for interior_stuff as id do
            if players.is_godmode(pid) and not players.is_in_interior(pid) and not NETWORK.NETWORK_IS_PLAYER_FADING(pid) and ENTITY.IS_ENTITY_VISIBLE(ped) and GetSpawnState(pid) == 99 and GetInteriorPlayerIsIn(pid) == id and old_pos ~= cur_pos then
                kick_time += 1
                wait(5000)
                if kick_time >= 3 then
                    menu.trigger_commands("kick" .. players.get_name(pid))
                    repeat
                        wait()
                    until pid ~= nil
                    util.toast("成功移除了 " .. players.get_name(pid) .. " 因为他是无敌玩家")
                    kick_time = 0
                end
            end
        end
    end 
end, function()
end)

block_blaming = menu.ref_by_path("Online>Protections>Block Blaming")
GTLP(anti_other, "阻止玩家对您射击", {""}, "阻止战局玩家使用枪械对您射击", function()
    for players.list(false, true, true) as pid do
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        if WEAPON.IS_PED_ARMED(ped, 7) or TASK.GET_IS_TASK_ACTIVE(ped, 199) or TASK.GET_IS_TASK_ACTIVE(ped, 128) then
            block_blaming.value = true
        else
            block_blaming.value = false
        end
    end
end, function()
block_blaming.value = false
end)

GTAC(anti_crash, "超级清除", {"superclear"}, "", function()
    removeanything()
end)

GTLP(anti_crash, "连续清除", {""}, "", function()
    MISC.CLEAR_AREA(0,0,0 , 1000000, true, true, true, true)
end)

GTAC(anti_crash, "清除自身", {}, "", function()
if PED.IS_PED_MALE(PLAYER.PLAYER_PED_ID()) then
    menu.trigger_commands("mpmale")
else
    menu.trigger_commands("mpfemale")
end
end)

GTLuaScript.list_action(anti_crash, "定向清除", {}, "", {"NPC", "载具", "物体", "可拾取物体", "货车", "发射物", "声音"}, function(index, name)
    clearall(index, name)
end)

local orb = GT(protex, "反天基炮")
local ghost = GT(orb, "幽灵模式")
ghost_tgl = GTLP(ghost, "幽灵模式", {"ghostorb"}, "检测到玩家正在使用天基炮后自动开启幽灵模式", function()
    for _, pid in ipairs(players.list(false, true, true)) do
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local cam_pos = players.get_cam_pos(pid)
        if IsPlayerUsingOrbitalCannon(pid) and TASK.GET_IS_TASK_ACTIVE(ped, 135)
        and v3.distance(ENTITY.GET_ENTITY_COORDS(players.user_ped(), false), cam_pos) < 400
        and v3.distance(ENTITY.GET_ENTITY_COORDS(players.user_ped(), false), cam_pos) > 340 then
            util.toast(players.get_name(pid) .. " 天基炮正在瞄准你")
        end
       if IsPlayerUsingOrbitalCannon(pid) then
            NETWORK.SET_REMOTE_PLAYER_AS_GHOST(pid, true)
        else
            NETWORK.SET_REMOTE_PLAYER_AS_GHOST(pid, false)
        end
    end
end, function()
    for _, pid in ipairs(players.list(false, true, true)) do
        NETWORK.SET_REMOTE_PLAYER_AS_GHOST(pid, false)
    end
end)

GTLP(anti_other, "阻止观看同步", {}, "阻止所有观看您的人同步\n这将造成偷窥者视角无效", function()
    for _, pid in players.list(false, true, true) do
        if players.exists(pid) then
            if v3.distance(players.get_position(players.user()), players.get_cam_pos(pid)) < 15.0 then
                outgoingSyncs = menu.ref_by_rel_path(menu.player_root(pid), "Outgoing Syncs>Block")
                outgoingSyncs.value = true
                pos = players.get_position(players.user())
                if v3.distance(pos, players.get_cam_pos(pid)) < 25.0 then
                    repeat 
                        wait()
                    until v3.distance(pos, players.get_cam_pos(pid)) > 25.0 
                    outgoingSyncs.value = false
                end
            end
        end
    end
end)

lock_tgl = GTLP(ghost, "被锁定时", {}, "检测到玩家使用天基跑瞄准你时自动开启幽灵模式", function()
    if menu.get_value(ghost_tgl) then
        menu.set_value(ghost_tgl, false)
    return end
    for _, pid in ipairs(players.list(false, true, true)) do
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local cam_pos = players.get_cam_pos(pid)
        if IsPlayerUsingOrbitalCannon(pid) and TASK.GET_IS_TASK_ACTIVE(ped, 135) 
        and v3.distance(ENTITY.GET_ENTITY_COORDS(players.user_ped(), false), cam_pos) < 400
        and v3.distance(ENTITY.GET_ENTITY_COORDS(players.user_ped(), false), cam_pos) > 340 then
            util.toast(players.get_name(pid) .. " Is targeting you with the orbital cannon")
            NETWORK.SET_REMOTE_PLAYER_AS_GHOST(pid, true)
        end
    end
end, function()
    for _, pid in ipairs(players.list(false, true, true)) do
        NETWORK.SET_REMOTE_PLAYER_AS_GHOST(pid, false)
    end
end)

annoy = GT(orb, "防御模式", {}, "快速显示你的名字并将其从目标玩家天基炮选择列表中删除.")
orb_delay = 1000
GTLuaScript.list_select(annoy, "延迟", {}, "基于正在使用天基炮玩家,您的id会以何种数值闪烁", {"慢速", "中速", "快速"}, 1, function(index, value)
switch value do
    case "慢速":
        orb_delay = 1000
        break
    case "中速":
        orb_delay = 500
        break
    case "快速":
        orb_delay = 100
        break
    end
end)

local annoy_tgl
annoy_tgl = GTLP(annoy, "启用", {}, "", function()
    if menu.get_value(ghost_tgl) then
        menu.set_value(annoy_tgl, false)
        util.toast("请不要同时启用防御模式和幽灵模式 ;)")
    return end
    
    for _, pid in ipairs(players.list(false, true, true)) do
       if IsPlayerUsingOrbitalCannon(pid) then
            NETWORK.SET_REMOTE_PLAYER_AS_GHOST(pid, true)
            wait(orb_delay)
            NETWORK.SET_REMOTE_PLAYER_AS_GHOST(pid, false)
            wait(orb_delay)
        else
            NETWORK.SET_REMOTE_PLAYER_AS_GHOST(pid, false)
        end
    end
end, function()
    for _, pid in ipairs(players.list(false, true, true)) do
        NETWORK.SET_REMOTE_PLAYER_AS_GHOST(pid, false)
    end
end)

    ped_limit = 175

    GTluaScript.slider(pool_limiter, "Ped池限制", {"pedslimit"}, "默认为175", 0, 256, 175, 1, function(amount)

        ped_limit = amount

    end)

    

    veh_limit = 150

    GTluaScript.slider(pool_limiter, "载具池限制", {"vehlimit"}, "默认为150", 0, 300, 150, 1, function(amount)

        veh_limit = amount

    end)

    

    obj_limit = 500

    GTluaScript.slider(pool_limiter, "物体池限制", {"objlimit"}, "默认为500", 0, 2300, 500, 1, function(amount)

        obj_limit = amount

    end)

    

    projectile_limit = 25

    GTluaScript.slider(pool_limiter, "投掷物池限制", {"projlimit"}, "默认为25", 0, 50, 25, 1, function(amount)

        projectile_limit = amount

    end)

    

    GTLP(pool_limiter, "启用实体池限制", {}, "", function()
        entity_limit()
    end)

    GTLP(block_effect, "拦截粒子效果", {}, "", function()
        blockcrasheffect()
    end)
    
    GTLP(block_effect, "拦截火焰效果", {}, "", function()
        blockfireeffect()
    end)

    GTLP(anti_other, "阻止变成野兽", {}, "防止您被变成野兽\n但同时会阻止其他玩家的战局事件", function()
        antianimal()
    end)

    GTLP(anti_other, "阻止交易错误 ", {}, "阻止战局玩家利用破坏车辆的方式让您出现交易错误", function()
    if util.spoof_script("am_destroy_veh", SCRIPT.TERMINATE_THIS_THREAD) then
        util.toast("检测到破坏车辆脚本。阻止了该脚本功能继续进行...")
    end
end)

GTLP(anti_other, "自动移除赏金", {}, "", function()
    if util.is_session_started() then
        if memory.read_int(memory.script_global(1835502 + 4 + 1 + (players.user() * 3))) == 1 then
            memory.write_int(memory.script_global(2815059 + 1856 + 17), -1)
            memory.write_int(memory.script_global(2359296 + 1 + 5149 + 13), 2880000)
            notify(translations.removed_bounty ..memory.read_int(memory.script_global(1835502 + 4 + 1 + (players.user() * 3) + 1)).. " ")
        end
    end
    wait(5000)
end)

orb_cannon_prop = nil
block_orb_cannon = fase
GTLP(anti_other, "阻止天基炮", {}, "", function(on)
    block_orb_cannon = on
    while true do 
        if not block_orb_cannon then 
            if orb_cannon_prop ~= nil then 
                entities.delete_by_handle(orb_cannon_prop)
            end
            break
        end
        if orb_cannon_prop == nil or not ENTITY.DOES_ENTITY_EXIST(orb_cannon_prop) then
            local hash = util.joaat("h4_prop_h4_garage_door_01a")
            request_model_load(hash)
            orb_cannon_prop = entities.create_object(hash, {x=0, y=0, z=0})
            ENTITY.SET_ENTITY_HEADING(orb_cannon_prop, 125)
            ENTITY.SET_ENTITY_COORDS(orb_cannon_prop, 335.8, 4833.9, -59)
            ENTITY.FREEZE_ENTITY_POSITION(orb_cannon_prop, true)
        end
        wait()
    end
end)

    GTLP(anti_other, "友好的AI", {""}, "AI不会瞄准你", function()
    PED.SET_PED_RESET_FLAG(players.user_ped(), 124, true)
    end)
    anti_veh = GT(protex, "载具反制")
	oppressor_kick_players = false
	GTTG(anti_veh, "反MK2", {"antioppressor"}, "", function(on)
		oppressor_kick_players = on
	end, false)

	target_self = false
	GTTG(anti_veh, "自我目标", {"targetselfmk2"}, "反制同时针对您自己的MK2", function(on)
		target_self = on
	end, false)

	target_friends = false
	GTTG(anti_veh, "好友目标", {"targetfriendsmk2"}, "反制同时针对您的好友", function(on)
		target_friends = on
	end, false)
    
	lazer_kick_players = false
	GTTG(anti_veh, "防天煞", {"antilazer"}, "", function(on)
		lazer_kick_players = on
	end, false)

    kosatka_kick_players = false
	GTTG(anti_veh, "防虎鲸", {"antikosatka"}, "", function(on)
		kosatka_kick_players = on
	end, false)

    hydra_kick_players = false
	GTTG(anti_veh, "防九头蛇", {"antihydra"}, "", function(on)
		hydra_kick_players = on
	end, false)

    khanjali_kick_players = false
	GTTG(anti_veh, "反可汗贾利坦克", {"antikhanjali"}, "", function(on)
		khanjali_kick_players = on
	end, false)

    GTLP(anti_other, "防止笼子", {"anticage"}, "请不要在任务中开启", function()
        anticage()
    end)

    	lock_vehicle = false
	GTTG(anti_other, "锁定载具", {"lockmk2"}, "永久锁定车辆，以防止进一步使用", function(on)
		lock_vehicle = on
	end, false)

	GTTG(block_event_anthing, "阻止网络事件", {}, "阻止网络事件传输", function(on_toggle)
        blocknetwork(on_toggle)  
	end)

	GTTG(block_event_anthing, "阻止传入", {}, "阻止网络事件传入", function(on_toggle)
        blockincoming(on_toggle)
	end)

	GTTG(block_event_anthing, "阻止传出", {}, "阻止网络事件传出", function(on_toggle)
        blockout(on_toggle)
	end)

    GTLP(block_event_anthing, "禁用阻止实体轰炸", {}, "开启任务后将自动禁用\n以避免影响任务的进行/运行", function()
    local EntitySpam = GTluaScript.ref_by_path("Online>Protections>Block Entity Spam>Block Entity Spam")
    if NETWORK.NETWORK_IS_ACTIVITY_SESSION() == true then
        if not GTluaScript.get_value(EntitySpam) then return end
        GTluaScript.trigger_command(EntitySpam, "off")
    else
        if GTluaScript.get_value(EntitySpam) then return end
        GTluaScript.trigger_command(EntitySpam, "on")
    end
end)

	GTTG(protex, "防崩镜头", {""}, "", function(on_toggle)
		if on_toggle then
			menu.trigger_commands("anticrashcam on")
			menu.trigger_commands("potatomode on")
		else
			menu.trigger_commands("anticrashcam off")
			menu.trigger_commands("potatomode off")
		end
	end)

	GTTG(protex, "自闭模式", {"autism"}, "", function(on_toggle)
        chickenmode(on_toggle)
	end)

    action_lua = GT(funfeatures, "动作选项", {}, "", function(); end)
    require "lib.GTSCRIPTS.A"

    jingche = GT(funfeatures, "警车选项", {}, "警车延伸功能", function(); end)
    require "lib.GTSCRIPTS.J"

    heidong = GT(funfeatures, "黑洞选项")
    dont_stop = false
	GTLP(heidong,"载具黑洞", {"vehicleblackhole"}, "", function(on)
		for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
			local PedInSeat = VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, -1, false)
			local locspeed2 = speed
        			local holecoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
			if not PED.IS_PED_A_PLAYER(PedInSeat) then
				NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
	      ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(bh_target), true)
                        vcoords = ENTITY.GET_ENTITY_COORDS(veh, true)
                        speed = 100
                        local x_vec = (holecoords['x']-vcoords['x'])*speed
                        local y_vec = (holecoords['y']-vcoords['y'])*speed
                        local z_vec = ((holecoords['z']+hole_zoff)-vcoords['z'])*speed
                        ENTITY.SET_ENTITY_INVINCIBLE(veh, true)
                        ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(veh, 1, x_vec, y_vec, z_vec, true, false, true, true)
				if not dont_stop and not PAD.IS_CONTROL_PRESSED(2, 71) and not PAD.IS_CONTROL_PRESSED(2, 72) then
					VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0.0);
				end
			end
		end
	end)

    GTLP(heidong,"载具原地打转", {"spinbotveh"}, "", function()
        for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
            local PedInSeat = VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, -1, true)
            if not PED.IS_PED_A_PLAYER(PedInSeat) then
                NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
                local velocity = ENTITY.GET_ENTITY_VELOCITY(veh)
                local height = ENTITY.GET_ENTITY_HEIGHT_ABOVE_GROUND(veh)
                if veh ~= 0 and not PED.IS_PED_DEAD_OR_DYING(PedInSeat, veh) and NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(PedInSeat, veh) then
                    ENTITY.APPLY_FORCE_TO_ENTITY(veh, 5, 0, 0, 150.0, 0, 0, 0, 0, true, false, true, false, true)
                end
            end
        end
    end)

    GTLP(heidong,"NPC黑洞", {"pedblackhole"}, "", function(on)
		for k, veh in pairs(entities.get_all_peds_as_handles()) do
			local PedInSeat = VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, -1, false)
			local locspeed2 = speed
        			local holecoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
			if not PED.IS_PED_A_PLAYER(PedInSeat) then
				NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
	      ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(bh_target), true)
                        vcoords = ENTITY.GET_ENTITY_COORDS(veh, true)
                        speed = 100
                        local x_vec = (holecoords['x']-vcoords['x'])*speed
                        local y_vec = (holecoords['y']-vcoords['y'])*speed
                        local z_vec = ((holecoords['z']+hole_zoff)-vcoords['z'])*speed
                        ENTITY.SET_ENTITY_INVINCIBLE(veh, true)
                        ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(veh, 1, x_vec, y_vec, z_vec, true, false, true, true)
				if not dont_stop and not PAD.IS_CONTROL_PRESSED(2, 71) and not PAD.IS_CONTROL_PRESSED(2, 72) then
					VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0.0);
				end
			end
		end
	end)

    GTLP(heidong,"物体黑洞", {"objectblackhole"}, "", function(on)
		for k, veh in pairs(entities.get_all_objects_as_handles()) do
			local PedInSeat = VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, -1, false)
			local locspeed2 = speed
        			local holecoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
			if not PED.IS_PED_A_PLAYER(PedInSeat) then
				NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
	      ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(bh_target), true)
                        vcoords = ENTITY.GET_ENTITY_COORDS(veh, true)
                        speed = 100
                        local x_vec = (holecoords['x']-vcoords['x'])*speed
                        local y_vec = (holecoords['y']-vcoords['y'])*speed
                        local z_vec = ((holecoords['z']+hole_zoff)-vcoords['z'])*speed
                        ENTITY.SET_ENTITY_INVINCIBLE(veh, true)
                        ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(veh, 1, x_vec, y_vec, z_vec, true, false, true, true)
				if not dont_stop and not PAD.IS_CONTROL_PRESSED(2, 71) and not PAD.IS_CONTROL_PRESSED(2, 72) then
					VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0.0);
				end
			end
		end
	end)

	hole_zoff = 50
    	GTluaScript.slider(heidong, "黑洞Z偏移", {"blackholeoffset"}, "", 0, 100, 50, 10, function(s)
    	hole_zoff = s
	end)

    Blackhole = GT(heidong, "黑洞", {}, "黑洞延伸功能;可自定义位置或在玩家选项中附加玩家", function(); end)
    Load_Blackhole = GTAC(Blackhole, "加载黑洞选项", {""}, "", function()
    gtoast("请稍后...")
    wait(2000)
    require "lib.GTSCRIPTS.B"
    GTluaScript.delete(Load_Blackhole)
    end)
    local num = {
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
    "32",
    "33",
    "34",
    "35"
}    
    GTTG(funfeatures, "特斯拉自动驾驶", {}, "", function(toggled)
            local player = players.user_ped()
            local playerpos = ENTITY.GET_ENTITY_COORDS(player, false)
            local tesla_ai = util.joaat("u_m_y_baygor")
            local tesla = util.joaat("raiden")
            request_model(tesla_ai)
            request_model(tesla)
            if toggled then     
                if PED.IS_PED_IN_ANY_VEHICLE(player, true) then
                    menu.trigger_commands("deletevehicle")
                end
        
                tesla_ai_ped = entities.create_ped(26, tesla_ai, playerpos, 0)
                tesla_vehicle = entities.create_vehicle(tesla, playerpos, 0)
                ENTITY.SET_ENTITY_INVINCIBLE(tesla_ai_ped, true)
                ENTITY.SET_ENTITY_VISIBLE(tesla_ai_ped, false)
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(tesla_ai_ped, true)
                PED.SET_PED_INTO_VEHICLE(player, tesla_vehicle, -2)
                PED.SET_PED_INTO_VEHICLE(tesla_ai_ped, tesla_vehicle, -1)
                PED.SET_PED_KEEP_TASK(tesla_ai_ped, true)
                VEHICLE.SET_VEHICLE_COLOURS(tesla_vehicle, 111, 111)
                VEHICLE.SET_VEHICLE_MOD(tesla_vehicle, 23, 8, false)
                VEHICLE.SET_VEHICLE_MOD(tesla_vehicle, 15, 1, false)
                VEHICLE.SET_VEHICLE_EXTRA_COLOURS(tesla_vehicle, 111, 147)
                menu.trigger_commands("performance")
        
                if HUD.IS_WAYPOINT_ACTIVE() then
                    local pos = HUD.GET_BLIP_COORDS(HUD.GET_FIRST_BLIP_INFO_ID(8))
                    TASK.TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE(tesla_ai_ped, tesla_vehicle, pos.x, pos.y, pos.z, 20, 786603, 0)
                else
                    TASK.TASK_VEHICLE_DRIVE_WANDER(tesla_ai_ped, tesla_vehicle, 20, 786603)
                end
            else
                if tesla_ai_ped ~= nil then 
                    entities.delete_by_handle(tesla_ai_ped)
                end
                if tesla_vehicle ~= nil then 
                    entities.delete_by_handle(tesla_vehicle)
                end
            end
    end)

GTACR(funfeatures, "UFO", {"ufo"}, "#超好玩滴延伸功能\n驾驶UFO在战局中穿梭,并且拥有特殊功能(天基炮/牵引吸附)", {"外星UF0", "军用UFO"}, function (index)
	local obj = ufomodels[index]
	UFO.setObjModel(obj)
	if not (GuidedMissile.exists() or UFO.exists()) then UFO.create() end
end)

    GTTG(funfeatures, "驾驶UFO", {"driveufo"}, "", function(on_toggle)
        if on_toggle then
        local vehicleHash = util.joaat("hydra")
        request_model(vehicleHash)
        local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped(), false)
        ufo = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
        ENTITY.SET_ENTITY_VISIBLE(ufo, false, false)
        ENTITY.SET_ENTITY_VISIBLE(players.user_ped(), false, true)
        VEHICLE.SET_VEHICLE_ENGINE_ON(ufo, true, true, true)
        ENTITY.SET_ENTITY_INVINCIBLE(ufo, true)
        VEHICLE.SET_PLANE_TURBULENCE_MULTIPLIER(ufo, 0.0)
        local id = get_closest_vehicle(entity)
        local playerpos = ENTITY.GET_ENTITY_COORDS(id)
        playerpos.z = playerpos.z + 3
        local ufo_object = util.joaat("sum_prop_dufocore_01a")
        STREAMING.REQUEST_MODEL(ufo_object)
        while not STREAMING.HAS_MODEL_LOADED(ufo_object) do
            wait()
        end
        local object1 = entities.create_object(ufo_object, ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(players.user()), 0, 2, 3), ENTITY.GET_ENTITY_HEADING(id))
        ENTITY.ATTACH_ENTITY_TO_ENTITY(object1, ufo, 0, 0, 0, 0, 0, 0, 0, 0, true, true, false, 0, true)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(object1, ufo)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(ufo, object1, 0, 0, 3, 0, 0, 0, 0, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(object1, ufo, 0, 0, 3, 0, 0, 0, 0, 0, false, true, false, 0, true)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ufo, pos.x, pos.y, pos.z + 200, false, false, true)
        PED.SET_PED_INTO_VEHICLE(PLAYER.PLAYER_PED_ID(), ufo, -1)
        ENTITY.SET_ENTITY_VISIBLE(object1, true)
        menu.trigger_commands("otr" .. " on")
        menu.trigger_commands("cameradistance" .. " 1.80")
        DisablePhone()
    else
        ENTITY.SET_ENTITY_VISIBLE(players.user_ped(), true, true)
        menu.trigger_commands("otr" .. " off")
        menu.trigger_commands("cameradistance" .. " 1.00")
        menu.trigger_commands("deleteveh")
        for i, object in ipairs(entities.get_all_objects_as_handles()) do
            if ENTITY.DOES_ENTITY_EXIST(object, util.joaat("sum_prop_dufocore_01a")) then
            entities.delete_by_handle(object)
            wait()
            end
        end
    end
end)
--766526323
    GTTG(funfeatures, "超速UFO", {"superufo"}, "", function(on_toggle)
        if on_toggle then
            menu.trigger_commands("speedlimit" .. " 10000")
            menu.trigger_commands("superdrivespeed" .. " 1000")
            menu.trigger_commands("superdrive")
            menu.trigger_commands("superhandbreak")
            menu.trigger_commands("driveufo")
        else
            menu.trigger_commands("superdrivespeed" .. " 3.00")
            menu.trigger_commands("superdrive")
            menu.trigger_commands("superhandbreak")
            menu.trigger_commands("driveufo")
        end
    end)

    GTTG(funfeatures, "特警队直升机", {"copheli"}, "", function(on_toggle)
        if on_toggle then
            menu.trigger_commands("bodyguardmodel S_M_Y_Swat_01")
            menu.trigger_commands("bodyguardcount 3")
            menu.trigger_commands("bodyguardprimary mk2")
            menu.trigger_commands("spawnbodyguards")
            menu.trigger_commands("smyswat01")
            menu.trigger_commands("undead")
            menu.trigger_commands("otr")
            local Imortality_BodyGuards = menu.ref_by_path("Self>Bodyguards>Immortality")
            wait(300)
            menu.trigger_command(Imortality_BodyGuards)
            util.toast("给直升机让路.")
            wait(3000)
            local vehicleHash = util.joaat("polmav")
            request_model(vehicleHash)
            local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), false)
            copheli = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
            VEHICLE.SET_VEHICLE_ENGINE_ON(copheli, true, true, true)
            ENTITY.SET_ENTITY_INVINCIBLE(copheli, true)
            VEHICLE.SET_PLANE_TURBULENCE_MULTIPLIER(copheli, 0.0)
            local id = get_closest_vehicle(entity)
            local playerpos = ENTITY.GET_ENTITY_COORDS(id)
            playerpos.z = playerpos.z + 3
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(copheli, pos.x, pos.y, pos.z, false, false, true)
            PED.SET_PED_INTO_VEHICLE(PLAYER.PLAYER_PED_ID(), copheli, -1)
            wait(1500)
            menu.trigger_commands("livery -1")
        else
            local Imortality_BodyGuards = menu.ref_by_path("Self>Bodyguards>Immortality")
            menu.trigger_command(Imortality_BodyGuards)
            menu.trigger_commands("delbodyguards")
            menu.trigger_commands("deletevehicle")
            menu.trigger_commands("mpfemale")
            menu.trigger_commands("undead")
            menu.trigger_commands("otr")
            util.toast("已恢复自己")
        end
    end)


    GTTG(funfeatures, "特警队车辆", {"copcar"}, "", function(on_toggle)
        if on_toggle then
            menu.trigger_commands("bodyguardmodel S_M_Y_Cop_01")
            menu.trigger_commands("bodyguardcount 1")
            menu.trigger_commands("bodyguardweapon pistol")
            menu.trigger_commands("spawnbodyguards")
            menu.trigger_commands("SMYCop01")
            menu.trigger_commands("undead")
            menu.trigger_commands("otr")
            local Imortality_BodyGuards = menu.ref_by_path("Self>Bodyguards>Immortality")
            wait(300)
            menu.trigger_command(Imortality_BodyGuards)
            local vehicleHash = util.joaat("police3")
            request_model(vehicleHash)
            local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), false)
            copheli = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
            VEHICLE.SET_VEHICLE_ENGINE_ON(copheli, true, true, true)
            ENTITY.SET_ENTITY_INVINCIBLE(copheli, true)
            VEHICLE.SET_PLANE_TURBULENCE_MULTIPLIER(copheli, 0.0)
            VEHICLE.SET_VEHICLE_MOD_KIT(copheli, -1)
            local id = get_closest_vehicle(entity)
            local playerpos = ENTITY.GET_ENTITY_COORDS(id)
            playerpos.z = playerpos.z + 3
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(copheli, pos.x, pos.y, pos.z, false, false, true)
            PED.SET_PED_INTO_VEHICLE(PLAYER.PLAYER_PED_ID(), copheli, -1)
        else
            local Imortality_BodyGuards = menu.ref_by_path("Self>Bodyguards>Immortality")
            menu.trigger_command(Imortality_BodyGuards)
            menu.trigger_commands("delbodyguards")
            menu.trigger_commands("deletevehicle")
            menu.trigger_commands("mpfemale")
            menu.trigger_commands("undead")
            menu.trigger_commands("otr")
        end
    end)

        
    GTTG(funfeatures, "驾驶购物车", {"givecart"}, "", function(on_toggle)
        if on_toggle then
        local vehicleHash = util.joaat("bmx")
        request_model(vehicleHash)
        local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), false)
        cart = entities.create_vehicle(vehicleHash, pos, CAM.GET_GAMEPLAY_CAM_ROT(0).z)
        ENTITY.SET_ENTITY_VISIBLE(vehicleHash, false)
        ENTITY.SET_ENTITY_VISIBLE(cart, false)
        VEHICLE.SET_VEHICLE_ENGINE_ON(cart, true, true, true)
        ENTITY.SET_ENTITY_INVINCIBLE(cart, true)
        VEHICLE.SET_PLANE_TURBULENCE_MULTIPLIER(cart, 0.0)
        local id = get_closest_vehicle(entity)
        local playerpos = ENTITY.GET_ENTITY_COORDS(id)
        playerpos.z = playerpos.z + 3
        local ufo_object = util.joaat("prop_rub_trolley02a")
        STREAMING.REQUEST_MODEL(ufo_object)
        while not STREAMING.HAS_MODEL_LOADED(ufo_object) do
            wait()
        end
        local object1 = entities.create_object(ufo_object, ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(players.user()), 0, 2, 3), ENTITY.GET_ENTITY_HEADING(id))
        ATTACH_ENTITY_TO_ENTITY(object1, cart, 0, 0, 0, 0, 0, 0, 0, 0, true, true, false, 0, true)
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(object1, cart)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(cart, object1, 0, 0, 0, 0, 0, 0, 180, 0, false, true, false, 0, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(object1, cart, 0, 0, 0, 0, 0, 0, 180, 0, false, true, false, 0, true)
        PED.SET_PED_INTO_VEHICLE(PLAYER.PLAYER_PED_ID(), cart, -1)

        DisablePhone()
    else
        --menu.trigger_commands("superc")
        entities.delete_by_handle(cart)
        end
    end)

 function get_closest_vehicle(entity)
    local coords = ENTITY.GET_ENTITY_COORDS(players.user())
    local vehicles = entities.get_all_vehicles_as_handles()
    local closestdist = 1000000
    local closestveh = 0
    for k, veh in pairs(vehicles) do
        if veh ~= PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), false) and ENTITY.GET_ENTITY_HEALTH(veh) ~= 0 then
            local vehcoord = ENTITY.GET_ENTITY_COORDS(veh, true)
            local dist = MISC.GET_DISTANCE_BETWEEN_COORDS(coords['x'], coords['y'], coords['z'], vehcoord['x'], vehcoord['y'], vehcoord['z'], true)
            if dist < closestdist then
                closestdist = dist
                closestveh = veh
            end
        end
    end
    return closestveh
    end

function upgrade_vehicle(vehicle)
    for i = 0, 49 do
        local num = VEHICLE.GET_NUM_VEHICLE_MODS(vehicle, i)
        VEHICLE.SET_VEHICLE_MOD(vehicle, i, num - 1, true)
    end
end
function give_oppressor(pid)
    local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local c = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(ped, 0.0, 5.0, 0.0)

    local hash = util.joaat("oppressor2")

    if not STREAMING.HAS_MODEL_LOADED(hash) then
        load_model(hash)
    end

    local oppressor = entities.create_vehicle(hash, c, ENTITY.GET_ENTITY_HEADING(ped))
    ENTITY.SET_ENTITY_INVINCIBLE(oppressor)

    upgrade_vehicle(oppressor)
end

GTTG(funfeatures,"搭火箭",{},"", function(t)
local bones <const> = {0x3779,0xCC4D}
    gt=t
        if gt then
            for _, boneId in ipairs(bones) do
            request_ptfx_asset("weap_xs_vehicle_weapons")
        GRAPHICS.USE_PARTICLE_FX_ASSET("weap_xs_vehicle_weapons")
    GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("muz_xs_turret_flamethrower_looping", players.user_ped(), 0, 0, 0, 180, 0 ,0,PED.GET_PED_BONE_INDEX(players.user_ped(), boneId), 0.6, true, false, false, 0, 0, 0, 0)
end
guided_missile_object = OBJECT.CREATE_OBJECT_NO_OFFSET(1262355818,ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED()).x,
    ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED()).x,
    ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED()).y,
ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED()).z,true, true)
guided_object = OBJECT.CREATE_OBJECT_NO_OFFSET(util.joaat("apa_prop_flag_china"),ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED()).x,
    ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED()).x,
    ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED()).y,
ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED()).z,true, true)
guided_missile_object_vehicle = CreateVehicle(util.joaat("oppressor2"), ENTITY.GET_ENTITY_COORDS(players.user_ped(),false),0,true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(guided_missile_object, guided_missile_object_vehicle, PED.GET_PED_BONE_INDEX(players.user(), 0), 0.0, -1, 0, -20, 0.0, 180, true, false, false, false, 0, true)
ENTITY.ATTACH_ENTITY_TO_ENTITY(guided_object, guided_missile_object, PED.GET_PED_BONE_INDEX(players.user(), 0), 0.0, -5, 0.8, -20, 0.0, 180, true, false, false, false, 0, true)
        ENTITY.SET_ENTITY_VISIBLE(guided_missile_object_vehicle, false)
        ENTITY.SET_ENTITY_VISIBLE(guided_missile_object, true)
PED.SET_PED_INTO_VEHICLE(PLAYER.GET_PLAYER_PED(), guided_missile_object_vehicle, -1)
else
GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(players.user_ped())
    entities.delete_by_handle(guided_missile_object)
        entities.delete_by_handle(guided_missile_object_vehicle)
            entities.delete_by_handle(guided_object)
        end
    gt=false
end)

    GTAC(funfeatures, "给他爱", {"oppressorparty"}, "赠送每位战局玩家一辆马克兔(MK2)", function ()
        chat.send_message("已到位", false, true, true)
        for k,v in pairs(players.list(true, true, true)) do
            give_oppressor(v)
            wait()
        end
    end)

GTAC(funfeatures, "飞天扫帚", {""}, "注意:您将对其他玩家不可见", function()
    local pos = ENTITY.GET_ENTITY_COORDS(players.user_ped(), false)
    local broomstick = util.joaat("prop_tool_broom")
    local oppressor = util.joaat("oppressor2")
    request_model(broomstick)
    request_model(oppressor)
    obj = entities.create_object(broomstick, pos)
    veh = entities.create_vehicle(oppressor, pos, 0)
    ENTITY.SET_ENTITY_VISIBLE(veh, false, false)
    PED.SET_PED_INTO_VEHICLE(players.user_ped(), veh, -1)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(obj, veh, 0, 0, 0, 0.3, -80.0, 0, 0, true, false, false, false, 0, true) -- thanks to chaos mod for doing the annoying rotation work for me :P
end)

headlamp = GT(funfeatures, "人物头灯", {}, "本地功能(自娱自乐)")
distance = 25.0
GTluaScript.slider_float(headlamp, "距离", {"distance"}, "光照距离.", 100, 10000, 1500, 100, function(value)
    distance = value / 100
end)

brightness = 10.0
GTluaScript.slider_float(headlamp, "亮度", {"brightness"}, "光亮强度.", 100, 10000, 1000, 100, function(value)
    brightness = value / 100
end)

radius = 15.0
GTluaScript.slider_float(headlamp, "半径", {"radius"}, "光束半径.", 100, 5000, 2000, 100, function(value)
    radius = value / 100
end)

yanse = {r = 1, g = 235/255, b = 190/255, a = 0}
GTluaScript.colour(headlamp, "颜色", {"colour"}, "", yanse, true, function(value)
    yanse = value 
end)

GTLP(headlamp, "开启", {"headlamp"}, "", function()
    local head_pos = PED.GET_PED_BONE_COORDS(players.user_ped(), 31086, 0.0, 0.0, 0.0)
    local cam_rot = players.get_cam_rot(players.user())
    GRAPHICS.DRAW_SPOT_LIGHT(head_pos, cam_rot:toDir(), math.floor(yanse.r * 255), math.floor(yanse.g * 255), math.floor(yanse.b * 255), distance * 1.5, brightness, 0.0, radius, distance)
end)
    
local jinx_pet
jinx_toggle = GTLP(funfeatures, "宠物猫Jinx", {}, "招换一只可爱的小猫咪\nBy Jinx.lua", function()
    if not jinx_pet or not ENTITY.DOES_ENTITY_EXIST(jinx_pet) then
        local jinx = util.joaat("a_c_cat_01")
        request_model(jinx)
        local pos = players.get_position(players.user())
        jinx_pet = entities.create_ped(28, jinx, pos, 0)
        PED.SET_PED_COMPONENT_VARIATION(jinx_pet, 0, 0, 1, 0)
        ENTITY.SET_ENTITY_INVINCIBLE(jinx_pet, true)
    end
    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(jinx_pet)
    TASK.TASK_FOLLOW_TO_OFFSET_OF_ENTITY(jinx_pet, players.user_ped(), 0, -0.3, 0, 7.0, -1, 1.5, true)
    wait(2500)
end, function()
    entities.delete_by_handle(jinx_pet)
    jinx_pet = nil
end)
    
local jinx_army = {}
local army = GT(funfeatures, "宠物猫Jinx军队", {}, "招换一堆可爱又愚蠢的小猫咪\nBy Jinx.lua")
GTluaScript.click_slider(army, "生成数量", {}, "最多256只小猫咪", 1, 256, 30, 1, function(val)
    local ped = players.user_ped()
    local pos = ENTITY.GET_ENTITY_COORDS(ped, false)
    pos.y = pos.y - 5
    pos.z = pos.z + 1
    local jinx = util.joaat("a_c_cat_01")
    request_model(jinx)
     for i = 1, val do
        jinx_army[i] = entities.create_ped(28, jinx, pos, 0)
        ENTITY.SET_ENTITY_INVINCIBLE(jinx_army[i], true)
        PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(jinx_army[i], true)
        PED.SET_PED_COMPONENT_VARIATION(jinx_army[i], 0, 0, 1, 0)
        TASK.TASK_FOLLOW_TO_OFFSET_OF_ENTITY(jinx_army[i], ped, 0, -0.3, 0, 7.0, -1, 10, true)
        wait()
     end 
end)

GTAC(army, "清除宠物猫Jinx", {}, "清除愚蠢的小猫咪", function()
    for i, ped in ipairs(entities.get_all_peds_as_handles()) do
        if PED.IS_PED_MODEL(ped, util.joaat("a_c_cat_01")) then
            entities.delete_by_handle(ped)
        end
    end
end)
    
GTAC(funfeatures, "唤回Jinx猫咪", {}, "将小猫咪传送到您身边", function()
    local ped = players.user_ped()
    local pos = ENTITY.GET_ENTITY_COORDS(ped, false)
    if jinx_pet ~= nil then 
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(jinx_pet, pos, false, false, false)
    else
        util.toast("找不到你那只傻猫了. :/")
    end
end)
local hen_army = {}
GTluaScript.click_slider(funfeatures, "生成ikun军队", {}, "", 1, 256, 30, 1, function(val)
    local player = players.user_ped()
    local pos = ENTITY.GET_ENTITY_COORDS(player, false)
    pos.y = pos.y - 5
    pos.z = pos.z + 1
    local ped = util.joaat("a_c_hen")
    request_model(ped)
     for i = 1, val do
        hen_army[i] = entities.create_ped(28, ped, pos, 0)
        ENTITY.SET_ENTITY_INVINCIBLE(hen_army[i], true)
        PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(hen_army[i], true)
        PED.SET_PED_COMPONENT_VARIATION(hen_army[i], 0, 0, 1, 0)
        TASK.TASK_FOLLOW_TO_OFFSET_OF_ENTITY(hen_army[i], player, 0, -0.3, 0, 7.0, -1, 10, true)
        wait()
     end 
end)

GTAC(funfeatures, "删除ikun军队", {}, "", function()
    for i, ped in ipairs(hen_army) do
        entities.delete_by_handle(hen_army[i])
    end
end)

do_vpn_warn = false
GTTG(detection, "VPN检测", {}, "检测是否有VPN", function(on)
    do_vpn_warn = on
end, false)

GTLP(detection, "检测投票踢", {}, "检测谁正在使用投票踢", function()
    for _, pid in ipairs(players.list(false, true, true)) do
        local kickowner = NETWORK.NETWORK_SESSION_GET_KICK_VOTE(pid)
        local kicked = NETWORK.NETWORK_SESSION_KICK_PLAYER(pid)
        if kicked then
            util.draw_debug_text(players.get_name(pid) .. " 这个玩家" .. kicked .. "被这个玩家踢掉了，他是:" .. kickowner)
            break
        end
    end
end)

detection_teleports = false
GTTG(detection, "传送/修改速度", {}, "在差事中能够精确检测,战局检测不准确", function(on)
    detection_teleports = on
end)

        GTLP(detection, "玩家无敌检测", {}, "检测玩家是否无敌状态", function()
        god_detection()
        end)
        
        GTLP(detection, "车辆无敌检测", {}, "检测玩家载具是否无敌状态", function()
        cargod_detection()
        end)

        GTLP(detection, "未发布载具检测", {}, "检测玩家是否驾使尚未发布的载具", function()
        unreleased_car_detection()
            end)

        GTLP(detection, "无法获得武器检测", {}, "检测玩家是否使用线上模式无法获得的武器", function()
        cantgetweapon_detection()
        end)

        GTLP(detection, "无法获得载具检测", {}, "检测玩家是否使用线上模式无法获得的载具", function()
        cantgetvar_detection()
        end)
          
        GTLP(detection, "室内使用武器检测", {}, "检测玩家是否在室内使用武器", function()
        usingweapon_detection()
        end)

        GTLP(detection, "超级驾驶检测", {}, "检测玩家是否修改载具速度", function()
        supercar_detection()
        end)
 
        GTLP(detection, "超级跑检测", {}, "检测玩家不合理的奔跑速度", function()
        superrun_detection()
        end)

        GTLP(detection, "自由镜头检测", {}, "检测玩家是否正在使用自由镜头", function()
        free_cam()
        end)

        GTLP(detection, "观看检测", {}, "检测玩家是否正在观看", function()
        lookingyou_detection()
        end)

        GTLP(detection, "传送检测", {}, "检测玩家是否使用传送", function()
        tp_detection()
        end)

        GTLP(detection, '天基炮检测', {'JSorbDetection'}, '检测玩家正在使用天基炮时通知您', function()
        orbdection()
        end)

        GTLP(detection, "不正常加入检测", {}, "检测玩家是否使用不正常方式加入战局", function()
    for _, pid in ipairs(players.list(false, true, true)) do
        if not util.is_session_transition_active() and get_spawn_state(pid) == 0 and players.get_script_host() == pid  then
            util.toast(players.get_name(pid) .. " 触发了检测(不正常加入),现在已被归类为作弊者")
        end
    end
end)

GTLP(detection,"无人机导弹检测", {}, "当玩家驾驶无人机或发射导弹时通知您,并在附近地图上显示", function ()
    if NETWORK.NETWORK_IS_SESSION_ACTIVE() then
        for player = 0, 32 do AddBlipForPlayerDrone(player) end
    end
end, function()
    for i in pairs(blips) do RemoveBlipIndex(i) end
    notificationBits = 0
    nearbyNotificationBits = 0
end)

user_options = GT(detection, "检测用户")
mmtluascriptchatsession = false
GTTG(user_options,"检测之后发送聊天", {}, "", function(on)
    mmtluascriptchatsession = on

end)
v3_2t1 = function (x, y, z)
	x = x or 0.0
	y = y or 0.0
	z = z or 0.0
	local vec =
	{	x = x, y = y or x, z = z or x,

		magnitude = function (self, other)
			local end_vec = other and (self - other) or self
			return math.sqrt(end_vec.x^2 + end_vec.y^2 + end_vec.z^2)
		end,
		transformRotToDir = function(self, deg_z, deg_x)
			local rad_z = deg_z * math.pi / 180;
			local rad_x = deg_x * math.pi / 180;
			local num = math.abs(math.cos(rad_x));
			self.x = -math.sin(rad_z) * num
			self.y = math.cos(rad_z) * num
			self.z = math.sin(rad_x)
		end,
		degToRad = function (self)
			self.x = self.x * math.pi / 180
			self.y = self.y * math.pi / 180
			self.z = self.z * math.pi / 180
		end,
		radToDeg = function (self)
			self.x = self.x * 180 / math.pi
			self.y = self.y * 180 / math.pi
			self.z = self.z * 180 / math.pi
		end
	}
	setmetatable(vec, v3_meta)
	return vec
end
set_entity_coords_no_offset_2t1 = function (ent, pos)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ent, pos.x, pos.y, pos.z)
    return true
end
create_vehicle_2t1 = function (hash, pos, heading, networked, alwaysFalse)
    local veh = entities.create_vehicle(hash, pos, heading)
    ENTITY.SET_ENTITY_SHOULD_FREEZE_WAITING_ON_COLLISION(veh, true)
    return veh
end

GTAC(user_options,"设置为Lua用户", {""}, "切换战局需要重新设置,按一次即可", function(m)
    pos = v3_2t1(0, 0, 0)
    dune = spawn_vehicle(534258863, pos, 0)
    ENTITY.FREEZE_ENTITY_POSITION(dune, true)
    pos.z = pos.z - players.user()
    set_entity_coords_no_offset_2t1(dune, pos)
end)
function int_to_uint(int)
	if int >= 0 then
		return int
	end
	return (1 << 32) + int
end
send_player_sms_2t1 = function (pid, message)
    menu.trigger_commands("smstext"..players.get_name(pid).." "..message)
    menu.trigger_commands("smssend"..players.get_name(pid))
end
GTAC(user_options,"检测用户", {},"", function()
    oldpos = ENTITY.GET_ENTITY_COORDS(players.user_ped())
    ENTITY.GET_ENTITY_COORDS(players.user_ped(), 0, 0, 0)
    wait(500)
    set_entity_coords_no_offset_2t1(players.user_ped(), oldpos)
    allvehs = entities.get_all_vehicles_as_handles()
    for i = 1, #allvehs do
      vehhash = int_to_uint(ENTITY.GET_ENTITY_MODEL(allvehs[i]))
      if vehhash == 534258863 then
        pos = ENTITY.GET_ENTITY_COORDS(allvehs[i])
        if 0 == pos.x and 0 == pos.y then
          print(tostring(pos.z))
          nopid = 0 - pos.z
          pid = math.floor(nopid)
          if mmtluascriptchatsession then
            if pid ~= players.user() then
              mmmtuser = players.get_name(pid)
              chat.send_message("检测到GRANDTOURINGVIP用户["..mmmtuser.."]", false,true, true)
              notification("检测到用户"..mmmtuser)
            end
          elseif pid ~= players.user() then
            print(pid)
            mmmtuser = players.get_name(pid)
            send_player_sms_2t1(pid, "~h~welcome,GRANDTOURINGVIP用户[~f~"..mmmtuser.."~q~]")
            notification("检测到用户"..mmmtuser)
          end
        end
        wait(1)
      end
      wait(1)
    end
end)

util.ensure_package_is_installed("lua/GTSCRIPTS/Z")
local sfchat = require("lib.GTSCRIPTS.Z")("multiplayer_chat")
sfchat:draw_fullscreen()
focusref = {}
isfocused = false
selectedcolormenu = 0
colorselec = 1
allchatlabel = util.get_label_text("MP_CHAT_ALL")
teamchatlabel = util.get_label_text("MP_CHAT_TEAM")

local Languages = {
	{ Name = "简体中文(中国大陆)", Key = "zh-cn" },
	{ Name = "繁体中文(港澳台)", Key = "zh-tw" },
	{ Name = "英语(美国)", Key = "en" },
}

LangKeys = {}
LangName = {}
LangIndexes = {}
LangLookupByName = {}
LangLookupByKey = {}
PlayerSpooflist = {}
PlayerSpoof = {}

for i=1,#Languages do
	local Language = Languages[i]
	LangKeys[i] = Language.Name
	LangName[i] = Language.Name
	LangIndexes[Language.Key] = i
	LangLookupByName[Language.Name] = Language.Key
	LangLookupByKey[Language.Key] = Language.Name
end

table.sort(LangKeys)

function encode(text)
	return string.gsub(text, "%s", "+")
end
function decode(text)
	return string.gsub(text, "%+", " ")
end

chat_translation = GT(FY, "聊天翻译")
enableTR=GTAC(chat_translation, "启用翻译功能", {}, "", function ()
if not async_http.have_access() then
    gtoast("您启用了禁止访问互联网 请关闭脚本，在Lua脚本>GRANDTOURINGVIP中取消勾选禁止访问互联网并重新启动")
else
    wait()
    dofile(filesystem.scripts_dir().."\\lib\\GTSCRIPTS\\GTA\\tr.lua")
    enableTR.visible = false
end
end)

chatspamtrash = GT(FY, "公屏内容")

GTLuaScript.list_action(chatspamtrash, "R星聊天", {""}, "", {"R星认证","R星标志","R星锁定"}, function(index)
    pluto_switch index do
        case 1:
            local k = inputC("输入要说的话", 99, "¦")
            chat.send_message(k, false, true, true)
            break
        case 2:
            local k = inputC("输入要说的话", 99, "∑")
            chat.send_message(k, false, true, true)
            break
        case 3:
            local k = inputC("输入要说的话", 99, "Ω")
            chat.send_message(k, false, true, true)
        break
    end
end)

GTTG(chatspamtrash, "孔明之力", {"kongming"}, "将信息自动发送到公屏\n诸葛亮骂死王朗经典语录", function (liang)
    if liang then
        chat.send_message("我素有所知", false, true, true)
        wait(1500)
        chat.send_message("你世居东海之滨，初举孝廉入世", false, true, true)
        wait(1500)
        chat.send_message("理当匡君辅国，安汉兴刘", false, true, true)
        wait(1500)
        chat.send_message("何期反助逆贼", false, true, true)
        wait(1500)
        chat.send_message("同谋篡位。罪恶深重，天地不容！", false, true, true)
        wait(1500)
        chat.send_message("住口！无耻老贼！", false, true, true)
        wait(1500)
        chat.send_message("岂不知天下之人，皆愿生啖你肉", false, true, true)
        wait(1500)
        chat.send_message("安敢在此饶舌！", false, true, true)
        wait(1500)
        chat.send_message("今幸天意不绝炎汉，昭烈皇帝于西川继承大统", false, true, true)
        wait(1500)
        chat.send_message("我今奉嗣君之旨兴师讨贼", false, true, true)
        wait(1500)
        chat.send_message("你既为谄谀之臣", false, true, true)
        wait(1500)
        chat.send_message("只可潜身缩首，苟图衣食", false, true, true)
        wait(1500)
        chat.send_message("怎敢在我军面前妄称天数！", false, true, true)
        wait(1500)
        chat.send_message("皓首匹夫，苍髯老贼！", false, true, true)
        wait(1500)
        chat.send_message("你即将命归九泉之下！", false, true, true)
        wait(1500)
        chat.send_message("届时有何面目去见汉朝二十四代先帝！", false, true, true)
        wait(1500)
        chat.send_message("二臣贼子，你枉活七十有六！", false, true, true)
        wait(1500)
        chat.send_message("一生未立寸功，只会摇唇鼓舌，助曹为虐！", false, true, true)
        wait(1500)
        chat.send_message("一条断脊之犬，还敢在我军阵前狺狺狂吠！", false, true, true)
        wait(1500)
        chat.send_message("我从未见过有如此厚颜无耻之人！！！", false, true, true)
        wait(1500)
    end
end)

GTAC(chatspamtrash, "作死", {""}, "", function()
chat.send_message("I'm GRANDTOURINGVIP User!",false,true,true)
end)
GTAC(chatspamtrash, "踢出广告", {""}, "", function()
chat.send_message("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n----------GTVIP----------\n已为您自动踢出广告机\n----------GTLua----------",false,true,true)
end)
GTAC(chatspamtrash, "ikun", {""}, "", function()
chat.send_message("故人西辞黄鹤楼,唱跳Rap打篮球\n 春风又绿江南岸,练习长达两年半\n清明时节雨坤坤,路上行人梳中分\n借问背带何处有,牧童遥指练习生",false,true,true)
end)

GTTG(chatspamtrash, "关闭公屏聊天", {}, "", function()
	if on then
		menu.trigger_commands("hidetyping on")
	else
		menu.trigger_commands("hidetyping off")
	end
end)

faketype1 = GT(FY, "虚假输入", {}, "", function(); end)
GTAC(faketype1, "开始虚假打字", {}, "将在您的昵称上方显示键入指示符，并使其他菜单认为您正在聊天中键入", function()
	menu.trigger_commands("hidetyping off")
	for pids = 0, 31 do
		if players.exists(pids) and pids ~= players.user() then
			send_script_event(747270864, pids, {players.user(), pids, 6769})
		end
	end
end)

GTAC(faketype1, "停止虚假打字", {}, "", function()
	for pids = 0, 31 do
		if players.exists(pids) and pids ~= players.user() then
			send_script_event(-990958325, pids, {players.user(), pids, 7556})
		end
	end
end)

GTTG(faketype1, "隐藏打字", {}, "防止被检测正在打字", function(on)
	if on then
		menu.trigger_commands("hidetyping on")
	else
		menu.trigger_commands("hidetyping off")
	end
end)

local protected_areas_root = GT(lobbyFeats, "保护区域", {}, "仅对某些人开放的区域,否则该人会被击杀" )

local active_protected_areas_root = GT(protected_areas_root, "活动区域", {},  "当前被定义为'受保护'的区域")

GTTG(protected_areas_root, "执法区域", {}, "这需要为您的区域真正杀死人", function(on)
    mod_uses("player", if on then 1 else -1)
    protected_areas_on = on
end)

GTluaScript.slider(protected_areas_root, "区域范围", {}, "要创建的保护区的范围,这一旦完成就无法更改", 10, 1000, 100, 10, function(s)
    protected_area_radius = s
end)

GTTG(protected_areas_root, "总是允许朋友", {}, "无论如何都允许朋友", function(on)
    protected_area_allow_friends = on
end, true)

GTTG(protected_areas_root, "只杀死武装玩家", {}, "只瞄准带武器的玩家", function(on)
    protected_area_kill_armed = on
end)

GTAC(protected_areas_root, "定义保护区", {"definepa"}, "在您身上定义一个保护区", function(click_type)
    local c = ENTITY.GET_ENTITY_COORDS(players.user_ped(), false)
    blip = HUD.ADD_BLIP_FOR_RADIUS(c.x, c.y, c.z, protected_area_radius)
    HUD.SET_BLIP_COLOUR(blip, 61)
    HUD.SET_BLIP_ALPHA(blip, 128)
    local this_area = {}
    this_area.blip = blip
    this_area.x = c.x
    this_area.y = c.y
    this_area.z = c.z
    this_area.radius = protected_area_radius
    pa_next = #protected_areas + 1
    protected_areas[pa_next] = this_area
    local new_protected_area = GT(active_protected_areas_root, tostring(pa_next), {"protectedarea" .. pa_next}, "查看和修改此区域")
    GTAC(new_protected_area, "删除", {"deletepa" .. tostring(pa_next)}, "删除该区域。", function(click_type)
        util.remove_blip(blip)
        protected_areas[pa_next] = nil
        GTluaScript.delete(new_protected_area)
        notification("保护区已删除", colors.blue)
    end)
end)

local colouroverlyasd = GT(lobbyFeats, '颜色覆盖', {}, '')

local colourOverlay = new.colour( 0, 0, 10, 0.1 )

GTLP(colouroverlyasd, '颜色覆盖', {'JScolourOverlay'}, '在游戏上应用颜色过滤器', function()
    directx.draw_rect(0, 0, 1, 1, colourOverlay)
end)

GTluaScript.rainbow(GTluaScript.colour(colouroverlyasd   , '设置覆盖颜色', {'JSoverlayColour'}, '', colourOverlay, true, function(colour)
    colourOverlay = colour
end))

local trainsasd = GT(lobbyFeats, '火车选项', {''}, '')

local get_control_of_entity = function(h, t)
    if not h then
        return
    end
    if not NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(h) then
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(h)
        local time = util.current_time_millis() + t
        while ENTITY.IS_AN_ENTITY(h) and not NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(h) and time > util.current_time_millis() do
            wait(5)
        end
    end
    return NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(h)
end

    function is_player_driving_train(pid)
        if PED.IS_PED_IN_ANY_VEHICLE(PLAYER.GET_PLAYER_PED(pid), true) and
            int_to_uint(ENTITY.GET_ENTITY_MODEL(veh)) == 1030400667 or
            int_to_uint(ENTITY.GET_ENTITY_MODEL(veh)) then
            return true
        else
            return false
        end
    end

    traincontrol = GT(trainsasd,"火车控制", {}, '')

    getintotrain = GTAC(traincontrol,"进入火车/电车", {}, '', function(k)
        pedmy = players.user_ped(players.user())
        veh = entities.get_all_vehicles_as_handles()
        for i = 1, #veh do
            get_control_of_entity(veh[i], 300)
            entityhash = return int_to_uint(ENTITY.GET_ENTITY_MODEL(veh[i]))
            if entityhash == 868868440 then
                PED.SET_PED_INTO_VEHICLE(pedmy, veh[i], -1)
            else
                util.toast("附加没有电车")
            end
            wait(1)
            if entityhash == 1030400667 then
                PED.SET_PED_INTO_VEHICLE(pedmy, veh[i], -1)
            else
                util.toast("附加没有火车")
            end
        end
    end)

    GTTG(traincontrol,"火车控制器", {}, '', function(f)
        if f then
            local TrainSpeed = 10.0
            while f do
                wait(10)
                if is_player_driving_train(players.user()) then
                    local New_Request = false
                    if PAD.IS_DISABLED_CONTROL_PRESSED(2, 32) then
                        TrainSpeed = TrainSpeed + 1.0
                        New_Request = true
                    end
                    if PAD.IS_DISABLED_CONTROL_PRESSED(2, 33) then
                        TrainSpeed = TrainSpeed - 1.0
                        New_Request = true
                    end
                    if New_Request then
                        VEHICLE.SET_TRAIN_SPEED(PED.GET_VEHICLE_PED_IS_IN(PLAYER.GET_PLAYER_PED()),TrainSpeed)
                        VEHICLE.SET_TRAIN_CRUISE_SPEED(PED.GET_VEHICLE_PED_IS_IN(PLAYER.GET_PLAYER_PED()),TrainSpeed)
                    end
                end
            end
        end
    end)

    GTTG(traincontrol,"停止火车", {}, '', function(f)
        while f do
            wait(0)
            if is_player_driving_train(players.user()) then
                VEHICLE.SET_TRAIN_SPEED(PED.GET_VEHICLE_PED_IS_IN(PLAYER.GET_PLAYER_PED()), 0.0)
                VEHICLE.SET_TRAIN_CRUISE_SPEED(PED.GET_VEHICLE_PED_IS_IN(PLAYER.GET_PLAYER_PED()), 0.0)
            end
        end
    end)

    GTAC(traincontrol,"强制离开火车", {}, '', function(f)
        if is_player_driving_train(players.user()) then
            TASK.CLEAR_PED_TASKS_IMMEDIATELY(players.user_ped(players.user()))
        end
    end)

    GTAC(traincontrol,"删除所有火车", {},'', function(f)
        VEHICLE.DELETE_ALL_TRAINS()
    end)

    GTAC(traincontrol,"火车脱轨",{},'', function(f)
        if is_player_driving_train(players.user()) then
            if f then
                VEHICLE.SET_RENDER_TRAIN_AS_DERAILED(PED.GET_VEHICLE_PED_IS_IN(PLAYER.GET_PLAYER_PED()), true)
            end
            if not f then
                VEHICLE.SET_RENDER_TRAIN_AS_DERAILED(PED.GET_VEHICLE_PED_IS_IN(PLAYER.GET_PLAYER_PED()), false)
            end
        end
    end)



fireworks_root = GT(lobbyFeats, "烟花选项", {}, "")
tianqi = GT(lobbyFeats, "天气更改", {}, "")
shijian = GT(lobbyFeats, "时间更改", {}, "")

qiuqiu = GT(lobbyFeats, '生成球体', {}, '在花园银行上方生成一个巨大的圆球\n如无法清除请使用超级清除')

pedsasd = GT(lobbyFeats, 'NPC选项', {'JSpeds'}, '')  
for i = 1, #pedToggleLoops do
    GTLP(pedsasd, pedToggleLoops[i].name, {pedToggleLoops[i].command}, pedToggleLoops[i].description, function()
        local pedHandles = entities.get_all_peds_as_handles()
        for j = 1, #pedHandles do
            pedToggleLoops[i].action(pedHandles[j])
        end
        wait(10)
    end, function()
        if pedToggleLoops[i].onStop then pedToggleLoops[i].onStop() end
    end)
end

GTLP(pedsasd, '杀死车主', {'JSkillJackedPeds'}, '抢车的时候自动杀死驾驶载具的NPC', function(toggle)
    if not PED.IS_PED_JACKING(players.user_ped()) then return end
    local jackedPed = PED.GET_JACK_TARGET(players.user_ped())
    wait(100)
    ENTITY.SET_ENTITY_HEALTH(jackedPed, 0, 0)
end)

GTTG(pedsasd, '暴动模式', {'JSriot'}, '使附近的NPC充满敌意', function(toggle)
    MISC.SET_RIOT_MODE_ENABLED(toggle)
end)

GTTG(fireworks_root,"海滩烟花秀", {}, "举办烟花表演,供其他人欣赏!", function(feat)
a = feat
if a then
    util.teleport_2d(-1834,-887,2)
    end
    if (not WEAPON.HAS_PED_GOT_WEAPON(players.user_ped(), util.joaat("weapon_firework"))) then
        WEAPON.GIVE_DELAYED_WEAPON_TO_PED(players.user_ped(), util.joaat("weapon_firework"), 0, true)
        WEAPON.SET_PED_AMMO(players.user_ped(), util.joaat("weapon_firework"), 20)
    end
    while a do
        MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(-1950, -960, 2,8, 8, 300,100, true,util.joaat("weapon_firework"), PLAYER.PLAYER_PED_ID(),true, false, math.random(150, 300))

        if (math.random(1, 50) == 27) then
            MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(-1950, -960, 2,8, 8, 300,100, true,util.joaat("weapon_firework"), PLAYER.PLAYER_PED_ID(),true, false, 100)
            MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(-1950, -960, 2,-8, 8, 300,100, true,util.joaat("weapon_firework"), PLAYER.PLAYER_PED_ID(),true, false, 100)
            MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(-1950, -960, 2,8, -8, 300,100, true,util.joaat("weapon_firework"), PLAYER.PLAYER_PED_ID(),true, false, 100)
            MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(-1950, -960, 2,-8, -8, 300,100, true,util.joaat("weapon_firework"), PLAYER.PLAYER_PED_ID(),true, false, 100)
        end
        if (math.random(1, 150) == 67) then
            for i = 1, 4 do
                wait(100)
                MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(-1950, -960, 2,8, i + 8, 300,100, true,util.joaat("weapon_firework"), PLAYER.PLAYER_PED_ID(),true, false, 100)
                MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(-1950, -960, 2,-8, -i - 8, 300,100, true,util.joaat("weapon_firework"), PLAYER.PLAYER_PED_ID(),true, false, 100)
            end
        end
        wait(math.random(2, 8) * 100)
    end
    a = false
end)

GTAC(fireworks_root, "放烟花盒", {"placefireworks"}, "模仿已删除的线上功能-放置烟花盒", function(click_type)
    placefirework()
end)

GTAC(fireworks_root, "放烟花", {"kaboom"}, "点燃所有放好的烟花", function(click_type)
    fireworkshow()
end)

    local firw = {speed = 1000}
    GTLP(fireworks_root, '看烟花', {''}, '', function ()
          local targets = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PlayerID)
          local tar1 = ENTITY.GET_ENTITY_COORDS(targets, true)
          local weap = util.joaat('weapon_firework')
          WEAPON.REQUEST_WEAPON_ASSET(weap)
          for y = 0, 1 do
            MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(tar1.x, tar1.y, tar1.z + 4.0, tar1.x - math.random(-100, 100), tar1.y - math.random(-100, 100), tar1.z + math.random(0, 0), 200, 0, weap, 0, false, false, firw.speed)
            MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(tar1.x, tar1.y, tar1.z + 4.0, tar1.x + math.random(-100, 100), tar1.y + math.random(-100, 100), tar1.z + math.random(0, 0), 200, 0, weap, 0, false, false, firw.speed)
            FIRE.ADD_EXPLOSION(tar1.x + math.random(-100, 100), tar1.y + math.random(-100, 100), tar1.z + math.random(0, 100), 38, 1, false, false, 0, false)
            FIRE.ADD_EXPLOSION(tar1.x - math.random(-100, 100), tar1.y - math.random(-100, 100), tar1.z + math.random(0, 100), 38, 1, false, false, 0, false) 
        end


          if not PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PlayerID) then
              util.stop_thread()
          end
      end)

GTLP(fireworks_root, "循环放烟花", {}, "在您头上循环放烟花", function()
    local coords = players.get_position(players.user())
    local playerPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user())
    MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(coords.x, coords.y, coords.z+1, coords.x, coords.y, coords.z+10, 1, true, 2138347493, playerPed, true, false, 50)
    wait(100)
end)

local InSession = function() return util.is_session_started() and not util.is_session_transition_active() end
GTLP(tianqi,"保持天气明朗",{},"请勿与Stand里的气象共同使用\n请选择其一使用",function()
    if InSession() then
        menu.trigger_commands("weather extrasunny")
    else
        menu.trigger_commands("weather normal")
    end
    wait(100)
end, function()
    menu.trigger_commands("weather normal")
end)

GTAC(tianqi, '默认', {""}, '', function ()
menu.trigger_commands("weather normal")
end)
GTAC(tianqi, '阳光明媚', {""}, '', function ()
menu.trigger_commands("weather extrasunny")
end)
GTAC(tianqi, '晴朗', {""}, '', function ()
menu.trigger_commands("weather clear")
end)
GTAC(tianqi, '多云', {""}, '', function ()
menu.trigger_commands("weather clouds")
end)
GTAC(tianqi, '环境污染', {""}, '', function ()
menu.trigger_commands("weather smog")
end)
GTAC(tianqi, '雾天', {""}, '', function ()
menu.trigger_commands("weather foggy")
end)
GTAC(tianqi, '阴天', {""}, '', function ()
menu.trigger_commands("weather overcast")
end)
GTAC(tianqi, '雨天', {""}, '', function ()
menu.trigger_commands("weather rain")
end)
GTAC(tianqi, '雷雨天', {""}, '', function ()
menu.trigger_commands("weather thunder")
end)
GTAC(tianqi, '雨晴天', {""}, '', function ()
menu.trigger_commands("weather clearing")
end)
GTAC(tianqi, '室温天气', {""}, '', function ()
menu.trigger_commands("weather neutral")
end)
GTAC(tianqi, '雪天', {""}, '', function ()
menu.trigger_commands("weather snow")
end)
GTAC(tianqi, '暴风雪', {""}, '', function ()
menu.trigger_commands("weather blizzard")
end)
GTAC(tianqi, '雪雾天', {""}, '', function ()
menu.trigger_commands("weather snowlight")
end)
GTAC(tianqi, '圣诞节', {""}, '', function ()
menu.trigger_commands("weather snowlight")
end)
GTAC(tianqi, '万圣节', {""}, '', function ()
menu.trigger_commands("weather halloween")
end)

GTAC(shijian, '中午', {""}, '', function ()
menu.trigger_commands("time 12")
end)
GTAC(shijian, '清晨', {""}, '', function ()
menu.trigger_commands("time 6")
end)
GTAC(shijian, '午夜', {""}, '', function ()
menu.trigger_commands("time 0")
end)
GTAC(shijian, '傍晚', {""}, '', function ()
menu.trigger_commands("time 18")
end)


GTLP(allevent, "打雷", {""}, "闪电生成", function()
MISC.FORCE_LIGHTNING_FLASH()
end)

world_lol = GT(lobbyFeats, '世界玩乐', {}, '')

GTAC(world_lol, '冻结所有载具和实体', {}, '', function (f)
allobj = entities.get_all_objects_as_handles()
wait(200)
allveh = entities.get_all_vehicles_as_handles()
wait(200)
wait(400)
for i = 1, #allobj do
	ENTITY.FREEZE_ENTITY_POSITION(allobj[i], false)
	NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(allobj[i])
	ENTITY.FREEZE_ENTITY_POSITION(allobj[i], true)
end
wait(400)
for i = 1, #allveh do
	NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(allveh[i])
	ENTITY.FREEZE_ENTITY_POSITION(allveh[i], true)
end
end)
--
GTLP(world_lol, "世界毁灭", {""}, "切记:不要坐在车里\n被少数优质菜单阻挡", function(on)
	local vehicle = entities.get_all_vehicles_as_handles()
	local me = players.user()  
	local maxspeed = 540
	local ct = 0
    for k,ent in pairs(entities.get_all_vehicles_as_handles()) do
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(ent)
        VEHICLE.SET_VEHICLE_FORWARD_SPEED(ent, 200000000)
        ct = ct + 1
    end
end)

GTLP(world_lol,"彩虹载具", {""}, "", function()
    for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
        NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
        VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(veh, math.random(0, 255), math.random(0, 255), math.random(0, 255), chrome)
        VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(veh, math.random(0, 255), math.random(0, 255), math.random(0, 255), chrome)
        VEHICLE.SET_VEHICLE_XENON_LIGHT_COLOR_INDEX(veh, math.random(0, 255), math.random(0, 255), math.random(0, 255))
        DECORATOR.DECOR_SET_INT(vehicle, "MPBitset", math.random(0, 50))
        VEHICLE.TOGGLE_VEHICLE_MOD(vehicle, math.random(17, 22), true)
        VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, math.random(0, 49))
        VEHICLE.SET_VEHICLE_WINDOW_TINT(veh, math.random(0, 6))
        VEHICLE.SET_VEHICLE_WHEEL_TYPE(veh, math.random(0, 5))
        VEHICLE.SET_VEHICLE_MOD(vehicle, math.random(0, 49))
        VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(veh, "Addict")
    end
end)

meteors = false
GTTG(world_lol, "陨石掉落", {""}, "", function(on)
    if on then
        meteors = true
        start_meteor_shower()
    else
        meteors = false
    end
end, false)

GTLP(world_lol, "下狗屎雨",{""}, "天上掉下一堆臭臭", function()
    goushi = 0
        local hash = util.joaat("prop_big_shit_02")
           request_model_load(hash)
              if goushi <= 15 then 
                 local c = WIRI_ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), math.random(-20, 20), math.random(-20, 20), math.random(20, 20))
                     local goushis = entities.create_object(hash, c)
                     ENTITY.FREEZE_ENTITY_POSITION(goushis, false)
                  ENTITY.SET_ENTITY_DYNAMIC(goushis, true)
                ENTITY.APPLY_FORCE_TO_ENTITY(goushis, 1, math.random(-20, 20), math.random(-20, 20), -20, 0, 0, 0, 0, true, false, true, true, true)
             end
        wait(500)
    end)
    
    GTLP(world_lol, "下核弹雨",{""}, "无法爆炸的核弹模型", function()
    goushi = 0
        local hash = util.joaat("tr_prop_tr_military_pickup_01a")
           request_model_load(hash)
              if goushi <= 15 then 
                 local c = WIRI_ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), math.random(-30, 30), math.random(-30, 30), math.random(30, 30))
                     local goushis = entities.create_object(hash, c)
                     ENTITY.FREEZE_ENTITY_POSITION(goushis, false)
                  ENTITY.SET_ENTITY_DYNAMIC(goushis, true)
                ENTITY.APPLY_FORCE_TO_ENTITY(goushis, 1, math.random(-30, 30), math.random(-30, 30), -30, 0, 0, 0, 0, true, false, true, true, true)
             end
        wait(500)
    end)
    
	 dont_stop = false
	GTLP(world_lol,"控制附近车辆", {"vehflyall"}, "如何控制?-WASD", function()
		for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
			local PedInSeat = VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, -1, false)
			if not PED.IS_PED_A_PLAYER(PedInSeat) then
				NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
				cam_pos = CAM.GET_GAMEPLAY_CAM_ROT(0)
    			ENTITY.SET_ENTITY_ROTATION(veh, cam_pos.x, cam_pos.y, cam_pos.z, 1, true);
				local locspeed = speed*10
				local locspeed2 = speed
				if PAD.IS_CONTROL_PRESSED(0, 61) then
					locspeed = locspeed*2
					locspeed2 = locspeed2*2
				end
				if PAD.IS_CONTROL_PRESSED(2, 71) then
					if dont_stop then
						ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, 0.0, speed, 0.0, 0.0, 0.0, 0.0, 0, 1, 1, 1, 0, 1)
					else 
						VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, locspeed)
					end
				end
				if PAD.IS_CONTROL_PRESSED(2, 72) then
					local lsp = speed
					if not PAD.IS_CONTROL_PRESSED(0, 61) then 
						lsp = speed * 2
					end
					if dont_stop then
						ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, 0.0, 0 - (lsp), 0.0, 0.0, 0.0, 0.0, 0, 1, 1, 1, 0, 1)
					else 
						VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0 - (locspeed));
					end
			   end
				if PAD.IS_CONTROL_PRESSED(2, 63) then
					local lsp = (0 - speed)*2
					if not PAD.IS_CONTROL_PRESSED(0, 61) then 
						lsp = 0 - speed
					end
					if dont_stop then
						ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, (lsp), 0.0, 0.0, 0.0, 0.0, 0.0, 0, 1, 1, 1, 0, 1)
					else 
						ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, 0 - (locspeed), 0.0, 0.0, 0.0, 0.0, 0.0, 0, 1, 1, 1, 0, 1);
					end
				end
				if PAD.IS_CONTROL_PRESSED(2, 64) then
					local lsp = speed
					if not PAD.IS_CONTROL_PRESSED(0, 61) then 
						lsp = speed*2
					end
					if dont_stop then
						ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, lsp, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 1, 1, 1, 0, 1)
					else 
						ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, locspeed, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 1, 1, 1, 0, 1)
					end
				end
				if not dont_stop and not PAD.IS_CONTROL_PRESSED(2, 71) and not PAD.IS_CONTROL_PRESSED(2, 72) then
					VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0.0);
				end
			end
		end
	end)

	GTLP(world_lol,"鸣笛所有汽车", {"honkallcars"}, "", function(on)
		for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
			local PedInSeat = VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, -1, false)
			local locspeed2 = speed
        			local holecoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
			if not PED.IS_PED_A_PLAYER(PedInSeat) then
				NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
	      ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(bh_target), true)
                        vcoords = ENTITY.GET_ENTITY_COORDS(veh, true)
                        VEHICLE.START_VEHICLE_HORN(veh, 200, util.joaat("HELDDOWN"), true)
	      if not dont_stop and not PAD.IS_CONTROL_PRESSED(2, 71) and not PAD.IS_CONTROL_PRESSED(2, 72) then
	      VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0.0);
				end
			end
		end
	end)

	GTAC(world_lol, "移除方向盘", {"removewheels"}, "", function()
		local veh = entities.get_user_vehicle_as_handle()
		if veh ~= 0 then
			native_invoker.begin_call()
			native_invoker.push_arg_int(veh)
			native_invoker.push_arg_float(3.402823466e+38)
			native_invoker.end_call("93A3996368C94158")
		end
	end)

	GTAC(world_lol,"破坏所有引擎", {"killall"}, "",function()
		local local_veh = get_player_veh(PLAYER.PLAYER_ID(),false)
		for_table_do(entities.get_all_vehicles_as_handles(),true,function(ent) 
			if ent == local_veh then return end
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(ent, -4000)
			VEHICLE.SET_VEHICLE_BODY_HEALTH(ent, -4000)
			VEHICLE.SET_VEHICLE_PETROL_TANK_HEALTH(ent, -4000)
		end)
	end)

	GTLP(world_lol, "所有车辆遁地", {"sinkcars"}, "", function(on_toggle)
		for k, veh in pairs(entities.get_all_vehicles_as_handles()) do
			local PedInSeat = VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, -1, false)
			local locspeed2 = speed
        			local holecoords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), true)
			if not PED.IS_PED_A_PLAYER(PedInSeat) then
				NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(veh)
	      ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(bh_target), true)
                        vcoords = ENTITY.GET_ENTITY_COORDS(veh, true)
                        VEHICLE.SET_DISABLE_MAP_COLLISION(veh, vcoords, true)
	      if not dont_stop and not PAD.IS_CONTROL_PRESSED(2, 71) and not PAD.IS_CONTROL_PRESSED(2, 72) then
	      VEHICLE.SET_VEHICLE_FORWARD_SPEED(veh, 0.0);
				end
			end
		end
	end)

GTTG(world_lol, "世界停电", {"poweroutage"}, "", function(toggled)
    GRAPHICS.SET_ARTIFICIAL_LIGHTS_STATE(toggled)
end)

GTTG(world_lol, "世界停电V2", {"blackout"}, "", function(toggled)
    menu.trigger_commands("time 1")
    GRAPHICS.SET_ARTIFICIAL_LIGHTS_STATE(toggled)
    if toggled then
        GRAPHICS.SET_TIMECYCLE_MODIFIER("dlc_island_vault")
    else
        GRAPHICS.SET_TIMECYCLE_MODIFIER("DEFAULT")
    end
end)

GTLP(world_lol, "惹恼Mk2玩家", {"annoymk2"}, "", function()
    for _, pid in players.list(false, true, true) do
        local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local veh = PED.GET_VEHICLE_PED_IS_IN(ped, false)
        if HUD.GET_BLIP_SPRITE(HUD.GET_BLIP_FROM_ENTITY(ped)) == 639 then
            VEHICLE.SET_VEHICLE_HOMING_LOCKEDONTO_STATE(veh, 1)
    end
    end
end)

GTLP(world_lol, "锁定全部载具", {"lockall"}, "", function()
    for _, pid in players.list(false, true, true) do
        for _, vehicle in entities.get_all_vehicles_as_handles() do
            VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_PLAYER(vehicle, pid, true) -- SET_VEHICLE_DOORS_LOCKED didn't want to work here
            wait()
        end
    end
end)

GTLP(world_lol, "投放炸弹",{"bowlingshower"}, "不断有炸弹从空中投放", function()
    local hash = util.joaat("imp_prop_bomb_ball")
    request_model_load(hash)
    if active_bowling_balls <= 15 then 
        local c = WIRI_ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), math.random(-200, 200), math.random(-200, 200), math.random(100, 300))
        local ball = entities.create_object(hash, c)
        ENTITY.FREEZE_ENTITY_POSITION(ball, false)
        ENTITY.SET_ENTITY_DYNAMIC(ball, true)
        ENTITY.APPLY_FORCE_TO_ENTITY(ball, 1, math.random(-300, 300), math.random(-300, 300), -300, 0, 0, 0, 0, true, false, true, true, true)
        bomb_shower_tick_handler(ball)
    end
    wait(500)
end)

GTAC(world_lol, "你的勇士",{""}, "生成一个不断击杀附近NPC的保镖",function()
    local terror_model = util.joaat("s_m_y_xmech_02")
    request_model_load(terror_model)
    local terrorist = entities.create_ped(28, terror_model, ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0, 1.0, 0.0), math.random(270))
    WEAPON.GIVE_WEAPON_TO_PED(terrorist, 171789620, 1000, false, true)
    PED.SET_PED_COMBAT_ABILITY(terrorist, 2)
    PED.SET_PED_AS_ENEMY(terrorist, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(terrorist,13, true)
    while true do
        if PED.IS_PED_FATALLY_INJURED(terrorist) or not ENTITY.DOES_ENTITY_EXIST(terrorist) then 
            break 
        end
        local nearest = get_closest_ped_to_ped(ENTITY.GET_ENTITY_COORDS(terrorist), terrorist)
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(terrorist)
        TASK.TASK_COMBAT_PED(terrorist, nearest[1])
        wait(5000)
    end
end)

    GTLP(world_lol, "下雨", {""}, "", function()
        local player_pos = players.get_position(players.user())
        request_ptfx_asset("core")
        GRAPHICS.USE_PARTICLE_FX_ASSET("core")
        GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
            "water_boat_exit", player_pos.x, player_pos.y, player_pos.z+5, 0, 0, 0, 2.5, false, false, false)
    end)

rain_vehicles = false
GTTG(world_lol, "载具雨",{"rain_vehicles"}, "天上掉下一堆载具", function(on)
    rain_vehicles = on
    mod_uses("vehicle", if on then 1 else -1)
end)

rain_peds = false
GTTG(world_lol, "NPC雨",{"rain_peds"}, "天上掉下一堆NPC", function(on)
    rain_peds = on
    mod_uses("ped", if on then 1 else -1)
end)

bigasscircle = util.joaat("ar_prop_ar_neon_gate4x_04a")

GTTG(qiuqiu, "生成", {}, "", function(on)
    if on then
        STREAMING.REQUEST_MODEL(bigasscircle)
        while not STREAMING.HAS_MODEL_LOADED(bigasscircle) do
            STREAMING.REQUEST_MODEL(bigasscircle)
            wait()
        end
        c1 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751)) 
        c2 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751))
        c3 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751))
        c4 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751))
        c5 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751))
        c6 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751))
        c7 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751))
        c8 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751))
        c9 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751))
        c10 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751))
        c11 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751))
        c12 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751))
        c13 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751))
        c14 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751))
        c15 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751))
        c16 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751))
        c17 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751))
        c18 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751))
        c19 = entities.create_object(bigasscircle, v3(-75.14637, -818.67236, 326.1751))
        ENTITY.FREEZE_ENTITY_POSITION(c1, true)
        ENTITY.FREEZE_ENTITY_POSITION(c2, true)
        ENTITY.FREEZE_ENTITY_POSITION(c3, true)
        ENTITY.FREEZE_ENTITY_POSITION(c4, true)
        ENTITY.FREEZE_ENTITY_POSITION(c5, true)
        ENTITY.FREEZE_ENTITY_POSITION(c6, true)
        ENTITY.FREEZE_ENTITY_POSITION(c7, true)
        ENTITY.FREEZE_ENTITY_POSITION(c8, true)
        ENTITY.FREEZE_ENTITY_POSITION(c9, true)
        ENTITY.FREEZE_ENTITY_POSITION(c10, true)
        ENTITY.FREEZE_ENTITY_POSITION(c11, true)
        ENTITY.FREEZE_ENTITY_POSITION(c12, true)
        ENTITY.FREEZE_ENTITY_POSITION(c13, true)
        ENTITY.FREEZE_ENTITY_POSITION(c14, true)
        ENTITY.FREEZE_ENTITY_POSITION(c15, true)
        ENTITY.FREEZE_ENTITY_POSITION(c16, true)
        ENTITY.FREEZE_ENTITY_POSITION(c17, true)
        ENTITY.FREEZE_ENTITY_POSITION(c18, true)
        ENTITY.FREEZE_ENTITY_POSITION(c19, true)
        ENTITY.SET_ENTITY_ROTATION(c2, 0.0, 0.0, 10.0, 1, true)
        ENTITY.SET_ENTITY_ROTATION(c3, 0.0, 0.0, 20.0, 1, true)
        ENTITY.SET_ENTITY_ROTATION(c4, 0.0, 0.0, 30.0, 1, true)
        ENTITY.SET_ENTITY_ROTATION(c5, 0.0, 0.0, 40.0, 1, true)
        ENTITY.SET_ENTITY_ROTATION(c6, 0.0, 0.0, 50.0, 1, true)
        ENTITY.SET_ENTITY_ROTATION(c7, 0.0, 0.0, 60.0, 1, true)
        ENTITY.SET_ENTITY_ROTATION(c8, 0.0, 0.0, 70.0, 1, true)
        ENTITY.SET_ENTITY_ROTATION(c9, 0.0, 0.0, 80.0, 1, true)
        ENTITY.SET_ENTITY_ROTATION(c10, 0.0, 0.0, 90.0, 1, true)
        ENTITY.SET_ENTITY_ROTATION(c11, 0.0, 0.0, 100.0, 1, true)
        ENTITY.SET_ENTITY_ROTATION(c12, 0.0, 0.0, 110.0, 1, true)
        ENTITY.SET_ENTITY_ROTATION(c13, 0.0, 0.0, 120.0, 1, true)
        ENTITY.SET_ENTITY_ROTATION(c14, 0.0, 0.0, 130.0, 1, true)
        ENTITY.SET_ENTITY_ROTATION(c15, 0.0, 0.0, 140.0, 1, true)
        ENTITY.SET_ENTITY_ROTATION(c16, 0.0, 0.0, 150.0, 1, true)
        ENTITY.SET_ENTITY_ROTATION(c18, 0.0, 0.0, 160.0, 1, true)
        ENTITY.SET_ENTITY_ROTATION(c19, 0.0, 0.0, 170.0, 1, true)
        ENTITY.SET_ENTITY_COORDS(players.user_ped(), -75.14637, -818.67236, 326.1751)
    else
        entities.delete_by_handle(c1)
        entities.delete_by_handle(c2)
        entities.delete_by_handle(c3)
        entities.delete_by_handle(c4)
        entities.delete_by_handle(c5)
        entities.delete_by_handle(c6)
        entities.delete_by_handle(c7)
        entities.delete_by_handle(c8)
        entities.delete_by_handle(c9)
        entities.delete_by_handle(c10)
        entities.delete_by_handle(c11)
        entities.delete_by_handle(c12)
        entities.delete_by_handle(c13)
        entities.delete_by_handle(c14)
        entities.delete_by_handle(c15)
        entities.delete_by_handle(c16)
        entities.delete_by_handle(c17)
        entities.delete_by_handle(c18)
        entities.delete_by_handle(c19)
        end
    end)

island_block = 0
GTAC(world_lol, "空中平台", {""}, "", function(on_click)
    local c = {}
    c.x = 0
    c.y = 0
    c.z = 500
    PED.SET_PED_COORDS_KEEP_VEHICLE(players.user_ped(), c.x, c.y, c.z+5)
    if island_block == 0 or not ENTITY.DOES_ENTITY_EXIST(island_block) then
        request_model_load(1054678467)
        island_block = entities.create_object(1054678467, c)
    end
end)

GTLP(world_lol, "外星人入侵", {}, "", function(toggle)
    ufffo()
end)

GTTG(world_lol, "安全的战局", {}, "全战局幽灵", function(on)
	if on then
		for pid = 0,30 do
			if players.exists(pid) then
				NETWORK._SET_RELATIONSHIP_TO_PLAYER(pid,true)
			end
		end
	else
		for pid = 0,30 do
			if players.exists(pid) then
				NETWORK._SET_RELATIONSHIP_TO_PLAYER(pid,false)
			end
		end
	end 
end)

GTLP(world_lol, "跳跳车", {}, '附近的车辆蹦蹦跳跳', function(toggle)
    carjump()
end)

GTTG(world_lol, '同步时间', {'JSirlTime'}, '使游戏时间与您的现实时间相匹配. 请禁用Stand的时间 "平滑过渡".', function(toggle)
    iri_time(toggle)
end)

GTLP(world_lol, '禁用小键盘', {'JSdisableNumpad'}, '禁用小键盘,因此您在操作Stand时不会旋转您的飞机/潜艇', function()
    disableNumpad()
end)

GTluaScript.slider(lobbyFeats, '地图缩放级别', {'JSmapZoom'}, '', 1, 100, mapZoom, 1, function(value)
    Zoom_map(value)
end)

GTTG(world_lol, '启用脚印', {'JSfootSteps'}, '在所有表面上留下脚印.', function(toggle)
    GRAPHICS._SET_FORCE_PED_FOOTSTEPS_TRACKS(toggle)
end)

GTTG(world_lol, '启用车辆轨迹', {'JSvehicleTrails'}, '在所有表面上留下车辆的轨迹.', function(toggle)
    GRAPHICS._SET_FORCE_VEHICLE_TRAILS(toggle)
end)

GTLP(world_lol, "移除防空区域", {}, "", function()
    WEAPON.REMOVE_ALL_AIR_DEFENCE_SPHERES()
end)

GTLP(lobbyFeats, '禁用所有地图通知', {'JSnoMapNotifications'}, '自动删除那些不断发送的通知', function()
    HUD.THEFEED_HIDE_THIS_FRAME()
end)

Heist_Control_Load = GTAC(Heist_Control, "加载任务选项", {""}, "", function()
newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;","~h~~b~请稍等...", "CHAR_CHOP", 140)
wait(2000)
require "lib.GTSCRIPTS.GTW.C6"
GTLuaScript.delete(Heist_Control_Load)
end)

Constructor_Lua_Load = GT(Constructor_Lua, "模组选项1", {""}, "", function(); end)
require "lib.GTSCRIPTS.GTC.Constructor"
sc = GT(Constructor_Lua, "模组选项2")

GTD(sc, "载具")

GTAC(sc, "搜索载具模组", {"lssearchv"}, "", function(click_type)
    menu.show_command_box("lssearchv" .. " ")
    end, function(on_command)
    local results = search_vehicle(on_command)
    if #results == 0 then 
        util.toast("无搜索结果 :(")
    else
        menu.set_list_action_options(v_search_results_action, results)
        menu.trigger_commands("lsvsearchresults")
    end
end)

load_vehicle_action = GTLuaScript.list_action(sc, "加载模组载具", {}, "加载载具. " .. instruction_text, all_vehicles, function(index, value)
    local path = vehicles_dir .. '\\' .. value
    if util.is_key_down(0x10) and util.is_key_down(0x11) then
        os.remove(path)
        util.toast(value .. " 已删除! :)")
        get_all_vehicles_in_dir()
    elseif util.is_key_down(0x20) then 
        favorite_vehicle(value)
    else
        load_vehicle(vehicles_dir .. '\\' .. value)
    end
end)

loaded_vehicles_root = GT(sc, "已加载的载具", {"lancespoonerloadedvehicles"}, "你已经加载的载具")

GTD(sc, "地图")
GTAC(sc, "搜索地图模组", {"lssearchmap"}, "", function(click_type)
    menu.show_command_box("lssearchmap" .. " ")
    end, function(on_command)
        local results = search_map(on_command)
        if #results == 0 then 
            util.toast("无搜索结果 :(")
        else
            menu.set_list_action_options(m_search_results_action, results)
            menu.trigger_commands("lsmsearchresults")
        end
end)

load_map_action = GTLuaScript.list_action(sc, "加载XML地图", {}, "加载地图. " .. instruction_text, all_maps, function(index, value)
    local path = maps_dir .. '\\' .. value
    if util.is_key_down(0x10) and util.is_key_down(0x11) then
        os.remove(path)
        util.toast(value .. " 已删除! :)")
        get_all_maps_in_dir()
    elseif util.is_key_down(0x20) then 
        favorite_map(value)
    else
        load_map(path)
    end
end)
loaded_maps_root = GT(sc, "已加载的地图", {"lancespoonerloadedmaps"}, "你已经加载的地图")


GTD(sc, "收藏夹")

local load_favorite_vehicle_action = GTLuaScript.list_action(sc, "最爱的载具", {}, "加载载具.", favorite_vehicles, function(index, value)
    load_vehicle(vehicles_dir .. '\\' .. value)
end)

local load_favorite_map_action = GTLuaScript.list_action(sc, "最爱的地图", {}, "加载地图.", favorite_maps, function(index, value)
    load_map(maps_dir .. '\\' .. value)
end)


GTD(sc, "杂项")
v_search_results = {}
v_search_results_action = GTLuaScript.list_action(sc, "载具搜索结果", {"lsvsearchresults"}, "", v_search_results, function(index, value)
    local path = vehicles_dir .. '\\' .. value
    load_vehicle(path)
end)

m_search_results = {}
m_search_results_action = GTLuaScript.list_action(sc, "地图搜索结果", {"lsmsearchresults"}, "", m_search_results, function(index, value)
    local path = maps_dir .. '\\' .. value
    menyoo_load_map(path)
end)

function get_all_maps_in_dir()
    local temp_maps = {}
    local temp_favorite_maps = {}
    for i, path in ipairs(filesystem.list_files(maps_dir)) do
        if string.match(path:gsub(maps_dir, ''), '.xml') then
            temp_maps[#temp_maps + 1] = path:gsub(maps_dir, '')
            if string.startswith(path:gsub(maps_dir, ''), '[F]') then 
                temp_favorite_maps[#temp_favorite_maps+1] = path:gsub(maps_dir, '')
            end
        end
    end


    all_maps = temp_maps
    favorite_maps = temp_favorite_maps
    menu.set_list_action_options(load_map_action, all_maps)
    menu.set_list_action_options(load_favorite_map_action, favorite_maps)
end

function get_all_vehicles_in_dir()
    local temp_vehicles = {}
    local temp_favorite_vehicles = {}
    local temp_favorite_maps = {}
    local supported_formats = {'.xml', '.ini', '.json'}
    for i, path in ipairs(filesystem.list_files(vehicles_dir)) do
        for _, fmt in pairs(supported_formats) do 
            if string.match(path:gsub(vehicles_dir, ''), fmt) then
                temp_vehicles[#temp_vehicles + 1] = path:gsub(vehicles_dir, '')
                if string.startswith(path:gsub(vehicles_dir, ''), '[F]') then 
                    temp_favorite_vehicles[#temp_favorite_vehicles+1] = path:gsub(vehicles_dir, '')
                end
            end
        end
    end

    all_vehicles = temp_vehicles
    favorite_vehicles = temp_favorite_vehicles
    menu.set_list_action_options(load_vehicle_action, all_vehicles)
    menu.set_list_action_options(load_favorite_vehicle_action, favorite_vehicles)
end

get_all_vehicles_in_dir()
get_all_maps_in_dir()

util.create_thread(function()
    while true do
        get_all_vehicles_in_dir()
        get_all_maps_in_dir()
        wait(5000)
    end
end)

GTAC(toolFeats, "平滑瞬移", {"stp"}, "在相机平稳的情况下将您传送到您的航点。", function ()
    SmoothTeleportToCord(Get_Waypoint_Pos2(), FRAME_STP)
end)

GTTG(toolFeats, "平滑传送帧", {"stpv2"}, "使您或您的车辆与相机一起传送，以实现“更顺畅”的传送。", function(toggle)
    FRAME_STP = toggle
end)

GTAC(toolFeats, "重置相机", {"resetstp"}, "将脚本 cam 渲染为 false，同时销毁当前 cam。 因为如果你传送到海里，然后相机就死了。", function ()
    local renderingCam = CAM.GET_RENDERING_CAM()
    CAM.RENDER_SCRIPT_CAMS(false, false, 0, true, true, 0)
    CAM.DESTROY_CAM(renderingCam, true)
end)

local stpsettings = GT(toolFeats, "平滑TP设置", {}, "")

GTluaScript.slider(stpsettings, "速度修改器（x）/10", {"stpspeed"}, "用于平滑 tp 的速度修改器，乘法。 这将除以 10，因为滑块不能采用非整数", 1, 100, 10, 1, function(value)
    local multiply = value / 10
    if SE_Notifications then
        util.toast("SmoothTP 速度倍增器设置为 " .. tostring(multiply) .. "!")
    end
    STP_SPEED_MODIFIER = 0.02 
    STP_SPEED_MODIFIER = STP_SPEED_MODIFIER * multiply
end)

GTluaScript.slider(stpsettings, "凸轮过渡的高度（米）", {"stpheight"}, "在进行过渡时设置相机的高度。", 0, 10000, 300, 10, function (value)
    local height = value
    if SE_Notifications then
        util.toast("SmoothTP 高度设置为 " .. tostring(height) .. "!")
    end
    STP_COORD_HEIGHT = height
end)

GTLP(toolFeats, "绘制位置", {"drawpos"},  "", function ()
    local pos = ENTITY.GET_ENTITY_COORDS(GetLocalPed())
    local cc = {r = 1.0, g = 1.0, b = 1.0, a = 1.0}
    directx.draw_text(0.0, 0.0, "x: " .. pos.x .. " // y: " .. pos.y .. " // z: " .. pos.z, ALIGN_TOP_LEFT, DR_TXT_SCALE, cc, false)
end)

GTLP(toolFeats, "绘制旋转", {"drawrot"}, "", function ()
    local rot = ENTITY.GET_ENTITY_ROTATION(GetLocalPed(), 2)
    local cc = {r = 1.0, g = 1.0, b = 1.0, a = 1.0}
    directx.draw_text(0.5, 0.03, "pitch: " .. rot.x .. " // roll: " .. rot.y .. " // yaw: " .. rot.z, ALIGN_CENTRE, DR_TXT_SCALE, cc, false)
    local facingtowards
    if ((rot.z >= 135) or (rot.z < -135)) then facingtowards = "-Y"
    elseif ((rot.z < 135) and (rot.z >= 45)) then facingtowards = "-X"
    elseif ((rot.z >= -135) and (rot.z < -45)) then facingtowards = "+X"
    elseif ((rot.z >= -45) or (rot.z < 45)) then facingtowards = "+Y" end
    directx.draw_text(0.5, 0.07, "Facing towards " .. facingtowards, ALIGN_CENTRE, DR_TXT_SCALE, cc, false)
end)

GTLP(toolFeats, "绘制实体池", {"drawentpool"}, "", function ()
    local cc = {r = 1.0, g = 1.0, b = 20.0, a = 0.5}
    if EP_drawveh then
        local vehpool = entities.get_all_vehicles_as_pointers()
        directx.draw_text(EPS_vehx, EPS_vehy, "载具：" .. #vehpool, ALIGN_TOP_LEFT, DR_TXT_SCALE, cc, false)
    end
    if EP_drawped then
        local pedpool = entities.get_all_peds_as_pointers()
        directx.draw_text(EPS_pedx, EPS_pedy, "PED：" .. #pedpool, ALIGN_TOP_LEFT, DR_TXT_SCALE, cc, false)
    end
    if EP_drawobj then
        local objpool = entities.get_all_objects_as_pointers()
        directx.draw_text(EPS_objx, EPS_objy, "实体：" .. #objpool, ALIGN_TOP_LEFT, DR_TXT_SCALE, cc, false)
    end
    if EP_drawpick then
        local pickpool = entities.get_all_pickups_as_pointers()
        directx.draw_text(EPS_pickx, EPS_picky, "拾取物：" .. #pickpool, ALIGN_TOP_LEFT, DR_TXT_SCALE, cc, false)
    end
end)

local ePS = GT(toolFeats,"实体池设置", {}, "")
GTTG(ePS, "绘制车辆", {}, "", function (toggle)
    EP_drawveh = toggle
end, true)
GTluaScript.slider(ePS, "车辆文字摆放X", {"epvehposx"}, "/100", 0, 100, 0, 1, function (value)
    EPS_vehx = value / 100
end) 
GTluaScript.slider(ePS, "车辆文字摆放Y", {"epvehposy"}, "/100", 0, 100, 3, 1, function (value)
    EPS_vehy = value / 100
end)
GTTG(ePS, "绘制行人", {}, "", function (toggle)
    EP_drawped = toggle
end, true)
GTluaScript.slider(ePS, "Ped 文本放置 X", {"eppedposx"}, "/100", 0, 100, 0, 1, function (value)
    EPS_pedx = value / 100
end)
GTluaScript.slider(ePS, "Ped 文本放置 Y", {"eppedposy"}, "/100", 0, 100, 5, 1, function (value)
    EPS_pedy = value / 100
end)
GTTG(ePS, "绘制物体", {}, "", function (toggle)
    EP_drawobj = toggle
end, true)
GTluaScript.slider(ePS, "物体文字放置X", {"epobjposx"}, "/100", 0, 100, 0, 1, function (value)
    EPS_objx = value / 100
end)
GTluaScript.slider(ePS, "物体文字位置Y", {"epobjposy"}, "/100", 0, 100, 7, 1, function (value)
    EPS_objy = value / 100
end)
GTTG(ePS, "绘制拾音器", {}, "", function (toggle)
    EP_drawpick = toggle
end, true)
GTluaScript.slider(ePS, "拾取文本放置X拾取文本放置Y绘制拾取", {"epickjposx"}, "/100", 0, 100, 0, 1, function (value)
    EPS_pickx = value / 100
end)
GTluaScript.slider(ePS, "拾取文本位置Y", {"epickjposy"}, "/100", 0, 100, 9, 1, function (value)
    EPS_picky = value / 100
end)

GTluaScript.slider(toolFeats, "文本大小（/10）", {"drscale"}, "将文本的比例设置为您指定的值，除以 10。这是因为它只采用整数值。", 1, 50, 5, 1, function (value)
    DR_TXT_SCALE = value / 10
end)

GTD(toolFeats, "设置")
GTluaScript.slider(toolFeats, "文本比例 (/10)", {"drscale"}, "将文本的比例设定为您指定的值, 除以10. 这是因为它只接受整数值.", 1, 50, 5, 1, function (value)
    DR_TXT_SCALE = value / 10
end)

GTD(toolFeats, "其他")

----
createPed = PED.CREATE_PED
getEntityCoords = ENTITY.GET_ENTITY_COORDS
getPlayerPed = PLAYER.GET_PLAYER_PED
requestModel = STREAMING.REQUEST_MODEL
hasModelLoaded = STREAMING.HAS_MODEL_LOADED
noNeedModel = STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED
setPedCombatAttr = PED.SET_PED_COMBAT_ATTRIBUTES
giveWeaponToPed = WEAPON.GIVE_WEAPON_TO_PED

WhiteText = {r = 1.0, g = 1.0, b = 1.0, a = 1.0}
YOINK_PEDS = false
YOINK_VEHICLES = false
YOINK_OBJECTS = false
YOINK_PICKUPS = false

YOINK_RANGE = 500

Yoinkshit = false

GTTG(toolFeats, "控制器", {}, "", function (yoink)
    if yoink then
        Yoinkshit = true
        util.create_thread(function()
            while Yoinkshit do
                local yoinksq = YOINK_RANGE^2
                local localCoord = getEntityCoords(getPlayerPed(players.user()))
                local BigTable = {}
                if YOINK_PEDS then
                    local pedTable = entities.get_all_peds_as_pointers()
                    for i = 1, #pedTable do
                        local coord = entities.get_position(pedTable[i])
                        local distsq = SYSTEM.VDIST2(coord.x, coord.y, coord.z, localCoord.x, localCoord.y, localCoord.z)
                        local handle = entities.pointer_to_handle(pedTable[i])
                        if not PED.IS_PED_A_PLAYER(handle) then
                            if distsq <= yoinksq then
                                BigTable[#BigTable+1] = handle
                            end
                        end
                    end
                end
                wait()
                if YOINK_VEHICLES then
                    local vehTable = entities.get_all_vehicles_as_pointers()
                    for i = 1, #vehTable do
                        local coord = entities.get_position(vehTable[i])
                        local distsq = SYSTEM.VDIST2(coord.x, coord.y, coord.z, localCoord.x, localCoord.y, localCoord.z)
                        if distsq <= yoinksq then
                            BigTable[#BigTable+1] = entities.pointer_to_handle(vehTable[i])
                        end
                    end
                end
                wait()
                if YOINK_OBJECTS then
                    local objTable = entities.get_all_objects_as_pointers()
                    for i = 1, #objTable do
                        local coord = entities.get_position(objTable[i])
                        local distsq = SYSTEM.VDIST2(coord.x, coord.y, coord.z, localCoord.x, localCoord.y, localCoord.z)
                        if distsq <= yoinksq then
                            BigTable[#BigTable+1] = entities.pointer_to_handle(objTable[i])
                        end
                    end
                end
                if YOINK_PICKUPS then
                    local pickTable = entities.get_all_pickups_as_pointers()
                    for i = 1, #pickTable do
                        local coord = entities.get_position(pickTable[i])
                        local distsq = SYSTEM.VDIST2(coord.x, coord.y, coord.z, localCoord.x, localCoord.y, localCoord.z)
                        if distsq <= yoinksq then
                            BigTable[#BigTable+1] = entities.pointer_to_handle(pickTable[i])
                        end
                    end
                end
                for i = 1, #BigTable do
                    NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(BigTable[i])
                    wait()
                end
                util.toast("请求控制所有")
                wait()
            end
            util.stop_thread()
        end)
    else
        Yoinkshit = false
    end
end)
local yoinkSettings = GT(toolFeats, "控制设置", {}, "")
GTluaScript.slider(yoinkSettings, "管理范围", {"yoinkrange"}, "", 1, 5000, 500, 10, function (value)
    YOINK_RANGE = value
end)
GTTG(yoinkSettings, "PED", {}, "", function (peds)
    YOINK_PEDS = peds
end)
GTTG(yoinkSettings, "载具", {}, "", function (vehs)
    YOINK_VEHICLES = vehs
end)
GTTG(yoinkSettings, "物体", {}, "", function (objs)
    YOINK_OBJECTS = objs
end)
GTTG(yoinkSettings, "收集品", {}, "", function (pick)
    YOINK_PICKUPS = pick
end)


local tpyoink = GT(toolFeats, "传送所有到我", {}, "")

GTAC(tpyoink, "传送所有PED", {}, "", function ()
    TpAllPeds(players.user())
end)
GTAC(tpyoink, "传送所有载具", {}, "WARNING: DANGEROUS SHIT!", function()
    TpAllVehs(players.user())
end)
GTAC(tpyoink, "传送所有物体", {}, "WARNING: BIG CHANCE YOU MIGHT CRASH!", function ()
    TpAllObjects(players.user())
end)
GTAC(tpyoink, "传送所有收集品", {}, "", function ()
    TpAllPickups(players.user())
end)


local clearAreaTools = GT(toolFeats, "清理区域", {}, "")
CLEAR_AREA_RANGE = 100
local function clearAreaOfEntities(tbl, range)
    local rangesq = range*range
    local pc = ENTITY.GET_ENTITY_COORDS(GetLocalPed())
    for _, v in pairs(tbl) do
        local cc = entities.get_position(v)
        if (SYSTEM.VDIST2(pc.x, pc.y, pc.z, cc.x, cc.y, cc.z) <= rangesq) then
            local h = entities.pointer_to_handle(v)
            if (ENTITY.IS_ENTITY_A_PED(h) and not PED.IS_PED_A_PLAYER(h)) or (not ENTITY.IS_ENTITY_A_PED(h)) then
                for i = 0, 20 do NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(h) end
                entities.delete_by_handle(h)
            end
        end
    end
end
GTAC(clearAreaTools, "清理PED", {"clearpeds"}, "", function ()
    local pp = entities.get_all_peds_as_pointers()
    clearAreaOfEntities(pp, CLEAR_AREA_RANGE)
end)
GTAC(clearAreaTools, "清理载具", {"clearvehs"}, "", function ()
    local vp = entities.get_all_vehicles_as_pointers()
    clearAreaOfEntities(vp, CLEAR_AREA_RANGE)
end)
GTAC(clearAreaTools, "清理物体", {"clearobjs"}, "", function ()
    local op = entities.get_all_objects_as_pointers()
    clearAreaOfEntities(op, CLEAR_AREA_RANGE)
end)
GTAC(clearAreaTools, "清理收集品", {"clearpickups"}, "", function ()
    local pp = entities.get_all_pickups_as_pointers()
    clearAreaOfEntities(pp, CLEAR_AREA_RANGE)
end)
GTAC(clearAreaTools, "清理所有绳索", {"clearropes"}, "", function() 
    for i = 0, 100 do
        PHYSICS.DELETE_CHILD_ROPE(i)
    end
end)
GTluaScript.slider(clearAreaTools, "清理区域范围", {"cleararearange"}, "", 1, 10000, 100, 50, function (value)
    CLEAR_AREA_RANGE = value
end)
--
util.create_thread(function ()
    local name = WIRI_SOCIALCLUB.SC_ACCOUNT_INFO_GET_NICKNAME()

    for _, id in ipairs(spid) do
        if name == id.playerid then
            authvalue = "皇榜用户: "..name
            authinfo = imhb
            break
        end
    end

    if authvalue ~= "皇榜用户: "..name then
        authvalue = "立刻加入皇榜"
    end
    if authinfo ~= imhb then 
        authinfo = hbinfo
    end 
end)

hblink = GTAC(G, ">>"..authvalue, {}, authinfo, function ()
end)

restartgt = GTAC(G, ">>重新启动脚本", {}, "", function ()
    restartscript()
end)

myString = "关于更新脚本到最新版,您可加入群聊(651502721)下载新版GTLua 关于脚本的基本功能疑问,您可直接加入聊天群获得帮助(716431566) 购买其他菜单,您可在经销商列表中找到各个经销商(您可以选择xgmenu.me/symenu.me) 获取1v1的帮助,您可联系管理员草莓酱(1104626388)"
GTAC(other_options,"获取技术支持",{},myString,function()end)
blackweb = GT(other_options, "菜单经销卡网", {}, "你可以在此找到经过GTVIP团队认证的经销商 GTVIP团队将宣传你的卡网 任何卡网拥有者都可免费加入此列表，只要你是GTVIP的用户，且为正规类型，联系QQ(820104093)")
GTD(blackweb,"经销商列表")
GTH(blackweb, "沙耶的小店", "https://symenu.me/", "")
GTH(blackweb, "西瓜 XiGua Store", "https://xgmenu.me/", "")

minimap = GT(other_options, "小地图")
misclightmenu = GT(other_options, "追光灯")
WaterMark = GT(other_options, "信息栏", {""}, "非常好看且实用的信息显示~")
rainbowinfo = GTAC(WaterMark, "开启信息显示", {""}, "开启该功能选项在最下方", function()
dofile(filesystem.scripts_dir().."\\lib\\GTSCRIPTS\\GTW\\WM.lua")
GTLuaScript.delete(rainbowinfo)
end)
zhujixianshi = GT(other_options, "显示选项", {}, "在这里修改各种显示在屏幕中的元素")
zanzhuzx = GT(other_options, "致谢人员")

baocunanjain=GTTG(zhujixianshi, "[按F8保存设置]", {""}, "",function(f)
gt=f
while gt do
wait()
if util.is_key_down(0x77) then
baocun()
newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;", "~h~~b~配置已保存", "CHAR_CHOP", 140)
end
end
gt=false
end)
menu.set_value(baocunanjain, true)

stcxs=GTTG(zhujixianshi, "实体池显示", {}, "", function(ft)
    local shiti_x = 0.80 local shiti_y = 0.018 local settings = {add_x = 0.0005,add_y = 0.0}
        stc = ft
        while stc do
            wait()
    local fullVersion = menu.get_version()["version"]
    local ModderCount = 0
    local MyPed = players.user_ped(players.user())
    local MyPos = ENTITY.GET_ENTITY_COORDS(MyPed)
    for i = 0, 31 do
        if players.is_marked_as_modder(i, -1) then
            ModderCount = ModderCount + 1
        end
    end
       directx.draw_rect(shiti_x + settings.add_x, shiti_y,0.171, 0.03 + settings.add_y,1, 1, 1, 1)
       directx.draw_rect(shiti_x + settings.add_x, shiti_y+0.261,0.171, 0.02 + settings.add_y,1, 1, 1, 1)
       directx.draw_rect(shiti_x + settings.add_x, shiti_y+0.020,0.171, 0.26 + settings.add_y,0, 0, 0, 0.08)
       directx.draw_text(shiti_x+0.035, shiti_y+0.005, "GRANDTOURINGVIP", ALIGN_TOP_LEFT, 0.6,0, 1, 1, 1)
       directx.draw_text(shiti_x+0.004, shiti_y+0.030, "模型:"..memory.read_int(pedInterface + 0x0110).."/"..memory.read_int(pedInterface + 0x0108), ALIGN_TOP_LEFT, 0.6,0, 1, 0, 1)
       directx.draw_text(shiti_x+0.004, shiti_y+0.050, "载具:"..memory.read_int(vehInterface + 0x0190).."/"..memory.read_int(vehInterface + 0x0188), ALIGN_TOP_LEFT, 0.6,0, 0, 1, 1)
       directx.draw_text(shiti_x+0.004, shiti_y+0.070, "实体:"..memory.read_int(objectInterface + 0x0168).."/"..memory.read_int(objectInterface + 0x0160), ALIGN_TOP_LEFT, 0.6,1, 0, 0, 1)
       directx.draw_text(shiti_x+0.004, shiti_y+0.090, "拾取物:"..memory.read_int(pickupInterface + 0x0110).."/"..memory.read_int(pickupInterface + 0x0108), ALIGN_TOP_LEFT, 0.6,0.4, 0.1, 1, 1)
       directx.draw_text(shiti_x+0.004, shiti_y+0.110, "所有实体:"..memory.read_int(pedInterface + 0x0110)+memory.read_int(vehInterface + 0x0190)+memory.read_int(objectInterface + 0x0168)+memory.read_int(pickupInterface + 0x0110).."/"..memory.read_int(pedInterface + 0x0108)+memory.read_int(vehInterface + 0x0188)+memory.read_int(objectInterface + 0x0160)+memory.read_int(pickupInterface + 0x0108), ALIGN_TOP_LEFT, 0.6,1, 0.5, 0.5, 1)
       directx.draw_text(shiti_x+0.004, shiti_y+0.130, "作弊者:"..ModderCount, ALIGN_TOP_LEFT, 0.6,1, 0.5, 0, 1)
       directx.draw_text(shiti_x+0.004, shiti_y+0.150, "人数:"..#players.list(), ALIGN_TOP_LEFT, 0.6,0.3, 0.2, 0.5, 1)
       directx.draw_text(shiti_x+0.004, shiti_y+0.170, "血量:"..ENTITY.GET_ENTITY_HEALTH(PLAYER.GET_PLAYER_PED()), ALIGN_TOP_LEFT, 0.6,1, 0, 0, 1)
       directx.draw_text(shiti_x+0.004, shiti_y+0.190, "护甲:"..PED.GET_PED_ARMOUR(PLAYER.GET_PLAYER_PED()), ALIGN_TOP_LEFT, 0.6,0, 0.3, 0.5, 1)
       directx.draw_text(shiti_x+0.004, shiti_y+0.210, "坐标:".. string.format("\n%.5f, %.5f, %.5f", MyPos.x, MyPos.y, MyPos.z), ALIGN_TOP_LEFT, 0.6,0, 1, 0, 1)
       directx.draw_text(shiti_x+0.004, shiti_y+0.260, "STAND版本:"..fullVersion.."             GTA在线版本:"..NETWORK.GET_ONLINE_VERSION(), ALIGN_TOP_LEFT, 0.5,0, 0, 0, 1)
       end
       stc=false
    end)
    menu.set_value(stcxs, stcxs1)

playerdis = GT(zhujixianshi, "显示玩家栏")

map_name_type = v2()
bool_strar = 0
strarS_x_type = 0.01
strarS_y_type = 0.01
network = memory.alloc(13*4)
wjlxs=GTTG(playerdis, "玩家栏展示", {}, "", function(g)
feat = g
while feat do
wait()
  if feat then
    if 0 == bool_strar then
      map_name_type.x = strarS_x_type
      map_name_type.y = strarS_y_type
    elseif 1 == bool_strar then
      map_name_type.x = 1.0E-4
      map_name_type.y = 1.0E-6
    end
for pid = 0,31 do
if PLAYER.GET_PLAYER_PED(pid) ~= 0 then
        local name = PLAYER.GET_PLAYER_NAME(pid)
        local isYou = players.user() == pid
        local playercolor = {
          {
            255,
            255,
            255
          },
          {
            255,
            0,
            0
          },
          {
            255,
            0,
            255
          },
          {
            0,
            255,
            255
          }
        }
        HUD.SET_TEXT_COLOUR(playercolor[1][1], playercolor[1][2], playercolor[1][3], 255)
        if players.is_godmode(pid) and not players.is_marked_as_modder(pid, -1) then
          HUD.SET_TEXT_COLOUR(playercolor[2][1], playercolor[2][2], playercolor[2][3], 255)
        end
        if players.is_godmode(pid) and players.is_marked_as_modder(pid, -1) then
          HUD.SET_TEXT_COLOUR(playercolor[3][1], playercolor[3][2], playercolor[3][3], 255)
        end
        if players.is_marked_as_modder(pid, -1) and not players.is_godmode(pid) then
          HUD.SET_TEXT_COLOUR(255, 170, 0, 255)
        end
        if NETWORK.NETWORK_IS_FRIEND(network) then
          HUD.SET_TEXT_COLOUR(0, 255, 0, 255)
        end
        if isYou then
          HUD.SET_TEXT_COLOUR(100, 165, 255, 255)
        end
        if 0 == bool_strar then
          if map_name_type.y > strarS_y_type + 0.27 then
            map_name_type.x = strarS_x_type + 0.07
            map_name_type.y = strarS_y_type
          else
          end
        else
          if 1 == bool_strar and map_name_type.x > 0.95 then
            map_name_type.y = 0.015
            map_name_type.x = 1.0E-4
          else
          end
        end
           HUD.SET_TEXT_SCALE(0.5, 0.35)
           HUD.SET_TEXT_FONT(4)
           HUD.SET_TEXT_CENTRE(1)
           HUD.SET_TEXT_OUTLINE(0)
        if NETWORK.NETWORK_IS_FRIEND(network) then
          name = name .. "[F]"
        elseif 0 ~= PLAYER.GET_PLAYER_WANTED_LEVEL(pid) then
          name = name .. "~b~[" .. tostring(PLAYER.GET_PLAYER_WANTED_LEVEL(pid)) .. "]"
        elseif players.is_marked_as_modder(pid, -1) and players.get_host(pid) and pid == players.get_script_host() then
          name = name .. "[MHS]"
        elseif players.is_marked_as_modder(pid, -1) and players.get_host(pid) then
          name = name .. "[MH]"
        elseif players.is_marked_as_modder(pid, -1) and not players.get_host(pid) and pid == players.get_script_host() then
          name = name .. "[MS]"
        elseif players.get_host(pid) and pid ~= players.get_script_host() then
          name = name .. "[H]"
        elseif pid == players.get_script_host() and not players.get_host(pid) then
          name = name .. "[S]"
        elseif u then
          name = name .. "[ GT ]"
        elseif players.get_host(pid) and pid == players.get_script_host() then
          name = name .. "[HS]"
        elseif players.is_marked_as_modder(pid, -1) and not players.get_host(pid) and pid ~= players.get_script_host() then
          name = name .. "[M]"
        end
        util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT(" " .. name .. " ")
        HUD.END_TEXT_COMMAND_DISPLAY_TEXT(map_name_type.x + 0.03,map_name_type.y,0)
        if 0 == bool_strar then
          map_name_type.y = map_name_type.y + 0.017
        elseif 1 == bool_strar then
          map_name_type.x = map_name_type.x + 0.067
        end
      end
    end
  end
  end
    feat = false
end)

GTTG(playerdis, '切换为横版', {}, '', function (on)
	if on then
		bool_strar = 1
	else
		bool_strar = 0
	end
end)

GTluaScript.slider(playerdis, '玩家栏X轴', {}, '',1, 85, 1, 1, function(strarS_x)
strarS_x_type = (strarS_x / 100)
end)
GTluaScript.slider(playerdis, '玩家栏Y轴', {}, '',1, 75, 1, 1, function(strarS_y)
strarS_y_type = (strarS_y / 100)
end)
menu.set_value(wjlxs, wjlxs1)
anjian = GT(zhujixianshi, '按键显示', {''}, '')
nextcons = GT(zhujixianshi, "控制台")
local fakemessages_root = GT(onlinemode, "虚假警告", {}, "虚假信息屏幕")

GTluaScript.slider(fakemessages_root, "延迟虚假消息", {}, "在显示虚假消息之前等待多长时间（以秒为单位）", 0, 300, 0, 1, function(s)
    fake_alert_delay = s*1000
end)

local fake_suspend_date = "2023年1月1日"
GTluaScript.text_input(fakemessages_root, "自定义暂停日期", {"customsuspensiondate"}, "" , function(on_input)
    fake_suspend_date = on_input
end, "2023年1月1日")

local custom_alert = "你好世界！"
GTAC(fakemessages_root, "自定义虚假消息文本", {"customfakealert"}, "输入您的虚假消息应显示的内容", function(on_click)
    notification("请输入您希望警告显示的内容", colors.blue)
    menu.show_command_box("customfakealert" .. " ")
end, function(on_command)
    show_custom_alert_until_enter(on_command)
end)

alert_options = {"禁令1", "禁令2", "服务不可用", "Stand天下第一!", "暂时封禁", "自定义"}
GTLuaScript.list_action(fakemessages_root, "假警报", {"fakealert"}, "", alert_options, function(index, value, click_type)
    pluto_switch index do 
        case 1: 
            show_custom_alert_until_enter("您已被禁止进入GTA在线模式。~n~返回Grand Theft Auto V。")
            break 
        case 2:
            show_custom_alert_until_enter("您已被永久禁止进入GTA在线模式。~n~返回Grand Theft Auto V。")
            break
        case 3:
            show_custom_alert_until_enter("Rockstar游戏服务当前不可用。~n~请返回Grand Theft Auto V。")
            break
        case 4:
            show_custom_alert_until_enter("Stand天下第一!")
            break
        case 5:
            show_custom_alert_until_enter("您已被禁止进入GTA在线模式直到 " .. fake_suspend_date .. ".~n~此外,您的GTA在线模式角色将被重置。~n~Grand Theft Auto V。")
            break
        case 6:
            show_custom_alert_until_enter(custom_alert)
            break
    end
end)

zjxlid = GT(zhujixianshi, "主机序列")
replayInterface = memory.read_long(memory.rip(memory.scan("48 8D 0D ? ? ? ? 48 8B D7 E8 ? ? ? ? 48 8D 0D ? ? ? ? 8A D8 E8 ? ? ? ? 84 DB 75 13 48 8D 0D") + 3))
pedInterface = memory.read_long(replayInterface + 0x0018)
vehInterface = memory.read_long(replayInterface + 0x0010)
objectInterface = memory.read_long(replayInterface + 0x0028)
pickupInterface = memory.read_long(replayInterface + 0x0020)
zhuji_x = 0.17
zhuji_y = 0.77
zhuji_dx = 0.3
dx_dxs = 0.01
zhuji_dx = 0.3
fps = 0
zjxlbc = GTLP(zjxlid, "主机序列", {}, "", function(zhuji)
inviciamountint = 0
for pid = 0, 31 do
if players.exists(pid) and pid ~= players.user() then
local pped = players.user_ped(pid)
if pped ~= 0 then
if players.is_marked_as_modder(pid) then
inviciamountint = inviciamountint + 1
end
end
end
local ente
local ent1e = players.user_ped()
local ent2e = PED.GET_VEHICLE_PED_IS_USING(players.user_ped())
if PED.IS_PED_IN_ANY_VEHICLE(ent1e,true) then
ente = ent2e
else
ente = ent1e
end
local speede = ENTITY.GET_ENTITY_SPEED(ente)
local speedcalce = speede * 3.6
myspeed1e = math.ceil(speedcalce)
end
inviciamountintt = inviciamountint
draw_string(string.format("~h~~f~FPS: ~w~"..fps), zhuji_x,zhuji_y+0.0026, zhuji_dx,zhuji_dx)
draw_string(string.format("~h~~y~"..myspeed1e.." ~q~K~g~M~f~/H"), zhuji_x,zhuji_y+0.028, zhuji_dx,zhuji_dx)
draw_string(string.format("~h~~p~时间:~h~~w~"..os.date("%X")), zhuji_x,zhuji_y+0.055, zhuji_dx,zhuji_dx)

if PLAYER.GET_PLAYER_NAME(players.get_host()) == "**Invalid**" then
draw_string(string.format("~h~~y~处于故事模式"), zhuji_x,zhuji_y+0.085, zhuji_dx,zhuji_dx)
else
draw_string(string.format("~h~~y~战局玩家: ~h~~w~"..#players.list()), zhuji_x,zhuji_y+0.085, zhuji_dx,zhuji_dx) 
end

if PLAYER.GET_PLAYER_NAME(players.get_host()) == "**Invalid**" then
draw_string(string.format("~h~~p~处于故事模式"), zhuji_x,zhuji_y+0.113, zhuji_dx,zhuji_dx)
else
draw_string(string.format("~h~~p~作弊玩家: ~h~~r~"..inviciamountintt), zhuji_x,zhuji_y+0.113, zhuji_dx,zhuji_dx) 
end

if PLAYER.GET_PLAYER_NAME(players.get_host()) == "**Invalid**" then
draw_string(string.format("~h~~f~处于故事模式"), zhuji_x,zhuji_y+0.14, zhuji_dx,zhuji_dx)
else
draw_string(string.format("~h~~f~战局主机: ~h~~w~"..players.get_name(players.get_host())), zhuji_x,zhuji_y+0.14, zhuji_dx,zhuji_dx)
end

if PLAYER.GET_PLAYER_NAME(players.get_script_host()) == "**Invalid**" then
draw_string(string.format("~h~~q~处于故事模式"), zhuji_x,zhuji_y+0.17, zhuji_dx,zhuji_dx)
else
draw_string(string.format("~h~~q~脚本主机: ~h~~w~"..players.get_name(players.get_script_host())), zhuji_x,zhuji_y+0.17, zhuji_dx,zhuji_dx)
end

local hostxvlie = players.get_host_queue_position(players.user())
if PLAYER.GET_PLAYER_NAME(players.get_host()) == "**Invalid**" then
    draw_string(string.format("~h~~p~处于故事模式"), zhuji_x,zhuji_y+0.20, zhuji_dx,zhuji_dx)
elseif hostxvlie == 0 then
    draw_string(string.format("~h~~p~你现在是~f~战局主机"), zhuji_x,zhuji_y+0.20, zhuji_dx,zhuji_dx) 
elseif hostxvlie ~= 0 then 
    draw_string(string.format("~h~~p~主机~f~优先度:~h~~w~ "..hostxvlie), zhuji_x,zhuji_y+0.20, zhuji_dx,zhuji_dx) 
end	
end)

util.create_thread(function()
while true do
    fps = math.ceil(1/SYSTEM.TIMESTEP())
    wait(1000)
    end
end)

GTluaScript.slider(zjxlid, '主机序列移动 X轴', {'hostqumovex'}, '',1, 900, 160, 20, function(x_x)
	zhuji_x = x_x / 900
end)

GTluaScript.slider(zjxlid, '主机序列移动 Y轴', {'hostqumovey'}, '' , 1, 900, 770, 20, function(y_y)
	zhuji_y = y_y / 900
end)

GTluaScript.slider(zjxlid, '主机序列 大小', {''}, '',1, 900, 280, 10, function(zhuji_d)
zhuji_dx = zhuji_d / 900
end)
menu.set_value(zjxlbc, zjxlxs)

scriptname = GT(zhujixianshi, "显示脚本名称")

gtscriptname = GTTG(scriptname, "显示脚本名称", {"scriptname"}, "", function(state)
    xianshijiaoben(state)
end)
menu.set_value(gtscriptname, gtscriptname1)
GTluaScript.slider(scriptname, '脚本名称 X轴', {''}, '',1, 900, 11, 5, function(jb_x)
jiaoben_x = jb_x / 900
end)  

GTluaScript.slider(scriptname, '脚本名称 Y轴', {''}, '',1, 900, 141, 5, function(jb_y)
jiaoben_y = jb_y / 900
end)

GTluaScript.slider(scriptname, '脚本名称 大小', {''}, '',1, 900, 720, 5, function(jb_dx)
jiaoben_dx = jb_dx / 900
end)

defaultColor = { r = 255, g = 182, b = 200 }
lockedColor = defaultColor 
colorLocked = false 

GTTG(scriptname, '锁定颜色', {''}, '(默认为粉色)开启配置自动保存，可智能保存你的颜色数值和锁定状态',  function(locked)
    if locked then
        colorLocked = true
    else
        colorLocked = false
    end
end)

GTluaScript.slider(scriptname, '颜色-红', {'scriptnamered'}, '', 0, 255, defaultColor.r, 1, function(value)
    defaultColor.r = value
end)

GTluaScript.slider(scriptname, '颜色-绿', {'scriptnamegreen'}, '', 0, 255, defaultColor.g, 1, function(value)
    defaultColor.g = value
end)

GTluaScript.slider(scriptname, '颜色-蓝', {'scriptnameblue'}, '', 0, 255, defaultColor.b, 1, function(value)
    defaultColor.b = value
end)

lines = GT(zhujixianshi, "显示连接线")
GTLP(lines, "NPC连接线", {}, "", function(toggle)
    local playerPed = players.user_ped()
    local playerCoords = ENTITY.GET_ENTITY_COORDS(playerPed)
    
    local allPeds = entities.get_all_peds_as_handles()
    
    for _, ped in ipairs(allPeds) do
        if ped ~= playerPed then
            local pedCoords = ENTITY.GET_ENTITY_COORDS(ped)
            GRAPHICS.DRAW_LINE(playerCoords.x, playerCoords.y, playerCoords.z, pedCoords.x, pedCoords.y, pedCoords.z, 0, 0, 255, 255)
            local lineEndCoords = v3.new(pedCoords.x, pedCoords.y, pedCoords.z)
            local boxColor = {r = 0, g = 0, b = 255, a = 255}
            WIRI_GRAPHICS.DRAW_MARKER(43, lineEndCoords.x, lineEndCoords.y, lineEndCoords.z-0.90, pedCoords.x, pedCoords.y, pedCoords.z, 0, 0, 0, 1, 1, 1.5, boxColor.r, boxColor.b, boxColor.g, boxColor.a, false, true, 2, 0, 0, 0, false)
        end
    end
end)

GTLP(lines, "载具连接线", {}, "", function(toggle)
    local playerPed = players.user_ped()
    local playerCoords = ENTITY.GET_ENTITY_COORDS(playerPed)
    
    local allPeds = entities.get_all_vehicles_as_handles()
    
    for _, ped in ipairs(allPeds) do
        if ped ~= playerPed then
            local pedCoords = ENTITY.GET_ENTITY_COORDS(ped)
            GRAPHICS.DRAW_LINE(playerCoords.x, playerCoords.y, playerCoords.z, pedCoords.x, pedCoords.y, pedCoords.z, 0, 255, 0, 255)
            local lineEndCoords = v3.new(pedCoords.x, pedCoords.y, pedCoords.z)
            local boxColor = {r = 0, g = 255, b = 0, a = 255}
            WIRI_GRAPHICS.DRAW_MARKER(1, lineEndCoords.x, lineEndCoords.y, lineEndCoords.z-0.90, pedCoords.x, pedCoords.y, pedCoords.z, 0, 0, 0, 4, 4, 1.7, boxColor.r, boxColor.b, boxColor.g, boxColor.a, false, true, 2, 0, 0, 0, false)
        end
    end
end)

GTLP(lines, "物体连接线", {}, "", function(toggle)
    local playerPed = players.user_ped()
    local playerCoords = ENTITY.GET_ENTITY_COORDS(playerPed)
    
    local allPeds = entities.get_all_objects_as_handles()
    
    for _, ped in ipairs(allPeds) do
        if ped ~= playerPed then
            local pedCoords = ENTITY.GET_ENTITY_COORDS(ped)
            GRAPHICS.DRAW_LINE(playerCoords.x, playerCoords.y, playerCoords.z, pedCoords.x, pedCoords.y, pedCoords.z, 0, 255, 255, 255)
            local lineEndCoords = v3.new(pedCoords.x, pedCoords.y, pedCoords.z)
            local boxColor = {r = 0, g = 255, b = 255, a = 255}
            WIRI_GRAPHICS.DRAW_MARKER(43, lineEndCoords.x, lineEndCoords.y, lineEndCoords.z-0.90, pedCoords.x, pedCoords.y, pedCoords.z, 0, 0, 0, 1, 1, 1.5, boxColor.r, boxColor.b, boxColor.g, boxColor.a, false, true, 2, 0, 0, 0, false)
        end
    end
end)

project_3d_coord = function (coord)
    local x_ptr, y_ptr = memory.alloc_int(), memory.alloc_int()
    local status = GRAPHICS.GET_SCREEN_COORD_FROM_WORLD_COORD(coord.x, coord.y, coord.z, x_ptr, y_ptr)
    local x, y = memory.read_float(x_ptr), memory.read_float(y_ptr)
    return status, v2(x, y)
end

Round = function(num, dp)
    local mult = 10^(dp or 0)
    return ((num * mult + 0.5) // 1) / mult 
end

espinfo = GT(zhujixianshi, "定位透视信息")

GTTG(espinfo, "载具信息透视", {}, "", function(g)
    gt = g
    while gt do
        wait()
        local playerPed = players.user_ped()
        local MyPos = ENTITY.GET_ENTITY_COORDS(playerPed)
        local AllVehicles = entities.get_all_vehicles_as_handles()
        for i = 1, #AllVehicles do
            local veh = AllVehicles[i]
            local VehCoords = ENTITY.GET_ENTITY_COORDS(veh)
            local VehPos = v3(VehCoords.x, VehCoords.y, VehCoords.z)
            local distanceToPlayer = MyPos:distance(VehPos)
            if distanceToPlayer then
                local success, pos = project_3d_coord(VehCoords)
                if success then
                    local speed = ENTITY.GET_ENTITY_SPEED(veh)
                    local distances = MyPos:magnitude(VehCoords)
                    local distanceText = "距离 : " .. Round(distances, 2) .. " 米"
                    local vehnameText = "名字 : " .. tostring(util.reverse_joaat(ENTITY.GET_ENTITY_MODEL(AllVehicles[i])))
                    local speedText = "速度 : " .. Round(speed * 2.23694, 2) .. " 公里/每小时" 
                    local vehGodText = "哈希值 : " .. tostring(util.joaat(AllVehicles[i]))
                    local healthText = "健康值 : " .. tostring(entities.get_health(AllVehicles[i]))
                    HUD.SET_TEXT_SCALE(0.5, 0.2)
                    HUD.SET_TEXT_FONT(5)
                    HUD.SET_TEXT_CENTRE(1)
                    HUD.SET_TEXT_OUTLINE(0)
                    HUD.SET_TEXT_COLOUR(200, 100, 255, 255)
                    util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("载具 : "  .. "\n" .. vehnameText .. "\n" .. speedText .. "\n" .. vehGodText .. "\n" .. healthText .. "\n" ..distanceText)
                    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(pos.x, pos.y, 0)
                end
            end
        end
    end
    gt = false
end)

GTTG(espinfo, "NPC信息透视", {}, "", function(g)
    gt = g
    while gt do
        wait()
        local MyPos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED())
        local Allpeds = entities.get_all_peds_as_handles()
        for i = 1, #Allpeds do
            local pedCoords = ENTITY.GET_ENTITY_COORDS(Allpeds[i])
            local pPos = v3(pedCoords.x, pedCoords.y, pedCoords.z+1)
            local dx = pedCoords.x - MyPos.x
            local dy = pedCoords.y - MyPos.y
            local dz = pedCoords.z - MyPos.z
            local distance = math.sqrt(dx * dx + dy * dy + dz * dz)
                local success, pos = project_3d_coord(pedCoords)
                if success then
                local speed = ENTITY.GET_ENTITY_SPEED(Allpeds[i])
                local distances = MyPos:magnitude(pedCoords)
                local distanceText = "距离 : " .. Round(distance, 2) .. " 米"
                local vehnameText = "名字 : " .. tostring(util.reverse_joaat(ENTITY.GET_ENTITY_MODEL(Allpeds[i])))
                local speedText = "速度 : " .. Round(speed * 2.23694, 2) .. " 公里/每小时" 
                local vehGodText = "哈希值 : " .. tostring(util.joaat(Allpeds[i]))
                local healthText = "健康值 : " .. tostring(entities.get_health(Allpeds[i]))
                HUD.SET_TEXT_SCALE(0.5, 0.2)
                HUD.SET_TEXT_FONT(5)
                HUD.SET_TEXT_CENTRE(1)
                HUD.SET_TEXT_OUTLINE(0)
                HUD.SET_TEXT_COLOUR(200, 100, 255, 255)
                util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("人物信息 : "  .. "\n" .. vehnameText .. "\n" .. speedText .. "\n" .. vehGodText .. "\n" .. healthText .. "\n" ..distanceText)
                HUD.END_TEXT_COMMAND_DISPLAY_TEXT(pos.x, pos.y, 0)
            end
        end
    end
    gt = false
end)


GTTG(espinfo, "NPC透视框", {}, "", function(g)
    gt = g
    while gt do
    wait()
        local playerPed = players.user_ped()
        local playerCoords = ENTITY.GET_ENTITY_COORDS(playerPed)
        
        local allPeds = entities.get_all_peds_as_handles()
        
        for _, ped in ipairs(allPeds) do
            if ped ~= playerPed then
                local pedCoords = ENTITY.GET_ENTITY_COORDS(ped)
                local boxColor = { r = 180, g = 100, b = 255, a = 200 }
                local boxSize = v3.new(0.8, 0.8, 1.9)
                local halfSize = v3.new(boxSize.x / 2, boxSize.y / 2, boxSize.z / 2)
                
                local topVertices = {
                    v3.new(pedCoords.x - halfSize.x, pedCoords.y - halfSize.y, pedCoords.z + halfSize.z),
                    v3.new(pedCoords.x + halfSize.x, pedCoords.y - halfSize.y, pedCoords.z + halfSize.z),
                    v3.new(pedCoords.x + halfSize.x, pedCoords.y + halfSize.y, pedCoords.z + halfSize.z),
                    v3.new(pedCoords.x - halfSize.x, pedCoords.y + halfSize.y, pedCoords.z + halfSize.z)
                }
                
                local bottomVertices = {
                    v3.new(pedCoords.x - halfSize.x, pedCoords.y - halfSize.y, pedCoords.z - halfSize.z),
                    v3.new(pedCoords.x + halfSize.x, pedCoords.y - halfSize.y, pedCoords.z - halfSize.z),
                    v3.new(pedCoords.x + halfSize.x, pedCoords.y + halfSize.y, pedCoords.z - halfSize.z),
                    v3.new(pedCoords.x - halfSize.x, pedCoords.y + halfSize.y, pedCoords.z - halfSize.z)
                }
                for i = 1, 4 do
                    local startVertexTop = topVertices[i]
                    local endVertexTop = topVertices[i % 4 + 1]
                    
                    local startVertexBottom = bottomVertices[i]
                    local endVertexBottom = bottomVertices[i % 4 + 1]
                    
                    GRAPHICS.DRAW_LINE(startVertexTop.x, startVertexTop.y, startVertexTop.z, endVertexTop.x, endVertexTop.y, endVertexTop.z, boxColor.r, boxColor.g, boxColor.b, boxColor.a)
                    GRAPHICS.DRAW_LINE(startVertexBottom.x, startVertexBottom.y, startVertexBottom.z, endVertexBottom.x, endVertexBottom.y, endVertexBottom.z, boxColor.r, boxColor.g, boxColor.b, boxColor.a)
                    GRAPHICS.DRAW_LINE(startVertexTop.x, startVertexTop.y, startVertexTop.z, startVertexBottom.x, startVertexBottom.y, startVertexBottom.z, boxColor.r, boxColor.g, boxColor.b, boxColor.a)
                    GRAPHICS.DRAW_DEBUG_LINE(true)
                end
            end
        end
        end
        gt = false
    end)

    gjfl=GT(zhujixianshi, '国家分类显示', {}, '')
gjposx=0.85
gjposy=0.020
gjposr=255
gjposg=182
gjposb=193
gjposa=255
gjflxs=GTTG(gjfl, '显示/关闭', {}, '', function (fl)
gtf = fl
while gtf do
    wait()
local guojia = {[0] = "英国",[1] = "法国",[2] = "德国",[3] = "意大利",[4] = "西班牙",[5] = "葡萄牙",[6] = "波兰",[7] = "俄罗斯",[8] = "韩国",[9] = "台湾/香港",[10] = "日本",[11] = "西班牙",[12] = "中国"}
local playerCategories = {} 
local allPlayers = players.list()
    for i = 1, #allPlayers do
        local player = allPlayers[i]
            local language = players.get_language(player)
                local country = guojia[language]
                   if not playerCategories[country] then
                playerCategories[country] = {}
            end
    table.insert(playerCategories[country], player)
end
for country, playersInCategory in pairs(playerCategories) do
    local pos = v2(gjposx, gjposy)
        local lineHeight = 0.028 
local function displayText(text, x, y)
    HUD.SET_TEXT_SCALE(0.5, 0.28)
    HUD.SET_TEXT_FONT(1)
    HUD.SET_TEXT_COLOUR(gjposr, gjposg, gjposb, gjposa)
    HUD.SET_TEXT_CENTRE(false)
    HUD.SET_TEXT_OUTLINE(true)
    util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT(text)
    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(x, y, 0)
end
local currentY = pos.y 
    for country, playersInCategory in pairs(playerCategories) do
        displayText("~italic~"..country .. "玩家: " .. #playersInCategory, pos.x, currentY)
            currentY = currentY + lineHeight 
         end
      end 
   end  
gtf = false
end)

menu.set_value(gjflxs, gjflxs1)

GTluaScript.slider(gjfl, '国家分类显示 X轴', {}, '',1, 900, 160, 20, function(x_x)
	gjposx = x_x / 900
end)
GTluaScript.slider(gjfl, '国家分类显示 Y轴', {}, '',1, 900, 160, 20, function(y_y)
	gjposy = y_y / 900
end)

GTluaScript.slider(gjfl, '颜色调整R', {}, '',1, 255, gjposr, 20, function(r_r)
	gjposr = r_r / 1
end)

GTluaScript.slider(gjfl, '颜色调整G', {}, '',1, 255, gjposg, 20, function(g_g)
	gjposg = g_g / 1
end)

GTluaScript.slider(gjfl, '颜色调整B', {}, '',1, 255, gjposb, 20, function(b_b)
	gjposb = b_b / 1
end)

GTluaScript.slider(gjfl, '透明度', {}, '',1, 255, gjposa, 10, function(a_a)
	gjposa = a_a / 1
end)

 split_2t1 = function (input, sep)
local t={}
for str in string.gmatch(input, "([^"..sep.."]+)") do
table.insert(t, str)
end
return t
end
get_all_files_in_directory_2t1 = function (path, extension)
local files = filesystem.list_files(path)
local result = {}
for _, file in ipairs(files) do
if filesystem.is_regular_file(file) then
local split_file = split_2t1(file, ".")
if #split_file > 1 and split_file[#split_file] == extension then
local file_subs = split_2t1(file, "\\")
result[#result+1] = file_subs[#file_subs]
end
end
end
return result
end
files_table={}
 files_table1 = get_all_files_in_directory_2t1(filesystem.scripts_dir().."\\GTLuaScript\\tupian","jpg")
if #files_table1 > 1 then
local time=0
local file_num = 1
for o=1,#files_table1 do
files_table[o] = directx.create_texture(filesystem.scripts_dir().."\\GTLuaScript\\tupian\\"..files_table1[o])
end
gif_option = GT(zhujixianshi,"GIF选项",{},"")
gif_x = 0.35
gif_y = 0.82
gif_dx = 0.035
GTTG(gif_option, "GIF显示", {"gifpng"}, "", function(state)
    gif =state
    while gif do
        if time == 1 then 
            time = 0
            file_num = file_num+1
        else
            time = time+1
        end
        if file_num == #files_table1 then
            file_num = 1
        end
        directx.draw_texture(files_table[file_num], gif_dx, 0.1, 0.5 , 0.5, gif_x,gif_y,0, 1, 1, 1, 1)
        wait(5)
    end
end)
end

GTluaScript.slider(gif_option, 'GIF显示 X轴', {'hostqumovex'}, '',1, 900, 160, 20, function(gifx)
	gif_x = gifx / 900
end)

GTluaScript.slider(gif_option, 'GIF显示 Y轴', {'hostqumovey'}, '' , 1, 900, 770, 20, function(gify)
	gif_y = gify / 900
end)

GTluaScript.slider(gif_option, 'GIF显示 大小', {''}, '',0, 300, 30, 10, function(gif_d)
gif_dx = gif_d / 900
end)

zhujixianshi:toggle("玩家头部全局显示", {},"", function(f)
gt = f
while gt do
    wait(0)
        for pid = 0, 31 do
             if pid ~= players.user() and players.exists(pid) then
                 pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(pid))
                 WIRI_GRAPHICS.DRAW_MARKER(2, pos.x, pos.y, pos.z+1.5, 0, 0, 0, 0, 180, 0, 1, 1, 1, 255, 0, 255, 255, false, true, 2, true, 0, 0, false)
             end
        end
    end
gt = false
end)

startTime = os.clock() yxscxs=GTTG(zhujixianshi, '脚本运行时长', {""}, '', function (on) gt=on while gt do wait() local endTime = os.clock() local duration = endTime - startTime local hours = math.floor(duration / 3600) local minutes = math.floor((duration % 3600) / 60) local seconds = math.floor(duration % 60) if seconds >= 60 then minutes = minutes + 1 seconds = 0 end formattedTime = string.format("~h~您已使用:")
if minutes >= 60 then hours = hours + 1 minutes = 0 end
if duration > 7200 then edTime = "~h~~r~\n您已过度疲劳游戏\n请合理安排时间游戏!" HUD.SET_TEXT_SCALE(0.5, 0.40) HUD.SET_TEXT_FONT(1) HUD.SET_TEXT_COLOUR(255, 182, 193, 255) HUD.SET_TEXT_CENTRE(1) HUD.SET_TEXT_OUTLINE(1) util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT(edTime) HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.08, 0.01, 0) end
if hours > 0 then formattedTime = formattedTime .. string.format("%d小时", hours) end
if minutes > 0 then formattedTime = formattedTime .. string.format("%d分钟", minutes) end
if seconds > 0 or (hours == 0 and minutes == 0) then formattedTime = formattedTime .. string.format("%d秒", seconds)
end HUD.SET_TEXT_SCALE(0.5, 0.40) HUD.SET_TEXT_FONT(1) HUD.SET_TEXT_COLOUR(255, 182, 193, 255) HUD.SET_TEXT_CENTRE(1) HUD.SET_TEXT_OUTLINE(1) util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT(formattedTime) HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.08, 0.01, 0) end gt = false end)
menu.set_value(yxscxs, yxscxs1)


vzbxs=GTTG(zhujixianshi, '坐标显示', {}, '', function (f)
    gt = f
    while gt do
        wait()
        local pos = v2()
        pos.x = 0.001
        pos.y = 0.045
        local MyPed = players.user_ped(players.user())
        local MyPos = ENTITY.GET_ENTITY_COORDS(MyPed)
        local MyRot = ENTITY.GET_ENTITY_ROTATION(MyPed)
        local MyHeading = ENTITY.GET_ENTITY_HEADING(MyPed)
        local CamRot = CAM.GET_GAMEPLAY_CAM_ROT(0)
        local CamPos = CAM.GET_GAMEPLAY_CAM_COORD()
        local FwdVec = ENTITY.GET_ENTITY_FORWARD_VECTOR(MyPed)

        local displayText = function(text, x, y)
            HUD.SET_TEXT_SCALE(0.5, 0.28)
            HUD.SET_TEXT_FONT(1)
            HUD.SET_TEXT_COLOUR(255, 182, 193, 255)
            HUD.SET_TEXT_CENTRE(false)
            HUD.SET_TEXT_OUTLINE(true)
            util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT(text)
            HUD.END_TEXT_COMMAND_DISPLAY_TEXT(pos.x, pos.y, 0)
        end

        displayText("~italic~位置: " .. string.format("%.5f, %.5f, %.5f", MyPos.x, MyPos.y, MyPos.z), pos.x, pos.y)
        pos.y = pos.y + 0.02
        displayText("~italic~旋转: " .. string.format("%.5f, %.5f, %.5f", MyRot.x, MyRot.y, MyRot.z), pos.x, pos.y)
        pos.y = pos.y + 0.02
        displayText("~italic~方向: " .. string.format("%.5f", MyHeading), pos.x, pos.y)
        pos.y = pos.y + 0.02
        local MyDir = MyRot:magnitude(MyRot)
        displayText("~italic~方向矢量: " .. string.format("%.5f", MyDir), pos.x, pos.y)
        pos.y = pos.y + 0.02
        displayText("~italic~视角旋转: " .. string.format("%.5f, %.5f, %.5f", CamRot.x, CamRot.y, CamRot.z), pos.x, pos.y)
        pos.y = pos.y + 0.02
        displayText("~italic~视角位置: " .. string.format("%.5f, %.5f, %.5f", CamPos.x, CamPos.y, CamPos.z), pos.x, pos.y)
        pos.y = pos.y + 0.02
        displayText("~italic~前进矢量: " .. string.format("%.5f, %.5f, %.5f", FwdVec.x, FwdVec.y, FwdVec.z), pos.x, pos.y)
      end
    gt = false
end)
menu.set_value(vzbxs, vzbxs1)  
GTTG(zhujixianshi, "禁用地图", {""}, "", function(f)
    disableMap = f
    while disableMap do
        HUD.HIDE_HUD_AND_RADAR_THIS_FRAME()
        wait(0)
    end
end)

--[[GTTG(zhujixianshi, "扫描文字", {""}, "", function(f)
saomiaoziti(f)
end)

cyclestart = GTTG(zhujixianshi, "扫描圆", {"cycledet"}, "", smyuan) 
menu.trigger_commands("cycledet on")]]


GTLP(zhujixianshi, "路牌", {"lupai"}, "", function() 
local ente
local ent1e = players.user_ped()
local ent2e = PED.GET_VEHICLE_PED_IS_USING(players.user_ped())
if PED.IS_PED_IN_ANY_VEHICLE(ent1e,true) then
ente = ent2e
else
ente = ent1e
end
local speede = ENTITY.GET_ENTITY_SPEED(ente)
local speedcalce = speede * 3.6
myspeed1e = math.ceil(speedcalce)
    GRAPHICS.DRAW_RECT(0.15, 0.12, 0.2, 0.23, 0, 20, 255, 255)
    GRAPHICS.DRAW_RECT(0.15, 0.12, 0.19, 0.22, 255, 255, 255, 255)
    GRAPHICS.DRAW_RECT(0.15, 0.12, 0.188, 0.218, 0, 20, 255, 255)
    GRAPHICS.DRAW_RECT(0.065, 0.026, 0.02, 0.03, 255, 255, 255, 255)
    GRAPHICS.DRAW_RECT(0.15, 0.155, 0.10, 0.01, 255, 255, 255, 255)
    GRAPHICS.DRAW_RECT(0.15, 0.188, 0.01, 0.07, 255, 255, 255, 255)
    GRAPHICS.DRAW_RECT(0.15, 0.026, 0.040, 0.03, 255, 0, 0, 255)
    HUD.SET_TEXT_SCALE(0.5,0.4)
    HUD.SET_TEXT_FONT(0)
    HUD.SET_TEXT_CENTRE(1)
    HUD.SET_TEXT_OUTLINE(0)
    HUD.SET_TEXT_COLOUR(255, 255, 255, 255)
    util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("                           东                 G520Y")
    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.065, 0.010)
    HUD.SET_TEXT_SCALE(0.5,0.4)
    HUD.SET_TEXT_FONT(0)
    HUD.SET_TEXT_CENTRE(1)
    HUD.SET_TEXT_OUTLINE(0)
    HUD.SET_TEXT_COLOUR(255, 255, 255, 255)
    util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("~h~      广   州")
    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.073, 0.071)
    HUD.SET_TEXT_SCALE(0.5,0.3)
    HUD.SET_TEXT_FONT(0)
    HUD.SET_TEXT_CENTRE(1)
    HUD.SET_TEXT_OUTLINE(0)
    HUD.SET_TEXT_COLOUR(255, 255, 255, 255)
    util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("~h~Guang Zhou")
    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.085, 0.10)
    HUD.SET_TEXT_SCALE(0.5,0.4)
    HUD.SET_TEXT_FONT(0)
    HUD.SET_TEXT_CENTRE(1)
    HUD.SET_TEXT_OUTLINE(0)
    HUD.SET_TEXT_COLOUR(255, 255, 255, 255)
    util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("~h~      深    圳")
    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.20, 0.071)
    HUD.SET_TEXT_SCALE(0.5,0.3)
    HUD.SET_TEXT_FONT(0)
    HUD.SET_TEXT_CENTRE(1)
    HUD.SET_TEXT_OUTLINE(0)
    HUD.SET_TEXT_COLOUR(255, 255, 255, 255)
    util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("~h~Shen Zhen")
    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.21, 0.10)
    draw_string(string.format("~h~~w~限速 "..myspeed1e.." ~w~公里"), 0.075,0.19, 0.3,0.3)
end)

lscolor = {r = 0, g = 0, b = 0, a = 1}
GTLP(zhujixianshi, "想你的风吹到了洛圣都", {}, "", function ()
    GRAPHICS.DRAW_RECT(0.15, 0.10, 0.22, 0.07, 70, 100, 255, 255)
    draw_string(string.format("~bold~~w~~h~想你的风吹到了洛圣都"), 0.045,0.07, 0.66,1)
    GRAPHICS.DRAW_RECT(0.15, 0.15, 0.22, 0.0325, 200, 200, 200, 255)
    draw_string(string.format("~w~The wind that misses you has blown to Los Santos"), 0.056,0.139,0.25,1)
    draw_string(string.format("~w~南"), 0.044,0.136, 0.30,1)
    draw_string(string.format("~w~北"), 0.246,0.136, 0.30,1)
    --directx.draw_text(0.0525, 0.14, "The wind that misses you has blown to Los Santos", 0, 0.5, lscolor , false)
    --directx.draw_text(0.0420, 0.1383, "南", 0, 0.56, lscolor , false)
    --directx.draw_text(0.2470, 0.1386, "北", 0, 0.56, lscolor , false)
end)

GTTG(zhujixianshi, "显示当前余额", {''}, "", function(f)
    ybye = f
        while ybye do
        HUD.SET_MULTIPLAYER_WALLET_CASH()
        HUD.SET_MULTIPLAYER_BANK_CASH()
        wait(0)
        end
        HUD.REMOVE_MULTIPLAYER_WALLET_CASH()
        HUD.REMOVE_MULTIPLAYER_BANK_CASH()
end)
    
GTTG(zhujixianshi, "一键瞎眼", {""}, "", function(f) 
    disableMap = f
    while disableMap do
        MISC.SET_OVERRIDE_WEATHER("BLIZZARD")
        wait(0)
        MISC.SET_OVERRIDE_WEATHER("CLEARING")
        wait(0)
    end 
end)

GTLP(zhujixianshi, "名称信息", {"scriptinfo"}, "", function()
HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.5,0.125,0)
GRAPHICS.DRAW_RECT(0.001, 0.999, 0, 0.085, 0, 0, 0, 0)
HUD.SET_TEXT_SCALE(1.0,0.53)
HUD.SET_TEXT_COLOUR(60,100,255,255)
HUD.SET_TEXT_FONT(2)
HUD.SET_TEXT_CENTRE(true)
HUD.SET_TEXT_OUTLINE(true)
util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("~f~G~q~r~r~a~b~n~g~d~y~T~q~o~f~u~p~r~f~i~q~n~r~gV~b~I~g~P~")
HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.05,0,0)
end)

xssjxs=GTTG(zhujixianshi, "显示时间", {"timeos"}, "", function(state)
    timeos = state
    if timeos then
    while timeos do
    wait(0)
    GRAPHICS.DRAW_RECT(0.91685, 0.1175, 0.1560, 0.03755, 80, 20, 100, 255)
    GRAPHICS.DRAW_RECT(0.91685, 0.0995, 0.1560, 0.00755, 120, 100, 180, 255)
    draw_string(string.format(os.date("~h~GTMENU：" .. GT_version .. " >%H:%M:%S", os.time())), 0.8506,0.1066, 0.355,255)
    end
    end 
    end)
menu.set_value(xssjxs, xssjxs1)     
xssjrq=GTTG(zhujixianshi, "显示日期", {"dayos"}, "", function(state)
    dayos = state
    if dayos then
    while dayos do
    wait(0)
    GRAPHICS.DRAW_RECT(0.91685, 0.0645, 0.1560, 0.03755, 20, 70, 120, 255)
    GRAPHICS.DRAW_RECT(0.91685, 0.0465, 0.1560, 0.00755, 200, 50, 150, 255)
    draw_string(string.format(os.date("~h~GTMENU：" .. GT_version .. " >%Y/%m/%d", os.time())), 0.8416,0.0530, 0.355,255)
    end
    end 
    end)
menu.set_value(xssjrq, xssjrq1) 
    alpha = 0 
    increasing = true 
    colors = { {255, 0, 0}, {0, 255, 0},  {0, 0, 255},  {255, 0, 255},  {0, 255, 255}, {255, 255, 255}, {0, 0, 0}, } 
    currentColorIndex = 1 
    GTLP(zhujixianshi, "嗨起来", {""}, "Space Club", function()     
        local currentColor = colors[currentColorIndex]     
        alpha = (increasing and alpha < 255) and alpha + 15 or (not increasing and alpha > 0) and alpha - 15 or alpha --改变跳动速度
                
        if alpha == 255 then         
            increasing = false     
        elseif alpha == 0 then         
            increasing = true         
            currentColorIndex = currentColorIndex % #colors + 1    
        end   
        HUD.SET_TEXT_SCALE(3.0,3)--字体大小
        HUD.SET_TEXT_FONT(0)
        HUD.SET_TEXT_CENTRE(1)
        HUD.SET_TEXT_OUTLINE(0)
        HUD.SET_TEXT_COLOUR(60, 255, 255, 255)--字体颜色
        util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("GRANDTOURINGVIP YYDS!!!")
        HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.5,0.4,0)--字体位置
        WIRI_CAM.SET_CINEMATIC_BUTTON_ACTIVE(false)     
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.01, 0.01, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.05, 0.05, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小 
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.10, 0.10, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.15, 0.15, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.20, 0.20, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.25, 0.25, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.30, 0.30, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.35, 0.35, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.40, 0.40, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.45, 0.45, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.50, 0.50, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.55, 0.55, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.60, 0.60, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小 
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.65, 0.65, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.70, 0.70, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.75, 0.75, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.80, 0.80, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.85, 0.85, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.90, 0.90, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
        GRAPHICS.DRAW_RECT(0.5, 0.5, 0.95, 0.95, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
        GRAPHICS.DRAW_RECT(0.5, 0.5, 1.0, 1.0, currentColor[1], currentColor[2], currentColor[3], alpha) --背景大小
    end)            

speedhud = GT(zhujixianshi,"显示速度")
GTTG(speedhud, "显示速度", {"speedmeteor"}, "", function(state)
    speed_y = 0.8
    speed_x = 0.84
    speedm = state  
    while speedm do
    local ent
    local ent1 = players.user_ped()
    local ent2 = PED.GET_VEHICLE_PED_IS_USING(players.user_ped())
    if PED.IS_PED_IN_ANY_VEHICLE(ent1,true) then
    ent = ent2
    else
    ent = ent1
    end
    local speed = ENTITY.GET_ENTITY_SPEED(ent)
    local speedcalc = speed * 3.6
    myspeed1 = math.ceil(speedcalc)
    wait()
    draw_string(string.format("~bold~~italic~~b~"..myspeed1 .. "  ~p~KM/H"), speed_x,speed_y, 1,5)
    end
    end,speedm)

    GTluaScript.slider(speedhud, '速度显示 X轴', {''}, '',121, 661, 121, 20, function(s_x)
    speed_x = s_x / 661
    end) 
    
    GTluaScript.slider(speedhud, '速度显示 Y轴', {''}, '',21, 781, 21, 20, function(s_y)
        speed_y = s_y / 781
    end)  

GTTG(zhujixianshi, "显示图片", {"gtpng"}, "", function(state)
llogo = state
logo_alpha = 1
while llogo do
directx.draw_texture(logo, 0.06, 0.06, 0.0, 0.0, 0.02, 0.27, 0, 1, 1, 1, logo_alpha)
wait()
end
end)

t2 = directx.create_texture(filesystem.scripts_dir() .. '/GTLuaScript/' .. 't2.png')
GTTG(zhujixianshi, "显示2Take1", {"2take1menu"}, "", function(state)
t2logo = state
logo_alpha = 1
while t2logo do
directx.draw_texture(t2, 0.06, 0.107, 0.0, 0.0, 0.40, 0.40, 0, 1, 1, 1, logo_alpha)
wait()
end
end)

zaxiang = GT(other_options, "其他功能")

ZT = GT(zaxiang, "动态主题", {"sszt"}, "")
util.require_no_lag"lib.GTSCRIPTS.GTW.ZT"

times_button_pressed = 0
GTAC(zaxiang,"试试点击", {}, "一个友好的功能哟~\n连点有彩蛋喔~", function(f)
    anwo = f
    if anwo then
        times_button_pressed = times_button_pressed + 1 util.toast("恭喜你，你被骗了 "..times_button_pressed.." 秒") 
        if times_button_pressed == 10 then util.toast("哇10次，真是浪费时间") util.toast("哇10次，真是浪费时间") 
        elseif times_button_pressed == 25 then util.toast("25倍的赞美你在浪费自己的时间") util.toast("25倍的赞美你在浪费自己的时间") 
        elseif times_button_pressed == 50 then util.toast("好吧，兄弟50次，这里什么都没有，现在停止") util.toast("好吧，兄弟50次，这里什么都没有，现在停止") 
        elseif times_button_pressed == 100 then util.toast("哇，你按了100次，你解锁了2tak1开发菜单") util.toast("哇，你按了100次，你解锁了2tak1开发菜单") 
        elseif times_button_pressed == 200 then util.toast("他妈的200倍，你是想死吗?") util.toast("他妈的200倍，你是想死吗?") 
        elseif times_button_pressed == 300 then util.toast("罚你达到500美元的奖金") util.toast("罚你达到500美元的奖金") 
        elseif times_button_pressed == 500 then util.toast("哈哈，你得去拿奖") util.toast("哈哈，你得去拿奖") 
        elseif times_button_pressed == 1000 then util.toast("这是你的奖品，给你两个大嘴巴 :)") util.toast("这是你的奖品，给你两个大嘴巴 :)") 
        end 
    end
end)

--[[GTTG(zaxiang, "事件通知", {}, "", function(t)
fg = t
if fg then
shijian=players.on_flow_event_done(function(p, name, extra)
    name = lang.get_localised(name)
    if extra then
        name ..= " ("
        name ..= extra
        name ..= ")"
    end
    newnotify("~h~GRANDTOURINGVIP", "~r~&#8721;‹GT‹&#8721;", "~h~~b~"..players.get_name(p)..": "..name, "CHAR_CHOP", 140)
end)
end
shijian = 0
shijian = false
fg = false
fg = 0
end)]]

function teleportToWaypoint()
    if HUD.IS_WAYPOINT_ACTIVE() then
        local blip = HUD.GET_FIRST_BLIP_INFO_ID(8)
        local waypoint_pos = HUD.GET_BLIP_COORDS(blip)

        local success, Zcoord = util.get_ground_z(waypoint_pos.x, waypoint_pos.y)
        local tries = 0
        while not success and tries <= 100 do
            success, Zcoord = util.get_ground_z(waypoint_pos.x, waypoint_pos.y)
            tries = tries + 1
            wait()
        end
        if success then
            waypoint_pos.z = Zcoord
        end

        local localped = PLAYER.GET_PLAYER_PED(players.user())
        if not PED.IS_PED_IN_ANY_VEHICLE(localped, true) then
            ENTITY.SET_ENTITY_COORDS(localped, waypoint_pos.x, waypoint_pos.y, waypoint_pos.z, false, false, false, false)
        else
            local veh = PED.GET_VEHICLE_PED_IS_IN(localped, false)
            if veh ~= 0 then
                ENTITY.SET_ENTITY_COORDS(veh, waypoint_pos.x, waypoint_pos.y, waypoint_pos.z, false, false, false, false)
            end
        end
        util.toast("已传送标记点!")
    else
        util.toast("请在地图上标记,谢谢!")
    end
end

GTTG(zaxiang, "自动传送标记点", {}, "", function(g)
    gt = g
    while gt do
        teleportToWaypoint()
        wait(50)
    end
    gt = false
end)


GTLP(zaxiang, "按我", {""}, "", function()
GRAPHICS.DRAW_RECT(0.5, 0.5, 1, 1, 0, 0, 0, 255)
HUD.SET_TEXT_SCALE(2.0,5)
HUD.SET_TEXT_FONT(5)
HUD.SET_TEXT_CENTRE(0)
HUD.SET_TEXT_COLOUR(255, 255, 255, 255)
HUD.SET_TEXT_OUTLINE(true)
util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("~y~你个大傻逼")
HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.5,0.3,0)
end)

GTLP(zaxiang, "它不再属于你了", {""}, "", function ()
local scaleForm = GRAPHICS.REQUEST_SCALEFORM_MOVIE("POPUP_WARNING")
GRAPHICS.DRAW_RECT(.5, .5, 1, 1, 255, 158, 177, 255)
GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD(scaleForm, "SHOW_POPUP_WARNING")
GRAPHICS.DRAW_SCALEFORM_MOVIE_FULLSCREEN(scaleForm, 0, 0, 0, 0, 0)
GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_FLOAT(500.0)
GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING("GRANDTOURINGVIP")
GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING("恭喜你发现了这个选项\n你成功的被我骗了一秒生命值\n这一秒永远属于我\n它不再属于你了\n")
GRAPHICS.END_SCALEFORM_MOVIE_METHOD(scaleForm)
end)

xinwnen_text = "强奸了一百头母猪¦"
newstext = GT(zhujixianshi,"新闻恶搞", {''}, '')

GTAC(newstext, "自定义新闻文字", {"Customizeidicule"}, "点击修改新闻文字", function(value)
    xinwnen_text = inputC("", 99, xinwnen_text)
end)

function set_scaleform_movie_as_no_longer_needed(h)
	local pH = memory.alloc_int()
	memory.write_int(pH, h)
	GRAPHICS.SET_SCALEFORM_MOVIE_AS_NO_LONGER_NEEDED(pH)
end

GTTG(newstext,"恶搞新闻",{},"", function(t)
gt=t
    local news = GRAPHICS.REQUEST_SCALEFORM_MOVIE("BREAKING_NEWS")

    while not GRAPHICS.HAS_SCALEFORM_MOVIE_LOADED(news) do
        wait(0)
    end

    GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD(news, "SET_TEXT")
    GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING("今日头条:" .. PLAYER.GET_PLAYER_NAME(players.user()) .. xinwnen_text)
    GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING("~h~~f~G~q~R~r~A~b~N~g~D~y~T~q~O~f~U~p~R~f~I~q~N~r~G~y~V~b~I~g~P")
    GRAPHICS.END_SCALEFORM_MOVIE_METHOD(news)
    while (gt) do
        GRAPHICS.DRAW_SCALEFORM_MOVIE_FULLSCREEN(news, 255, 255, 255, 255, 0)
        wait(0)
    end
    set_scaleform_movie_as_no_longer_needed(news)
end)

GTLP(minimap, "地图闪烁", {"party_mode_cmd"}, "五彩斑斓的小地图", function(on)
    HUD.FLASH_MINIMAP_DISPLAY_WITH_COLOR(hud_rgb_colors[hud_rgb_index])
    hud_rgb_index = hud_rgb_index + 1
    if hud_rgb_index == 4 then
        hud_rgb_index = 1
    end
    wait(200)
end)
GTTG(minimap,"显示声纳", {"sonaronmap"}, "", function(on)
	HUD._SET_MINIMAP_SONAR_ENABLED(on)
end)
mapzoom = 1
GTluaScript.slider(minimap, "小地图缩放", {"minimapzoom"}, "", 0, 100, 0, 1, function(s)
    HUD.SET_RADAR_ZOOM_PRECISE(s)
end)

mapangle = 0
GTluaScript.slider(minimap,"小地图角度", {"minimapanglme"}, "", 0, 360, 0, 1, function(s)
    mapangle = s
end)

mapanglet = off
GTTG(minimap,"锁定地图角度", {"lockminimapangle"}, "", function(on)
	mapanglet = on
	while mapanglet do
		HUD.LOCK_MINIMAP_ANGLE(mapangle)
		wait()
	end
	HUD.UNLOCK_MINIMAP_ANGLE()
end)
 centermap = off
GTTG(minimap, "以你为中心的地图", {"centermap"}, "", function(on)
	centermap = on
	while centermap do 
		HUD.DONT_TILT_MINIMAP_THIS_FRAME()
		wait()
	end
end)

GTTG(minimap, "隐藏地图", {}, "", function(on)
	if on then
		menu.trigger_commands("screenshot on")
	else
		menu.trigger_commands("screenshot off")
	end
end)

timestamp_toggle = false
GTAC(nextcons, "复制控制台信息到剪贴板", {}, "将控制台信息的完整的最后x行复制到剪贴板", function()
util.copy_to_clipboard(full_stdout, true)
end)

GTluaScript.slider(nextcons, "最大显示字符", {"nconsolemaxchars"}, "", 1, 1000, 200, 1, function(s)
max_chars = s
end)

GTluaScript.slider(nextcons, "最大显示行数", {"nconsolemaxlines"}, "", 1, 60, 25, 1, function(s)
max_lines = s
end)

GTluaScript.slider_float(nextcons, "字体大小", {"nconsolemaxlines"}, "", 1, 1000, 35, 1, function(s)
font_size = s*0.01
end)

GTTG(nextcons, "显示时间", {"ntime"}, "", function(on)
timestamp_toggle = on
end, false)

draw_toggle = false
GTTG(nextcons, "绘制控制台", {"ndrawconsole"}, "", function(on)
draw_toggle = on
end, false)

local text_color = {r = 1, g = 0, b = 1, a = 1}
GTluaScript.colour(nextcons, "文字颜色", {"nconsoletextcolor"}, "", 1, 0, 0, 1, true, function(on_change)
text_color = on_change
end)

local bg_color = {r = 0, g = 1, b = 1, a = 1}
GTluaScript.colour(nextcons, "背景颜色", {"nconsolebgcolor"}, "", 0, 0, 0, 0, true, function(on_change)
bg_color = on_change
end)

util.create_tick_handler(function()
    local text = get_last_lines(log_dir)
    if draw_toggle then
        local size_x, size_y = directx.get_text_size(disp_stdout, font_size)
        size_x += 0.01
        size_y += 0.01
        directx.draw_rect(0.0, 0.15, size_x, size_y, bg_color)
        directx.draw_text(0.0, 0.15, disp_stdout, 0, font_size, text_color, true)
    end
end)
--STAND版本
local window_x = 0.86
local window_y = 0.03
local text_margin = 0.003
local text_height = 0.018 
local window_width = 0.12
local window_height = 0.18
local menu_items = {"    Welcome to GTLuaScript\n\n     非常感谢各位支持人员\n\n      进群可获取最新版本\n\n      交流群：    716431566",}
local selected_index = 0

local blur_rect_instance
local function colour(r, g, b, a)
return { r = r / 255,g = g / 255,b = b / 255,a = a / 255}
end
local function gui_background(x, y, width, height, blur_radius)
    local background = colour(60, 0, 0, 100)
    local border_color_left = colour(255, 0, 255, 180)
    local border_color_right = colour(0, 255, 255, 255)
    directx.blurrect_draw(
        blur_rect_instance, 
        x, y, width, height,
        blur_radius or 5
    )
    directx.draw_rect(
        x, y,
        width, height,
        background
    )
    directx.draw_line(
        x, y,
        x, y + height,
        border_color_left
    )
    directx.draw_line(
        x, y,
        x + width, y,
        border_color_left, border_color_right
    )
    directx.draw_line(
        x + width, y,
        x + width, y + height,
        border_color_right
    )
    directx.draw_line(
        x, y + height,
        x + width, y + height,
        border_color_left, border_color_right
    )
end
local function text(text, x, y, text_scale, highlighted)
    if highlighted then
        directx.draw_rect(
            x, y,
            window_width - (text_margin * 2), text_height,
            colour(15, 15, 15, 0)
        )
    end

    directx.draw_text(
        x, y, text, ALIGN_TOP_LEFT, text_scale,
        colour(0, 255, 255, 255)
    )
end
local insinsts = "FocusOut"
local function render_list(x, y, list, selected_index)
    local ty = 0
    local text_scale = 0.5

    for i,v in pairs(list) do
        local highlighed = i == selected_index - 1

        text(v, x, y + ty, text_scale, highlighed)
        ty = ty + text_height
    end
end

local function edition_string()
    local edition = menu.get_edition()
    if edition == 0 then
        return "[免费版]"
    elseif edition == 1 then
        return "[基础版]"
    elseif edition == 2 then
        return "[常规版]"
    elseif edition == 3 then
        return "[终极版]"
    end
end

local function render_menu()
    local width = window_width
    local height = window_height

    gui_background(window_x, window_y,
        width, height)

    text("      Stand " .. edition_string(),
        window_x + text_margin,
        window_y + text_margin,
        0.6, false)
    
    local top_margin = 0.04
    
    render_list(
        window_x + text_margin,
        window_y + text_margin + top_margin,
        menu_items, selected_index
    )
end

local function set_menu_open(toggle) end 

local menu_is_open = false

local function input_handler()
    if menu.is_open() then return end

    local VK_NUMPAD8 = 0x68
    local VK_NUMPAD2 = 0x62

    if util.is_key_down(VK_NUMPAD2) then
        selected_index = selected_index + 1

    elseif util.is_key_down(VK_NUMPAD8) then
        selected_index = selected_index - 1

    end
end

local function tick_handler()
    if menu_is_open then
        render_menu()
    end

    input_handler()
    return true
end

blur_rect_instance = directx.blurrect_new()
util.create_tick_handler(tick_handler) 

function set_menu_open(toggle)
    if toggle and not menu_is_open then
        menu_is_open = true
        
    elseif not toggle and menu_is_open then
        menu_is_open = false

    end
end

GTTG(zhujixianshi, "显示Stand版本", {"standedition"}, "", function(toggle)
set_menu_open(toggle)
end)

GTAC(other_options, "幸运人员", {}, "", function ()
    require "lib.GTSCRIPTS.GTA.list"
    local name = WIRI_SOCIALCLUB.SC_ACCOUNT_INFO_GET_NICKNAME()
    local hasPermission = false 

    for _, id in ipairs(spid) do
        if name == id.playerid then
            hasPermission = true
            break
        end
    end

    if not hasPermission then
        gtoast("权限不足")
        return 
    end

    local numPlayersToNotify = math.random(5, 5)
    for i = 1, numPlayersToNotify do
        local randomIndex = math.random(1, #spid)
        local randomPlayer = spid[randomIndex].playerid
        gtoast("幸运人员: " .. randomPlayer)
    end
end)

skills={
    "搞人",
    "嫖娼",
    "恋爱",
    "挣钱",
    "和平",
    "去死",
    "崩人",
    "踢人",
    "钓鱼",
    "骂人",
    "抢劫",
    "任务",
    "打炮",
    "考妣",
    "考妣",
    "考妣",
    "考妣",
    "考妣",
}
rainbowr = 0
rainbowg = 0
rainbowb = 0

hidetext = GT(zhujixianshi, "你不可能看到")
kanbujian1=GTTG(hidetext, "这是你看不见的", {"dotext"}, "", function(a)
    local i=0
    sgt = a
    while sgt do 
    wait(0)
    HUD.SET_TEXT_SCALE(2.0,1)
    HUD.SET_TEXT_FONT(0)
    HUD.SET_TEXT_CENTRE(1)
    HUD.SET_TEXT_OUTLINE(0)
    rainbowr = rainbowr + math.random(0, 3)
    rainbowg = rainbowg + math.random(0, 3)
    rainbowb = rainbowb + math.random(0, 3)
    if rainbowr > 255 then
       rainbowr = rainbowr - 255
    end
    if rainbowg > 255 then
       rainbowg = rainbowg - 255
    end
    if rainbowb > 255 then
       rainbowb = rainbowb - 255
    end
    HUD.SET_TEXT_COLOUR(rainbowr, rainbowg, rainbowb, 255)
    util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("欢迎使用\nGRANDTOURINGVIP")
    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.5,0.3)
        i=i+10
    end
end)
--fuck u
kanbujian2=GTTG(hidetext, "这是你看不见的", {"starttexts"}, "", function(a)
    local month=os.date("%m")
    local today=os.date("%d")
    local date=month..'月'..today..'日'
    local i=255
    local x=0
    local randomthing=math.random(1,#skills)
    sgt = a
    while sgt and i>0 do
    wait(0)
    HUD.SET_TEXT_SCALE(2.0,1)
    HUD.SET_TEXT_FONT(0)
    HUD.SET_TEXT_CENTRE(1)
    HUD.SET_TEXT_OUTLINE(0)
    rainbowr = rainbowr + math.random(0, 3)
    rainbowg = rainbowg + math.random(0, 3)
    rainbowb = rainbowb + math.random(0, 3)
    if rainbowr > 255 then
        rainbowr = rainbowr - 255
    end
    if rainbowg > 255 then
       rainbowg = rainbowg - 255
    end
    if rainbowb > 255 then
       rainbowb = rainbowb - 255
    end
    HUD.SET_TEXT_COLOUR(rainbowr, rainbowg, rainbowb, 255)
    util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("欢迎使用\nGRANDTOURINGVIP\n今天是"..date..'\n适合'..skills[randomthing])
    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(0.5,0.3)
        i=i-0.5
        x=x+1
    end
end)

shitdo = GTAC(hidetext, "看看今天干点啥", {"lookshitwhat"}, "", function()
    wait(3000)
    local me = players.user()
    local my_ped = players.user_ped(me)
    menu.trigger_commands("dotext on")
    GRAPHICS.USE_PARTICLE_FX_ASSET("scr_trevor1")
    while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("scr_trevor1") do
        STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_trevor1")
        wait(0)
    end
    wait(4000)
    GRAPHICS.USE_PARTICLE_FX_ASSET("scr_trevor1")
    while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("scr_trevor1") do
        STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_trevor1")
        wait(0)
    end
    GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("scr_trev1_trailer_boosh", my_ped, 0, 0.0, 0.0, 0, 0, 0, 3)
    wait(1)
    FIRE.ADD_EXPLOSION(-50, -819.27, 326.175, 0, 1.0, true, false, 0.0, false)
    wait(1)
    menu.trigger_commands("dotext off")
    menu.trigger_commands("starttexts on")
    wait(4000)
    menu.trigger_commands("starttexts off")
    wait(1000)
end)

menu.trigger_commands("lookshitwhat")
menu.set_visible(hidetext, false)
--
--[[function lerp(start, destination, speed)
    return start + ((destination - start) * speed)
end
textX = 0.0
textEndPosition = 0.83 
speed = 0.01 
xianshiziti2 = menu.toggle(players_root,"你看不见的显示",{}, "", function(f)
    ucant = f
    while ucant do
        wait()
        textX = lerp(textX, textEndPosition, speed)
        local text = "~h~GRAND"
        HUD.SET_TEXT_SCALE(0.5, 0.5)
        rainbowr = rainbowr + math.random(0, 3)
        rainbowg = rainbowg + math.random(0, 3)
        rainbowb = rainbowb + math.random(0, 3)
        if rainbowr > 255 then
            rainbowr = rainbowr - 255
        end
        if rainbowg > 255 then
            rainbowg = rainbowg - 255
        end
        if rainbowb > 255 then
            rainbowb = rainbowb - 255
        end
        HUD.SET_TEXT_COLOUR(rainbowr, rainbowg, rainbowb, 255)
        util.BEGIN_TEXT_COMMAND_DISPLAY_TEXT(text, v2(textX, 0.02))
    end
end)]]

GTTG(zaxiang, "隐藏Stand用户", {}, "对其他用户来说，你是隐形的，但也不是检测器", function(on_toggle)
local standid = menu.ref_by_path("Online>Protections>Detections>Stand User Identification")
if on_toggle then
GTluaScript.trigger_command(standid, "on")
else
GTluaScript.trigger_command(standid, "off")
end
end)

rlight = 255
GTluaScript.slider(misclightmenu, "R", {"lightred"}, "", 0, 255, 28, 1, function(s)
	rlight = s 
end)
glight = 255
GTluaScript.slider(misclightmenu, "G", {"lightgreen"}, "", 0, 255, 4, 1, function(s)
	glight = s
end)
blight = 255
GTluaScript.slider(misclightmenu, "B", {"lightblue"}, "", 0, 255, 255, 1, function(s)
	blight = s
end)
Radiuslight = 1
GTluaScript.slider(misclightmenu, "半径" ,{"lightradius"}, "", 0, 9000, 9000, 1, function(s)
	Radiuslight = s
end)
intenslight = 1
GTluaScript.slider(misclightmenu, "强度", {"lightintensity"}, "", 0, 1000, 1000, 1, function(s)
	intenslight = s
end)

GTLP(misclightmenu, "开启", {"lighton"}, "", function()
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
	GRAPHICS.DRAW_LIGHT_WITH_RANGE(pos.x, pos.y, pos.z, rlight, glight, blight, Radiuslight, intenslight)
end)

GTLP(zaxiang, "跳到下一条对话", {}, "", function()
    if AUDIO.IS_SCRIPTED_CONVERSATION_ONGOING() then
        AUDIO.SKIP_TO_NEXT_SCRIPTED_CONVERSATION_LINE()
    end
end)

egaoxuanxianggongneng()

local x, y = directx.get_client_size()
local ratio = x/y
local run = false

ajxs=GTTG(anjian, '打开', {''}, '', function(on) 
	run = on
end, false)
menu.set_value(ajxs, ajxs1)
GTluaScript.slider(anjian, 'X轴', {''}, '',1 , 10000, overlay_x * 10000, 20, function(value)
	overlay_x = value / 10000
end)
GTluaScript.slider(anjian, 'Y轴', {''}, '',1 , 10000, overlay_y * 10000, 20, function(value)
	overlay_y = value / 10000
end)
GTluaScript.slider(anjian, '大小', {''}, '',1 , 10000, 300, 20, function(value)
	size = value / 10000
    boxMargin = size / 7
end)

local color_root = GT(anjian, '颜色', {''}, '')
GTluaScript.colour(color_root, '文本颜色', {'co'}, '', key_text_color, true, function(colour)
    key_text_color = colour
end)
GTluaScript.colour(color_root, '背景颜色', {'bg-color'}, '', background_colour, true, function(colour)
    background_colour = colour
end)
GTluaScript.rainbow(GTluaScript.colour(color_root, '按键反馈颜色', {'press-color'}, '', pressed_background_colour, true, function(colour)
    pressed_background_colour = colour
end))

--[[hide_root = GT(anjian, '隐藏按键', {''}, '')
for i = 1, #wasd do
GTTG(hide_root, wasd[i].key, {}, '', function(toggle)
wasd[i].show = not toggle
end)
end]]


util.create_tick_handler(function()
if run then
for i = 1, #wasd do
 wasd[i].pressed = false
for j = 1, #wasd[i].keys do
if PAD.IS_CONTROL_PRESSED(2, wasd[i].keys[j]) then
wasd[i].pressed = true
end
end
end
for i = 1, #wasd - 3 do
if wasd[i].show then
directx.draw_rect(overlay_x + (boxMargin + size) * (i > 4 and i - 5 or i - 1), overlay_y + (i > 4 and (boxMargin + size * ratio) or 0)* 1.05, size, size * ratio, wasd[i].pressed and pressed_background_colour or background_colour)
if not hideKey then
directx.draw_text(overlay_x + (boxMargin + size) * (i > 4 and i - 5 or i - 1)+ size * 0.45,(i > 4 and  overlay_y + (boxMargin + size * ratio)* 1.2 or  overlay_y*1.07) , wasd[i].key, 1, size *20, key_text_color, false)
end
end
end
if altShiftCtrl then
if wasd[#wasd - 2].show then
directx.draw_rect(overlay_x, overlay_y + (boxMargin + size)* ratio * 2,(boxMargin + size) - boxMargin, size * ratio / 2, wasd[#wasd - 2].pressed and pressed_background_colour or background_colour)
end
if wasd[#wasd - 1].show then
directx.draw_rect(overlay_x, overlay_y + (boxMargin + size)* ratio * 2.5,(boxMargin + size) - boxMargin, size * ratio / 2, wasd[#wasd - 1].pressed and pressed_background_colour or background_colour)
end
else
for i = 9, 10 do
if wasd[i].show then
directx.draw_rect(overlay_x - (boxMargin + size), overlay_y + (boxMargin + size * ratio) * (i - 8) * 1.05, size, size * ratio, wasd[i].pressed and pressed_background_colour or background_colour)
if not hideKey then
directx.draw_text(overlay_x - (boxMargin + size)+ size * 0.45,(i > 4 and  overlay_y + (boxMargin + size * ratio) * (i - 8)* 1.2 or  overlay_y*1.07) , wasd[i].key, 1, size *20, key_text_color, false)
end
end
end
end
if wasd[#wasd].show then
directx.draw_rect(overlay_x + (boxMargin + size) * altSpaceBar, overlay_y + (boxMargin + size)* ratio * 2,(boxMargin + size) * spaceBarLength - boxMargin, size * ratio / spaceBarSlim, wasd[#wasd].pressed and pressed_background_colour or background_colour)
end
end
if safeMonitorToggle then
local ct = 0
local spacing = 0.015 + smSettings.scale * smSettings.scale / 50
for i = 1, #JS_tbls.safeManagerToggles do
if JS_tbls.safeManagerToggles[i].toggle then
ct += spacing
directx.draw_text(1 + smSettings.xOffset / 200, ct + smSettings.yOffset / 200, JS_tbls.safeManagerToggles[i].displayText(), smSettings.alignment, smSettings.scale, smSettings.textColour, false)
end
end
end
end)

require "lib.GTSCRIPTS.GTA.hbl"
sponsor = GT(zanzhuzx, 'VIP人员', {}, '功德无量，爱心支持')
for _, v in ipairs(hb_id) do 
    GTD(sponsor, "VIP会员: "..v.name, function() 
    end)
end
GTD(sponsor, "...未完待续...", function() 
end)

gtauthor = GTLP(zanzhuzx, "作者", {"gtdev"}, "", function()
    draw_string(string.format("~italic~~bold~~f~GRANDTOURINGVIP"), 0.38,0.560, 1,2)
    draw_string(string.format("~italic~~bold~~z~GT"), 0.30,0.150, 7,5)
    draw_string(string.format("~italic~~bold~~w~制作"), 0.40,0.320, 1.2,5)
    draw_string(string.format("~italic~~bold~~q~S"), 0.517,0.283, 1.1,5)
    draw_string(string.format("~italic~~bold~~q~T"), 0.507,0.335, 1.1,5)
    draw_string(string.format("~italic~~bold~~q~A"), 0.497,0.386, 1.1,5)
    draw_string(string.format("~italic~~bold~~q~N"), 0.462,0.438, 1.1,5)
    draw_string(string.format("~italic~~bold~~q~D"), 0.454,0.491, 1.1,5)
    draw_string(string.format("~italic~~bold~~w~GT"), 0.37,0.435, 1.2,5)
    draw_string(string.format("~h~~m~SCRIPT"), 0.435,0.195, 1.1,5)
    draw_string(string.format("~italic~~bold~&#8721;"), 0.35,0.545, 1.1,5)
    draw_string(string.format("~italic~~bold~&#8721;"), 0.548,0.545, 1.1,5)
    draw_string(string.format("~italic~~bold~~w~关闭请到其他选项(感谢使用)"), 0.28,0.600, 1,5)
end)

gtdev = GTLP(zanzhuzx, "开发", {"respect"}, "", function()
    draw_string(string.format("~italic~~bold~~p~~h~瑞思拜"), 0.40,0.270, 1.5,2)
    draw_name(string.format("~italic~~bold~~y~Developer Updates For"), 0.25,0.370, 2,2)
    draw_name(string.format("~italic~~bold~&#8721;"), 0.27,0.50, 1.1,5)
    draw_name(string.format("~italic~~bold~~b~GRANDTOURINGVIP YYDS"), 0.30,0.480, 2,2)
    draw_name(string.format("~italic~~bold~~q~Made With Love For Everyone / Create Everything"), 0.26,0.600, 1,1)
end)

GTLP(zanzhuzx, "致谢名单", {""}, "GRANDTOURING董事会", function()
    draw_string(string.format("~italic~~bold~~q~ ~y~[12] ~r~[Super飞]~g~[柒月]\n~f~[小马哥] ~q~[安安安] ~d~[西木]"), 0.280,0.300,1.5,5)
    draw_string(string.format("~italic~~bold~~q~ ~q~[丢丢] ~w~[02] ~y~[xion] ~r~[rudan]"), 0.250,0.520,1.5,5)
end)

GTTG(zaxiang, "禁用圈钱鲨鱼卡显示", {}, "", function(on)
	nostore = on
	while nostore do
		NETWORK.SET_STORE_ENABLED(false)
		wait()
	end
	NETWORK.SET_STORE_ENABLED(true)
end, false)

zaxiang:action("重启游戏", {},"合理的重启", function(f)
WIRI_MISC.RESTART_GAME()
end)

zaxiang:action("退出游戏", {},"合理的退出", function(f)
WIRI_MISC.QUIT_GAME()
end)

pass_list = {{0}}
GTAC(zaxiang, "自崩", {"crashme"}, "快速退游戏", function()
while true do
    for _, pass in ipairs(pass_list) do
        local rid = players.get_rockstar_id(players.user())
            if pass.id == rid then
                return 
                else
            break
         end
       end
    end
end, nil)

GTAC(zaxiang, "赌一赌", {}, "我也不知道会发生什么", function()
if randomizer(array) == "1" then
notification("你的游戏幸存了下来")
else
notification("看起来你的游戏崩了")
wait(3000)
ENTITY.APPLY_FORCE_TO_ENTITY(0, 0, 0, 0, 0, 0, 0, 0, 0, false, false, false, false, false)
end
end)
              
GTH(other_options, "GTVIP一群", "https://jq.qq.com/?_wv=1027&k=wo92Nl0a", "")
GTH(other_options, "GTVIP二群", "http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=fecyAfmh_yGqElM5ABguu9YIVIuIiNqh&authKey=Nt%2FvK%2B2K6lEnVl3%2Bz3ZyRtoEEXXX%2FpZjLrrgPpvsXVXHsWCS2kKV%2Bir5P1Xg7f6F&noverify=0&group_code=642072208", "")
GTH(other_options, "GTVIP三群", "http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=oza9NK13Ql0LJDjvFg6x71QKAu5cDFYj&authKey=mKgjAapXxRtPTKUrwoLi%2FX%2FRovM4ufPDjh9nBhnQ6dFACL%2Fa%2Bqu7QkFTd55ipnEO&noverify=0&group_code=651502721", "")
GTH(other_options, "GTVIP聊天群", "http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=s_TXl5bUz7qNHUDHJV9p4gcAsBwqNnmq&authKey=%2FlvMHJriXIPU%2FzftUdGe3nd7JTF9JdwgJ6lfS61V1NzlZRriXxxY9vx14BsgKwJV&noverify=0&group_code=716431566", "脚本获取渠道属禁言状态\n仅提供用户获取脚本:)\n聊天交流请加入此群:)")

GTH(other_options, "加入Discord", "https://discord.gg/nJjB8FtxdN", "加入Discord服务器\n言论自由免受QQ限制\n服务器中不定时发布福利~\n欢迎您的加入喔:)")

require "lib.GTSCRIPTS.GTW.real"
GTLP(zaxiang, "真诚的人不会太差", {}, "", function ()
    realheart()
end)

credit_text_positions = {}
ready_for_text = false
show_credits = GTTG(other_options, "鸣谢人员", {}, "", function(on)
    if on then
        for i = 1, #credits_lines do
            table.insert(credit_text_positions, 1)
        end

        AUDIO.SET_RADIO_FRONTEND_FADE_TIME(3)
        AUDIO.SET_AUDIO_FLAG("MobileRadioInGame", true)
        AUDIO.SET_FRONTEND_RADIO_ACTIVE(true)
        AUDIO.SET_RADIO_STATION_MUSIC_ONLY("RADIO_18_90S_ROCK", true)
        AUDIO.SET_RADIO_TO_STATION_NAME("RADIO_03_HIPHOP_NEW")
        WIRI_AUDIO.FORCE_MUSIC_TRACK_LIST("RADIO_03_HIPHOP_NEW", "radio_03_hiphop_new_core_music", 3 * 61000 - 15000) --timed the best--
        local delay_time = util.current_time_millis() + 100
        while show_credits.value do
            directx.draw_rect(0, 0, 1, 1, {r = 0, g = 0, b = 0, a = 1})
            --directx.draw_texture(logo, 0.14, 0.14, 0.5, 0.5, 0.12, 0.5, 0, {r = 1, g = 1, b = 1, a = 1})

            if not ready_for_text and delay_time < util.current_time_millis() then
                ready_for_text = true
                --util.toast(tostring(ready_for_text))
            end

            if ready_for_text then
                for i = 1, #credits_lines do
                    local new_position = credit_text_positions[i] - (-i/40)
                    if new_position <= 0.95 then
                        if new_position > 0.05 then
                            directx.draw_text(0.5, new_position, credits_lines[i].text, ALIGN_CENTRE, credits_lines[i].size, { r = 1, g = 1, b = 1, a = 1 }, true)
                        else
                            if i == 56 then
                                show_credits.value = false
                            end
                        end 
                    end
                    credit_text_positions[i] = credit_text_positions[i] - 0.0010
                end
            end
            wait()
        end
    else
        ready_for_text = false
        credit_text_positions = {}
        AUDIO.SET_AUDIO_FLAG("MobileRadioInGame", false)
        AUDIO.SET_FRONTEND_RADIO_ACTIVE(false)
    end
end)

GTAC(other_options,"关闭脚本",{"closegt"},"",function ()
    util.stop_script()
end)

if do_autoload then
    load_loadout:trigger()
end

local last_car = 0
while true do
    player_cur_car = entities.get_user_vehicle_as_handle()
    if last_car ~= player_cur_car and player_cur_car ~= 0 then 
        on_user_change_vehicle(player_cur_car)
        last_car = player_cur_car
    end

    if renderscorched then
        if player_cur_car ~= 0 then
            ENTITY.SET_ENTITY_RENDER_SCORCHED(player_cur_car, true)
        end
    end

    if mph_plate then
        if player_cur_car ~= 0 then
            if mph_unit == "KPH" then
                unit_conv = 3.6
            else
                unit_conv = 2.236936
            end
            speed = math.ceil(ENTITY.GET_ENTITY_SPEED(player_cur_car)*unit_conv)
            VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(player_cur_car, speed .. " " .. mph_unit)
        end
    end

    if walkonwater or driveonwater or driveonair then
        if dow_block == 0 or not ENTITY.DOES_ENTITY_EXIST(dow_block) then
            local hash = util.joaat("stt_prop_stunt_bblock_mdm3")
            request_model_load(hash)
            local c = {}
            c.x = 0.0
            c.y = 0.0
            c.z = 0.0
            dow_block = OBJECT.CREATE_OBJECT_NO_OFFSET(hash, c['x'], c['y'], c['z'], true, false, false)
            ENTITY.SET_ENTITY_ALPHA(dow_block, 0)
            ENTITY.SET_ENTITY_VISIBLE(dow_block, false, 0)
        end
    end

    if dow_block ~= 0 and not walkonwater and not walkonair and not driveonwater and not driveonair then
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(dow_block, 0, 0, 0, false, false, false)
    end

    if walkonwater then
        vehicle = PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
        local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0.0, 2.0, 0.0)
        local ht = memory.alloc(4)
        if WATER.GET_WATER_HEIGHT(pos['x'], pos['y'], pos['z'], ht) then
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(dow_block, pos['x'], pos['y'], memory.read_float(ht), false, false, false)
            ENTITY.SET_ENTITY_HEADING(dow_block, ENTITY.GET_ENTITY_HEADING(players.user_ped()))
        end
    end

    if driveonwater then
        if player_cur_car ~= 0 then
            local pos = ENTITY.GET_ENTITY_COORDS(player_cur_car, true)
            local ht = memory.alloc(4)
            if WATER.GET_WATER_HEIGHT(pos['x'], pos['y'], pos['z'], ht) then
                ENTITY.SET_ENTITY_COORDS_NO_OFFSET(dow_block, pos['x'], pos['y'], memory.read_float(ht), false, false, false)
                ENTITY.SET_ENTITY_HEADING(dow_block, ENTITY.GET_ENTITY_HEADING(player_cur_car))
            end
        else
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(dow_block, 0, 0, 0, false, false, false)
        end
    end
        if aim_info then
        local info = get_aim_info()
        if info['ent'] ~= 0 then
            local text = "[GT]哈希: " .. info['hash'] .. "\n[GT]实体: " .. info['ent'] .. "\n[GT]生命值: " .. info['health'] .. "\n[GT]类型: " .. info['type'] .. "\n[GT]速度: " .. info['speed']
            directx.draw_text(0.5, 0.3, text, 5, 0.8, to_rgb(1.0,0.0,1.0,1.0), true)
        end
    end

    if grapplegun then
    local curwep = WEAPON.GET_SELECTED_PED_WEAPON(players.user_ped())
    if PED.IS_PED_SHOOTING(players.user_ped()) and PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false) then
    if curwep == util.joaat("weapon_pistol") or curwep == util.joaat("weapon_pistol_mk2") then
    local raycast_coord = raycast_gameplay_cam_gun(-1, 10000.0)
    if raycast_coord[1] == 1 then
    local lastdist = nil
    TASK.TASK_SKY_DIVE(players.user_ped())
    while true do
    if PAD.IS_CONTROL_JUST_PRESSED(45, 45) then 
    break
    end
    if raycast_coord[4] ~= 0 and ENTITY.GET_ENTITY_TYPE(raycast_coord[4]) >= 1 and ENTITY.GET_ENTITY_TYPE(raycast_coord[4]) < 3 then
    ggc1 = ENTITY.GET_ENTITY_COORDS(raycast_coord[4], true)
    else
    ggc1 = raycast_coord[2]
    end
    local c2 = players.get_position(players.user())
    local dist = MISC.GET_DISTANCE_BETWEEN_COORDS(ggc1['x'], ggc1['y'], ggc1['z'], c2['x'], c2['y'], c2['z'], true)
    if not lastdist or dist < lastdist then 
    lastdist = dist
    else
    break
    end
    if ENTITY.IS_ENTITY_DEAD(players.user_ped()) then
    break
    end
    if dist >= 10 then
    local dir = {}
    dir['x'] = (ggc1['x'] - c2['x']) * dist
    dir['y'] = (ggc1['y'] - c2['y']) * dist
    dir['z'] = (ggc1['z'] - c2['z']) * dist
    ENTITY.SET_ENTITY_VELOCITY(players.user_ped(), dir['x'], dir['y'], dir['z'])
    else
    local t = ENTITY.GET_ENTITY_TYPE(raycast_coord[4])
    if t == 2 then
    set_player_into_suitable_seat(raycast_coord[4])
    elseif t == 1 then
    local v = PED.GET_VEHICLE_PED_IS_IN(t, false)
    if v ~= 0 then
    set_player_into_suitable_seat(v)
    end
    end
    break
    end
    wait()
    end
    end
    end
    end
    end


    if paintball then
    local ent = get_aim_info()['ent']
    request_control_of_entity(ent)
    if PED.IS_PED_SHOOTING(players.user_ped()) then
    if ENTITY.IS_ENTITY_A_VEHICLE(ent) then
    rand = {}
    rand['r'] = math.random(100,255)
    rand['g'] = math.random(100,255)
    rand['b'] = math.random(100,255)
    VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(ent, rand['r'], rand['g'], rand['b'])
    VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(ent, rand['r'], rand['g'], rand['b'])
    end
    end
    end

    if driveonair then
    if player_cur_car ~= 0 then
    local pos = ENTITY.GET_ENTITY_COORDS(player_cur_car, true)
    local boxpos = ENTITY.GET_ENTITY_COORDS(dow_block, true)
    if MISC.GET_DISTANCE_BETWEEN_COORDS(pos['x'], pos['y'], pos['z'], boxpos['x'], boxpos['y'], boxpos['z'], true) >= 5 then
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(dow_block, pos['x'], pos['y'], doa_ht, false, false, false)
    ENTITY.SET_ENTITY_HEADING(dow_block, ENTITY.GET_ENTITY_HEADING(player_cur_car))
    end
    if PAD.IS_CONTROL_PRESSED(22, 22) then
    doa_ht = doa_ht + 0.1
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(dow_block, pos['x'], pos['y'], doa_ht, false, false, false)
    end
    if PAD.IS_CONTROL_PRESSED(36, 36) then
    doa_ht = doa_ht - 0.1
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(dow_block, pos['x'], pos['y'], doa_ht, false, false, false)
    end
    end
    end

    if tesla_ped ~= 0 then
    lastcar = PLAYER.GET_PLAYERS_LAST_VEHICLE()
    p_coords = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)
    t_coords = ENTITY.GET_ENTITY_COORDS(lastcar, true)
   dist = MISC.GET_DISTANCE_BETWEEN_COORDS(p_coords['x'], p_coords['y'], p_coords['z'], t_coords['x'], t_coords['y'], t_coords['z'], false)
    if lastcar == 0 or ENTITY.GET_ENTITY_HEALTH(lastcar) == 0 or dist <= 5 then
    entities.delete_by_handle(tesla_ped)
    VEHICLE.BRING_VEHICLE_TO_HALT(lastcar, 5.0, 2, true)
    VEHICLE.SET_VEHICLE_DOORS_LOCKED_FOR_ALL_PLAYERS(lastcar, false)
    VEHICLE.START_VEHICLE_HORN(lastcar, 1000, util.joaat("NORMAL"), false)
    tesla_ped = 0
    util.remove_blip(tesla_blip)
    end
    end
    GuidedMissile.mainLoop()
    UFO.mainLoop()
    bodyguardMenu:onTick()
    wait()
end

players_thread = util.create_thread(function (thr)
while true do
if player_uses > 0 then
if show_updates then
notify("玩家名单正在更新")
end
all_players = players.list(true, true, true)
for k,pid in pairs(all_players) do
if anti_aim then 
local c1 = players.get_position(pid)
local c2 =  players.get_position(players.user())
local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
if PED.IS_PED_FACING_PED(ped, players.user_ped(), anti_aim_angle) 
and ENTITY.HAS_ENTITY_CLEAR_LOS_TO_ENTITY(ped, players.user_ped(), 17)
and MISC.GET_DISTANCE_BETWEEN_COORDS(c1.x, c1.y, c1.z, c2.x, c2.y, c2.z) < 1000 
and WEAPON.GET_SELECTED_PED_WEAPON(ped) ~= -1569615261 
and PED.GET_PED_CONFIG_FLAG(ped, 78, true) then
pluto_switch anti_aim_type do 
case 1: 
util.trigger_script_event(1 << pid, {-1388926377, 4, -1762807505, 0})
break
case 2: 
local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), 0.0, 0.0, 2.8)
FIRE.ADD_EXPLOSION(coords['x'], coords['y'], coords['z'], 70, 100.0, false, true, 0.0)
break
case 3:
menu.trigger_commands("kill " .. players.get_name(pid))
break
end
if anti_aim_notify then
 notify(players.get_name(pid) .. translations.is_aiming_at_you)
end
end
end
if bigbarrelqq then
if (HUD.HUD_GET_WEAPON_WHEEL_CURRENTLY_HIGHLIGHTED(plyped()) ~= -1810795771) then
WEAPON.GIVE_WEAPON_TO_PED(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user()),-1810795771,15,true,true)
end
end
if protected_areas_on then
for k,v in pairs(protected_areas) do
local c = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), false)
local dist = MISC.GET_DISTANCE_BETWEEN_COORDS(c.x, c.y, c.z, v.x, v.y, v.z, true)
if dist < v.radius then
local hdl = pid_to_handle(pid)
local rid = players.get_rockstar_id(pid)
kill_this_guy = true
if protected_area_allow_friends then
if NETWORK.NETWORK_IS_FRIEND(hdl) then
kill_this_guy = false
end
end
if protected_area_kill_armed then
kill_this_guy = false
if WEAPON.GET_SELECTED_PED_WEAPON(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)) ~= -1569615261 then
kill_this_guy = true
end
end
if kill_this_guy then
MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(c.x, c.y, c.z, c.x, c.y, c.z+0.1, 300.0, true, 100416529, players.user_ped(), true, false, 100.0)
end
end
end
end
end
end
wait()
end
end)

util.on_stop(function()
    if ENTITY.DOES_ENTITY_EXIST(selfSpeechPed.entity) then
        entities.delete(selfSpeechPed.entity)
    end
    ANIMATIONS = {}
    if animLoaded then
        util.toast("警告:卸载动画浏览列表，将会卡顿.")
        destroy_animations_data()
    end
    delete_anim_props()
    local my_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(players.user())
    if not PED.IS_PED_IN_ANY_VEHICLE(my_ped) then
        TASK.CLEAR_PED_TASKS_IMMEDIATELY(my_ped)
    end
end)

while true do
    if selfSpeechPed.entity > 0 and os.millis() - selfSpeechPed.lastUsed > 20 then
        if ENTITY.DOES_ENTITY_EXIST(selfSpeechPed.entity) then
            entities.delete(selfSpeechPed.entity)
        end
        selfSpeechPed.entity = 0
    end
	wait()
end

while true do
    if NETWORK.NETWORK_IS_IN_SESSION() == false then
        while NETWORK.NETWORK_IS_IN_SESSION() == false or util.is_session_transition_active() do
            wait(1000)
        end
        wait(1000)
		spawnpos = players.get_position(players.user())
        repeat
            local pos = players.get_position(players.user())
            wait(500)
        until spawnpos.x ~= pos.x and spawnpos.y ~= pos.y
        if do_autoload then
            load_loadout:trigger()
        else
            regen_menu()
        end
    end
    wait(100)
end

util.on_stop(function()
    if UFO.exists() then
        UFO.destroy()
	end
    if GuidedMissile.exists() then
        GuidedMissile.destroy()
	end
end) 
end
--

--[[
 ________  ________  ________  ________   ________  _________  ________  ___  ___  ________  ___  ________   ________  ___      ___ ___  ________   
|\   ____\|\   __  \|\   __  \|\   ___  \|\   ___ \|\___   ___\\   __  \|\  \|\  \|\   __  \|\  \|\   ___  \|\   ____\|\  \    /  /|\  \|\   __  \  
\ \  \___|\ \  \|\  \ \  \|\  \ \  \\ \  \ \  \_|\ \|___ \  \_\ \  \|\  \ \  \\\  \ \  \|\  \ \  \ \  \\ \  \ \  \___|\ \  \  /  / | \  \ \  \|\  \ 
 \ \  \  __\ \   _  _\ \   __  \ \  \\ \  \ \  \ \\ \   \ \  \ \ \  \\\  \ \  \\\  \ \   _  _\ \  \ \  \\ \  \ \  \  __\ \  \/  / / \ \  \ \   ____\
  \ \  \|\  \ \  \\  \\ \  \ \  \ \  \\ \  \ \  \_\\ \   \ \  \ \ \  \\\  \ \  \\\  \ \  \\  \\ \  \ \  \\ \  \ \  \|\  \ \    / /   \ \  \ \  \___|
   \ \_______\ \__\\ _\\ \__\ \__\ \__\\ \__\ \_______\   \ \__\ \ \_______\ \_______\ \__\\ _\\ \__\ \__\\ \__\ \_______\ \__/ /     \ \__\ \__\   
    \|_______|\|__|\|__|\|__|\|__|\|__| \|__|\|_______|    \|__|  \|_______|\|_______|\|__|\|__|\|__|\|__| \|__|\|_______|\|__|/       \|__|\|__|   
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
GRANDTOURINGVIP™ Copyright© 2023 
All rights reserved.
    ⠄⠄⠄⣰⣿⠄⠄⠄⠄⠄⢠⠄⠄⢀⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
    ⠄⠄⢰⣿⠿⠄⡀⠄⠄⠄⠘⣷⡀⠄⠢⣄⠄⠄⠄⠄⠄⠄⠄⣠⠖⠁⠄⠄⠄⠄
    ⠄⣤⢸⣿⣿⣆⠣⠄⠄⠄⠄⠸⣿⣦⡀⠙⢶⣦⣄⡀⠄⡠⠞⠁⢀⡴⠄⠄⠄⠄
    ⢰⣿⣎⣿⣿⣿⣦⣀⠄⠄⠄⠄⠹⣿⣿⣦⢄⡙⠻⠿⠷⠶⠤⢐⣋⣀⠄⠄⠄⠄
    ⢸⣿⠛⠛⠻⠿⢿⣿⣧⢤⣤⣄⣠⡘⣿⣿⣿⡟⠿⠛⠂⠈⠉⠛⢿⣿⠄⠄⠄⠄
    ⠄⡇⢰⣿⣇⡀⠄⠄⣝⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⡄⠄⠈⠄⣷⢠⡆⠄⠄⠄⠄
    ⢹⣿⣼⣿⣯⢁⣤⣄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⣴⠶⣲⣵⠟⠄⠄⠄⠄⠄
    ⠄⢿⣿⣿⣿⣷⣮⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣾⣟⣡⡴⠄⠄⠄⠄⠄
    ⠄⠰⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⡀⠄⠄⠄⠄
    ⠄⠄⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣭⣶⡞⠄⠄⠄⠄⠄
    ⠄⠄⠐⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠄⠄⠄⠄⠄⠄
    ⠄⠄⠄⠈⠻⣿⣿⣿⣿⣿⣿⣯⣿⣯⣿⣾⣿⣿⣿⣿⣿⡿⠋⠄⠄⠄⠄⠄⠄⠄
    ⠄⠄⠄⠄⠄⠄⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣵⠄⠄⠄⠄⠄⠄⠄⠄⠄
    ⠄⠄⠄⠄⠄⠄⠄⢀⣿⣯⣟⣿⣿⣿⡿⣟⣯⣷⣿⣿⡏⣤⠄⠄⠄⠄⠄⠄⠄⠄
    ⠄⠄⠄⠄⠄⠄⠄⣞⢸⣿⣿⣿⣾⣷⣿⣿⣿⣿⣿⣿⣇⣿⡆⠄⠄⠄⠄⠄⠄⠄]]