local ui = game:GetService("CoreGui"):FindFirstChild("AI")
if ui then ui:Destroy() end

-- This chatbot is powered by https://pollinations.ai

local uiElements = {
	["AI"] = Instance.new("ScreenGui"),
	["Container"] = Instance.new("Frame"),
	["UICorner"] = Instance.new("UICorner"),
	["Chat"] = Instance.new("Frame"),
	["Messages"] = Instance.new("ScrollingFrame"),
	["UserTemplate"] = Instance.new("Frame"),
	["UICorner_1"] = Instance.new("UICorner"),
	["Message"] = Instance.new("TextLabel"),
	["UIPadding"] = Instance.new("UIPadding"),
	["UISizeConstraint"] = Instance.new("UISizeConstraint"),
	["UIPadding_1"] = Instance.new("UIPadding"),
	["SysTemplate"] = Instance.new("Frame"),
	["UICorner_2"] = Instance.new("UICorner"),
	["Message_1"] = Instance.new("TextLabel"),
	["UIPadding_2"] = Instance.new("UIPadding"),
	["UISizeConstraint_1"] = Instance.new("UISizeConstraint"),
	["Buttons"] = Instance.new("Frame"),
	["UIListLayout"] = Instance.new("UIListLayout"),
	["UIPadding_3"] = Instance.new("UIPadding"),
	["Copy"] = Instance.new("ImageButton"),
	["Header"] = Instance.new("Frame"),
	["Icon"] = Instance.new("ImageLabel"),
	["Icon1"] = Instance.new("ImageLabel"),
	["UICorner_3"] = Instance.new("UICorner"),
	["UIStroke"] = Instance.new("UIStroke"),
	["InputBar"] = Instance.new("Frame"),
	["Bar"] = Instance.new("TextBox"),
	["UIPadding_4"] = Instance.new("UIPadding"),
	["UICorner_4"] = Instance.new("UICorner"),
	["UIStroke_1"] = Instance.new("UIStroke"),
	["LocalScript"] = Instance.new("LocalScript")
}

uiElements["AI"].Parent = game:GetService("CoreGui")
uiElements["AI"].Name = "AI"

uiElements["Container"].Parent = uiElements["AI"]
uiElements["Container"].Position = UDim2.new(0.5, 0, 0.5, 0)
uiElements["Container"].Size = UDim2.new(0.58423912525177, 0, 0.6565656661987305, 0)
uiElements["Container"].BackgroundColor3 = Color3.fromRGB(15, 15, 15)
uiElements["Container"].AnchorPoint = Vector2.new(0.5, 0.5)

uiElements["UICorner"].Parent = uiElements["Container"]
uiElements["UICorner"].CornerRadius = UDim.new(0, 14)

uiElements["Chat"].Parent = uiElements["Container"]
uiElements["Chat"].Size = UDim2.new(1, 0, 0.9788461327552795, -64)
uiElements["Chat"].BackgroundTransparency = 1

uiElements["Messages"].Parent = uiElements["Chat"]
uiElements["Messages"].Position = UDim2.new(0, 0, 0.10786513239145279, 0)
uiElements["Messages"].Size = UDim2.new(1, 0, 0.9932584762573242, 0)
uiElements["Messages"].BorderSizePixel = 0
uiElements["Messages"].BackgroundTransparency = 1
uiElements["Messages"].AutomaticCanvasSize = Enum.AutomaticSize.Y
uiElements["Messages"].CanvasSize = UDim2.new(0, 0, 0, 68)
uiElements["Messages"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
uiElements["Messages"].ScrollBarThickness = 8

uiElements["UserTemplate"].Parent = uiElements["Messages"]
uiElements["UserTemplate"].Position = UDim2.new(1, 0, 0, 0)
uiElements["UserTemplate"].Size = UDim2.new(0, 100, 0, 30)
uiElements["UserTemplate"].BackgroundColor3 = Color3.fromRGB(23, 23, 23)
uiElements["UserTemplate"].AnchorPoint = Vector2.new(1, 0)
uiElements["UserTemplate"].AutomaticSize = Enum.AutomaticSize.XY
uiElements["UserTemplate"].BorderColor3 = Color3.fromRGB(0, 0, 0)
uiElements["UserTemplate"].BorderSizePixel = 0
uiElements["UserTemplate"].Visible = false

uiElements["UICorner_1"].Parent = uiElements["UserTemplate"]
uiElements["UICorner_1"].CornerRadius = UDim.new(1, 0)

uiElements["Message"].Parent = uiElements["UserTemplate"]
uiElements["Message"].Size = UDim2.new(1, 0, 1, 0)
uiElements["Message"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uiElements["Message"].AutomaticSize = Enum.AutomaticSize.XY
uiElements["Message"].BorderColor3 = Color3.fromRGB(0, 0, 0)
uiElements["Message"].BorderSizePixel = 0
uiElements["Message"].BackgroundTransparency = 1
uiElements["Message"].Font = Enum.Font.GothamMedium
uiElements["Message"].TextColor3 = Color3.fromRGB(190, 190, 190)
uiElements["Message"].TextSize = 18
uiElements["Message"].RichText = true
uiElements["Message"].Text = "X"
uiElements["Message"].TextWrapped = true

uiElements["UIPadding"].Parent = uiElements["Message"]
uiElements["UIPadding"].PaddingTop = UDim.new(0, 3)
uiElements["UIPadding"].PaddingBottom = UDim.new(0, 3)
uiElements["UIPadding"].PaddingLeft = UDim.new(0, 8)
uiElements["UIPadding"].PaddingRight = UDim.new(0, 8)

uiElements["UISizeConstraint"].Parent = uiElements["UserTemplate"]

uiElements["UIPadding_1"].Parent = uiElements["Messages"]
uiElements["UIPadding_1"].PaddingTop = UDim.new(0, 8)
uiElements["UIPadding_1"].PaddingRight = UDim.new(0, 8)

uiElements["SysTemplate"].Parent = uiElements["Messages"]
uiElements["SysTemplate"].Size = UDim2.new(0, 100, 0, 30)
uiElements["SysTemplate"].BackgroundColor3 = Color3.fromRGB(23, 23, 23)
uiElements["SysTemplate"].AutomaticSize = Enum.AutomaticSize.XY
uiElements["SysTemplate"].BorderColor3 = Color3.fromRGB(0, 0, 0)
uiElements["SysTemplate"].BorderSizePixel = 0
uiElements["SysTemplate"].Visible = false
uiElements["SysTemplate"].BackgroundTransparency = 1

uiElements["UICorner_2"].Parent = uiElements["SysTemplate"]
uiElements["UICorner_2"].CornerRadius = UDim.new(1, 0)

uiElements["Message_1"].Parent = uiElements["SysTemplate"]
uiElements["Message_1"].Size = UDim2.new(1, 0, 1, 0)
uiElements["Message_1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uiElements["Message_1"].AutomaticSize = Enum.AutomaticSize.XY
uiElements["Message_1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
uiElements["Message_1"].BorderSizePixel = 0
uiElements["Message_1"].BackgroundTransparency = 1
uiElements["Message_1"].Font = Enum.Font.GothamMedium
uiElements["Message_1"].TextColor3 = Color3.fromRGB(190, 190, 190)
uiElements["Message_1"].TextSize = 18
uiElements["Message_1"].RichText = true
uiElements["Message_1"].Text = "Y"
uiElements["Message_1"].TextWrapped = true
uiElements["Message_1"].TextXAlignment = Enum.TextXAlignment.Left

uiElements["UIPadding_2"].Parent = uiElements["Message_1"]
uiElements["UIPadding_2"].PaddingTop = UDim.new(0, 3)
uiElements["UIPadding_2"].PaddingBottom = UDim.new(0, 3)
uiElements["UIPadding_2"].PaddingLeft = UDim.new(0, 8)
uiElements["UIPadding_2"].PaddingRight = UDim.new(0, 8)

uiElements["UISizeConstraint_1"].Parent = uiElements["SysTemplate"]

uiElements["Buttons"].Parent = uiElements["SysTemplate"]
uiElements["Buttons"].Position = UDim2.new(0, 0, 1, 0)
uiElements["Buttons"].Size = UDim2.new(1, 0, 0, 15)
uiElements["Buttons"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uiElements["Buttons"].BorderColor3 = Color3.fromRGB(0, 0, 0)
uiElements["Buttons"].BorderSizePixel = 0
uiElements["Buttons"].BackgroundTransparency = 1

uiElements["UIListLayout"].Parent = uiElements["Buttons"]
uiElements["UIListLayout"].Padding = UDim.new(0, 4)
uiElements["UIListLayout"].FillDirection = Enum.FillDirection.Horizontal
uiElements["UIListLayout"].SortOrder = Enum.SortOrder.LayoutOrder

uiElements["UIPadding_3"].Parent = uiElements["Buttons"]
uiElements["UIPadding_3"].PaddingLeft = UDim.new(0, 4)

uiElements["Copy"].Parent = uiElements["Buttons"]
uiElements["Copy"].Size = UDim2.new(0, 15, 1, 0)
uiElements["Copy"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uiElements["Copy"].Active = false
uiElements["Copy"].BorderColor3 = Color3.fromRGB(0, 0, 0)
uiElements["Copy"].BorderSizePixel = 0
uiElements["Copy"].BackgroundTransparency = 1
uiElements["Copy"].Image = "rbxassetid://93531807477279"

uiElements["Header"].Parent = uiElements["Chat"]
uiElements["Header"].Size = UDim2.new(1, 0, -0.017977528274059296, 50)
uiElements["Header"].BackgroundColor3 = Color3.fromRGB(20, 20, 20)
uiElements["Header"].BorderColor3 = Color3.fromRGB(0, 0, 0)
uiElements["Header"].BorderSizePixel = 0
uiElements["Header"].ZIndex = 0

uiElements["Icon"].Parent = uiElements["Header"]
uiElements["Icon"].Position = UDim2.new(0, 8, 0, 8)
uiElements["Icon"].Size = UDim2.new(0, 30, 0, 30)
uiElements["Icon"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uiElements["Icon"].BorderColor3 = Color3.fromRGB(0, 0, 0)
uiElements["Icon"].BorderSizePixel = 0
uiElements["Icon"].BackgroundTransparency = 1
uiElements["Icon"].Image = "rbxassetid://125966901198850"

uiElements["Icon1"].Parent = uiElements["Header"]
uiElements["Icon1"].Position = UDim2.new(1, -8, 0, 8)
uiElements["Icon1"].Size = UDim2.new(0, 30, 0, 30)
uiElements["Icon1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uiElements["Icon1"].AnchorPoint = Vector2.new(1, 0)
uiElements["Icon1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
uiElements["Icon1"].BorderSizePixel = 0
uiElements["Icon1"].BackgroundTransparency = 1
uiElements["Icon1"].Image = "rbxassetid://73985599900390"

uiElements["UICorner_3"].Parent = uiElements["Header"]
uiElements["UICorner_3"].CornerRadius = UDim.new(1, 0)

uiElements["UIStroke"].Parent = uiElements["Container"]
uiElements["UIStroke"].Color = Color3.fromRGB(40, 40, 40)

uiElements["InputBar"].Parent = uiElements["Container"]
uiElements["InputBar"].Position = UDim2.new(0, 0, 1, 0)
uiElements["InputBar"].Size = UDim2.new(1, 0, 0, 0)
uiElements["InputBar"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uiElements["InputBar"].AnchorPoint = Vector2.new(0, 1)
uiElements["InputBar"].AutomaticSize = Enum.AutomaticSize.Y
uiElements["InputBar"].BorderColor3 = Color3.fromRGB(0, 0, 0)
uiElements["InputBar"].BorderSizePixel = 0
uiElements["InputBar"].BackgroundTransparency = 1

uiElements["Bar"].Parent = uiElements["InputBar"]
uiElements["Bar"].Position = UDim2.new(0.5, 0, 1, -4)
uiElements["Bar"].Size = UDim2.new(1, -16, 1, 0)
uiElements["Bar"].BackgroundColor3 = Color3.fromRGB(23, 23, 23)
uiElements["Bar"].AnchorPoint = Vector2.new(0.5, 1)
uiElements["Bar"].AutomaticSize = Enum.AutomaticSize.Y
uiElements["Bar"].BorderColor3 = Color3.fromRGB(0, 0, 0)
uiElements["Bar"].BorderSizePixel = 0
uiElements["Bar"].Font = Enum.Font.GothamMedium
uiElements["Bar"].TextColor3 = Color3.fromRGB(220, 220, 220)
uiElements["Bar"].TextSize = 18
uiElements["Bar"].Text = ""
uiElements["Bar"].PlaceholderText = "Ask anything to ai bot and subscribe to crimson_the_scripter"
uiElements["Bar"].TextWrapped = true
uiElements["Bar"].TextXAlignment = Enum.TextXAlignment.Left

uiElements["UIPadding_4"].Parent = uiElements["Bar"]
uiElements["UIPadding_4"].PaddingTop = UDim.new(0, 4)
uiElements["UIPadding_4"].PaddingBottom = UDim.new(0, 4)
uiElements["UIPadding_4"].PaddingLeft = UDim.new(0, 16)
uiElements["UIPadding_4"].PaddingRight = UDim.new(0, 16)

uiElements["UICorner_4"].Parent = uiElements["Bar"]
uiElements["UICorner_4"].CornerRadius = UDim.new(1, 0)

uiElements["UIStroke_1"].Parent = uiElements["Bar"]
uiElements["UIStroke_1"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uiElements["UIStroke_1"].Color = Color3.fromRGB(40, 40, 40)
uiElements["UIStroke_1"].Thickness = 0.6000000238418579
-- since this ui to lua is horrible, i have to do this
for name, i in next, uiElements do i.Name = name:gsub("_%d+", "") end

local script = Instance.new("LocalScript", uiElements["Bar"])

local user = game:GetService("UserInputService")
local box = script.Parent
local messagesList = uiElements["Messages"]
local userTemplate, sysTemplate = uiElements.UserTemplate, uiElements.SysTemplate
local lastBox, lastFocusReleased, isGenerating;
local isStudio = game:GetService("RunService"):IsStudio()
local currentOffset = 0

local http_func = request or http and http.request or http_request or syn and syn.request
local REQUIRED_PROMPT = "\n" -- Change to whatever you want

user.TextBoxFocusReleased:Connect(function(Box)
	lastBox, lastFocusReleased = Box, tick()
end)

local messages = {
	{
		role = "system",
		content = "WORK NOW" .. REQUIRED_PROMPT
	}
}

local function richText(txt) --> turn stuff like **x** into <b>x</b> since .RichText is enabled
	txt = txt:gsub("%*%*([^\n%*]+)%*%*", "<b>%1</b>")-- removes bolds
	txt = txt:gsub("~~([^\n~]+)~~", "<strike>%1</strike>")
	txt = txt:gsub("^(#+)([^\n]+)", function(h, t) if #h > 6 then return end return `<font size = "{25 - #h * 2}">{t}</font>` end) -- probably doesn't work really well

	return txt
end

local function copy(b)
	if isStudio then
		print("Cannot copy on studio.") -- you can just make a textbox,set it's text to b.Text & wait for user to copy after :CaptureFocus(), but thats too annoying to implement
	else
		setclipboard(b.Text); -- executors have access to this
	end
end

local function createMessage(IsUser, Message)
	local Clone = IsUser and userTemplate:Clone() or sysTemplate:Clone()
	if IsUser then
		Clone.AnchorPoint = Vector2.new(1, 0)
	else
		Clone.AnchorPoint = Vector2.new(0, 0)
		Clone.Buttons.Copy.MouseButton1Click:Connect(function()
			copy(Clone.Message)
		end)
	end

	Clone.Message.Text = richText(Message)
	Clone.Visible = true
	Clone.Parent = messagesList
	Clone.Size = UDim2.new(Clone.Size.X.Scale, Clone.Size.X.Offset, 0, Clone.Message.TextBounds.Y + 2)

	local yOffset = 0
	for _, child in ipairs(messagesList:GetChildren()) do
		if child:IsA("Frame") and child.Visible then
			yOffset += child.AbsoluteSize.Y
		end
	end
	Clone.Position = UDim2.new(Clone.AnchorPoint.X, 0, 0, yOffset + 10) -- + 10 to make padding

	messagesList.CanvasSize = UDim2.new(0, 0, 0, yOffset + Clone.AbsoluteSize.Y)
	messagesList.CanvasPosition = Vector2.new(0, yOffset + Clone.AbsoluteSize.Y)

	return Clone
end


user.InputBegan:Connect(function(Input, GPE)
	local Code = Input.KeyCode
	if Code == Enum.KeyCode.Return then -- I know I can use user:GetFocusedTextBox() but if they pressed enter, that means it's no longer focused, so check if the time between the unfocus & focus is less than 0.1 seconds
		local IsShifting = user:IsKeyDown(Enum.KeyCode.LeftShift) or user:IsKeyDown(Enum.KeyCode.RightShift)
		if lastBox == box and IsShifting and tick() - lastFocusReleased < 0.01 then -- User meant a newline.
			box.Text ..= "\n"
			box.CursorPosition = #box.Text + 1

			box:CaptureFocus()
		else -- Just send the message
			if isGenerating or lastBox ~= box then return end

			local Prompt = box.Text
			box.Text = ""

			currentOffset += createMessage(true, Prompt).AbsoluteSize.Y
			table.insert(messages, {
				role = "user",
				content = Prompt
			})

			isGenerating = true

			local Response = createMessage(false, "Thinking...")
			task.spawn(function()
				local Dots = 3
				while task.wait(.33) do
					if not isGenerating then return end

					Dots = (Dots % 3) + 1

					Response.Message.Text = `Thinking{string.rep(".", Dots)}`
				end
			end)

			local Data = {
				Url = "https://text.pollinations.ai/openai",
				Method = "POST",
				Headers = {
					["Content-Type"] = "application/json"
				},
				Body = {
					messages = messages
				}
			}

			local Result;
			if isStudio then -- Since roblox studio doesn't have direct access to HTTP requests from the client, make the server send the http request & then return it via a RemoteFunction (Super cool approach)
				Result = game.ReplicatedStorage.HTTP:InvokeServer(Data)
			else
				if not http_func then
					return createMessage(false, "No http function available!")
				end
                Data.Body = game:GetService("HttpService"):JSONEncode(Data.Body)
				Result = game:GetService("HttpService"):JSONDecode(http_func(Data).Body);
			end

			isGenerating = false
			local Msg = (Result.choices and Result.choices[1] or { message = { content = "Unable to fetch reply :(" } }).message.content or "No content???"
			table.insert(messages, {
				role = "system",
				content = Msg
			})

			Response.Message.Text = richText(Msg);
			currentOffset += Response.AbsoluteSize.Y
			messagesList.CanvasSize += Response.Size
		end
	end
end)
