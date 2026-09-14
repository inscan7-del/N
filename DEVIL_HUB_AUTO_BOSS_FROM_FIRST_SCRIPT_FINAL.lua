-- DEVIL HUB V1.01 — NEW UI FIX V2
-- New Ui.txt library + original DEVIL feature body.

local function __DEVIL_LOAD_NEW_UI()
    local library
    do
        local ui_options = {
        	main_color = Color3.fromRGB(41, 74, 122),
        	title_bar_color = Color3.fromRGB(0, 0, 0), 
        	min_size = Vector2.new(400, 300),
        	toggle_key = Enum.KeyCode.RightShift,
        	can_resize = true,
        }
        
        do
        	local imgui = game:GetService("CoreGui"):FindFirstChild("imgui")
        	if imgui then imgui:Destroy() end
        end
        
        local imgui = Instance.new("ScreenGui")
        local Prefabs = Instance.new("Frame")
        local Label = Instance.new("TextLabel")
        local Window = Instance.new("ImageLabel")
        local Resizer = Instance.new("Frame")
        local Bar = Instance.new("Frame")
        local Toggle = Instance.new("ImageButton")
        local Base = Instance.new("ImageLabel")
        local Top = Instance.new("ImageLabel")
        local Tabs = Instance.new("Frame")
        local Title = Instance.new("TextLabel")
        local Skull = Instance.new("ImageLabel")
        local TabSelection = Instance.new("ImageLabel")
        local TabButtons = Instance.new("ScrollingFrame")
        TabButtons.Name = "TabButtons"
        TabButtons.BackgroundTransparency = 1
        TabButtons.BorderSizePixel = 0
        TabButtons.CanvasSize = UDim2.new(0, 0, 0, 0)
        TabButtons.ScrollBarThickness = 3
        TabButtons.ScrollingDirection = Enum.ScrollingDirection.X
        TabButtons.AutomaticCanvasSize = Enum.AutomaticSize.X
        TabButtons.HorizontalScrollBarInset = Enum.ScrollBarInset.None
        TabButtons.VerticalScrollBarInset = Enum.ScrollBarInset.None
        TabButtons.ClipsDescendants = true
        local UIListLayout = Instance.new("UIListLayout")
        local Frame = Instance.new("Frame")
        local Tab = Instance.new("Frame")
        local UIListLayout_2 = Instance.new("UIListLayout")
        local TextBox = Instance.new("TextBox")
        local TextBox_Roundify_4px = Instance.new("ImageLabel")
        local Slider = Instance.new("ImageLabel")
        local Title_2 = Instance.new("TextLabel")
        local Indicator = Instance.new("ImageLabel")
        local Value = Instance.new("TextLabel")
        local TextLabel = Instance.new("TextLabel")
        local TextLabel_2 = Instance.new("TextLabel")
        local Circle = Instance.new("ImageLabel")
        local UIListLayout_3 = Instance.new("UIListLayout")
        local Dropdown = Instance.new("TextButton")
        local Indicator_2 = Instance.new("ImageLabel")
        local Box = Instance.new("ImageButton")
        local Objects = Instance.new("ScrollingFrame")
        local UIListLayout_4 = Instance.new("UIListLayout")
        local TextButton_Roundify_4px = Instance.new("ImageLabel")
        local TabButton = Instance.new("TextButton")
        local TextButton_Roundify_4px_2 = Instance.new("ImageLabel")
        local Folder = Instance.new("ImageLabel")
        local Button = Instance.new("TextButton")
        local TextButton_Roundify_4px_3 = Instance.new("ImageLabel")
        local Toggle_2 = Instance.new("ImageLabel")
        local Objects_2 = Instance.new("Frame")
        local UIListLayout_5 = Instance.new("UIListLayout")
        local HorizontalAlignment = Instance.new("Frame")
        local UIListLayout_6 = Instance.new("UIListLayout")
        local Console = Instance.new("ImageLabel")
        local ScrollingFrame = Instance.new("ScrollingFrame")
        local Source = Instance.new("TextBox")
        local Comments = Instance.new("TextLabel")
        local Globals = Instance.new("TextLabel")
        local Keywords = Instance.new("TextLabel")
        local RemoteHighlight = Instance.new("TextLabel")
        local Strings = Instance.new("TextLabel")
        local Tokens = Instance.new("TextLabel")
        local Numbers = Instance.new("TextLabel")
        local Info = Instance.new("TextLabel")
        local Lines = Instance.new("TextLabel")
        local ColorPicker = Instance.new("ImageLabel")
        local Palette = Instance.new("ImageLabel")
        local Indicator_3 = Instance.new("ImageLabel")
        local Sample = Instance.new("ImageLabel")
        local Saturation = Instance.new("ImageLabel")
        local Indicator_4 = Instance.new("Frame")
        local Switch = Instance.new("TextButton")
        local TextButton_Roundify_4px_4 = Instance.new("ImageLabel")
        local Title_3 = Instance.new("TextLabel")
        local Button_2 = Instance.new("TextButton")
        local TextButton_Roundify_4px_5 = Instance.new("ImageLabel")
        local DropdownButton = Instance.new("TextButton")
        local Keybind = Instance.new("ImageLabel")
        local Title_4 = Instance.new("TextLabel")
        local Input = Instance.new("TextButton")
        local Input_Roundify_4px = Instance.new("ImageLabel")
        local Windows = Instance.new("Frame")
        
        imgui.Name = "imgui"
        imgui.Parent = game:GetService("CoreGui") or gethui()
        
        Prefabs.Name = "Prefabs"
        Prefabs.Parent = imgui
        Prefabs.BackgroundColor3 = Color3.new(1, 1, 1)
        Prefabs.Size = UDim2.new(0, 100, 0, 100)
        Prefabs.Visible = false
        
        
        Label.Name = "Label"
        Label.Parent = Prefabs
        Label.BackgroundColor3 = Color3.new(1, 1, 1)
        Label.BackgroundTransparency = 1
        Label.Size = UDim2.new(0, 200, 0, 20)
        Label.Font = Enum.Font.Garamond
        Label.Text = "Hello, world 123"
        Label.TextColor3 = Color3.new(1, 1, 1)
        Label.TextSize = 17
        Label.TextXAlignment = Enum.TextXAlignment.Left
        
        
        Window.Name = "Window"
        Window.Parent = Prefabs
        Window.Active = true
        Window.BackgroundColor3 = Color3.new(1, 1, 1)
        Window.BackgroundTransparency = 1       
        Window.ClipsDescendants = true
        Window.Position = UDim2.new(0, 20, 0, 20)
        Window.Selectable = true
        Window.Size = UDim2.new(0, 200, 0, 200)
        Window.Image = "rbxassetid://130158956302423"
        Window.ImageColor3 = Color3.new(255, 255, 250)
        Window.ScaleType = Enum.ScaleType.Stretch
        
        Resizer.Name = "Resizer"
        Resizer.Parent = Window
        Resizer.Active = true
        Resizer.BackgroundColor3 = Color3.new(1, 1, 1)
        Resizer.BackgroundTransparency = 1
        Resizer.BorderSizePixel = 0
        Resizer.Position = UDim2.new(1, -20, 1, -20)
        Resizer.Size = UDim2.new(0, 20, 0, 20)
        
        Bar.Name = "Bar"
        Bar.Parent = Window
        Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Bar.BorderSizePixel = 0
        Bar.Position = UDim2.new(0, 0, 0, 5)
        Bar.Size = UDim2.new(1, 0, 0, 30)
        
        Toggle.Name = "Toggle"
        Toggle.Parent = Bar
        Toggle.BackgroundColor3 = Color3.new(1, 1, 1)
        Toggle.BackgroundTransparency = 1
        Toggle.Position = UDim2.new(0, 2, 0, 0)
        Toggle.Rotation = 90
        Toggle.Size = UDim2.new(0, 26, 0, 26)
        Toggle.ZIndex = 2
        Toggle.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=113281701497572"
        
        Base.Name = "Base"
        Base.Parent = Bar
        Base.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Base.BorderSizePixel = 0
        Base.Position = UDim2.new(0, 0, 0.800000012, 0)
        Base.Size = UDim2.new(1, 0, 0, 10)
        Base.Image = "rbxassetid://2851926732"
        Base.ImageColor3 = Color3.fromRGB(0, 0, 0)
        Base.ScaleType = Enum.ScaleType.Slice
        Base.SliceCenter = Rect.new(12, 12, 12, 12)
        
        Top.Name = "Top"
        Top.Parent = Bar
        Top.BackgroundColor3 = Color3.new(1, 1, 1)
        Top.BackgroundTransparency = 1
        Top.Position = UDim2.new(0, 0, 0, -5)
        Top.Size = UDim2.new(1, 0, 0, 10)
        Top.Image = "rbxassetid://2851926732"
        Top.ImageColor3 = Color3.fromRGB(0, 0, 0)
        Top.ScaleType = Enum.ScaleType.Slice
        Top.SliceCenter = Rect.new(12, 12, 12, 12)
        
        Skull.Name = "Skull"
        Skull.Parent = Window
        Skull.BackgroundTransparency = 1
        Skull.Position = UDim2.new(0, 32, 0, 6)
        Skull.Size = UDim2.new(0, 20, 0, 20)
        Skull.ZIndex = 3
        Skull.Image = "rbxassetid://117660103744961"
        Skull.ScaleType = Enum.ScaleType.Fit
        
        Tabs.Name = "Tabs"
        Tabs.Parent = Window
        Tabs.BackgroundColor3 = Color3.new(1, 1, 1)
        Tabs.BackgroundTransparency = 1
        Tabs.Position = UDim2.new(0, 15, 0, 60)
        Tabs.Size = UDim2.new(1, -30, 1, -60)
        
        Title.Name = "Title"
        Title.Parent = Window
        Title.BackgroundColor3 = Color3.new(1, 1, 1)
        Title.BackgroundTransparency = 1
        Title.Position = UDim2.new(0, 56, 0, 5)
        Title.Size = UDim2.new(0, 300, 0, 35)
        Title.Font = Enum.Font.Bangers
        Title.Text = "PRIVATE KILLER"
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextSize = 16
        Title.TextXAlignment = Enum.TextXAlignment.Left
        Title.TextStrokeTransparency = 0.7
        Title.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
        
        TabSelection.Name = "TabSelection"
        TabSelection.Parent = Window
        TabSelection.BackgroundColor3 = Color3.new(1, 1, 1)
        TabSelection.BackgroundTransparency = 1
        TabSelection.Position = UDim2.new(0, 15, 0, 30)
        TabSelection.Size = UDim2.new(1, -30, 0, 25)
        TabSelection.Visible = false
        TabSelection.Image = "rbxassetid://2851929490"
        TabSelection.ImageColor3 = Color3.new(0.145098, 0.14902, 0.156863)
        TabSelection.ScaleType = Enum.ScaleType.Slice
        TabSelection.SliceCenter = Rect.new(4, 4, 4, 4)
        
        TabButtons.Name = "TabButtons"
        TabButtons.Parent = TabSelection
        TabButtons.BackgroundColor3 = Color3.new(1, 1, 1)
        TabButtons.BackgroundTransparency = 1
        TabButtons.Size = UDim2.new(1, 1, 1, 1)
        
        UIListLayout.Parent = TabButtons
        UIListLayout.FillDirection = Enum.FillDirection.Horizontal
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 2)
        
        Frame.Parent = TabSelection
        Frame.BackgroundColor3 = Color3.new(0.12549, 0.227451, 0.372549)
        Frame.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
        Frame.BorderSizePixel = 0
        Frame.Position = UDim2.new(0, 0, 1, 0)
        Frame.Size = UDim2.new(1, 0, 0, 2)
        
        Tab.Name = "Tab"
        Tab.Parent = Prefabs
        Tab.BackgroundColor3 = Color3.new(1, 1, 1)
        Tab.BackgroundTransparency = 1
        Tab.Size = UDim2.new(1, 0, 1, 0)
        Tab.Visible = false
        
        UIListLayout_2.Parent = Tab
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_2.Padding = UDim.new(0, 5)
        
        TextBox.Parent = Prefabs
        TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
        TextBox.BackgroundTransparency = 1
        TextBox.BorderSizePixel = 0
        TextBox.Size = UDim2.new(1, 0, 0, 20)
        TextBox.ZIndex = 2
        TextBox.Font = Enum.Font.Garamond
        TextBox.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
        TextBox.PlaceholderText = "Input Text"
        TextBox.Text = ""
        TextBox.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
        TextBox.TextSize = 17
        
        TextBox_Roundify_4px.Name = "TextBox_Roundify_4px"
        TextBox_Roundify_4px.Parent = TextBox
        TextBox_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
        TextBox_Roundify_4px.BackgroundTransparency = 1
        TextBox_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
        TextBox_Roundify_4px.Image = "rbxassetid://2851929490"
        TextBox_Roundify_4px.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
        TextBox_Roundify_4px.ScaleType = Enum.ScaleType.Slice
        TextBox_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)
        
        Slider.Name = "Slider"
        Slider.Parent = Prefabs
        Slider.BackgroundColor3 = Color3.new(1, 1, 1)
        Slider.BackgroundTransparency = 1
        Slider.Position = UDim2.new(0, 0, 0.178571433, 0)
        Slider.Size = UDim2.new(1, 0, 0, 20)
        Slider.Image = "rbxassetid://2851929490"
        Slider.ImageColor3 = Color3.new(0.145098, 0.14902, 0.156863)
        Slider.ScaleType = Enum.ScaleType.Slice
        Slider.SliceCenter = Rect.new(4, 4, 4, 4)
        
        Title_2.Name = "Title"
        Title_2.Parent = Slider
        Title_2.BackgroundColor3 = Color3.new(1, 1, 1)
        Title_2.BackgroundTransparency = 1
        Title_2.Position = UDim2.new(0.5, 0, 0.5, -10)
        Title_2.Size = UDim2.new(0, 0, 0, 20)
        Title_2.ZIndex = 2
        Title_2.Font = Enum.Font.Garamond
        Title_2.Text = "Slider"
        Title_2.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
        Title_2.TextSize = 17
        
        Indicator.Name = "Indicator"
        Indicator.Parent = Slider
        Indicator.BackgroundColor3 = Color3.new(1, 1, 1)
        Indicator.BackgroundTransparency = 1
        Indicator.Size = UDim2.new(0, 0, 0, 20)
        Indicator.Image = "rbxassetid://2851929490"
        Indicator.ImageColor3 = Color3.new(0.254902, 0.262745, 0.278431)
        Indicator.ScaleType = Enum.ScaleType.Slice
        Indicator.SliceCenter = Rect.new(4, 4, 4, 4)
        
        Value.Name = "Value"
        Value.Parent = Slider
        Value.BackgroundColor3 = Color3.new(1, 1, 1)
        Value.BackgroundTransparency = 1
        Value.Position = UDim2.new(1, -55, 0.5, -10)
        Value.Size = UDim2.new(0, 50, 0, 20)
        Value.Font = Enum.Font.Garamond
        Value.Text = "0%"
        Value.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
        Value.TextSize = 17
        
        TextLabel.Parent = Slider
        TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
        TextLabel.BackgroundTransparency = 1
        TextLabel.Position = UDim2.new(1, -20, -0.75, 0)
        TextLabel.Size = UDim2.new(0, 26, 0, 50)
        TextLabel.Font = Enum.Font.Garamond
        TextLabel.Text = "]"
        TextLabel.TextColor3 = Color3.new(0.627451, 0.627451, 0.627451)
        TextLabel.TextSize = 17
        
        TextLabel_2.Parent = Slider
        TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
        TextLabel_2.BackgroundTransparency = 1
        TextLabel_2.Position = UDim2.new(1, -65, -0.75, 0)
        TextLabel_2.Size = UDim2.new(0, 26, 0, 50)
        TextLabel_2.Font = Enum.Font.Garamond
        TextLabel_2.Text = "["
        TextLabel_2.TextColor3 = Color3.new(0.627451, 0.627451, 0.627451)
        TextLabel_2.TextSize = 17
        
        Circle.Name = "Circle"
        Circle.Parent = Prefabs
        Circle.BackgroundColor3 = Color3.new(1, 1, 1)
        Circle.BackgroundTransparency = 1
        Circle.Image = "rbxassetid://266543268"
        Circle.ImageTransparency = 0.5
        
        UIListLayout_3.Parent = Prefabs
        UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
        UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_3.Padding = UDim.new(0, 20)
        
        Dropdown.Name = "Dropdown"
        Dropdown.Parent = Prefabs
        Dropdown.BackgroundColor3 = Color3.new(1, 1, 1)
        Dropdown.BackgroundTransparency = 1
        Dropdown.BorderSizePixel = 0
        Dropdown.Position = UDim2.new(-0.055555556, 0, 0.0833333284, 0)
        Dropdown.Size = UDim2.new(0, 200, 0, 20)
        Dropdown.ZIndex = 2
        Dropdown.Font = Enum.Font.Garamond
        Dropdown.Text = "      Dropdown"
        Dropdown.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
        Dropdown.TextSize = 14
        Dropdown.TextXAlignment = Enum.TextXAlignment.Left
        
        Indicator_2.Name = "Indicator"
        Indicator_2.Parent = Dropdown
        Indicator_2.BackgroundColor3 = Color3.new(1, 1, 1)
        Indicator_2.BackgroundTransparency = 1
        Indicator_2.Position = UDim2.new(0.899999976, -10, 0.100000001, 0)
        Indicator_2.Rotation = -90
        Indicator_2.Size = UDim2.new(0, 15, 0, 15)
        Indicator_2.ZIndex = 2
        Indicator_2.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4744658743"
        
        Box.Name = "Box"
        Box.Parent = Dropdown
        Box.BackgroundColor3 = Color3.new(1, 1, 1)
        Box.BackgroundTransparency = 1
        Box.Position = UDim2.new(0, 0, 0, 25)
        Box.Size = UDim2.new(1, 0, 0, 150)
        Box.ZIndex = 3
        Box.Image = "rbxassetid://2851929490"
        Box.ImageColor3 = Color3.new(0.129412, 0.133333, 0.141176)
        Box.ScaleType = Enum.ScaleType.Slice
        Box.SliceCenter = Rect.new(4, 4, 4, 4)
        
        Objects.Name = "Objects"
        Objects.Parent = Box
        Objects.BackgroundColor3 = Color3.new(1, 1, 1)
        Objects.BackgroundTransparency = 1
        Objects.BorderSizePixel = 0
        Objects.Size = UDim2.new(1, 0, 1, 0)
        Objects.ZIndex = 3
        Objects.CanvasSize = UDim2.new(0, 0, 0, 0)
        Objects.ScrollBarThickness = 8
        
        UIListLayout_4.Parent = Objects
        UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
        
        TextButton_Roundify_4px.Name = "TextButton_Roundify_4px"
        TextButton_Roundify_4px.Parent = Dropdown
        TextButton_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
        TextButton_Roundify_4px.BackgroundTransparency = 1
        TextButton_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
        TextButton_Roundify_4px.Image = "rbxassetid://2851929490"
        TextButton_Roundify_4px.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
        TextButton_Roundify_4px.ScaleType = Enum.ScaleType.Slice
        TextButton_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)
        
        TabButton.Name = "TabButton"
        TabButton.Parent = Prefabs
        TabButton.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
        TabButton.BackgroundTransparency = 1
        TabButton.BorderSizePixel = 0
        TabButton.Position = UDim2.new(0.185185179, 0, 0, 0)
        TabButton.Size = UDim2.new(0, 71, 0, 30)
        TabButton.ZIndex = 2
        TabButton.Font = Enum.Font.Garamond
        TabButton.Text = "Test tab"
        TabButton.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
        TabButton.TextSize = 17
        
        TextButton_Roundify_4px_2.Name = "TextButton_Roundify_4px"
        TextButton_Roundify_4px_2.Parent = TabButton
        TextButton_Roundify_4px_2.BackgroundColor3 = Color3.new(1, 1, 1)
        TextButton_Roundify_4px_2.BackgroundTransparency = 1
        TextButton_Roundify_4px_2.Size = UDim2.new(1, 0, 1, 0)
        TextButton_Roundify_4px_2.Image = "rbxassetid://2851929490"
        TextButton_Roundify_4px_2.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
        TextButton_Roundify_4px_2.ScaleType = Enum.ScaleType.Slice
        TextButton_Roundify_4px_2.SliceCenter = Rect.new(4, 4, 4, 4)
        
        Folder.Name = "Folder"
        Folder.Parent = Prefabs
        Folder.BackgroundColor3 = Color3.new(1, 1, 1)
        Folder.BackgroundTransparency = 1
        Folder.Position = UDim2.new(0, 0, 0, 50)
        Folder.Size = UDim2.new(1, 0, 0, 20)
        Folder.Image = "rbxassetid://2851929490"
        Folder.ImageColor3 = Color3.new(0.0823529, 0.0862745, 0.0901961)
        Folder.ScaleType = Enum.ScaleType.Slice
        Folder.SliceCenter = Rect.new(4, 4, 4, 4)
        
        Button.Name = "Button"
        Button.Parent = Folder
        Button.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
        Button.BackgroundTransparency = 1
        Button.BorderSizePixel = 0
        Button.Size = UDim2.new(1, 0, 0, 20)
        Button.ZIndex = 2
        Button.Font = Enum.Font.Garamond
        Button.Text = "      Folder"
        Button.TextColor3 = Color3.new(1, 1, 1)
        Button.TextSize = 17
        Button.TextXAlignment = Enum.TextXAlignment.Left
        
        TextButton_Roundify_4px_3.Name = "TextButton_Roundify_4px"
        TextButton_Roundify_4px_3.Parent = Button
        TextButton_Roundify_4px_3.BackgroundColor3 = Color3.new(1, 1, 1)
        TextButton_Roundify_4px_3.BackgroundTransparency = 1
        TextButton_Roundify_4px_3.Size = UDim2.new(1, 0, 1, 0)
        TextButton_Roundify_4px_3.Image = "rbxassetid://2851929490"
        TextButton_Roundify_4px_3.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
        TextButton_Roundify_4px_3.ScaleType = Enum.ScaleType.Slice
        TextButton_Roundify_4px_3.SliceCenter = Rect.new(4, 4, 4, 4)
        
        Toggle_2.Name = "Toggle"
        Toggle_2.Parent = Button
        Toggle_2.BackgroundColor3 = Color3.new(1, 1, 1)
        Toggle_2.BackgroundTransparency = 1
        Toggle_2.Position = UDim2.new(0, 5, 0, 0)
        Toggle_2.Size = UDim2.new(0, 20, 0, 20)
        Toggle_2.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4731371541"
        
        Objects_2.Name = "Objects"
        Objects_2.Parent = Folder
        Objects_2.BackgroundColor3 = Color3.new(1, 1, 1)
        Objects_2.BackgroundTransparency = 1
        Objects_2.Position = UDim2.new(0, 10, 0, 25)
        Objects_2.Size = UDim2.new(1, -10, 1, -25)
        Objects_2.Visible = false
        
        UIListLayout_5.Parent = Objects_2
        UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_5.Padding = UDim.new(0, 5)
        
        HorizontalAlignment.Name = "HorizontalAlignment"
        HorizontalAlignment.Parent = Prefabs
        HorizontalAlignment.BackgroundColor3 = Color3.new(1, 1, 1)
        HorizontalAlignment.BackgroundTransparency = 1
        HorizontalAlignment.Size = UDim2.new(1, 0, 0, 20)
        
        UIListLayout_6.Parent = HorizontalAlignment
        UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
        UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_6.Padding = UDim.new(0, 5)
        
        Console.Name = "Console"
        Console.Parent = Prefabs
        Console.BackgroundColor3 = Color3.new(1, 1, 1)
        Console.BackgroundTransparency = 1
        Console.Size = UDim2.new(1, 0, 0, 200)
        Console.Image = "rbxassetid://2851928141"
        Console.ImageColor3 = Color3.new(0.129412, 0.133333, 0.141176)
        Console.ScaleType = Enum.ScaleType.Slice
        Console.SliceCenter = Rect.new(8, 8, 8, 8)
        
        ScrollingFrame.Parent = Console
        ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
        ScrollingFrame.BackgroundTransparency = 1
        ScrollingFrame.BorderSizePixel = 0
        ScrollingFrame.Size = UDim2.new(1, 0, 1, 1)
        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
        ScrollingFrame.ScrollBarThickness = 4
        
        Source.Name = "Source"
        Source.Parent = ScrollingFrame
        Source.BackgroundColor3 = Color3.new(1, 1, 1)
        Source.BackgroundTransparency = 1
        Source.Position = UDim2.new(0, 40, 0, 0)
        Source.Size = UDim2.new(1, -40, 0, 10000)
        Source.ZIndex = 3
        Source.ClearTextOnFocus = false
        Source.Font = Enum.Font.Code
        Source.MultiLine = true
        Source.PlaceholderColor3 = Color3.new(0.8, 0.8, 0.8)
        Source.Text = ""
        Source.TextColor3 = Color3.new(1, 1, 1)
        Source.TextSize = 15
        Source.TextStrokeColor3 = Color3.new(1, 1, 1)
        Source.TextWrapped = true
        Source.TextXAlignment = Enum.TextXAlignment.Left
        Source.TextYAlignment = Enum.TextYAlignment.Top
        
        Comments.Name = "Comments"
        Comments.Parent = Source
        Comments.BackgroundColor3 = Color3.new(1, 1, 1)
        Comments.BackgroundTransparency = 1
        Comments.Size = UDim2.new(1, 0, 1, 0)
        Comments.ZIndex = 5
        Comments.Font = Enum.Font.Code
        Comments.Text = ""
        Comments.TextColor3 = Color3.new(0.231373, 0.784314, 0.231373)
        Comments.TextSize = 15
        Comments.TextXAlignment = Enum.TextXAlignment.Left
        Comments.TextYAlignment = Enum.TextYAlignment.Top
        
        Globals.Name = "Globals"
        Globals.Parent = Source
        Globals.BackgroundColor3 = Color3.new(1, 1, 1)
        Globals.BackgroundTransparency = 1
        Globals.Size = UDim2.new(1, 0, 1, 0)
        Globals.ZIndex = 5
        Globals.Font = Enum.Font.Code
        Globals.Text = ""
        Globals.TextColor3 = Color3.new(0.517647, 0.839216, 0.968628)
        Globals.TextSize = 15
        Globals.TextXAlignment = Enum.TextXAlignment.Left
        Globals.TextYAlignment = Enum.TextYAlignment.Top
        
        Keywords.Name = "Keywords"
        Keywords.Parent = Source
        Keywords.BackgroundColor3 = Color3.new(1, 1, 1)
        Keywords.BackgroundTransparency = 1
        Keywords.Size = UDim2.new(1, 0, 1, 0)
        Keywords.ZIndex = 5
        Keywords.Font = Enum.Font.Code
        Keywords.Text = ""
        Keywords.TextColor3 = Color3.new(0.972549, 0.427451, 0.486275)
        Keywords.TextSize = 15
        Keywords.TextXAlignment = Enum.TextXAlignment.Left
        Keywords.TextYAlignment = Enum.TextYAlignment.Top
        
        RemoteHighlight.Name = "RemoteHighlight"
        RemoteHighlight.Parent = Source
        RemoteHighlight.BackgroundColor3 = Color3.new(1, 1, 1)
        RemoteHighlight.BackgroundTransparency = 1
        RemoteHighlight.Size = UDim2.new(1, 0, 1, 0)
        RemoteHighlight.ZIndex = 5
        RemoteHighlight.Font = Enum.Font.Code
        RemoteHighlight.Text = ""
        RemoteHighlight.TextColor3 = Color3.new(0, 0.568627, 1)
        RemoteHighlight.TextSize = 15
        RemoteHighlight.TextXAlignment = Enum.TextXAlignment.Left
        RemoteHighlight.TextYAlignment = Enum.TextYAlignment.Top
        
        Strings.Name = "Strings"
        Strings.Parent = Source
        Strings.BackgroundColor3 = Color3.new(1, 1, 1)
        Strings.BackgroundTransparency = 1
        Strings.Size = UDim2.new(1, 0, 1, 0)
        Strings.ZIndex = 5
        Strings.Font = Enum.Font.Code
        Strings.Text = ""
        Strings.TextColor3 = Color3.new(0.678431, 0.945098, 0.584314)
        Strings.TextSize = 15
        Strings.TextXAlignment = Enum.TextXAlignment.Left
        Strings.TextYAlignment = Enum.TextYAlignment.Top
        
        Tokens.Name = "Tokens"
        Tokens.Parent = Source
        Tokens.BackgroundColor3 = Color3.new(1, 1, 1)
        Tokens.BackgroundTransparency = 1
        Tokens.Size = UDim2.new(1, 0, 1, 0)
        Tokens.ZIndex = 5
        Tokens.Font = Enum.Font.Code
        Tokens.Text = ""
        Tokens.TextColor3 = Color3.new(1, 1, 1)
        Tokens.TextSize = 15
        Tokens.TextXAlignment = Enum.TextXAlignment.Left
        Tokens.TextYAlignment = Enum.TextYAlignment.Top
        
        Numbers.Name = "Numbers"
        Numbers.Parent = Source
        Numbers.BackgroundColor3 = Color3.new(1, 1, 1)
        Numbers.BackgroundTransparency = 1
        Numbers.Size = UDim2.new(1, 0, 1, 0)
        Numbers.ZIndex = 4
        Numbers.Font = Enum.Font.Code
        Numbers.Text = ""
        Numbers.TextColor3 = Color3.new(1, 0.776471, 0)
        Numbers.TextSize = 15
        Numbers.TextXAlignment = Enum.TextXAlignment.Left
        Numbers.TextYAlignment = Enum.TextYAlignment.Top
        
        Info.Name = "Info"
        Info.Parent = Source
        Info.BackgroundColor3 = Color3.new(1, 1, 1)
        Info.BackgroundTransparency = 1
        Info.Size = UDim2.new(1, 0, 1, 0)
        Info.ZIndex = 5
        Info.Font = Enum.Font.Code
        Info.Text = ""
        Info.TextColor3 = Color3.new(0, 0.635294, 1)
        Info.TextSize = 15
        Info.TextXAlignment = Enum.TextXAlignment.Left
        Info.TextYAlignment = Enum.TextYAlignment.Top
        
        Lines.Name = "Lines"
        Lines.Parent = ScrollingFrame
        Lines.BackgroundColor3 = Color3.new(1, 1, 1)
        Lines.BackgroundTransparency = 1
        Lines.BorderSizePixel = 0
        Lines.Size = UDim2.new(0, 40, 0, 10000)
        Lines.ZIndex = 4
        Lines.Font = Enum.Font.Code
        Lines.Text = "1\n"
        Lines.TextColor3 = Color3.new(1, 1, 1)
        Lines.TextSize = 15
        Lines.TextWrapped = true
        Lines.TextYAlignment = Enum.TextYAlignment.Top
        
        ColorPicker.Name = "ColorPicker"
        ColorPicker.Parent = Prefabs
        ColorPicker.BackgroundColor3 = Color3.new(1, 1, 1)
        ColorPicker.BackgroundTransparency = 1
        ColorPicker.Size = UDim2.new(0, 180, 0, 110)
        ColorPicker.Image = "rbxassetid://2851929490"
        ColorPicker.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
        ColorPicker.ScaleType = Enum.ScaleType.Slice
        ColorPicker.SliceCenter = Rect.new(4, 4, 4, 4)
        
        Palette.Name = "Palette"
        Palette.Parent = ColorPicker
        Palette.BackgroundColor3 = Color3.new(1, 1, 1)
        Palette.BackgroundTransparency = 1
        Palette.Position = UDim2.new(0.0500000007, 0, 0.0500000007, 0)
        Palette.Size = UDim2.new(0, 100, 0, 100)
        Palette.Image = "rbxassetid://698052001"
        Palette.ScaleType = Enum.ScaleType.Slice
        Palette.SliceCenter = Rect.new(4, 4, 4, 4)
        
        Indicator_3.Name = "Indicator"
        Indicator_3.Parent = Palette
        Indicator_3.BackgroundColor3 = Color3.new(1, 1, 1)
        Indicator_3.BackgroundTransparency = 1
        Indicator_3.Size = UDim2.new(0, 5, 0, 5)
        Indicator_3.ZIndex = 2
        Indicator_3.Image = "rbxassetid://2851926732"
        Indicator_3.ImageColor3 = Color3.new(0, 0, 0)
        Indicator_3.ScaleType = Enum.ScaleType.Slice
        Indicator_3.SliceCenter = Rect.new(12, 12, 12, 12)
        
        Sample.Name = "Sample"
        Sample.Parent = ColorPicker
        Sample.BackgroundColor3 = Color3.new(1, 1, 1)
        Sample.BackgroundTransparency = 1
        Sample.Position = UDim2.new(0.800000012, 0, 0.0500000007, 0)
        Sample.Size = UDim2.new(0, 25, 0, 25)
        Sample.Image = "rbxassetid://2851929490"
        Sample.ScaleType = Enum.ScaleType.Slice
        Sample.SliceCenter = Rect.new(4, 4, 4, 4)
        
        Saturation.Name = "Saturation"
        Saturation.Parent = ColorPicker
        Saturation.BackgroundColor3 = Color3.new(1, 1, 1)
        Saturation.Position = UDim2.new(0.649999976, 0, 0.0500000007, 0)
        Saturation.Size = UDim2.new(0, 15, 0, 100)
        Saturation.Image = "rbxassetid://3641079629"
        
        Indicator_4.Name = "Indicator"
        Indicator_4.Parent = Saturation
        Indicator_4.BackgroundColor3 = Color3.new(1, 1, 1)
        Indicator_4.BorderSizePixel = 0
        Indicator_4.Size = UDim2.new(0, 20, 0, 2)
        Indicator_4.ZIndex = 2
        
        Switch.Name = "Switch"
        Switch.Parent = Prefabs
        Switch.BackgroundColor3 = Color3.new(1, 1, 1)
        Switch.BackgroundTransparency = 1
        Switch.BorderSizePixel = 0
        Switch.Position = UDim2.new(0.229411766, 0, 0.20714286, 0)
        Switch.Size = UDim2.new(0, 20, 0, 20)
        Switch.ZIndex = 2
        Switch.Font = Enum.Font.Garamond
        Switch.Text = ""
        Switch.TextColor3 = Color3.new(1, 1, 1)
        Switch.TextSize = 18
        
        TextButton_Roundify_4px_4.Name = "TextButton_Roundify_4px"
        TextButton_Roundify_4px_4.Parent = Switch
        TextButton_Roundify_4px_4.BackgroundColor3 = Color3.new(1, 1, 1)
        TextButton_Roundify_4px_4.BackgroundTransparency = 1
        TextButton_Roundify_4px_4.Size = UDim2.new(1, 0, 1, 0)
        TextButton_Roundify_4px_4.Image = "rbxassetid://2851929490"
        TextButton_Roundify_4px_4.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
        TextButton_Roundify_4px_4.ImageTransparency = 0.5
        TextButton_Roundify_4px_4.ScaleType = Enum.ScaleType.Slice
        TextButton_Roundify_4px_4.SliceCenter = Rect.new(4, 4, 4, 4)
        
        Title_3.Name = "Title"
        Title_3.Parent = Switch
        Title_3.BackgroundColor3 = Color3.new(1, 1, 1)
        Title_3.BackgroundTransparency = 1
        Title_3.Position = UDim2.new(1.20000005, 0, 0, 0)
        Title_3.Size = UDim2.new(0, 20, 0, 20)
        Title_3.Font = Enum.Font.Garamond
        Title_3.Text = "Switch"
        Title_3.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
        Title_3.TextSize = 17
        Title_3.TextXAlignment = Enum.TextXAlignment.Left
        
        Button_2.Name = "Button"
        Button_2.Parent = Prefabs
        Button_2.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
        Button_2.BackgroundTransparency = 1
        Button_2.BorderSizePixel = 0
        Button_2.Size = UDim2.new(0, 91, 0, 20)
        Button_2.ZIndex = 2
        Button_2.Font = Enum.Font.Garamond
        Button_2.TextColor3 = Color3.new(1, 1, 1)
        Button_2.TextSize = 17
        
        TextButton_Roundify_4px_5.Name = "TextButton_Roundify_4px"
        TextButton_Roundify_4px_5.Parent = Button_2
        TextButton_Roundify_4px_5.BackgroundColor3 = Color3.new(1, 1, 1)
        TextButton_Roundify_4px_5.BackgroundTransparency = 1
        TextButton_Roundify_4px_5.Size = UDim2.new(1, 0, 1, 0)
        TextButton_Roundify_4px_5.Image = "rbxassetid://2851929490"
        TextButton_Roundify_4px_5.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
        TextButton_Roundify_4px_5.ScaleType = Enum.ScaleType.Slice
        TextButton_Roundify_4px_5.SliceCenter = Rect.new(4, 4, 4, 4)
        
        DropdownButton.Name = "DropdownButton"
        DropdownButton.Parent = Prefabs
        DropdownButton.BackgroundColor3 = Color3.new(0.129412, 0.133333, 0.141176)
        DropdownButton.BorderSizePixel = 0
        DropdownButton.Size = UDim2.new(1, 0, 0, 20)
        DropdownButton.ZIndex = 3
        DropdownButton.Font = Enum.Font.Garamond
        DropdownButton.Text = "      Button"
        DropdownButton.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
        DropdownButton.TextSize = 17
        DropdownButton.TextXAlignment = Enum.TextXAlignment.Left
        
        Keybind.Name = "Keybind"
        Keybind.Parent = Prefabs
        Keybind.BackgroundColor3 = Color3.new(1, 1, 1)
        Keybind.BackgroundTransparency = 1
        Keybind.Size = UDim2.new(0, 200, 0, 20)
        Keybind.Image = "rbxassetid://2851929490"
        Keybind.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
        Keybind.ScaleType = Enum.ScaleType.Slice
        Keybind.SliceCenter = Rect.new(4, 4, 4, 4)
        
        Title_4.Name = "Title"
        Title_4.Parent = Keybind
        Title_4.BackgroundColor3 = Color3.new(1, 1, 1)
        Title_4.BackgroundTransparency = 1
        Title_4.Size = UDim2.new(0, 0, 1, 0)
        Title_4.Font = Enum.Font.Garamond
        Title_4.Text = "Keybind"
        Title_4.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
        Title_4.TextSize = 17
        Title_4.TextXAlignment = Enum.TextXAlignment.Left
        
        Input.Name = "Input"
        Input.Parent = Keybind
        Input.BackgroundColor3 = Color3.new(1, 1, 1)
        Input.BackgroundTransparency = 1
        Input.BorderSizePixel = 0
        Input.Position = UDim2.new(1, -85, 0, 2)
        Input.Size = UDim2.new(0, 80, 1, -4)
        Input.ZIndex = 2
        Input.Font = Enum.Font.Garamond
        Input.Text = "RShift"
        Input.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
        Input.TextSize = 12
        Input.TextWrapped = true
        
        Input_Roundify_4px.Name = "Input_Roundify_4px"
        Input_Roundify_4px.Parent = Input
        Input_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
        Input_Roundify_4px.BackgroundTransparency = 1
        Input_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
        Input_Roundify_4px.Image = "rbxassetid://2851929490"
        Input_Roundify_4px.ImageColor3 = Color3.new(0.290196, 0.294118, 0.313726)
        Input_Roundify_4px.ScaleType = Enum.ScaleType.Slice
        Input_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)
        
        Windows.Name = "Windows"
        Windows.Parent = imgui
        Windows.BackgroundColor3 = Color3.new(1, 1, 1)
        Windows.BackgroundTransparency = 1
        Windows.Position = UDim2.new(0, 20, 0, 20)
        Windows.Size = UDim2.new(1, 20, 1, -20)
        
        --[[ Script ]]--
        script.Parent = imgui
        
        local UIS = game:GetService("UserInputService")
        local TweenService = game:GetService("TweenService")
        local RS = game:GetService("RunService")
        local ps = game:GetService("Players")
        
        local p = ps.LocalPlayer
        local mouse = p:GetMouse()
        
        local Prefabs = script.Parent:WaitForChild("Prefabs")
        local Windows = script.Parent:FindFirstChild("Windows")
        
        local checks = {
        	["binding"] = false,
        }
        
        UIS.InputBegan:Connect(function(input, gameProcessed)
        	if input.KeyCode == ((typeof(ui_options.toggle_key) == "EnumItem") and ui_options.toggle_key or Enum.KeyCode.RightShift) then
        		if script.Parent then
        			if not checks.binding then
        				script.Parent.Enabled = not script.Parent.Enabled
        			end
        		end
        	end
        end)
        
        local function Resize(part, new, _delay)
        	_delay = _delay or 0.5
        	local tweenInfo = TweenInfo.new(_delay, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        	local tween = TweenService:Create(part, tweenInfo, new)
        	tween:Play()
        end
        
        local function rgbtohsv(r, g, b) -- idk who made this function, but thanks
        	r, g, b = r / 255, g / 255, b / 255
        	local max, min = math.max(r, g, b), math.min(r, g, b)
        	local h, s, v
        	v = max
        
        	local d = max - min
        	if max == 0 then
        		s = 0
        	else
        		s = d / max
        	end
        
        	if max == min then
        		h = 0
        	else
        		if max == r then
        			h = (g - b) / d
        			if g < b then
        				h = h + 6
        			end
        		elseif max == g then
        			h = (b - r) / d + 2
        		elseif max == b then
        			h = (r - g) / d + 4
        		end
        		h = h / 6
        	end
        
        	return h, s, v
        end
        
        local function hasprop(object, prop)
        	local a, b = pcall(function()
        		return object[tostring(prop)]
        	end)
        	if a then
        		return b
        	end
        end
        
        local function gNameLen(obj)
        	return obj.TextBounds.X + 15
        end
        
        local function gMouse()
        	return Vector2.new(UIS:GetMouseLocation().X + 1, UIS:GetMouseLocation().Y - 35)
        end
        
        local function ripple(button, x, y)
        	spawn(function()
        		button.ClipsDescendants = true
        
        		local circle = Prefabs:FindFirstChild("Circle"):Clone()
        
        		circle.Parent = button
        		circle.ZIndex = 1000
        
        		local new_x = x - circle.AbsolutePosition.X
        		local new_y = y - circle.AbsolutePosition.Y
        		circle.Position = UDim2.new(0, new_x, 0, new_y)
        
        		local size = 0
        		if button.AbsoluteSize.X > button.AbsoluteSize.Y then
        			size = button.AbsoluteSize.X * 1.5
        		elseif button.AbsoluteSize.X < button.AbsoluteSize.Y then
        			size = button.AbsoluteSize.Y * 1.5
        		elseif button.AbsoluteSize.X == button.AbsoluteSize.Y then
        			size = button.AbsoluteSize.X * 1.5
        		end
        
        		circle:TweenSizeAndPosition(UDim2.new(0, size, 0, size), UDim2.new(0.5, -size / 2, 0.5, -size / 2), "Out", "Quad", 0.5, false, nil)
        		Resize(circle, {ImageTransparency = 1}, 0.5)
        
        		wait(0.5)
        		circle:Destroy()
        	end)
        end
        
        -- Horizontal scrolling tab strip
        pcall(function()
            UIListLayout.FillDirection = Enum.FillDirection.Horizontal
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Wraps = false
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
            UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
            UIListLayout.Parent = TabButtons
        end)
        
        local windows = 0
        local library = {}
        
        -- Keep the tab strip's horizontal canvas in sync with its contents.
        pcall(function()
            UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                TabButtons.CanvasSize = UDim2.new(0, UIListLayout.AbsoluteContentSize.X + 8, 0, 0)
            end)
        end)
        
        local function format_windows()
        	local ull = Prefabs:FindFirstChild("UIListLayout"):Clone()
        	ull.Parent = Windows
        	local data = {}
        
        	for i,v in next, Windows:GetChildren() do
        		if not (v:IsA("UIListLayout")) then
        			data[v] = v.AbsolutePosition
        		end
        	end
        
        	ull:Destroy()
        
        	for i,v in next, data do
        		i.Position = UDim2.new(0, v.X, 0, v.Y)
        	end
        end
        
        function library:FormatWindows()
        	format_windows()
        end
        
        function library:AddWindow(title, options)
        	windows = windows + 1
        	local dropdown_open = false
        	title = tostring(title or "ARGUS | PRIVATE KILLER")
        	options = (typeof(options) == "table") and options or ui_options
        	options.tween_time = 0.1
        	-- ensure title_bar_color exists (falls back to black)
        	if options.title_bar_color == nil then
        		options.title_bar_color = ui_options.title_bar_color or Color3.fromRGB(0, 0, 0)
        	end
        
        	local Window = Prefabs:FindFirstChild("Window"):Clone()
        	Window.Parent = Windows
        	Window:FindFirstChild("Title").Text = title
        	Window.Size = UDim2.new(0, options.min_size.X, 0, options.min_size.Y)
        	Window.ZIndex = Window.ZIndex + (windows * 10)
        
        	do -- Altering Window Color
        		local Title = Window:FindFirstChild("Title")
        		local Bar = Window:FindFirstChild("Bar")
        		local Base = Bar:FindFirstChild("Base")
        		local Top = Bar:FindFirstChild("Top")
        		local SplitFrame = Window:FindFirstChild("TabSelection"):FindFirstChild("Frame")
        		local Toggle = Bar:FindFirstChild("Toggle")
        		local Skull = Window:FindFirstChild("Skull")
        
        		spawn(function()
        			while true do
        				-- Title bar uses dedicated title_bar_color (changeable)
        				local tbc = options.title_bar_color or Color3.fromRGB(0, 0, 0)
        				Bar.BackgroundColor3 = tbc
        				Base.BackgroundColor3 = tbc
        				Base.ImageColor3 = tbc
        				Top.ImageColor3 = tbc
        				SplitFrame.BackgroundColor3 = options.main_color
        
        				if Skull then
        					Skull.ImageColor3 = Color3.fromRGB(255, 255, 255)
        				end
        
        				RS.Heartbeat:Wait()
        			end
        		end)
        
        	end
        
        	local Resizer = Window:WaitForChild("Resizer")
        
        	local window_data = {}
        	Window.Draggable = true
        
        	do -- Resize Window
        		local oldIcon = mouse.Icon
        		local Entered = false
        		Resizer.MouseEnter:Connect(function()
        			Window.Draggable = false
        			if options.can_resize then
        				oldIcon = mouse.Icon
        				-- mouse.Icon = "http://www.roblox.com/asset?id=4745131330"
        			end
        			Entered = true
        		end)
        
        		Resizer.MouseLeave:Connect(function()
        			Entered = false
        			if options.can_resize then
        				mouse.Icon = oldIcon
        			end
        			Window.Draggable = true
        		end)
        
        		local Held = false
        		UIS.InputBegan:Connect(function(inputObject)
        			if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
        				Held = true
        
        				spawn(function() -- Loop check
        					if Entered and Resizer.Active and options.can_resize then
        						while Held and Resizer.Active do
        
        local mouse_location = gMouse()
        							local x = mouse_location.X - Window.AbsolutePosition.X
        							local y = mouse_location.Y - Window.AbsolutePosition.Y
        
        							--
        							if x >= options.min_size.X and y >= options.min_size.Y then
        								Resize(Window, {Size = UDim2.new(0, x, 0, y)}, options.tween_time)
        							elseif x >= options.min_size.X then
        								Resize(Window, {Size = UDim2.new(0, x, 0, options.min_size.Y)}, options.tween_time)
        							elseif y >= options.min_size.Y then
        								Resize(Window, {Size = UDim2.new(0, options.min_size.X, 0, y)}, options.tween_time)
        							else
        								Resize(Window, {Size = UDim2.new(0, options.min_size.X, 0, options.min_size.Y)}, options.tween_time)
        							end
        
        							RS.Heartbeat:Wait()
        						end
        					end
        				end)
        			end
        		end)
        		UIS.InputEnded:Connect(function(inputObject)
        			if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
        				Held = false
        			end
        		end)
        	end
        
        	do -- [Open / Close] Window
        		local open_close = Window:FindFirstChild("Bar"):FindFirstChild("Toggle")
        		local open = true
        		local canopen = true
        
        		local oldwindowdata = {}
        		local oldy = Window.AbsoluteSize.Y
        		open_close.MouseButton1Click:Connect(function()
        			if canopen then
        				canopen = false
        
        				if open then
        					-- Close
        
        					oldwindowdata = {}
        					for i,v in next, Window:FindFirstChild("Tabs"):GetChildren() do
        						oldwindowdata[v] = v.Visible
        						v.Visible = false
        					end
        
        					Resizer.Active = false
        
        					oldy = Window.AbsoluteSize.Y
        					Resize(open_close, {Rotation = 0}, options.tween_time)
        					Resize(Window, {Size = UDim2.new(0, Window.AbsoluteSize.X, 0, 31)}, options.tween_time)
        					open_close.Parent:FindFirstChild("Base").Transparency = 1
        
        				else
        					-- Open
        
        					for i,v in next, oldwindowdata do
        						i.Visible = v
        					end
        
        					Resizer.Active = true
        
        					Resize(open_close, {Rotation = 90}, options.tween_time)
        					Resize(Window, {Size = UDim2.new(0, Window.AbsoluteSize.X, 0, oldy)}, options.tween_time)
        					open_close.Parent:FindFirstChild("Base").Transparency = 0
        
        				end
        
        				open = not open
        				wait(options.tween_time)
        				canopen = true
        
        			end
        		end)
        	end
        
        	do -- UI Elements
        		local tabs = Window:FindFirstChild("Tabs")
        		local tab_selection = Window:FindFirstChild("TabSelection")
        		local tab_buttons = tab_selection:FindFirstChild("TabButtons")
        
        		do -- Add Tab
        			function window_data:AddTab(tab_name)
        				local tab_data = {}
        				tab_name = tostring(tab_name or "New Tab")
        				tab_selection.Visible = true
        
        				local new_button = Prefabs:FindFirstChild("TabButton"):Clone()
        				new_button.Parent = tab_buttons
        				new_button.Text = tab_name
        				new_button.Size = UDim2.new(0, gNameLen(new_button), 0, 20)
        				new_button.ZIndex = new_button.ZIndex + (windows * 10)
        				new_button:GetChildren()[1].ZIndex = new_button:GetChildren()[1].ZIndex + (windows * 10)
        
        				local new_tab = Prefabs:FindFirstChild("Tab"):Clone()
        				new_tab.Parent = tabs
        				new_tab.ZIndex = new_tab.ZIndex + (windows * 10)
        
        				local function show()
        					if dropdown_open then return end
        					for i, v in next, tab_buttons:GetChildren() do
        						if not (v:IsA("UIListLayout")) then
        							v:GetChildren()[1].ImageColor3 = Color3.fromRGB(52, 53, 56)
        							Resize(v, {Size = UDim2.new(0, v.AbsoluteSize.X, 0, 20)}, options.tween_time)
        						end
        					end
        					for i, v in next, tabs:GetChildren() do
        						v.Visible = false
        					end
        
        					Resize(new_button, {Size = UDim2.new(0, new_button.AbsoluteSize.X, 0, 25)}, options.tween_time)
        					new_button:GetChildren()[1].ImageColor3 = Color3.fromRGB(73, 75, 79)
        					new_tab.Visible = true
        				end
        
        				new_button.MouseButton1Click:Connect(function()
        					show()
        				end)
        
        				function tab_data:Show()
        					show()
        				end
        
        				do -- Tab Elements
        
        					function tab_data:AddLabel(label_text) -- [Label]
        						label_text = tostring(label_text or "New Label")
        
        						local label = Prefabs:FindFirstChild("Label"):Clone()
        
        						label.Parent = new_tab
        						label.Text = label_text
        						label.Size = UDim2.new(0, gNameLen(label), 0, 20)
        						label.ZIndex = label.ZIndex + (windows * 10)
        
        						return label
        					end
        
        					function tab_data:AddButton(button_text, callback) -- [Button]
        						button_text = tostring(button_text or "New Button")
        						callback = typeof(callback) == "function" and callback or function()end
        
        						local button = Prefabs:FindFirstChild("Button"):Clone()
        
        						button.Parent = new_tab
        						button.Text = button_text
        						button.Size = UDim2.new(0, gNameLen(button), 0, 20)
        						button.ZIndex = button.ZIndex + (windows * 10)
        						button:GetChildren()[1].ZIndex = button:GetChildren()[1].ZIndex + (windows * 10)
        
        						spawn(function()
        							while true do
        								if button and button:GetChildren()[1] then
        									button:GetChildren()[1].ImageColor3 = options.main_color
        								end
        								RS.Heartbeat:Wait()
        							end
        						end)
        
        						button.MouseButton1Click:Connect(function()
        							ripple(button, mouse.X, mouse.Y)
        							pcall(callback)
        						end)
        
        						return button
        					end
        
        					function tab_data:AddSwitch(switch_text, callback) -- [Switch]
        						local switch_data = {}
        
        						switch_text = tostring(switch_text or "New Switch")
        						callback = typeof(callback) == "function" and callback or function()end
        
        						local switch = Prefabs:FindFirstChild("Switch"):Clone()
        
        						switch.Parent = new_tab
        						switch:FindFirstChild("Title").Text = switch_text
        
        						switch:FindFirstChild("Title").ZIndex = switch:FindFirstChild("Title").ZIndex + (windows * 10)
        						switch.ZIndex = switch.ZIndex + (windows * 10)
        						switch:GetChildren()[1].ZIndex = switch:GetChildren()[1].ZIndex + (windows * 10)
        
        						spawn(function()
        							while true do
        								if switch and switch:GetChildren()[1] then
        									switch:GetChildren()[1].ImageColor3 = options.main_color
        								end
        								RS.Heartbeat:Wait()
        							end
        						end)
        
        						local toggled = false
        						switch.MouseButton1Click:Connect(function()
        							toggled = not toggled
        							switch.Text = toggled and utf8.char(10003) or ""
        							pcall(callback, toggled)
        						end)
        
        						function switch_data:Set(bool)
        							toggled = (typeof(bool) == "boolean") and bool or false
        							switch.Text = toggled and utf8.char(10003) or ""
        							pcall(callback,toggled)
        						end
        
        						return switch_data, switch
        					end
        
        					function tab_data:AddTextBox(textbox_text, callback, textbox_options)
        						textbox_text = tostring(textbox_text or "New TextBox")
        						callback = typeof(callback) == "function" and callback or function()end
        						textbox_options = typeof(textbox_options) == "table" and textbox_options or {["clear"] = true}
        						textbox_options = {
        							["clear"] = ((textbox_options.clear) == true)
        						}
        
        						local textbox = Prefabs:FindFirstChild("TextBox"):Clone()
        
        						textbox.Parent = new_tab
        						textbox.PlaceholderText = textbox_text
        						textbox.ZIndex = textbox.ZIndex + (windows * 10)
        						textbox:GetChildren()[1].ZIndex = textbox:GetChildren()[1].ZIndex + (windows * 10)
        
        						textbox.FocusLost:Connect(function(ep)
        							if ep then
        								if #textbox.Text > 0 then
        									pcall(callback, textbox.Text)
        									if textbox_options.clear then
        										textbox.Text = ""
        									end
        								end
        							end
        						end)
        
        						return textbox
        					end
        
        					function tab_data:AddSlider(slider_text, callback, slider_options)
        						local slider_data = {}
        
        						slider_text = tostring(slider_text or "New Slider")
        						callback = typeof(callback) == "function" and callback or function()end
        						slider_options = typeof(slider_options) == "table" and slider_options or {}
        						slider_options = {
        							["min"] = slider_options.min or 0,
        							["max"] = slider_options.max or 100,
        							["readonly"] = slider_options.readonly or false,
        						}
        
        						local slider = Prefabs:FindFirstChild("Slider"):Clone()
        
        						slider.Parent = new_tab
        						slider.ZIndex = slider.ZIndex + (windows * 10)
        
        						local title = slider:FindFirstChild("Title")
        						local indicator = slider:FindFirstChild("Indicator")
        						local value = slider:FindFirstChild("Value")
        						title.ZIndex = title.ZIndex + (windows * 10)
        						indicator.ZIndex = indicator.ZIndex + (windows * 10)
        						value.ZIndex = value.ZIndex + (windows * 10)
        
        						title.Text = slider_text
        
        						do -- Slider Math
        							local Entered = false
        							slider.MouseEnter:Connect(function()
        								Entered = true
        								Window.Draggable = false
        							end)
        							slider.MouseLeave:Connect(function()
        								Entered = false
        								Window.Draggable = true
        							end)
        
        							local Held = false
        
        UIS.InputBegan:Connect(function(inputObject)
        								if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
        									Held = true
        
        									spawn(function() -- Loop check
        										if Entered and not slider_options.readonly then
        											while Held and (not dropdown_open) do
        												local mouse_location = gMouse()
        												local x = (slider.AbsoluteSize.X - (slider.AbsoluteSize.X - ((mouse_location.X - slider.AbsolutePosition.X)) + 1)) / slider.AbsoluteSize.X
        
        												local min = 0
        												local max = 1
        
        												local size = min
        												if x >= min and x <= max then
        													size = x
        												elseif x < min then
        													size = min
        												elseif x > max then
        													size = max
        												end
        
        												Resize(indicator, {Size = UDim2.new(size or min, 0, 0, 20)}, options.tween_time)
        												local p = math.floor((size or min) * 100)
        
        												local maxv = slider_options.max
        												local minv = slider_options.min
        												local diff = maxv - minv
        
        												local sel_value = math.floor(((diff / 100) * p) + minv)
        
        												value.Text = tostring(sel_value)
        												pcall(callback, sel_value)
        
        												RS.Heartbeat:Wait()
        											end
        										end
        									end)
        								end
        							end)
        							UIS.InputEnded:Connect(function(inputObject)
        								if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
        									Held = false
        								end
        							end)
        
        							function slider_data:Set(new_value)
        								new_value = tonumber(new_value) or 0
        								new_value = (((new_value >= 0 and new_value <= 100) and new_value) / 100)
        
        								Resize(indicator, {Size = UDim2.new(new_value or 0, 0, 0, 20)}, options.tween_time)
        								local p = math.floor((new_value or 0) * 100)
        
        								local maxv = slider_options.max
        								local minv = slider_options.min
        								local diff = maxv - minv
        
        								local sel_value = math.floor(((diff / 100) * p) + minv)
        
        								value.Text = tostring(sel_value)
        								pcall(callback, sel_value)
        							end
        
        							slider_data:Set(slider_options["min"])
        						end
        
        						return slider_data, slider
        					end
        
        					function tab_data:AddKeybind(keybind_name, callback, keybind_options)
        						local keybind_data = {}
        
        						keybind_name = tostring(keybind_name or "New Keybind")
        						callback = typeof(callback) == "function" and callback or function()end
        						keybind_options = typeof(keybind_options) == "table" and keybind_options or {}
        						keybind_options = {
        							["standard"] = keybind_options.standard or Enum.KeyCode.RightShift,
        						}
        
        						local keybind = Prefabs:FindFirstChild("Keybind"):Clone()
        						local input = keybind:FindFirstChild("Input")
        						local title = keybind:FindFirstChild("Title")
        						keybind.ZIndex = keybind.ZIndex + (windows * 10)
        						input.ZIndex = input.ZIndex + (windows * 10)
        						input:GetChildren()[1].ZIndex = input:GetChildren()[1].ZIndex + (windows * 10)
        						title.ZIndex = title.ZIndex + (windows * 10)
        
        						keybind.Parent = new_tab
        						title.Text = "  " .. keybind_name
        						keybind.Size = UDim2.new(0, gNameLen(title) + 80, 0, 20)
        
        						local shortkeys = { -- thanks to stroketon for helping me out with this
        							RightControl = 'RightCtrl',
        							LeftControl = 'LeftCtrl',
        							LeftShift = 'LShift',
        							RightShift = 'RShift',
        							MouseButton1 = "Mouse1",
        							MouseButton2 = "Mouse2"
        						}
        
        						local keybind = keybind_options.standard
        
        						function keybind_data:SetKeybind(Keybind)
        							local key = shortkeys[Keybind.Name] or Keybind.Name
        							input.Text = key
        							keybind = Keybind
        						end
        
        						UIS.InputBegan:Connect(function(a, b)
        							if checks.binding then
        								spawn(function()
        									wait()
        									checks.binding = false
        								end)
        								return
        							end
        							if a.KeyCode == keybind and not b then
        								pcall(callback, keybind)
        							end
        						end)
        
        						keybind_data:SetKeybind(keybind_options.standard)
        
        						input.MouseButton1Click:Connect(function()
        							if checks.binding then return end
        							input.Text = "..."
        							checks.binding = true
        							local a, b = UIS.InputBegan:Wait()
        							keybind_data:SetKeybind(a.KeyCode)
        						end)
        
        						return keybind_data, keybind
        					end
        
        					function tab_data:AddDropdown(dropdown_name, callback)
        						local dropdown_data = {}
        						dropdown_name = tostring(dropdown_name or "New Dropdown")
        						callback = typeof(callback) == "function" and callback or function()end
        
        						local dropdown = Prefabs:FindFirstChild("Dropdown"):Clone()
        						local box = dropdown:FindFirstChild("Box")
        						local objects = box:FindFirstChild("Objects")
        						local indicator = dropdown:FindFirstChild("Indicator")
        						dropdown.ZIndex = dropdown.ZIndex + (windows * 10)
        						box.ZIndex = box.ZIndex + (windows * 10)
        						objects.ZIndex = objects.ZIndex + (windows * 10)
        						indicator.ZIndex = indicator.ZIndex + (windows * 10)
        						dropdown:GetChildren()[3].ZIndex = dropdown:GetChildren()[3].ZIndex + (windows * 10)
        
        						dropdown.Parent = new_tab
        						dropdown.Text = "      " .. dropdown_name
        						box.Size = UDim2.new(1, 0, 0, 0)
        
        						local open = false
        						dropdown.MouseButton1Click:Connect(function()
        							open = not open
        
        							local len = (#objects:GetChildren() - 1) * 20
        							if #objects:GetChildren() - 1 >= 10 then
        								len = 10 * 20
        								objects.CanvasSize = UDim2.new(0, 0, (#objects:GetChildren() - 1) * 0.1, 0)
        							end
        
        							if open then -- Open
        								if dropdown_open then return end
        								dropdown_open = true
        								Resize(box, {Size = UDim2.new(1, 0, 0, len)}, options.tween_time)
        								Resize(indicator, {Rotation = 90}, options.tween_time)
        							else -- Close
        								dropdown_open = false
        								Resize(box, {Size = UDim2.new(1, 0, 0, 0)}, options.tween_time)
        								Resize(indicator, {Rotation = -90}, options.tween_time)
        							end
        
        						end)
        
        						function dropdown_data:Add(n)
        							local object_data = {}
        							n = tostring(n or "New Object")
        
        							local object = Prefabs:FindFirstChild("DropdownButton"):Clone()
        
        							object.Parent = objects
        							object.Text = n
        							object.ZIndex = object.ZIndex + (windows * 10)
        
        							object.MouseEnter:Connect(function()
        								object.BackgroundColor3 = options.main_color
        							end)
        							object.MouseLeave:Connect(function()
        								object.BackgroundColor3 = Color3.fromRGB(33, 34, 36)
        							end)
        
        							if open then
        								local len = (#objects:GetChildren() - 1) * 20
        								if #objects:GetChildren() - 1 >= 10 then
        									len = 10 * 20
        									objects.CanvasSize = UDim2.new(0, 0, (#objects:GetChildren() - 1) * 0.1, 0)
        								end
        								Resize(box, {Size = UDim2.new(1, 0, 0, len)}, options.tween_time)
        							end
        
        							object.MouseButton1Click:Connect(function()
        								if dropdown_open then
        									dropdown.Text = "      [ " .. n .. " ]"
        									dropdown_open = false
        									open = false
        									Resize(box, {Size = UDim2.new(1, 0, 0, 0)}, options.tween_time)
        									Resize(indicator, {Rotation = -90}, options.tween_time)
        									pcall(callback, n)
        								end
        							end)
        
        							function object_data:Remove()
        								object:Destroy()
        							end
        
        							return object, object_data
        						end
        
        						return dropdown_data, dropdown
        					end
        
        					function tab_data:AddColorPicker(callback)
        						local color_picker_data = {}
        						callback = typeof(callback) == "function" and callback or function()end
        
        						local color_picker = Prefabs:FindFirstChild("ColorPicker"):Clone()
        
        						color_picker.Parent = new_tab
        						color_picker.ZIndex = color_picker.ZIndex + (windows * 10)
        
        						local palette = color_picker:FindFirstChild("Palette")
        						local sample = color_picker:FindFirstChild("Sample")
        						local saturation = color_picker:FindFirstChild("Saturation")
        						palette.ZIndex = palette.ZIndex + (windows * 10)
        						sample.ZIndex = sample.ZIndex + (windows * 10)
        						saturation.ZIndex = saturation.ZIndex + (windows * 10)
        
        						do -- Color Picker Math
        							local h = 0
        							local s = 1
        							local v = 1
        
        							local function update()
        								local color = Color3.fromHSV(h, s, v)
        								sample.ImageColor3 = color
        								saturation.ImageColor3 = Color3.fromHSV(h, 1, 1)
        								pcall(callback, color)
        							end
        
        							do
        								local color = Color3.fromHSV(h, s, v)
        								sample.ImageColor3 = color
        								saturation.ImageColor3 = Color3.fromHSV(h, 1, 1)
        							end
        
        local Entered1, Entered2 = false, false
        							palette.MouseEnter:Connect(function()
        								Window.Draggable = false
        								Entered1 = true
        							end)
        							palette.MouseLeave:Connect(function()
        								Window.Draggable = true
        								Entered1 = false
        							end)
        							saturation.MouseEnter:Connect(function()
        								Window.Draggable = false
        								Entered2 = true
        							end)
        							saturation.MouseLeave:Connect(function()
        								Window.Draggable = true
        								Entered2 = false
        							end)
        
        							local palette_indicator = palette:FindFirstChild("Indicator")
        							local saturation_indicator = saturation:FindFirstChild("Indicator")
        							palette_indicator.ZIndex = palette_indicator.ZIndex + (windows * 10)
        							saturation_indicator.ZIndex = saturation_indicator.ZIndex + (windows * 10)
        
        							local Held = false
        							UIS.InputBegan:Connect(function(inputObject)
        								if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
        									Held = true
        
        									spawn(function() -- Loop check
        										while Held and Entered1 and (not dropdown_open) do -- Palette
        											local mouse_location = gMouse()
        
        											local x = ((palette.AbsoluteSize.X - (mouse_location.X - palette.AbsolutePosition.X)) + 1)
        											local y = ((palette.AbsoluteSize.Y - (mouse_location.Y - palette.AbsolutePosition.Y)) + 1.5)
        
        											local color = Color3.fromHSV(x / 100, y / 100, 0)
        											h = x / 100
        											s = y / 100
        
        											Resize(palette_indicator, {Position = UDim2.new(0, math.abs(x - 100) - (palette_indicator.AbsoluteSize.X / 2), 0, math.abs(y - 100) - (palette_indicator.AbsoluteSize.Y / 2))}, options.tween_time)
        
        											update()
        											RS.Heartbeat:Wait()
        										end
        
        										while Held and Entered2 and (not dropdown_open) do -- Saturation
        											local mouse_location = gMouse()
        											local y = ((palette.AbsoluteSize.Y - (mouse_location.Y - palette.AbsolutePosition.Y)) + 1.5)
        											v = y / 100
        
        											Resize(saturation_indicator, {Position = UDim2.new(0, 0, 0, math.abs(y - 100))}, options.tween_time)
        
        											update()
        											RS.Heartbeat:Wait()
        										end
        									end)
        								end
        							end)
        							UIS.InputEnded:Connect(function(inputObject)
        								if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
        									Held = false
        								end
        							end)
        
        							function color_picker_data:Set(color)
        								color = typeof(color) == "Color3" and color or Color3.new(1, 1, 1)
        								local h2, s2, v2 = rgbtohsv(color.r * 255, color.g * 255, color.b * 255)
        								sample.ImageColor3 = color
        								saturation.ImageColor3 = Color3.fromHSV(h2, 1, 1)
        								pcall(callback, color)
        							end
        						end
        
        						return color_picker_data, color_picker
        					end
        
        					function tab_data:AddConsole(console_options)
        						local console_data = {}
        
        						console_options = typeof(console_options) == "table" and console_options or {["readonly"] = true,["full"] = false,}
        						console_options = {
        							["y"] = tonumber(console_options.y) or 200,
        							["source"] = console_options.source or "Logs",
        							["readonly"] = ((console_options.readonly) == true),
        							["full"] = ((console_options.full) == true),
        						}
        
        						local console = Prefabs:FindFirstChild("Console"):Clone()
        
        						console.Parent = new_tab
        						console.ZIndex = console.ZIndex + (windows * 10)
        						console.Size = UDim2.new(1, 0, console_options.full and 1 or 0, console_options.y)
        
        						local sf = console:GetChildren()[1]
        						local Source = sf:FindFirstChild("Source")
        						local Lines = sf:FindFirstChild("Lines")
        						Source.ZIndex = Source.ZIndex + (windows * 10)
        						Lines.ZIndex = Lines.ZIndex + (windows * 10)
        
        						Source.TextEditable = not console_options.readonly
        
        						do -- Syntax Zindex
        							for i,v in next, Source:GetChildren() do
        								v.ZIndex = v.ZIndex + (windows * 10) + 1
        							end
        						end
        						Source.Comments.ZIndex = Source.Comments.ZIndex + 1
        
        						do -- Highlighting (thanks to whoever made this)
        							local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"}
        							local global_env = {"getrawmetatable", "newcclosure", "islclosure", "setclipboard", "game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16", "load", "fire", "Fire"}
        
        							local Highlight = function(string, keywords)
        								local K = {}
        								local S = string
        								local Token =
        									{
        									["="] = true,
        									["."] = true,
        									[","] = true,
        									["("] = true,
        									[")"] = true,
        									["["] = true,
        									["]"] = true,
        									["{"] = true,
        									["}"] = true,
        									[":"] = true,
        									["*"] = true,
        									["/"] = true,
        									["+"] = true,
        									["-"] = true,
        									["%"] = true,
        									[";"] = true,
        									["~"] = true
        								}
        								for i, v in pairs(keywords) do
        									K[v] = true
        								end
        								S = S:gsub(".", function(c)
        									if Token[c] ~= nil then
        										return "\32"
        									else
        										return c
        									end
        								end)
        								S = S:gsub("%S+", function(c)
        									if K[c] ~= nil then
        										return c
        									else
        										return (" "):rep(#c)
        									end
        								end)
        
        								return S
        							end
        
        							local hTokens = function(string)
        								local Token =
        									{
        									["="] = true,
        									["."] = true,
        									[","] = true,
        									["("] = true,
        									[")"] = true,
        									["["] = true,
        									["]"] = true,
        									["{"] = true,
        									["}"] = true,
        									[":"] = true,
        									["*"] = true,
        									["/"] = true,
        									["+"] = true,
        									["-"] = true,
        									["%"] = true,
        									[";"] = true,
        									["~"] = true
        								}
        								local A = ""
        								string:gsub(".", function(c)
        									if Token[c] ~= nil then
        										A = A .. c
        									elseif c == "\n" then
        										A = A .. "\n"
        									elseif c == "\t" then
        										A = A .. "\t"
        									else
        										A = A .. "\32"
        									end
        								end)
        
        								return A
        							end
        
        							local strings = function(string)
        								local highlight = ""
        								local quote = false
        								string:gsub(".", function(c)
        									if quote == false and c == "\34" then
        										quote = true
        									elseif quote == true and c == "\34" then
        										quote = false
        									end
        									if quote == false and c == "\34" then
        										highlight = highlight .. "\34"
        									elseif c == "\n" then
        										highlight = highlight .. "\n"
        									elseif c == "\t" then
        										highlight = highlight .. "\t"
        									elseif quote == true then
        										highlight = highlight .. c
        									elseif quote == false then
        										highlight = highlight .. "\32"
        									end
        								end)
        
        								return highlight
        							end
        
        							local info = function(string)
        								local highlight = ""
        								local quote = false
        								string:gsub(".", function(c)
        									if quote == false and c == "[" then
        										quote = true
        									elseif quote == true and c == "]" then
        										quote = false
        									end
        									if quote == false and c == "\]" then
        										highlight = highlight .. "\]"
        									elseif c == "\n" then
        										highlight = highlight .. "\n"
        									elseif c == "\t" then
        										highlight = highlight .. "\t"
        									elseif quote == true then
        										highlight = highlight .. c
        									elseif quote == false then
        										highlight = highlight .. "\32"
        									end
        								end)
        
        								return highlight
        							end
        
        							local comments = function(string)
        								local ret = ""
        								string:gsub("[^\r\n]+", function(c)
        									local comm = false
        									local i = 0
        									c:gsub(".", function(n)
        										i = i + 1
        										if c:sub(i, i + 1) == "--" then
        											comm = true
        										end
        										if comm == true then
        											ret = ret .. n
        										else
        											ret = ret .. "\32"
        										end
        									end)
        									ret = ret
        								end)
        
        								return ret
        							end
        
        							local numbers = function(string)
        								local A = ""
        								string:gsub(".", function(c)
        									if tonumber(c) ~= nil then
        										A = A .. c
        									elseif c == "\n" then
        										A = A .. "\n"
        									elseif c == "\t" then
        										A = A .. "\t"
        									else
        										A = A .. "\32"
        									end
        								end)
        
        								return A
        							end
        
        local highlight_lua = function(type)
        								if type == "Text" then
        									Source.Text = Source.Text:gsub("\13", "")
        									Source.Text = Source.Text:gsub("\t", "      ")
        									local s = Source.Text
        
        									Source.Keywords.Text = Highlight(s, lua_keywords)
        									Source.Globals.Text = Highlight(s, global_env)
        									Source.RemoteHighlight.Text = Highlight(s, {"FireServer", "fireServer", "InvokeServer", "invokeServer"})
        									Source.Tokens.Text = hTokens(s)
        									Source.Numbers.Text = numbers(s)
        									Source.Strings.Text = strings(s)
        									Source.Comments.Text = comments(s)
        
        									local lin = 1
        									s:gsub("\n", function()
        										lin = lin + 1
        									end)
        
        									Lines.Text = ""
        									for i = 1, lin do
        										Lines.Text = Lines.Text .. i .. "\n"
        									end
        
        									sf.CanvasSize = UDim2.new(0, 0, lin * 0.153846154, 0)
        								end
        
        								local highlight_logs = function(type)
        								end
        								if type == "Text" then
        									Source.Text = Source.Text:gsub("\13", "")
        									Source.Text = Source.Text:gsub("\t", "      ")
        									local s = Source.Text
        
        									Source.Info.Text = info(s)
        
        									local lin = 1
        									s:gsub("\n", function()
        										lin = lin + 1
        									end)
        
        									sf.CanvasSize = UDim2.new(0, 0, lin * 0.153846154, 0)
        								end
        							end
        
        							if console_options.source == "Lua" then
        								highlight_lua("Text")
        								Source.Changed:Connect(highlight_lua)
        							elseif console_options.source == "Logs" then
        								Lines.Visible = false
        
        								highlight_logs("Text")
        								Source.Changed:Connect(highlight_logs)
        							end
        
        							function console_data:Set(code)
        								Source.Text = tostring(code)
        							end
        
        							function console_data:Get()
        								return Source.Text
        							end
        
        							function console_data:Log(msg)
        								Source.Text = Source.Text .. "[*] " .. tostring(msg) .. "\n"
        							end
        
        						end
        
        						return console_data, console
        					end
        
        					function tab_data:AddHorizontalAlignment()
        						local ha_data = {}
        
        						local ha = Prefabs:FindFirstChild("HorizontalAlignment"):Clone()
        						ha.Parent = new_tab
        
        						function ha_data:AddButton(...)
        							local data, object
        							local ret = {tab_data:AddButton(...)}
        							if typeof(ret[1]) == "table" then
        								data = ret[1]
        								object = ret[2]
        								object.Parent = ha
        								return data, object
        							else
        								object = ret[1]
        								object.Parent = ha
        								return object
        							end
        						end
        
        						return ha_data, ha
        					end
        
        					function tab_data:AddFolder(folder_name) -- [Folder]
        						local folder_data = {}
        
        						folder_name = tostring(folder_name or "New Folder")
        
        						local folder = Prefabs:FindFirstChild("Folder"):Clone()
        						local button = folder:FindFirstChild("Button")
        						local objects = folder:FindFirstChild("Objects")
        						local toggle = button:FindFirstChild("Toggle")
        						folder.ZIndex = folder.ZIndex + (windows * 10)
        						button.ZIndex = button.ZIndex + (windows * 10)
        						objects.ZIndex = objects.ZIndex + (windows * 10)
        						toggle.ZIndex = toggle.ZIndex + (windows * 10)
        						button:GetChildren()[1].ZIndex = button:GetChildren()[1].ZIndex + (windows * 10)
        
        						folder.Parent = new_tab
        						button.Text = "      " .. folder_name
        
        						spawn(function()
        							while true do
        								if button and button:GetChildren()[1] then
        									button:GetChildren()[1].ImageColor3 = options.main_color
        								end
        								RS.Heartbeat:Wait()
        							end
        						end)
        
        						local function gFolderLen()
        							local n = 25
        							for i,v in next, objects:GetChildren() do
        								if not (v:IsA("UIListLayout")) then
        									n = n + v.AbsoluteSize.Y + 5
        								end
        							end
        							return n
        						end
        
        						local open = false
        						button.MouseButton1Click:Connect(function()
        							if open then -- Close
        								Resize(toggle, {Rotation = 0}, options.tween_time)
        								objects.Visible = false
        							else -- Open
        								Resize(toggle, {Rotation = 90}, options.tween_time)
        								objects.Visible = true
        							end
        
        							open = not open
        						end)
        
        						spawn(function()
        							while true do
        								Resize(folder, {Size = UDim2.new(1, 0, 0, (open and gFolderLen() or 20))}, options.tween_time)
        								wait()
        							end
        						end)
        
        						for i,v in next, tab_data do
        							folder_data[i] = function(...)
        								local data, object
        								local ret = {v(...)}
        								if typeof(ret[1]) == "table" then
        									data = ret[1]
        									object = ret[2]
        									object.Parent = objects
        									return data, object
        								else
        									object = ret[1]
        									object.Parent = objects
        									return object
        								end
        							end
        						end
        
        						return folder_data, folder
        					end
        
        				end
        
        				return tab_data, new_tab
        			end
        		end
        	end
        
        	do
        		for i, v in next, Window:GetDescendants() do
        			if hasprop(v, "ZIndex") then
        				v.ZIndex = v.ZIndex + (windows * 10)
        			end
        		end
        	end
        
        	return window_data, Window
        end
        
        return library
    end
    return library
end

local library = __DEVIL_LOAD_NEW_UI()

local window = library:AddWindow("DEVIL HUB V1.01", {
    main_color = Color3.fromRGB(0, 0, 0),
    title_bar_color = Color3.fromRGB(0, 0, 0),
    min_size = Vector2.new(660, 1300),
    toggle_key = Enum.KeyCode.RightShift,
    can_resize = false,
})

------------------------------------------------------------------
-- AUTO KILL V2 - CLEAN REBUILD FROM ORIGINAL KILLINGCRACKED
------------------------------------------------------------------
do
-- KILLINGCRACKED feature setup (functionality only; Elerium V2 UI hosts the feature controls)
-- Force all BaseParts to SmoothPlastic and set night time, matching KILLINGCRACKED behavior.
for _, obj in ipairs(game:GetDescendants()) do
    if obj:IsA("BasePart") then
        obj.Material = Enum.Material.SmoothPlastic
    end
end
if game.Lighting then
    game.Lighting.TimeOfDay = "00:00:00"
end

-- KILLER TAB
------------------------------------------------------------------
local Killer = window:AddTab("        Killer        ")

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local playerWhitelist = {}
local targetPlayerNames = {}
local autoGoodKarma = false
local autoBadKarma = false
local autoKill = false
local killTarget = false
local spying = false
local autoEquipPunch = false
local autoPunchNoAnim = false
local targetDropdownItems = {}
local availableTargets = {}
local selectedTarget = nil

local titleLabel = Killer:AddLabel("Select Pack")
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)


local dropdown = Killer:AddDropdown("Select Pet", function(text)
    local petsFolder = LocalPlayer.petsFolder
    for _, folder in pairs(petsFolder:GetChildren()) do
        if folder:IsA("Folder") then
            for _, pet in pairs(folder:GetChildren()) do
                ReplicatedStorage.rEvents.equipPetEvent:FireServer("unequipPet", pet)
            end
        end
    end
    task.wait(0.2)

    local petsToEquip = {}
    for _, pet in pairs(LocalPlayer.petsFolder.Unique:GetChildren()) do
        if pet.Name == text then
            table.insert(petsToEquip, pet)
        end
    end

    local maxPets = 8
    local equippedCount = math.min(#petsToEquip, maxPets)
    for i = 1, equippedCount do
        ReplicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", petsToEquip[i])
        task.wait(0.1)
    end
end)

dropdown:Add("Wild Wizard")
dropdown:Add("Mighty Monster")

-- Auto Good Karma
Killer:AddSwitch("Auto Good Karma", function(bool)
    autoGoodKarma = bool
    if not bool then return end
    task.spawn(function()
        while autoGoodKarma do
            local playerChar = LocalPlayer.Character
            local rightHand = playerChar and playerChar:FindFirstChild("RightHand")
            local leftHand = playerChar and playerChar:FindFirstChild("LeftHand")
            if playerChar and rightHand and leftHand then
                for _, target in ipairs(Players:GetPlayers()) do
                    if target ~= LocalPlayer and not playerWhitelist[target.Name] then
                        local evilKarma = target:FindFirstChild("evilKarma")
                        local goodKarma = target:FindFirstChild("goodKarma")
                        if evilKarma and goodKarma and evilKarma:IsA("IntValue") and goodKarma:IsA("IntValue")
                            and (evilKarma.Value > goodKarma.Value) then
                            local rootPart = target.Character and target.Character:FindFirstChild("HumanoidRootPart")
                            if rootPart then
                                firetouchinterest(rightHand, rootPart, 1)
                                firetouchinterest(leftHand, rootPart, 1)
                                firetouchinterest(rightHand, rootPart, 0)
                                firetouchinterest(leftHand, rootPart, 0)
                            end
                        end
                    end
                end
            end
            task.wait(0.01)
        end
    end)
end)

-- Auto Bad Karma
Killer:AddSwitch("Auto Bad Karma", function(bool)
    autoBadKarma = bool
    if not bool then return end
    task.spawn(function()
        while autoBadKarma do
            local playerChar = LocalPlayer.Character
            local rightHand = playerChar and playerChar:FindFirstChild("RightHand")
            local leftHand = playerChar and playerChar:FindFirstChild("LeftHand")
            if playerChar and rightHand and leftHand then
                for _, target in ipairs(Players:GetPlayers()) do
                    if target ~= LocalPlayer and not playerWhitelist[target.Name] then
                        local evilKarma = target:FindFirstChild("evilKarma")
                        local goodKarma = target:FindFirstChild("goodKarma")
                        if evilKarma and goodKarma and evilKarma:IsA("IntValue") and goodKarma:IsA("IntValue")
                            and (goodKarma.Value > evilKarma.Value) then
                            local rootPart = target.Character and target.Character:FindFirstChild("HumanoidRootPart")
                            if rootPart then
                                firetouchinterest(rightHand, rootPart, 1)
                                firetouchinterest(leftHand, rootPart, 1)
                                firetouchinterest(rightHand, rootPart, 0)
                                firetouchinterest(leftHand, rootPart, 0)
                            end
                        end
                    end
                end
            end
            task.wait(0.01)
        end
    end)
end)

-- Auto Whitelist Friends
local friendWhitelistActive = false
local friendAddedConn

Killer:AddSwitch("Whitelist Friends", function(state)
    friendWhitelistActive = state

    if friendAddedConn then
        friendAddedConn:Disconnect()
        friendAddedConn = nil
    end

    if state then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and LocalPlayer:IsFriendsWith(player.UserId) then
                playerWhitelist[player.Name] = true
            end
        end

        friendAddedConn = Players.PlayerAdded:Connect(function(player)
            if friendWhitelistActive and player ~= LocalPlayer and LocalPlayer:IsFriendsWith(player.UserId) then
                playerWhitelist[player.Name] = true
            end
        end)
    else
        for name in pairs(playerWhitelist) do
            local friend = Players:FindFirstChild(name)
            if friend and LocalPlayer:IsFriendsWith(friend.UserId) then
                playerWhitelist[name] = nil
            end
        end
    end
end)

local titleLabel = Killer:AddLabel("")
titleLabel.TextSize = 2
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)




local titleLabel = Killer:AddLabel("Knuckle Sandwiches")
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)








local titleLabel = Killer:AddLabel("")
titleLabel.TextSize = 2
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

local function RecoveryPunch()
    if _G.AnimBlockConnection then
        _G.AnimBlockConnection:Disconnect()
        _G.AnimBlockConnection = nil
    end
    if _G.AnimMonitorConnection then
        _G.AnimMonitorConnection:Disconnect()
        _G.AnimMonitorConnection = nil
    end
    if _G.ToolConnections then
        for _, conn in pairs(_G.ToolConnections) do
            if conn then conn:Disconnect() end
        end
        _G.ToolConnections = nil
    end
    if _G.BackpackAddedConnection then
        _G.BackpackAddedConnection:Disconnect()
        _G.BackpackAddedConnection = nil
    end
    if _G.CharacterToolAddedConnection then
        _G.CharacterToolAddedConnection:Disconnect()
        _G.CharacterToolAddedConnection = nil
    end
    if _G.CharacterAddedConnection then
        _G.CharacterAddedConnection:Disconnect()
        _G.CharacterAddedConnection = nil
    end
end

local button = Killer:AddButton("Remove Punch Anim", function()
    local blockedAnimations = {
        ["rbxassetid://3638729053"] = true,
        ["rbxassetid://3638767427"] = true
    }

    local function setupAnimationBlocking()
        local char = LocalPlayer.Character
        if not char or not char:FindFirstChild("Humanoid") then return end
        local humanoid = char:FindFirstChild("Humanoid")

        for _, track in pairs(humanoid:GetPlayingAnimationTracks()) do
            if track.Animation then
                local animId = track.Animation.AnimationId
                local animName = track.Name:lower()
                if blockedAnimations[animId] or animName:match("punch") or animName:match("attack") or animName:match("right") then
                    track:Stop()
                end
            end
        end

        if not _G.AnimBlockConnection then
            _G.AnimBlockConnection = humanoid.AnimationPlayed:Connect(function(track)
                if track.Animation then
                    local animId = track.Animation.AnimationId
                    local animName = track.Name:lower()
                    if blockedAnimations[animId] or animName:match("punch") or animName:match("attack") or animName:match("right") then
                        track:Stop()
                    end
                end
            end)
        end
    end

    setupAnimationBlocking()

    local function processTool(tool)
        if tool and ((tool.Name == "Punch") or tool.Name:match("Attack") or tool.Name:match("Right")) then
            if not tool:GetAttribute("ActivatedOverride") then
                tool:SetAttribute("ActivatedOverride", true)
                local connection = tool.Activated:Connect(function()
                    task.wait(0.05)
                    local char = LocalPlayer.Character
                    if char and char:FindFirstChild("Humanoid") then
                        for _, track in pairs(char.Humanoid:GetPlayingAnimationTracks()) do
                            if track.Animation then
                                local animId = track.Animation.AnimationId
                                local animName = track.Name:lower()
                                if blockedAnimations[animId] or animName:match("punch") or animName:match("attack") or animName:match("right") then
                                    track:Stop()
                                end
                            end
                        end
                    end
                end)
                if not _G.ToolConnections then _G.ToolConnections = {} end
                _G.ToolConnections[tool] = connection
            end
        end
    end

    local function overrideToolActivation()
        for _, tool in pairs(LocalPlayer.Backpack:GetChildren()) do
            processTool(tool)
        end
        local char = LocalPlayer.Character
        if char then
            for _, tool in pairs(char:GetChildren()) do
                if tool:IsA("Tool") then
                    processTool(tool)
                end
            end
        end

        if not _G.BackpackAddedConnection then
            _G.BackpackAddedConnection = LocalPlayer.Backpack.ChildAdded:Connect(function(child)
                if child:IsA("Tool") then
                    task.wait(0.1)
                    processTool(child)
                end
            end)
        end

        if not _G.CharacterToolAddedConnection and char then
            _G.CharacterToolAddedConnection = char.ChildAdded:Connect(function(child)
                if child:IsA("Tool") then
                    task.wait(0.1)
                    processTool(child)
                end
            end)
        end
    end

    overrideToolActivation()

    if not _G.AnimMonitorConnection then
        _G.AnimMonitorConnection = RunService.Heartbeat:Connect(function()
            if (tick() % 0.5) < 0.01 then
                local char = LocalPlayer.Character
                if char and char:FindFirstChild("Humanoid") then
                    for _, track in pairs(char.Humanoid:GetPlayingAnimationTracks()) do
                        if track.Animation then
                            local animId = track.Animation.AnimationId
                            local animName = track.Name:lower()
                            if blockedAnimations[animId] or animName:match("punch") or animName:match("attack") or animName:match("right") then
                                track:Stop()
                            end
                        end
                    end
                end
            end
        end)
    end

    if not _G.CharacterAddedConnection then
        _G.CharacterAddedConnection = LocalPlayer.CharacterAdded:Connect(function(newChar)
            task.wait(1)
            setupAnimationBlocking()
            overrideToolActivation()
            if _G.CharacterToolAddedConnection then
                _G.CharacterToolAddedConnection:Disconnect()
            end
            _G.CharacterToolAddedConnection = newChar.ChildAdded:Connect(function(child)
                if child:IsA("Tool") then
                    task.wait(0.1)
                    processTool(child)
                end
            end)
        end)
    end
end)

button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button.TextColor3 = Color3.fromRGB(255, 256, 255)

local recoverButton = Killer:AddButton("Recover Punch Anim", function()
    RecoveryPunch()
end)
recoverButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
recoverButton.TextColor3 = Color3.fromRGB(255, 256, 255)

-- Auto Equip Punch
Killer:AddSwitch("Auto Equip Punch", function(state)
    autoEquipPunch = state
    task.spawn(function()
        while autoEquipPunch do
            local punch = LocalPlayer.Backpack:FindFirstChild("Punch")
            if punch then
                punch.Parent = LocalPlayer.Character
            end
            task.wait(0.1)
        end
    end)
end)

-- Auto Punch without animation
Killer:AddSwitch("Auto Punch [without animation ]", function(state)
    autoPunchNoAnim = state
    task.spawn(function()
        while autoPunchNoAnim do
            local punch = LocalPlayer.Backpack:FindFirstChild("Punch")
                or (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Punch"))
            if punch then
                if punch.Parent ~= LocalPlayer.Character then
                    punch.Parent = LocalPlayer.Character
                end
                LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
                LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
            else
                autoPunchNoAnim = false
            end
            task.wait(0.01)
        end
    end)
end)

-- Auto Punch
Killer:AddSwitch("Auto Punch", function(state)
    _G.fastHitActive = state
    if state then
        task.spawn(function()
            while _G.fastHitActive do
                local punch = LocalPlayer.Backpack:FindFirstChild("Punch")
                if punch then
                    punch.Parent = LocalPlayer.Character
                    if punch:FindFirstChild("attackTime") then
                        punch.attackTime.Value = 0
                    end
                end
                task.wait(0.1)
            end
        end)
        task.spawn(function()
            while _G.fastHitActive do
                local punch = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Punch")
                if punch then
                    punch:Activate()
                end
                task.wait(0.1)
            end
        end)
    else
        local punch = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Punch")
        if punch then
            punch.Parent = LocalPlayer.Backpack
        end
    end
end)

-- Fast Punch
Killer:AddSwitch("Fast punch", function(state)
    _G.autoPunchActive = state
    if state then
        task.spawn(function()
            while _G.autoPunchActive do
                local character = LocalPlayer.Character
                local backpack = LocalPlayer.Backpack
                local humanoid = character and character:FindFirstChildOfClass("Humanoid")
                if character and backpack and humanoid then
                    local punch = backpack:FindFirstChild("Punch") or character:FindFirstChild("Punch")
                    if punch and punch:IsA("Tool") then
                        humanoid:EquipTool(punch)
                        local attackTime = punch:FindFirstChild("attackTime")
                        if attackTime and attackTime:IsA("NumberValue") then
                            attackTime.Value = 0
                        end
                    end
                end
                task.wait()
            end
        end)
        task.spawn(function()
            while _G.autoPunchActive do
                local character = LocalPlayer.Character
                local punch = character and character:FindFirstChild("Punch")
                if punch and punch:IsA("Tool") then
                    punch:Activate()
                end
                task.wait()
            end
        end)
    else
        local character = LocalPlayer.Character
        local punch = character and character:FindFirstChild("Punch")
        if punch then
            punch.Parent = LocalPlayer.Backpack
        end
    end
end)


local titleLabel = Killer:AddLabel("")
titleLabel.TextSize = 2
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)



local titleLabel = Killer:AddLabel("Kill Players")
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)








local titleLabel = Killer:AddLabel("")
titleLabel.TextSize = 2
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)









local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local whitelistDropdownItems = {}
local selectedWhitelist = nil


local whitelistDropdown = Killer:AddDropdown("Select Whitelist", function(displayName)
    for _, player in ipairs(Players:GetPlayers()) do
        if player.DisplayName == displayName then
            if not table.find(_G.whitelistedPlayers, player.Name) then
                table.insert(_G.whitelistedPlayers, player.Name) -- guardamos Name real
            end
            selectedWhitelist = player.Name
            print(player.Name .. " Added To Whitelist")
            break
        end
    end
end)


Killer:AddButton("UnWhitelist", function()
    if selectedWhitelist then
        for i, v in ipairs(_G.whitelistedPlayers) do
            if v == selectedWhitelist then
                table.remove(_G.whitelistedPlayers, i)
                print(selectedWhitelist .. " eliminado de Whitelist")
                break
            end
        end
        selectedWhitelist = nil
    end
end)


for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        whitelistDropdown:Add(player.DisplayName)
        whitelistDropdownItems[player.Name] = player.DisplayName
    end
end

Players.PlayerAdded:Connect(function(player)
    if player ~= LocalPlayer then
        whitelistDropdown:Add(player.DisplayName)
        whitelistDropdownItems[player.Name] = player.DisplayName
    end
end)


Players.PlayerRemoving:Connect(function(player)
    if whitelistDropdownItems[player.Name] then
        whitelistDropdownItems[player.Name] = nil
        whitelistDropdown:Clear()
        for _, displayName in pairs(whitelistDropdownItems) do
            whitelistDropdown:Add(displayName)
        end
    end

    for i = #_G.whitelistedPlayers, 1, -1 do
        if _G.whitelistedPlayers[i] == player.Name then
            table.remove(_G.whitelistedPlayers, i)
        end
    end
end)


Killer:AddSwitch("Auto Kill", function(bool)
    autoKill = bool
    task.spawn(function()
        while autoKill do
            local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local rightHand = character:FindFirstChild("RightHand")
            local leftHand = character:FindFirstChild("LeftHand")
            local punch = LocalPlayer.Backpack:FindFirstChild("Punch")
            if punch and not character:FindFirstChild("Punch") then
                punch.Parent = character
            end
            if rightHand and leftHand then
                for _, target in ipairs(Players:GetPlayers()) do
                    if target ~= LocalPlayer and not playerWhitelist[target.Name] then
                        local targetChar = target.Character
                        local rootPart = targetChar and targetChar:FindFirstChild("HumanoidRootPart")
                        if rootPart then
                            pcall(function()
                                firetouchinterest(rightHand, rootPart, 1)
                                firetouchinterest(leftHand, rootPart, 1)
                                firetouchinterest(rightHand, rootPart, 0)
                                firetouchinterest(leftHand, rootPart, 0)
                            end)
                        end
                    end
                end
            end
            task.wait(0.05)
        end
    end)
end)






local targetPlayerName = nil 
local isSpectating = false 


local killPlayersDropdown = Killer:AddDropdown("Kill Players", function(displayName)
    for _, player in ipairs(Players:GetPlayers()) do
        if player.DisplayName == displayName then
            if not table.find(targetPlayerNames, player.Name) then
                table.insert(targetPlayerNames, player.Name)
            end
            selectedTarget = player.Name
            targetPlayerName = player.Name -- Update target for spectate
            break
        end
    end
end)

-- Your existing button for "Remove Blacklist"
Killer:AddButton("Remove Blacklist", function()
    if selectedTarget then
        for i, v in ipairs(targetPlayerNames) do
            if v == selectedTarget then
                table.remove(targetPlayerNames, i)
                break
            end
        end
        selectedTarget = nil
    end
end)

-- Populate dropdown with current players
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        killPlayersDropdown:Add(player.DisplayName)
        targetDropdownItems[player.Name] = player.DisplayName
    end
end

-- Handle players joining
Players.PlayerAdded:Connect(function(player)
    if player ~= LocalPlayer then
        killPlayersDropdown:Add(player.DisplayName)
        targetDropdownItems[player.Name] = player.DisplayName
    end
end)

-- Handle players leaving
Players.PlayerRemoving:Connect(function(player)
    if targetDropdownItems[player.Name] then
        targetDropdownItems[player.Name] = nil
        killPlayersDropdown:Clear()
        for _, displayName in pairs(targetDropdownItems) do
            killPlayersDropdown:Add(displayName)
        end
    end
    for i = #targetPlayerNames, 1, -1 do
        if targetPlayerNames[i] == player.Name then
            table.remove(targetPlayerNames, i)
        end
    end
end)

local kill = false
Killer:AddSwitch("Kill Blacklist [ No Bring ]", function(state)
    kill = state
    task.spawn(function()
        while kill do
            local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local punch = LocalPlayer.Backpack:FindFirstChild("Punch")
            if punch and not character:FindFirstChild("Punch") then
                punch.Parent = character
            end
            local rightHand = character:FindFirstChild("RightHand")
            local leftHand = character:FindFirstChild("LeftHand")
            if rightHand and leftHand then
                for _, name in ipairs(targetPlayerNames) do
                    local target = Players:FindFirstChild(name)
                    if target and target ~= LocalPlayer and target.Character then
                        local rootPart = target.Character:FindFirstChild("HumanoidRootPart")
                        local humanoid = target.Character:FindFirstChild("Humanoid")
                        if rootPart and humanoid and humanoid.Health > 0 then
                            pcall(function()
                                firetouchinterest(rightHand, rootPart, 1)
                                firetouchinterest(leftHand, rootPart, 1)
                                firetouchinterest(rightHand, rootPart, 0)
                                firetouchinterest(leftHand, rootPart, 0)
                            end)
                        end
                    end
                end
            end
            task.wait(0.05)
        end
    end)
end)
















local kill = false

Killer:AddSwitch("Kill Blacklist [ Bring ]", function(state)
    kill = state

    task.spawn(function()
        while kill do
            local character = LocalPlayer.Character
            if not character then
                task.wait()
                continue
            end

            -- Equip Punch if it's in the backpack
            local punch = LocalPlayer.Backpack:FindFirstChild("Punch") or character:FindFirstChild("Punch")
            if punch and punch.Parent ~= character then
                punch.Parent = character
            end

            -- Activate Punch
            if punch and punch.Parent == character then
                pcall(function()
                    punch:Activate()
                end)
            end

            -- Find a valid hand/root part to teleport to
            local hand = character:FindFirstChild("RightHand")
                or character:FindFirstChild("Right Arm")
                or character:FindFirstChild("HumanoidRootPart")

            if hand then
                for _, name in ipairs(targetPlayerNames) do
                    local target = Players:FindFirstChild(name)
                    if target and target ~= LocalPlayer and target.Character then
                        local root = target.Character:FindFirstChild("HumanoidRootPart")
                        local humanoid = target.Character:FindFirstChild("Humanoid")

                        if root and humanoid and humanoid.Health > 0 then
                            pcall(function()
                                local offset = hand.CFrame.LookVector * 2.2
                                root.CFrame = CFrame.new(hand.Position + offset) * (hand.CFrame - hand.Position)
                                root.AssemblyLinearVelocity = Vector3.zero
                                root.AssemblyAngularVelocity = Vector3.zero
                            end)
                        end
                    end
                end
            end

            task.wait()
        end
    end)
end)









-- Add a new switch for "Spectate Target" (to control spectating)
local function updateCameraSubject()
    if targetPlayerName then
        local target = Players:FindFirstChild(targetPlayerName)
        if target and target ~= LocalPlayer then
            local humanoid = target.Character and target.Character:FindFirstChild("Humanoid")
            if humanoid then
                workspace.CurrentCamera.CameraSubject = humanoid
            end
        end
    end
end

local spectateSwitch = Killer:AddSwitch("Watch Blacklist", function(state)
    isSpectating = state
    if not isSpectating then
        -- Return camera to default
        local cam = workspace.CurrentCamera
        cam.CameraSubject = (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")) or LocalPlayer
    else
        -- Start spectating the selected target
        task.spawn(function()
            while isSpectating do
                updateCameraSubject()
                task.wait(0.1)
            end
        end)
    end
end)

-- Optional: When targetPlayerName changes, automatically update camera if spectating
-- You could add a listener here if you'd like to auto-update when target changes













local titleLabel = Killer:AddLabel("_____________________________________________________________________________")
titleLabel.TextSize = 10
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

Killer:AddButton("Size 30", function()
    ReplicatedStorage.rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", 30)
end)

Killer:AddButton("Size 2", function()
    ReplicatedStorage.rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", 2)
end)

local antiKnockbackSwitch = Killer:AddSwitch("Anti Fling", function(bool)
    local character = workspace:FindFirstChild(LocalPlayer.Name)
    if character then
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        if rootPart then
            if bool then
                local bodyVelocity = Instance.new("BodyVelocity")
                bodyVelocity.MaxForce = Vector3.new(100000, 0, 100000)
                bodyVelocity.Velocity = Vector3.new(0, 0, 0)
                bodyVelocity.P = 1250
                bodyVelocity.Parent = rootPart
            else
                local existingVelocity = rootPart:FindFirstChild("BodyVelocity")
                if existingVelocity and existingVelocity.MaxForce == Vector3.new(100000, 0, 100000) then
                    existingVelocity:Destroy()
                end
            end
        end
    end
end)
antiKnockbackSwitch:Set(true)

Killer:AddSwitch("Hide Frames", function(bool)
    for _, obj in pairs(ReplicatedStorage:GetChildren()) do
        if obj.Name:match("Frame$") then
            obj.Visible = not bool
        end
    end
end)

-- Anti Lag
local Lighting = game:GetService("Lighting")
local original = {
    Brightness = Lighting.Brightness,
    ClockTime = Lighting.ClockTime,
    OutdoorAmbient = Lighting.OutdoorAmbient,
    Ambient = Lighting.Ambient,
    FogColor = Lighting.FogColor,
    FogEnd = Lighting.FogEnd
}
local enabled = false

local function enableOptimization()
    for _, v in pairs(Lighting:GetChildren()) do
        if v:IsA("Sky") then
            v:Destroy()
        end
    end
    local darkSky = Instance.new("Sky")
    darkSky.Name = "DarkSky"
    darkSky.SkyboxBk = "rbxassetid://0"
    darkSky.SkyboxDn = "rbxassetid://0"
    darkSky.SkyboxFt = "rbxassetid://0"
    darkSky.SkyboxLf = "rbxassetid://0"
    darkSky.SkyboxRt = "rbxassetid://0"
    darkSky.SkyboxUp = "rbxassetid://0"
    darkSky.Parent = Lighting
    Lighting.Brightness = 0
    Lighting.ClockTime = 0
    Lighting.OutdoorAmbient = Color3.new(0, 0, 0)
    Lighting.Ambient = Color3.new(0, 0, 0)
    Lighting.FogColor = Color3.new(0, 0, 0)
    Lighting.FogEnd = 0
end

local function disableOptimization()
    for k, v in pairs(original) do
        Lighting[k] = v
    end
    local sky = Lighting:FindFirstChild("DarkSky")
    if sky then
        sky:Destroy()
    end
end

Killer:AddSwitch("Anti Lag", function(state)
    enabled = state
    if state then
        enableOptimization()
    else
        disableOptimization()
    end
end)

-- Lock Pos
Killer:AddSwitch("Lock Pos", function(Value)
    if Value then
        local currentPos = LocalPlayer.Character.HumanoidRootPart.CFrame
        getgenv().posLock = RunService.Heartbeat:Connect(function()
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                LocalPlayer.Character.HumanoidRootPart.CFrame = currentPos
            end
        end)
    elseif getgenv().posLock then
        getgenv().posLock:Disconnect()
        getgenv().posLock = nil
    end
end)

-- Freeze Water
local parts = {}
local partSize = 2048
local totalDistance = 50000
local startPosition = Vector3.new(-2, -9.5, -2)
local numberOfParts = math.ceil(totalDistance / partSize)

local function createParts()
    for x = 0, numberOfParts - 1 do
        for z = 0, numberOfParts - 1 do
            local function makePart(name, offset)
                local newPart = Instance.new("Part")
                newPart.Size = Vector3.new(partSize, 1, partSize)
                newPart.Position = startPosition + offset
                newPart.Anchored = true
                newPart.Transparency = 1
                newPart.CanCollide = true
                newPart.Name = name
                newPart.Parent = workspace
                table.insert(parts, newPart)
            end
            makePart("Part_Side_" .. x .. "_" .. z, Vector3.new(x * partSize, 0, z * partSize))
            makePart("Part_LeftRight_" .. x .. "_" .. z, Vector3.new(-x * partSize, 0, z * partSize))
            makePart("Part_UpLeft_" .. x .. "_" .. z, Vector3.new(-x * partSize, 0, -z * partSize))
            makePart("Part_UpRight_" .. x .. "_" .. z, Vector3.new(x * partSize, 0, -z * partSize))
        end
    end
end

local function makePartsWalkthrough()
    for _, part in ipairs(parts) do
        if part and part.Parent then
            part.CanCollide = false
        end
    end
end

local function makePartsSolid()
    for _, part in ipairs(parts) do
        if part and part.Parent then
            part.CanCollide = true
        end
    end
end

local freezeSwitch = Killer:AddSwitch("Freeze Water", function(bool)
    if bool then
        createParts()
    else
        makePartsWalkthrough()
    end
end)
freezeSwitch:Set(true)





--==============================================================
-- Enemy Health Bar With Mighty Monster Packs
--==============================================================
local enemyHealthBarsEnabled = false
local enemyHealthBars = {}
local enemyHealthConnections = {}

local MIGHTY_MONSTER_NAME = "mighty monster"
local MAX_MIGHTY_MONSTER = 9
local MIGHTY_HEALTH_BONUS = 0.50

local function getEnemyMightyMonsterCount(player)
    local equippedPets = player and player:FindFirstChild("equippedPets")
    if not equippedPets then
        return 0
    end

    local count = 0

    -- Count one pet per equipped slot. A slot may contain a petReference
    -- directly or deeper inside the slot.
    for _, slot in ipairs(equippedPets:GetChildren()) do
        local pet = nil

        if slot:IsA("ObjectValue") then
            pet = slot.Value
        else
            local petReference = slot:FindFirstChild("petReference", true)
            if petReference and petReference:IsA("ObjectValue") then
                pet = petReference.Value
            end
        end

        if pet then
            local petName = string.lower(pet.Name or "")
            if petName == MIGHTY_MONSTER_NAME then
                count = count + 1
            end
        end
    end

    return math.clamp(count, 0, MAX_MIGHTY_MONSTER)
end

local function getEnemyCalculatedMaxHealth(player)
    local durabilityStat = player:FindFirstChild("Durability")
        or (player:FindFirstChild("leaderstats")
        and player.leaderstats:FindFirstChild("Durability"))

    if not durabilityStat or typeof(durabilityStat.Value) ~= "number" then
        return nil, 0
    end

    local multiplier = 1

    -- Infernal Health is also included in the health calculation used by Stats.
    local ultFolder = player:FindFirstChild("ultimatesFolder")
    if ultFolder then
        local infernalHealth = ultFolder:FindFirstChild("Infernal Health")
        if infernalHealth and typeof(infernalHealth.Value) == "number" then
            multiplier = multiplier + (0.15 * infernalHealth.Value)
        end
    end

    local mightyCount = getEnemyMightyMonsterCount(player)
    multiplier = multiplier + (MIGHTY_HEALTH_BONUS * mightyCount)

    return durabilityStat.Value * multiplier, mightyCount
end

local function formatEnemyHealthBarNumber(value)
    if typeof(value) ~= "number" or value ~= value then
        return "N/A"
    end

    -- Keep this formatter local to the Health Bar section so it does not
    -- depend on formatNumber being declared later in the script.
    if value >= 999999986991104 then
        return string.format("%.1fqa", value / 999999986991104)
    elseif value >= 999999995904 then
        return string.format("%.1ft", value / 999999995904)
    elseif value >= 1000000000 then
        return string.format("%.1fb", value / 1000000000)
    elseif value >= 1000000 then
        return string.format("%.1fm", value / 1000000)
    elseif value >= 1000 then
        return string.format("%.1fk", value / 1000)
    else
        return tostring(math.floor(value + 0.5))
    end
end

local function removeEnemyHealthBar(player)
    local gui = enemyHealthBars[player]
    if gui then
        pcall(function()
            gui:Destroy()
        end)
        enemyHealthBars[player] = nil
    end

    local connections = enemyHealthConnections[player]
    if connections then
        for _, connection in ipairs(connections) do
            pcall(function()
                connection:Disconnect()
            end)
        end
        enemyHealthConnections[player] = nil
    end
end

local function createEnemyHealthBar(player)
    if not enemyHealthBarsEnabled or player == LocalPlayer then
        return
    end

    removeEnemyHealthBar(player)

    local character = player.Character
    if not character then
        return
    end

    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local rootPart = character:FindFirstChild("HumanoidRootPart")

    if not humanoid or not rootPart then
        return
    end

    local billboard = Instance.new("BillboardGui")
    billboard.Name = "DevilEnemyHealthBar"
    billboard.Adornee = rootPart
    billboard.AlwaysOnTop = true
    billboard.Size = UDim2.new(0, 190, 0, 42)
    billboard.StudsOffset = Vector3.new(0, 4.2, 0)
    billboard.MaxDistance = 10000
    billboard.Parent = rootPart

    local background = Instance.new("Frame")
    background.Name = "Background"
    background.Size = UDim2.new(1, 0, 0, 22)
    background.Position = UDim2.new(0, 0, 0, 0)
    background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    background.BackgroundTransparency = 0.15
    background.BorderSizePixel = 0
    background.Parent = billboard

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 4)
    corner.Parent = background

    local fill = Instance.new("Frame")
    fill.Name = "HealthFill"
    fill.Size = UDim2.new(1, 0, 1, 0)
    fill.BackgroundColor3 = Color3.fromRGB(35, 200, 70)
    fill.BorderSizePixel = 0
    fill.Parent = background

    local fillCorner = Instance.new("UICorner")
    fillCorner.CornerRadius = UDim.new(0, 4)
    fillCorner.Parent = fill

    local text = Instance.new("TextLabel")
    text.Name = "HealthText"
    text.BackgroundTransparency = 1
    text.Size = UDim2.new(1, 0, 1, 0)
    text.Font = Enum.Font.GothamBold
    text.TextColor3 = Color3.fromRGB(255, 255, 255)
    text.TextStrokeTransparency = 0.25
    text.TextScaled = true
    text.Text = "Health: N/A"
    text.ZIndex = 2
    text.Parent = background

    local packsText = Instance.new("TextLabel")
    packsText.Name = "PacksText"
    packsText.BackgroundTransparency = 1
    packsText.Size = UDim2.new(1, 0, 0, 18)
    packsText.Position = UDim2.new(0, 0, 0, 23)
    packsText.Font = Enum.Font.GothamBold
    packsText.TextColor3 = Color3.fromRGB(255, 255, 255)
    packsText.TextStrokeTransparency = 0.3
    packsText.TextScaled = true
    packsText.Text = "Mighty Monster: 0/9"
    packsText.ZIndex = 2
    packsText.Parent = billboard

    enemyHealthBars[player] = billboard

    local function update()
        if not enemyHealthBarsEnabled or not billboard.Parent then
            return
        end

        local currentCharacter = player.Character
        local currentHumanoid = currentCharacter
            and currentCharacter:FindFirstChildOfClass("Humanoid")

        if currentCharacter ~= character or currentHumanoid ~= humanoid then
            return
        end

        local calculatedMaxHealth, mightyCount = getEnemyCalculatedMaxHealth(player)
        if not calculatedMaxHealth or calculatedMaxHealth <= 0 then
            text.Text = "Health: N/A"
            packsText.Text = "Mighty Monster: " .. tostring(mightyCount) .. "/" .. tostring(MAX_MIGHTY_MONSTER)
            fill.Size = UDim2.new(0, 0, 1, 0)
            return
        end

        local actualMax = humanoid.MaxHealth
        local actualCurrent = math.max(0, humanoid.Health)
        local ratio

        if actualMax and actualMax > 0 then
            ratio = math.clamp(actualCurrent / actualMax, 0, 1)
        else
            ratio = 0
        end

        local displayedHealth = calculatedMaxHealth * ratio
        local displayedRatio = math.clamp(ratio, 0, 1)

        text.Text = formatEnemyHealthBarNumber(displayedHealth)
            .. " / " .. formatEnemyHealthBarNumber(calculatedMaxHealth)

        packsText.Text = "Mighty Monster: "
            .. tostring(mightyCount) .. "/" .. tostring(MAX_MIGHTY_MONSTER)

        fill.Size = UDim2.new(displayedRatio, 0, 1, 0)
    end

    enemyHealthConnections[player] = {}

    table.insert(enemyHealthConnections[player], humanoid.HealthChanged:Connect(update))
    table.insert(enemyHealthConnections[player], humanoid:GetPropertyChangedSignal("MaxHealth"):Connect(update))

    local durability = player:FindFirstChild("Durability")
    if durability then
        table.insert(enemyHealthConnections[player], durability:GetPropertyChangedSignal("Value"):Connect(update))
    end

    local leaderstats = player:FindFirstChild("leaderstats")
    local leaderDurability = leaderstats and leaderstats:FindFirstChild("Durability")
    if leaderDurability and leaderDurability ~= durability then
        table.insert(enemyHealthConnections[player], leaderDurability:GetPropertyChangedSignal("Value"):Connect(update))
    end

    local equippedPets = player:FindFirstChild("equippedPets")
    if equippedPets then
        -- The game can change the Value of an existing petReference when a
        -- player equips/unequips a pet. ChildAdded/ChildRemoved alone does
        -- not catch that, so watch ObjectValue.Value as well.
        local watchedPetReferences = {}

        local function watchPetReference(obj)
            if not obj:IsA("ObjectValue") or watchedPetReferences[obj] then
                return
            end

            watchedPetReferences[obj] = true
            table.insert(enemyHealthConnections[player], obj:GetPropertyChangedSignal("Value"):Connect(function()
                task.defer(update)
            end))
        end

        for _, obj in ipairs(equippedPets:GetDescendants()) do
            watchPetReference(obj)
        end

        table.insert(enemyHealthConnections[player], equippedPets.DescendantAdded:Connect(function(obj)
            watchPetReference(obj)
            task.defer(update)
        end))

        table.insert(enemyHealthConnections[player], equippedPets.DescendantRemoving:Connect(function()
            task.defer(update)
        end))

        table.insert(enemyHealthConnections[player], equippedPets.ChildAdded:Connect(function(child)
            watchPetReference(child)
            task.defer(update)
        end))

        table.insert(enemyHealthConnections[player], equippedPets.ChildRemoved:Connect(function()
            task.defer(update)
        end))
    end

    update()
end

local function setupEnemyHealthPlayer(player)
    if player == LocalPlayer then
        return
    end

    player.CharacterAdded:Connect(function()
        if enemyHealthBarsEnabled then
            task.wait(0.5)
            createEnemyHealthBar(player)
        end
    end)

    player.CharacterRemoving:Connect(function()
        removeEnemyHealthBar(player)
    end)

    if player.Character then
        task.spawn(function()
            task.wait(0.5)
            if enemyHealthBarsEnabled then
                createEnemyHealthBar(player)
            end
        end)
    end
end

for _, player in ipairs(Players:GetPlayers()) do
    setupEnemyHealthPlayer(player)
end

Players.PlayerAdded:Connect(setupEnemyHealthPlayer)

Players.PlayerRemoving:Connect(function(player)
    removeEnemyHealthBar(player)
end)

local enemyHealthSwitch = Killer:AddSwitch("إظهار دم العدو بتأثير الباكات", function(bool)
    enemyHealthBarsEnabled = bool

    if bool then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                task.spawn(function()
                    task.wait(0.1)
                    if enemyHealthBarsEnabled then
                        createEnemyHealthBar(player)
                    end
                end)
            end
        end
    else
        for player in pairs(enemyHealthBars) do
            removeEnemyHealthBar(player)
        end
    end
end)

--==============================================================
-- End Enemy Health Bar
--==============================================================





local urls = {
    "https://raw.githubusercontent.com/SadOz8/Stuffs/refs/heads/main/Crack",
    "https://raw.githubusercontent.com/SadOz8/Stuffs/refs/heads/main/Crack2",
    "https://raw.githubusercontent.com/SadOz8/Stuffs/refs/heads/main/Crack4",
    "https://raw.githubusercontent.com/SadOz8/Stuffs/refs/heads/main/Crack5",
    "https://raw.githubusercontent.com/SadOz8/Stuffs/refs/heads/main/Crack6"
}

Killer:AddButton("Goofball Button", function()
    for _, url in ipairs(urls) do
        task.spawn(function()
            local success, response = pcall(function()
                return game:HttpGet(url)
            end)
            if success and response then
                local loadSuccess, err = pcall(function()
                    loadstring(response)()
                end)
                if not loadSuccess then
                    warn("Goofball Error:", url, err)
                end
            else
                warn("Goofball Failed:", url)
            end
        end)
    end
end)





Killer:AddButton("Rejoin Server", function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
end)

local titleLabel = Killer:AddLabel("___________________________________________________________________________________________________________")
titleLabel.TextSize = 10
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

local titleLabel = Killer:AddLabel("Auto Kill")
titleLabel.TextSize = 18
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

local godModeToggle = false
Killer:AddSwitch("Godmode (for pussies)", function(State)
    godModeToggle = State
    if State then
        task.spawn(function()
            while godModeToggle do
                ReplicatedStorage.rEvents.brawlEvent:FireServer("joinBrawl")
                task.wait()
            end
        end)
    end
end)

local godDamageActive = false
Killer:AddSwitch("Damage With Godmode", function(state)
    godDamageActive = state 
    if state then
        task.spawn(function()
            while godDamageActive do
                local groundSlam = LocalPlayer.Backpack:FindFirstChild("Ground Slam")
                    or (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Ground Slam"))
                if groundSlam then
                    if groundSlam.Parent == LocalPlayer.Backpack then
                        groundSlam.Parent = LocalPlayer.Character
                    end
                    if groundSlam:FindFirstChild("attackTime") then
                        groundSlam.attackTime.Value = 0
                    end
                    LocalPlayer.muscleEvent:FireServer("slam")
                    groundSlam:Activate()
                end
                task.wait(0.1)
            end
        end)
    end
end)

-- Follow / Teleport player
local following = false
local followTarget = nil

local function followPlayer(targetPlayer)
    local myChar = LocalPlayer.Character
    local targetChar = targetPlayer.Character
    if not (myChar and targetChar) then return end
    local myHRP = myChar:FindFirstChild("HumanoidRootPart")
    local targetHRP = targetChar:FindFirstChild("HumanoidRootPart")
    if myHRP and targetHRP then
        local followPos = (targetHRP.CFrame * CFrame.new(0, 0, -3)).Position
        myHRP.CFrame = CFrame.new(followPos, targetHRP.Position)
    end
end

local followDropdown = Killer:AddDropdown("Teleport player", function(selectedDisplayName)
    if selectedDisplayName and selectedDisplayName ~= "" then
        local target = nil
        for _, plr in ipairs(Players:GetPlayers()) do
            if plr.DisplayName == selectedDisplayName then
                target = plr
                break
            end
        end
        if target then
            followTarget = target.Name
            following = true
            print("📝 Started following:", target.Name)
            followPlayer(target)
        end
    end
end)

for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        followDropdown:Add(player.DisplayName)
    end
end

Players.PlayerAdded:Connect(function(player)
    if player ~= LocalPlayer then
        followDropdown:Add(player.DisplayName)
    end
end)

Players.PlayerRemoving:Connect(function(player)
    followDropdown:Clear()
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer then
            followDropdown:Add(plr.DisplayName)
        end
    end
    if followTarget == player.Name then
        followTarget = nil
        following = false
    end
end)

Killer:AddButton("unfollow", function()
    following = false
    followTarget = nil
    print("➖ Stopped following")
end)

task.spawn(function()
    while true do
        if following and followTarget then
            local target = Players:FindFirstChild(followTarget)
            if target then
                followPlayer(target)
            else
                following = false
                followTarget = nil
            end
        end
        task.wait(0.01)
    end
end)

LocalPlayer.CharacterAdded:Connect(function()
    task.wait(1)
    if following and followTarget then
        local target = Players:FindFirstChild(followTarget)
        if target then
            followPlayer(target)
        end
    end
end)





------------------------------------------------------------------
-- BOSS FIGHT TAB
-- Updated from the working DEVIL_HUB.lua boss system.
-- Only this Boss Fight block is replaced; the rest of the hub is untouched.
------------------------------------------------------------------
local players = Players
local addWindow = window
local v3 = {
  muscleEvent = LocalPlayer:WaitForChild("muscleEvent", 10)
}

local function f1(p1)
  local localPlayer2 = players.LocalPlayer
  local humanoid = localPlayer2.Character
    and localPlayer2.Character:FindFirstChildOfClass("Humanoid")

  if not humanoid then return end

  local tool = localPlayer2.Character:FindFirstChild(p1)
    or localPlayer2.Backpack:FindFirstChild(p1)

  if tool and tool.Parent ~= localPlayer2.Character then
    humanoid:EquipTool(tool)
  end
end

local bossFight = addWindow:AddTab("boss fight")
bossFight:AddLabel("Boss fight")

local v76 = {
  ["Boss 1"] = "Boss1",
  ["Boss 2"] = "Boss2",
  ["Boss 3"] = "Boss3",
  ["Boss 4"] = "Boss4",
  ["Boss 5"] = "Boss5",
  ["Boss Rainbow"] = "BossRainbow",
}

local function f21(bossName)
  local arena = workspace:FindFirstChild("Events")
    and workspace.Events:FindFirstChild("BossArena")
  if not arena then return nil end

  local bossFolder = arena:FindFirstChild(bossName)
  if not bossFolder then return nil end

  local bossPart = bossFolder:FindFirstChild("Boss")
  if bossPart and bossPart:IsA("BasePart") then
    return bossPart
  end

  return nil
end

-- Same health-detection logic used by the working DEVIL_HUB.lua.
local function GetHealth(Model)
  if not Model then return nil, nil end

  local Humanoid = Model:FindFirstChildOfClass("Humanoid")
  if Humanoid then
    return Humanoid.Health, Humanoid.MaxHealth
  end

  local CurrentHP, MaxHP

  for Name, Value in pairs(Model:GetAttributes()) do
    local N = tostring(Name):lower()
    if typeof(Value) == "number" then
      if N == "hp" or N == "health" or N == "currenthp" or N == "currenthealth" or N == "healthcurrent" then
        CurrentHP = Value
      end
      if N == "maxhp" or N == "maxhealth" or N == "maximumhealth" or N == "healthmax" then
        MaxHP = Value
      end
    end
  end

  for _, Object in ipairs(Model:GetDescendants()) do
    if Object:IsA("NumberValue") or Object:IsA("IntValue") then
      local N = Object.Name:lower()
      if N == "hp" or N == "health" or N == "currenthp" or N == "currenthealth" then
        CurrentHP = Object.Value
      end
      if N == "maxhp" or N == "maxhealth" or N == "maximumhealth" then
        MaxHP = Object.Value
      end
    end
  end

  return CurrentHP, MaxHP
end

local function GetSelectedBossHealth()
  local bossPart = f21(v76[selectedBossName] or "Boss1")
  if not bossPart then return nil, nil, nil end

  local container = bossPart.Parent
  local hp, maxHp = GetHealth(container)

  if not hp and not maxHp then
    hp, maxHp = GetHealth(bossPart)
  end

  return hp, maxHp, bossPart
end

selectedBossName = "Boss 1"
autoBossFarm = false

local autoFarmBossFight = bossFight:AddFolder("Auto Farm Boss Fight")

local addDropdown9 = autoFarmBossFight:AddDropdown("Select boss", function(p39)
  selectedBossName = p39
end)

addDropdown9:Add("Boss 1")
addDropdown9:Add("Boss 2")
addDropdown9:Add("Boss 3")
addDropdown9:Add("Boss 4")
addDropdown9:Add("Boss 5")
addDropdown9:Add("Boss Rainbow")

-- Boss-system state copied/adapted from the working first script.
local BossTimerLbl = bossFight:AddLabel("⏳ SPAWN IN: 00:00:00")
local BossHPLbl = bossFight:AddLabel("👑 BOSS HP: SEARCHING...")

local autoLeaveForBoss = true
local previousTrainingState = false
local bossStoppedForPrep = false
local postBossProcessed = false
local bossWasAlive = false
local currentBossHP = 0
local hasPlayedSound = false

local alertSound = Instance.new("Sound")
alertSound.Name = "BossSpawnAlertSound"
alertSound.SoundId = "rbxassetid://9114223178"
alertSound.Volume = 2.5
alertSound.Parent = game:GetService("SoundService")

bossFight:AddToggle({
  Name = "Auto Leave Training at 15s",
  Default = true,
  Callback = function(state)
    autoLeaveForBoss = state
  end
})

-- Optional machine exit, using the exact remote names from the working first script.
-- If this Clan Devil version has no such remote, nothing happens and the normal
-- training flag is still paused/resumed correctly.
local _bossREvents = game:GetService("ReplicatedStorage"):FindFirstChild("rEvents")
local _bossMachineRemote = _bossREvents and _bossREvents:FindFirstChild("machineInteractRemote")

local function stopTrainingForBoss()
  previousTrainingState = getgenv()._AutoRepFarmEnabled == true
  getgenv()._AutoRepFarmEnabled = false

  if _bossMachineRemote then
    pcall(function()
      _bossMachineRemote:InvokeServer("leaveMachine")
    end)
  end
end

local function resumePreviousTraining()
  if previousTrainingState then
    getgenv()._AutoRepFarmEnabled = true
  end
end

-- Live Boss HP tracking, following the first script's logic.
task.spawn(function()
  while task.wait(0.5) do
    local hp, maxHp, bossPart = GetSelectedBossHealth()

    if not bossPart then
      BossHPLbl:Set("👑 BOSS HP: NO BOSS SPAWNED")
      bossWasAlive = false
      currentBossHP = 0
    elseif hp and hp > 0 then
      bossWasAlive = true
      currentBossHP = hp
      if maxHp then
        BossHPLbl:Set("👑 " .. bossPart.Parent.Name .. ": " .. tostring(math.floor(hp)) .. " / " .. tostring(math.floor(maxHp)))
      else
        BossHPLbl:Set("👑 " .. bossPart.Parent.Name .. ": " .. tostring(math.floor(hp)))
      end
    else
      BossHPLbl:Set("👑 BOSS HP: DEAD")
      bossWasAlive = false
      currentBossHP = 0
    end
  end
end)

-- 3-hour timer + automatic preparation/resume, matching the first script.
task.spawn(function()
  while task.wait(0.25) do
    local totalSecInDay = (os.date("!*t").hour * 3600)
      + (os.date("!*t").min * 60)
      + os.date("!*t").sec

    local secLeft = 10800 - (totalSecInDay % 10800)
    if secLeft == 10800 then secLeft = 0 end

    if secLeft == 0 then
      BossTimerLbl:Set("⏳ SPAWN IN: BOSS SPAWNING NOW!")
      if not hasPlayedSound then
        pcall(function() alertSound:Play() end)
        hasPlayedSound = true
      end
    else
      local hrs = math.floor(secLeft / 3600)
      local mins = math.floor((secLeft % 3600) / 60)
      local secs = secLeft % 60
      BossTimerLbl:Set(string.format("⏳ SPAWN IN: %02d:%02d:%02d", hrs, mins, secs))
      hasPlayedSound = false
    end

    -- 15-second preparation: stop the exercise that was actually running.
    if autoLeaveForBoss and secLeft <= 15 and secLeft > 0 and not bossStoppedForPrep then
      bossStoppedForPrep = true
      postBossProcessed = false
      stopTrainingForBoss()
    end

    -- After the boss cycle, once the boss is no longer alive, restore the
    -- exact training state that existed before the boss preparation.
    if bossStoppedForPrep and not postBossProcessed and secLeft > 15 then
      if not bossWasAlive and currentBossHP <= 0 then
        postBossProcessed = true

        task.spawn(function()
          task.wait(3)

          if not autoBossFarm then
            resumePreviousTraining()
          else
            resumePreviousTraining()
          end

          bossStoppedForPrep = false
        end)
      end
    end
  end
end)

-- Main Boss Fight loop. The existing boss hit behavior is retained, with
-- respawn handling kept active until the switch is turned OFF.
autoFarmBossFight:AddSwitch("Auto Fast Boss Hit", function(p40)
  autoBossFarm = p40

  if autoBossFarm then
    task.spawn(function()
      local localPlayer11 = players.LocalPlayer
      local muscleEvent6 = v3.muscleEvent

      while autoBossFarm and muscleEvent6 do
        local character9 = localPlayer11.Character
        local humanoid6 = character9 and character9:FindFirstChildOfClass("Humanoid")

        if not character9 or not humanoid6 or humanoid6.Health <= 0 then
          repeat
            task.wait()
            character9 = localPlayer11.Character
            humanoid6 = character9 and character9:FindFirstChildOfClass("Humanoid")
          until not autoBossFarm or not muscleEvent6 or (character9 and humanoid6 and humanoid6.Health > 0)
        end

        if not autoBossFarm or not muscleEvent6 then break end

        f1("Punch")
        local v77 = f21(v76[selectedBossName] or "Boss1")
        local humanoidRootPart10 = character9 and character9:FindFirstChild("HumanoidRootPart")
        local rightHand3 = character9 and character9:FindFirstChild("RightHand")

        if v77 and humanoidRootPart10 and rightHand3 and humanoid6 then
          pcall(function()
            for _, value33 in ipairs(character9:GetChildren()) do
              if value33:IsA("BasePart") then
                value33.CanCollide = false
              end
            end

            humanoid6.PlatformStand = true
            humanoidRootPart10.CFrame = v77.CFrame * CFrame.new(0, 15, 0)
            humanoidRootPart10.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            humanoidRootPart10.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
          end)

          if type(firetouchinterest) == "function" then
            firetouchinterest(v77, rightHand3, 0)
            firetouchinterest(v77, rightHand3, 1)
          end

          pcall(function()
            muscleEvent6:FireServer("punch", "leftHand")
            muscleEvent6:FireServer("punch", "rightHand")
          end)
        end

        task.wait(0.001)
      end

      pcall(function()
        local character10 = localPlayer11.Character
        local humanoid7 = character10 and character10:FindFirstChildOfClass("Humanoid")
        if humanoid7 then humanoid7.PlatformStand = false end
      end)
    end)
  end
end)

-- Explicit respawn hook: if Auto Boss is ON, immediately resume the Boss
-- loop after a new character is available.
LocalPlayer.CharacterAdded:Connect(function(newCharacter)
  if not autoBossFarm then return end

  task.spawn(function()
    local humanoid = newCharacter:WaitForChild("Humanoid", 10)
    local hrp = newCharacter:WaitForChild("HumanoidRootPart", 10)

    if humanoid and hrp and humanoid.Health > 0 and autoBossFarm then
      task.wait(0.05)
      local bossPart = f21(v76[selectedBossName] or "Boss1")
      if bossPart then
        pcall(function()
          humanoid.PlatformStand = true
          hrp.CFrame = bossPart.CFrame * CFrame.new(0, 15, 0)
          hrp.AssemblyLinearVelocity = Vector3.zero
          hrp.AssemblyAngularVelocity = Vector3.zero
        end)
      end
    end
  end)
end)

------------------------------------------------------------------
-- WAR TAB
------------------------------------------------------------------
local clanTab = window:AddTab("         War         ")

local blacklistWords = {}
local active = {}
local autoPunchActive = false
local characterLoaded = false
local attackDelay = 0.05
local spamming = false

local function trim(str)
    return str:match("^%s*(.-)%s*$")
end

local function parseList(str)
    blacklistWords = {}
    for w in string.gmatch(str or "", "[^,]+") do
        local t = trim(w):lower()
        if t ~= "" then
            table.insert(blacklistWords, t)
        end
    end
end

local function saveList() end

local function isAnyActive()
    return next(active) ~= nil
end

local function refreshActive()
    table.clear(active)
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer then
            local name = (plr.DisplayName or plr.Name):lower()
            for _, word in ipairs(blacklistWords) do
                if name:find(word, 1, true) then
                    active[plr] = true
                    break
                end
            end
        end
    end
end

local function waitForCharacter()
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    char:WaitForChild("HumanoidRootPart")
    char:WaitForChild("Humanoid")
    characterLoaded = true
end

local function getHands(char)
    local right = char:FindFirstChild("RightHand") or char:FindFirstChild("Right Arm")
    local left = char:FindFirstChild("LeftHand") or char:FindFirstChild("Left Arm")
    return right, left
end

local function ensurePunchEquipped()
    local char = LocalPlayer.Character
    if not char then return nil end
    local punch = LocalPlayer.Backpack:FindFirstChild("Punch") or char:FindFirstChild("Punch")
    if punch and punch.Parent ~= char then
        punch.Parent = char
    end
    return punch
end

local blacklistLabel = clanTab:AddLabel("")
blacklistLabel.Text = ((#blacklistWords == 0) and "Blacklist: (empty)") or ("Blacklist: " .. table.concat(blacklistWords, ","))

local blacklistBox = clanTab:AddTextBox("Add to Blacklist", function(txt)
    parseList(table.concat(blacklistWords, ",") .. "," .. txt)
    saveList()
    blacklistLabel.Text = ((#blacklistWords == 0) and "Blacklist: (empty)") or ("Blacklist: " .. table.concat(blacklistWords, ","))
    refreshActive()
    if not isAnyActive() then
        autoPunchActive = false
    end
end, {placeholder = "Ej: MVX, Sigma, Juan"})

local removeBox = clanTab:AddTextBox("Remove from Blacklist", function(txt)
    local toRemove = {}
    for w in string.gmatch(txt, "[^,]+") do
        local t = trim(w):lower()
        if t ~= "" then
            table.insert(toRemove, t)
        end
    end
    for _, word in ipairs(toRemove) do
        for i = #blacklistWords, 1, -1 do
            if blacklistWords[i] == word then
                table.remove(blacklistWords, i)
            end
        end
    end
    saveList()
    blacklistLabel.Text = ((#blacklistWords == 0) and "Blacklist: (empty)") or ("Blacklist: " .. table.concat(blacklistWords, ","))
    refreshActive()
    if not isAnyActive() then
        autoPunchActive = false
    end
end)

RunService.Heartbeat:Connect(function()
    refreshActive()
end)

task.spawn(function()
    while true do
        task.wait(attackDelay)
        if not isAnyActive() then continue end
        if not LocalPlayer.Character then continue end
        if not characterLoaded then continue end

        local punch = ensurePunchEquipped()
        if not punch then continue end

        local char = LocalPlayer.Character
        local rightHand, leftHand = getHands(char)
        for plr in pairs(active) do
            if plr and plr.Character then
                local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
                local hum = plr.Character:FindFirstChild("Humanoid")
                if hrp and hum and hum.Health > 0 then
                    pcall(function()
                        LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
                        LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
                    end)
                    pcall(function()
                        firetouchinterest(rightHand, hrp, 1)
                        firetouchinterest(leftHand, hrp, 1)
                        firetouchinterest(rightHand, hrp, 0)
                        firetouchinterest(leftHand, hrp, 0)
                    end)
                end
            end
        end
    end
end)

Players.PlayerAdded:Connect(function(plr)
    plr:GetPropertyChangedSignal("DisplayName"):Connect(function()
        refreshActive()
    end)
end)

LocalPlayer.CharacterAdded:Connect(function()
    characterLoaded = false
    task.wait(0.2)
    waitForCharacter()
    refreshActive()
    if isAnyActive() then
        task.defer(function()
            for i = 1, 50 do
                if not isAnyActive() then break end
                ensurePunchEquipped()
                task.wait(0.15)
            end
        end)
    end
end)

waitForCharacter()
refreshActive()

-- Flinging Spot
local flingingSpotEnabled = false
local charConnection = nil

clanTab:AddSwitch("Flinging Spot", function(Value)
    flingingSpotEnabled = Value
    local function applySpot(character)
        local root = character:WaitForChild("HumanoidRootPart")
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if flingingSpotEnabled then
            root.CFrame = CFrame.new(-27738.0449, 50000, -7526.76562,
                -0.113436252, -3.5683843e-9, -0.993545294,
                -6.7255856e-10, 1, -3.5147787e-9,
                0.993545294, 2.6951408e-10, -0.113436252)
            root.Anchored = true
            if humanoid then
                humanoid.WalkSpeed = 0
                humanoid.JumpPower = 0
            end
        else
            root.Anchored = false
            if humanoid then
                humanoid.WalkSpeed = 16
                humanoid.JumpPower = 50
            end
        end
    end

    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    applySpot(character)

    if charConnection then
        charConnection:Disconnect()
        charConnection = nil
    end
    if Value then
        charConnection = LocalPlayer.CharacterAdded:Connect(function(newChar)
            applySpot(newChar)
        end)
    end
end)

clanTab:AddButton("Spam Size", function()
    spamming = not spamming
    if spamming then
        task.spawn(function()
            local sizes = {100, 2, 40, 50, 60, 72}
            local i = 1
            while spamming do
                ReplicatedStorage.rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", sizes[i])
                i = i + 1
                if i > #sizes then i = 1 end
                task.wait(0.04)
            end
        end)
    end
end)

clanTab:AddButton("Normal Size", function()
    ReplicatedStorage.rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", 2)
end)

local titleLabel = clanTab:AddLabel("Kill While Dead Ect")
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

clanTab:AddSwitch("Kill UnderWater [ Auto Punch + Egg ]", function(Value)
    if Value then
        ReplicatedStorage.rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", 1)
        local targetCFrame = CFrame.new(-9.0580864, -118.967911, -334.924042,
            0.391505003, 0.000186817284, 0.92017597,
            -0.000211292776, 1, -0.000113125207,
            -0.92017597, -0.00015013745, 0.391505033)

        local character = LocalPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character.HumanoidRootPart.CFrame = targetCFrame
        end

        getgenv().posLock = RunService.Heartbeat:Connect(function()
            local character = LocalPlayer.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                character.HumanoidRootPart.CFrame = targetCFrame
            end
        end)

        getgenv().antiStatuePunch = true
        task.spawn(function()
            while getgenv().antiStatuePunch do
                local character = LocalPlayer.Character
                if character then
                    local egg = LocalPlayer.Backpack:FindFirstChild("Protein Egg")
                        or character:FindFirstChild("Protein Egg")
                    if egg and egg.Parent ~= character then
                        egg.Parent = character
                    end

                    local punch = LocalPlayer.Backpack:FindFirstChild("Punch")
                        or character:FindFirstChild("Punch")
                    if punch then
                        if punch.Parent ~= character then
                            punch.Parent = character
                        end
                        if not punch:GetAttribute("AntiUnequip") then
                            punch:SetAttribute("AntiUnequip", true)
                            punch.Unequipped:Connect(function()
                                if getgenv().antiStatuePunch and punch then
                                    task.defer(function()
                                        punch.Parent = character
                                    end)
                                end
                            end)
                        end
                    end

                    if punch then
                        LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
                        LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
                    end
                end
                task.wait(0.01)
            end
        end)
    else
        if getgenv().posLock then
            getgenv().posLock:Disconnect()
            getgenv().posLock = nil
        end
        getgenv().antiStatuePunch = false
    end
end)

-- Anti Statue
local AntiStatueEnabled = false
local TargetCFrame = CFrame.new(2.90918088, 85.5627899, 243.827026,
    0.999048233, -7.404807e-10, 0.0436196439,
    3.1804221e-9, 1, -5.5867364e-8,
    -0.0436196439, 5.5952917e-8, 0.999048233)

local function TeleportOnRespawn(character)
    if not AntiStatueEnabled then return end
    local hrp = character:WaitForChild("HumanoidRootPart", 5)
    if hrp then
        task.wait(0.1)
        hrp.CFrame = TargetCFrame
    end
end

LocalPlayer.CharacterAdded:Connect(TeleportOnRespawn)

local function GetTool(name, character)
    return LocalPlayer.Backpack:FindFirstChild(name) or (character and character:FindFirstChild(name))
end

local function EquipPunch(character)
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end
    local punch = GetTool("Punch", character)
    if punch and punch:IsA("Tool") then
        humanoid:EquipTool(punch)
        local attackTime = punch:FindFirstChild("attackTime")
        if attackTime and attackTime:IsA("NumberValue") then
            attackTime.Value = 0
        end
    end
end

local function EquipEgg(character)
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end
    local egg = GetTool("Protein Egg", character)
    if egg and egg:IsA("Tool") then
        humanoid:EquipTool(egg)
    end
end

clanTab:AddSwitch("Anti Statue [ Auto Punch + Egg ]", function(Value)
    AntiStatueEnabled = Value
    _G.autoPunchActive = Value
    if Value then
        local character = LocalPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character.HumanoidRootPart.CFrame = TargetCFrame
        end

        task.spawn(function()
            while _G.autoPunchActive do
                local char = LocalPlayer.Character
                EquipPunch(char)
                task.wait(0.1)
            end
        end)

        task.spawn(function()
            while _G.autoPunchActive do
                task.wait(2)
                if not _G.autoPunchActive then break end
                local char = LocalPlayer.Character
                EquipEgg(char)
                task.wait(0.3)
                EquipPunch(char)
            end
        end)

        task.spawn(function()
            while _G.autoPunchActive do
                local char = LocalPlayer.Character
                local punch = char and char:FindFirstChild("Punch")
                if punch and punch:IsA("Tool") then
                    punch:Activate()
                end
                task.wait()
            end
        end)

        if not _G.autoPunchRespawnConn then
            _G.autoPunchRespawnConn = LocalPlayer.CharacterAdded:Connect(function(char)
                if not _G.autoPunchActive then return end
                task.wait(0.5)
                EquipPunch(char)
            end)
        end
    else
        local character = LocalPlayer.Character
        if character then
            local punch = character:FindFirstChild("Punch")
            if punch then punch.Parent = LocalPlayer.Backpack end
            local egg = character:FindFirstChild("Protein Egg")
            if egg then egg.Parent = LocalPlayer.Backpack end
        end
        if _G.autoPunchRespawnConn then
            _G.autoPunchRespawnConn:Disconnect()
            _G.autoPunchRespawnConn = nil
        end
    end
end)

-- Kill while dead [NaN + Egg + Punch]
local comboActive = false
local eggLoop = nil
local characterAddedConn = nil
local changeSpeedSizeRemote = ReplicatedStorage.rEvents.changeSpeedSizeRemote
local player = LocalPlayer

local function ensureEggEquipped()
    local egg = LocalPlayer.Backpack:FindFirstChild("Protein Egg")
        or (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Protein Egg"))
    if egg and LocalPlayer.Character and egg.Parent ~= LocalPlayer.Character then
        egg.Parent = LocalPlayer.Character
    end
end

local comboSwitch = clanTab:AddSwitch("Kill while dead [  NaN + Egg + Punch ]", function(bool)
    comboActive = bool
    autoEquipPunch = bool
    if bool then
        changeSpeedSizeRemote:InvokeServer("changeSize", 0/0) -- NaN
        eggLoop = task.spawn(function()
            while comboActive do
                ensureEggEquipped()
                task.wait(0.2)
            end
        end)
        task.spawn(function()
            while autoEquipPunch do
                local punch = player.Backpack:FindFirstChild("Punch")
                if punch and player.Character then
                    punch.Parent = player.Character
                end
                task.wait(0.1)
            end
        end)
        characterAddedConn = player.CharacterAdded:Connect(function(newChar)
            task.wait(0.5)
            ensureEggEquipped()
        end)
        ensureEggEquipped()
    else
        if eggLoop then
            task.cancel(eggLoop)
            eggLoop = nil
        end
        if characterAddedConn then
            characterAddedConn:Disconnect()
            characterAddedConn = nil
        end
    end
end)


local blockEatingEggs = false
clanTab:AddSwitch("Block Eating Eggs", function(state)
if state then
loadstring(game:HttpGet("https://raw.githubusercontent.com/inf-ontop/Muscle-Legends/refs/heads/main/BlockEggs.lua"))()
end
end)

local function isProteinEgg(tool)
    return tool:IsA("Tool") and ((tool.Name == "Protein Egg") or (tool.Name == "ProteinEgg"))
end

local function setupTool(tool)
    if not isProteinEgg(tool) then return end
    tool.Activated:Connect(function()
        if blockEatingEggs then
            tool:Deactivate()
            local character = LocalPlayer.Character
            if character and tool.Parent == character then
                tool.Parent = LocalPlayer.Backpack
            end
        end
    end)
    tool:GetPropertyChangedSignal("Parent"):Connect(function()
        if not blockEatingEggs then return end
        local character = LocalPlayer.Character
        if character and tool.Parent == character then
            task.defer(function()
                if tool.Parent == character then
                    tool.Parent = LocalPlayer.Backpack
                end
            end)
        end
    end)
end

for _, tool in ipairs(LocalPlayer.Backpack:GetChildren()) do
    setupTool(tool)
end

LocalPlayer.Backpack.ChildAdded:Connect(setupTool)

local function onCharacter(character)
    for _, tool in ipairs(character:GetChildren()) do
        setupTool(tool)
    end
    character.ChildAdded:Connect(setupTool)
end

if LocalPlayer.Character then
    onCharacter(LocalPlayer.Character)
end
LocalPlayer.CharacterAdded:Connect(onCharacter)

------------------------------------------------------------------
-- PACKS TAB
------------------------------------------------------------------
local packspa = window:AddTab("         Packs         ")

local titleLabel = packspa:AddLabel("Pack Spamming")
titleLabel.TextSize = 26
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)



local Label = packspa:AddLabel(" ")
Label.FontFace = Font.new("rbxasset://fonts/families/PermanentMarker.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Label.TextSize = 10

local running = false

local function getRemote()
    local rEvents = ReplicatedStorage:FindFirstChild("rEvents")
    if not rEvents then return end
    return rEvents:FindFirstChild("equipPetEvent")
end

local function unequipAll(remote, petsFolder)
    for _, folder in pairs(petsFolder:GetChildren()) do
        if folder:IsA("Folder") then
            for _, pet in pairs(folder:GetChildren()) do
                remote:FireServer("unequipPet", pet)
            end
        end
    end
end

local function getPets(folder, name)
    local t = {}
    for _, pet in pairs(folder:GetChildren()) do
        if pet.Name == name then
            table.insert(t, pet)
        end
    end
    return t
end

packspa:AddButton("Smart Pack Spam", function()
    if running then return end
    running = true
    task.spawn(function()
        local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
        if not petsFolder then
            warn("petsFolder not found")
            running = false
            return
        end
        local unique = petsFolder:FindFirstChild("Unique")
        if not unique then
            warn("Unique folder not found")
            running = false
            return
        end
        local remote = getRemote()
        if not remote then
            warn("equipPetEvent not found")
            running = false
            return
        end

        while running do
            unequipAll(remote, petsFolder)
            task.wait(0.001)
            local mighty = getPets(unique, "Mighty Monster")
            for i = 1, math.min(8, #mighty) do
                if not running then return end
                remote:FireServer("equipPet", mighty[i])
                task.wait(0.001)
            end
            task.wait(0.001)
            unequipAll(remote, petsFolder)
            task.wait(0.001)
            local wizard = getPets(unique, "Wild Wizard")
            for i = 1, math.min(8, #wizard) do
                if not running then return end
                remote:FireServer("equipPet", wizard[i])
                task.wait(0.001)
            end
            task.wait(0.001)
        end
    end)
end)

packspa:AddButton("Stop Spaming", function()
    running = false
    print("[PackSpam]: Stopped")
end)

local titleLabel = packspa:AddLabel("________________")
titleLabel.TextSize = 18
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

local titleLabel = packspa:AddLabel(" ")
titleLabel.TextSize = 18
titleLabel.Font = Enum.Font.Bangers
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Additional pack spam variants (kept as in original)
packspa:AddButton("Start Pack Spam", function()
    if running then return end
    running = true
    task.spawn(function()
        local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
        if not petsFolder then
            warn("petsFolder not found")
            running = false
            return
        end
        local unique = petsFolder:FindFirstChild("Unique")
        if not unique then
            warn("Unique folder not found")
            running = false
            return
        end
        local remote = getRemote()
        if not remote then
            warn("equipPetEvent not found")
            running = false
            return
        end

        while running do
            unequipAll(remote, petsFolder)
            task.wait(0.001)
            local mighty = getPets(unique, "Mighty Monster")
            for i = 1, math.min(8, #mighty) do
                if not running then return end
                remote:FireServer("equipPet", mighty[i])
                task.wait(0.001)
            end
            task.wait(0.001)
            unequipAll(remote, petsFolder)
            task.wait(0)
            local wizard = getPets(unique, "Wild Wizard")
            for i = 1, math.min(0, #wizard) do -- original had min(0, ...) which does nothing
                if not running then return end
                remote:FireServer("equipPet", wizard[i])
                task.wait(0)
            end
            task.wait(0)
        end
    end)
end)

packspa:AddButton("Stop Pack Spam", function()
    running = false
    print("[PackSpam]: Stopped")
end)

-- Equip helpers
local function EquipMightyMonsters()
    local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
    if not petsFolder then return end
    local unique = petsFolder:FindFirstChild("Unique")
    if not unique then return end
    local remote = getRemote()
    if not remote then return end

    local count = 0
    for _, pet in pairs(unique:GetChildren()) do
        if pet.Name == "Mighty Monster" then
            remote:FireServer("equipPet", pet)
            count = count + 1
            if count >= 8 then break end
            task.wait(0.05)
        end
    end
end

local function EquipWildWizards()
    local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
    if not petsFolder then return end
    local unique = petsFolder:FindFirstChild("Unique")
    if not unique then return end
    local remote = getRemote()
    if not remote then return end

    local count = 0
    for _, pet in pairs(unique:GetChildren()) do
        if pet.Name == "Wild Wizard" then
            remote:FireServer("equipPet", pet)
            count = count + 1
            if count >= 8 then break end
            task.wait(0.05)
        end
    end
end

packspa:AddButton("Equip Health Packs", function()
    local remote = getRemote()
    if not remote then return end
    local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
    if not petsFolder then return end
    unequipAll(remote, petsFolder)
    task.wait(0.05)
    EquipMightyMonsters()
end)

packspa:AddButton("Equip Damage Packs", function()
    local remote = getRemote()
    if not remote then return end
    local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
    if not petsFolder then return end
    unequipAll(remote, petsFolder)
    task.wait(0.05)
    EquipWildWizards()
end)

------------------------------------------------------------------
-- STATS TAB
------------------------------------------------------------------
local SpecsTab = window:AddTab("      Stats      ")

local playerToInspect = nil

local emojiMap = {
    Time = utf8.char(128347),
    Stats = utf8.char(128202),
    Strength = utf8.char(128170),
    Rebirths = utf8.char(128260),
    Durability = utf8.char(128737),
    Kills = utf8.char(128128),
    Agility = utf8.char(127939),
    ["Evil Karma"] = utf8.char(128520),
    ["Good Karma"] = utf8.char(128519),
    Brawls = utf8.char(129354)
}

local statDefinitions = {
    {name = "Strength", statName = "Strength"},
    {name = "Rebirths", statName = "Rebirths"},
    {name = "Durability", statName = "Durability"},
    {name = "Agility", statName = "Agility"},
    {name = "Kills", statName = "Kills"},
    {name = "Evil Karma", statName = "evilKarma"},
    {name = "Good Karma", statName = "goodKarma"},
    {name = "Brawls", statName = "Brawls"}
}

local function getCurrentPlayers()
    local playersList = {}

    for _, p in ipairs(Players:GetPlayers()) do
        table.insert(playersList, p)
    end

    return playersList
end

local specdropdown = SpecsTab:AddDropdown("Choose Player", function(text)
    for _, player in ipairs(getCurrentPlayers()) do
        local optionText = player.DisplayName .. " | " .. player.Name

        if text == optionText then
            playerToInspect = player
            updateStatLabels(playerToInspect)
            break
        end
    end
end)

for _, player in ipairs(getCurrentPlayers()) do
    specdropdown:Add(player.DisplayName .. " | " .. player.Name)
end

Players.PlayerAdded:Connect(function(player)
    specdropdown:Add(player.DisplayName .. " | " .. player.Name)
end)

Players.PlayerRemoving:Connect(function(player)
    specdropdown:Clear()

    for _, p in ipairs(getCurrentPlayers()) do
        specdropdown:Add(p.DisplayName .. " | " .. p.Name)
    end
end)

local playerNameLabel = SpecsTab:AddLabel("Name: N/A")
playerNameLabel.TextSize = 20
playerNameLabel.Font = Enum.Font.PermanentMarker

local playerUsernameLabel = SpecsTab:AddLabel("Username: N/A")
playerUsernameLabel.TextSize = 20
playerUsernameLabel.Font = Enum.Font.PermanentMarker

local statLabels = {}

for _, info in ipairs(statDefinitions) do
    local label = SpecsTab:AddLabel(
        emojiMap[info.name] .. " " .. info.name .. ": 0 (0)"
    )

    label.TextSize = 20
    label.Font = Enum.Font.PermanentMarker

    statLabels[info.name] = label
end

local function formatNumber(n)
    if n >= 999999986991104 then
        return string.format("%.1fqa", n / 999999986991104)
    elseif n >= 999999995904 then
        return string.format("%.1ft", n / 999999995904)
    elseif n >= 1000000000 then
        return string.format("%.1fb", n / 1000000000)
    elseif n >= 1000000 then
        return string.format("%.1fm", n / 1000000)
    elseif n >= 1000 then
        return string.format("%.1fk", n / 1000)
    else
        return tostring(n)
    end
end

local function formatWithCommas(n)
    local formatted = tostring(math.floor(n))

    while true do
        formatted, k = formatted:gsub(
            "^(-?%d+)(%d%d%d)",
            "%1,%2"
        )

        if k == 0 then
            break
        end
    end

    return formatted
end

local function updateStatLabels(targetPlayer)
    if not targetPlayer then
        return
    end

    playerNameLabel.Text = "Name: " .. targetPlayer.DisplayName
    playerUsernameLabel.Text = "Username: " .. targetPlayer.Name

    local leaderstats = targetPlayer:FindFirstChild("leaderstats")

    if not leaderstats then
        return
    end

    for _, info in ipairs(statDefinitions) do
        local statObject

        if leaderstats:FindFirstChild(info.statName) then
            statObject = leaderstats:FindFirstChild(info.statName)
        elseif targetPlayer:FindFirstChild(info.statName) then
            statObject = targetPlayer:FindFirstChild(info.statName)
        end

        if statObject then
            local value = statObject.Value
            local emoji = emojiMap[info.name] or ""

            statLabels[info.name].Text = string.format(
                "%s %s: %s (%s)",
                emoji,
                info.name,
                formatNumber(value),
                formatWithCommas(value)
            )
        else
            statLabels[info.name].Text =
                emojiMap[info.name] .. " " .. info.name .. ": 0 (0)"
        end
    end
end

task.spawn(function()
    while true do
        if playerToInspect then
            updateStatLabels(playerToInspect)
        end

        task.wait(0.2)
    end
end)

local titleLabel = SpecsTab:AddLabel(" ")
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

local titleLabel = SpecsTab:AddLabel(
    "_______________________________________________"
)

titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

local titleLabel = SpecsTab:AddLabel(" ")
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.PermanentMarker
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Advanced Stats
local advancedStatsHeader = SpecsTab:AddLabel("Advanced Stats:")
advancedStatsHeader.TextSize = 24
advancedStatsHeader.Font = Enum.Font.PermanentMarker

local enemyHealthLabel = SpecsTab:AddLabel("Enemy Health: N/A")
enemyHealthLabel.TextSize = 20
enemyHealthLabel.TextColor3 = Color3.fromRGB(0, 140, 255)
enemyHealthLabel.Font = Enum.Font.PermanentMarker

local playerDamageLabel = SpecsTab:AddLabel("Your Damage: N/A")
playerDamageLabel.TextSize = 20
playerDamageLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
playerDamageLabel.Font = Enum.Font.PermanentMarker

local hitsToKillLabel = SpecsTab:AddLabel("Hits to Kill: N/A")
hitsToKillLabel.TextSize = 20
hitsToKillLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
hitsToKillLabel.Font = Enum.Font.PermanentMarker

local function calculateEnemyHealth(targetPlayer)
    if not targetPlayer then
        return 0
    end

    local baseDura = 0

    local durabilityStat =
        targetPlayer:FindFirstChild("Durability")
        or (
            targetPlayer:FindFirstChild("leaderstats")
            and targetPlayer.leaderstats:FindFirstChild("Durability")
        )

    if durabilityStat then
        baseDura = durabilityStat.Value
    end

    local totalMultiplier = 1

    local ultFolder = targetPlayer:FindFirstChild("ultimatesFolder")

    if ultFolder then
        local infernalHealth = ultFolder:FindFirstChild("Infernal Health")

        if infernalHealth then
            local upgrades = infernalHealth.Value or 0
            totalMultiplier = totalMultiplier + (0.15 * upgrades)
        end
    end

    local equippedPetsFolder = targetPlayer:FindFirstChild("equippedPets")

    if equippedPetsFolder then
        local petBonus = 0

        for _, petValue in ipairs(equippedPetsFolder:GetChildren()) do
            if petValue:IsA("ObjectValue") and petValue.Value then
                local petNameLower =
                    string.lower(petValue.Value.Name)

                if petNameLower:match("mighty")
                    and petNameLower:match("monster") then

                    petBonus = petBonus + 0.5
                end
            end
        end

        totalMultiplier = totalMultiplier + petBonus
    end

    return baseDura * totalMultiplier
end

local function calculateLocalPlayerDamage()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")

    local strengthStat =
        leaderstats
        and leaderstats:FindFirstChild("Strength")

    if not strengthStat then
        return 0
    end

    local baseDamage = strengthStat.Value * 0.0667
    local totalMultiplier = 1

    local ultFolder =
        LocalPlayer:FindFirstChild("ultimatesFolder")

    if ultFolder then
        local demonDamage =
            ultFolder:FindFirstChild("Demon Damage")

        if demonDamage then
            local upgrades = demonDamage.Value or 0
            totalMultiplier = totalMultiplier + (0.1 * upgrades)
        end
    end

    local equippedPetsFolder =
        LocalPlayer:FindFirstChild("equippedPets")

    if equippedPetsFolder then
        local petBonus = 0

        for _, petValue in ipairs(equippedPetsFolder:GetChildren()) do
            if petValue:IsA("ObjectValue") and petValue.Value then
                local petNameLower =
                    string.lower(petValue.Value.Name)

                if petNameLower:match("wild")
                    and petNameLower:match("wizard") then

                    petBonus = petBonus + 0.5
                end
            end
        end

        totalMultiplier = totalMultiplier + petBonus
    end

    return baseDamage * totalMultiplier
end

local function calculateHitsToKill(health, damage)
    if damage <= 0 then
        return "∞"
    end

    local hits = math.ceil(health / damage)

    if hits > 100 then
        return "∞"
    elseif hits < 1 then
        return 1
    else
        return hits
    end
end

local function updateAdvancedStats(targetPlayer)
    if not targetPlayer then
        enemyHealthLabel.Text = "Enemy Health: N/A"
        playerDamageLabel.Text = "Your Damage: N/A"
        hitsToKillLabel.Text = "Hits to Kill: N/A"
        return
    end

    local enemyHealth = calculateEnemyHealth(targetPlayer)
    local playerDamage = calculateLocalPlayerDamage()
    local hitsToKill =
        calculateHitsToKill(enemyHealth, playerDamage)

    enemyHealthLabel.Text = string.format(
        "Enemy Health: %s (%s)",
        formatNumber(enemyHealth),
        formatWithCommas(enemyHealth)
    )

    playerDamageLabel.Text = string.format(
        "Your Damage: %s (%s)",
        formatNumber(playerDamage),
        formatWithCommas(playerDamage)
    )

    hitsToKillLabel.Text = string.format(
        "Hits to Kill: %s",
        tostring(hitsToKill)
    )
end

task.spawn(function()
    while true do
        updateAdvancedStats(playerToInspect)
        task.wait(0.1)
    end
end)
end
------------------------------------------------------------------
-- END AUTO KILL V2
------------------------------------------------------------------


local AutoFarm = window:AddTab("✨تمرين و ريبر")


-- Estado inicial
getgenv()._AutoRepFarmEnabled = false  

-- Switch en la librería
AutoFarm:AddSwitch("تمرين قوة💪(استعمله اذا كان بنقك اقل من 250 )", function(state)
    getgenv()._AutoRepFarmEnabled = state
    warn("[Auto Rep Farm] Estado cambiado a:", state and "ON" or "OFF")
end)

-- Servicios
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local Stats = game:GetService("Stats")
local LocalPlayer = Players.LocalPlayer

-- Configuración
local PET_NAME = "Swift Samurai"
local ROCK_NAME = "Rock5M"
local PROTEIN_EGG_NAME = "ProteinEgg"
local PROTEIN_EGG_INTERVAL = 30 * 60
local REPS_PER_CYCLE = 10
local REP_DELAY = 0.01
local ROCK_INTERVAL = 1
local MAX_PING = 450   -- si pasa esto, pausa
local MIN_PING = 250   -- si baja de esto, reanuda

-- Variables internas
local HumanoidRootPart
local lastProteinEggTime = 0
local lastRockTime = 0

-- Funciones
local function getPing()
    local success, ping = pcall(function()
        return Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
    end)
    return success and ping or 999
end

local function updateCharacterRefs()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    HumanoidRootPart = character:WaitForChild("HumanoidRootPart", 5)
end

local function equipPet()
    local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
    if petsFolder and petsFolder:FindFirstChild("Unique") then
        for _, pet in pairs(petsFolder.Unique:GetChildren()) do
            if pet.Name == PET_NAME then
                ReplicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", pet)
                break
            end
        end
    end
end

local function eatProteinEgg()
    if LocalPlayer:FindFirstChild("Backpack") then
        for _, item in pairs(LocalPlayer.Backpack:GetChildren()) do
            if item.Name == PROTEIN_EGG_NAME then
                ReplicatedStorage.rEvents.eatEvent:FireServer("eat", item)
                break
            end
        end
    end
end

local function hitRock()
    local rock = workspace:FindFirstChild(ROCK_NAME)
    if rock and HumanoidRootPart then
        HumanoidRootPart.CFrame = rock.CFrame * CFrame.new(0, 0, -5)
        ReplicatedStorage.rEvents.hitEvent:FireServer("hit", rock)
    end
end

-- Loop principal (siempre corriendo)
task.spawn(function()
    updateCharacterRefs()
    equipPet()
    lastProteinEggTime = tick()
    lastRockTime = tick()

    local farmingPaused = false

    while true do
        if getgenv()._AutoRepFarmEnabled then
            local ping = getPing()

            -- Pausa si ping alto
            if ping > MAX_PING then
                if not farmingPaused then
                    warn("[Auto Rep Farm] Ping alto ("..math.floor(ping).."ms), pausando farmeo...")
                    farmingPaused = true
                end
            end

            -- Reanuda si ping bajo
            if ping <= MIN_PING then
                if farmingPaused then
                    warn("[Auto Rep Farm] Ping bajo ("..math.floor(ping).."ms), reanudando farmeo...")
                    farmingPaused = false
                end
            end

            -- Solo farmea si no está pausado
            if not farmingPaused then
                if LocalPlayer:FindFirstChild("muscleEvent") then
                    for i = 1, REPS_PER_CYCLE do
                        LocalPlayer.muscleEvent:FireServer("rep")
                    end
                end

                if tick() - lastProteinEggTime >= PROTEIN_EGG_INTERVAL then
                    eatProteinEgg()
                    lastProteinEggTime = tick()
                end

                if tick() - lastRockTime >= ROCK_INTERVAL then
                    hitRock()
                    lastRockTime = tick()
                end
            end
        end

        task.wait(REP_DELAY)
    end
end)

getgenv()._AutoRepFarmEnabled = false  

-- Switch en la librería
AutoFarm:AddSwitch("تمرين قوة💪(استعمله اذا كان بنقك اقل من 150)", function(state)
    getgenv()._AutoRepFarmEnabled = state
    warn("[Auto Rep Farm] Estado cambiado a:", state and "ON" or "OFF")
end)

-- Servicios
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local Stats = game:GetService("Stats")
local LocalPlayer = Players.LocalPlayer

-- Configuración
local PET_NAME = "Swift Samurai"
local ROCK_NAME = "Rock5M"
local PROTEIN_EGG_NAME = "ProteinEgg"
local PROTEIN_EGG_INTERVAL = 30 * 60
local REPS_PER_CYCLE = 40
local REP_DELAY = 0.01
local ROCK_INTERVAL = 5
local MAX_PING = 5000   -- si pasa esto, pausa
local MIN_PING = 100   -- si baja de esto, reanuda

-- Variables internas
local HumanoidRootPart
local lastProteinEggTime = 0
local lastRockTime = 0

-- Funciones
local function getPing()
    local success, ping = pcall(function()
        return Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
    end)
    return success and ping or 999
end

local function updateCharacterRefs()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    HumanoidRootPart = character:WaitForChild("HumanoidRootPart", 5)
end

local function equipPet()
    local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
    if petsFolder and petsFolder:FindFirstChild("Unique") then
        for _, pet in pairs(petsFolder.Unique:GetChildren()) do
            if pet.Name == PET_NAME then
                ReplicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", pet)
                break
            end
        end
    end
end

local function eatProteinEgg()
    if LocalPlayer:FindFirstChild("Backpack") then
        for _, item in pairs(LocalPlayer.Backpack:GetChildren()) do
            if item.Name == PROTEIN_EGG_NAME then
                ReplicatedStorage.rEvents.eatEvent:FireServer("eat", item)
                break
            end
        end
    end
end

local function hitRock()
    local rock = workspace:FindFirstChild(ROCK_NAME)
    if rock and HumanoidRootPart then
        HumanoidRootPart.CFrame = rock.CFrame * CFrame.new(0, 0, -5)
        ReplicatedStorage.rEvents.hitEvent:FireServer("hit", rock)
    end
end

-- Loop principal (siempre corriendo)
task.spawn(function()
    updateCharacterRefs()
    equipPet()
    lastProteinEggTime = tick()
    lastRockTime = tick()

    local farmingPaused = false

    while true do
        if getgenv()._AutoRepFarmEnabled then
            local ping = getPing()

            -- Pausa si ping alto
            if ping > MAX_PING then
                if not farmingPaused then
                    warn("[Auto Rep Farm] Ping alto ("..math.floor(ping).."ms), pausando farmeo...")
                    farmingPaused = true
                end
            end

            -- Reanuda si ping bajo
            if ping <= MIN_PING then
                if farmingPaused then
                    warn("[Auto Rep Farm] Ping bajo ("..math.floor(ping).."ms), reanudando farmeo...")
                    farmingPaused = false
                end
            end

            -- Solo farmea si no está pausado
            if not farmingPaused then
                if LocalPlayer:FindFirstChild("muscleEvent") then
                    for i = 1, REPS_PER_CYCLE do
                        LocalPlayer.muscleEvent:FireServer("rep")
                    end
                end

                if tick() - lastProteinEggTime >= PROTEIN_EGG_INTERVAL then
                    eatProteinEgg()
                    lastProteinEggTime = tick()
                end

                if tick() - lastRockTime >= ROCK_INTERVAL then
                    hitRock()
                    lastRockTime = tick()
                end
            end
        end

        task.wait(REP_DELAY)
    end
end)
-- ✅ Auto comer huevos (modo alterno)
local autoEatEnabled = false

local function eatProteinEgg()
    local player = game.Players.LocalPlayer
    local backpack = player:WaitForChild("Backpack")
    local character = player.Character or player.CharacterAdded:Wait()

    local egg = backpack:FindFirstChild("Protein Egg")
    if egg then
        egg.Parent = character
        pcall(function()
            egg:Activate()
        end)
    end
end

task.spawn(function()
    while true do
        if autoEatEnabled then
            eatProteinEgg()
            task.wait(1800)
        else
            task.wait(1)
        end
    end
end)

AutoFarm:AddSwitch("✨ياكل بيض كل 30 دقيقة", function(state)
    autoEatEnabled = state
end)


    AutoFarm:AddSwitch("يلف العجلات", function(state)
    _G.AutoSpinWheel = state

    if state then
        spawn(function()
            while _G.AutoSpinWheel do
                pcall(function()
                    game:GetService("ReplicatedStorage")
                        .rEvents
                        :WaitForChild("openFortuneWheelRemote")
                        :InvokeServer(
                            "openFortuneWheel",
                            game:GetService("ReplicatedStorage")
                                :WaitForChild("shared")
                                :WaitForChild("catalogs")
                                :WaitForChild("fortuneWheelChances")
                                :WaitForChild("Fortune Wheel")
                        )
                end)

                task.wait(1)
            end
        end)
    end
end)
-- ✅ Optimización visual
AutoFarm:AddSwitch("✅يشيل القوة الي تضهر وقت التمرين", function(bool)
    local rSto = game:GetService("ReplicatedStorage")
    for _, obj in pairs(rSto:GetChildren()) do
        if obj.Name:match("Frame$") then
            obj.Visible = not bool
        end
    end
end)


AutoFarm:AddButton("✅يشيل لاق ", function()
    for _, v in pairs(game:GetDescendants()) do
        if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Sparkles") then
            v.Enabled = false
        end
    end
 
    local lighting = game:GetService("Lighting")
    lighting.GlobalShadows = false
    lighting.FogEnd = 9e9
    lighting.Brightness = 0
 
    settings().Rendering.QualityLevel = 1
 
    for _, v in pairs(game:GetDescendants()) do
        if v:IsA("Decal") or v:IsA("Texture") then
            v.Transparency = 1
        elseif v:IsA("BasePart") and not v:IsA("MeshPart") then
            v.Material = Enum.Material.SmoothPlastic
            if v.Parent and (v.Parent:FindFirstChild("Humanoid") or v.Parent.Parent:FindFirstChild("Humanoid")) then
            else
                v.Reflectance = 0
            end
        end
    end
 
    for _, v in pairs(lighting:GetChildren()) do
        if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
            v.Enabled = false
        end
    end
 
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "anti lag activado",
        Text = "Full optimization applied!",
        Duration = 5
    })
end)
AutoFarm:AddButton("✅يسوي شاشة سودة لتنقيص الاق", function()
    local player = game.Players.LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")
    local lighting = game:GetService("Lighting")

    for _, gui in pairs(playerGui:GetChildren()) do
        if gui:IsA("ScreenGui") then
            gui:Destroy()
        end
    end

    local function darkenSky()
        for _, v in pairs(lighting:GetChildren()) do
            if v:IsA("Sky") then
                v:Destroy()
            end
        end

        local darkSky = Instance.new("Sky")
        darkSky.Name = "DarkSky"
        darkSky.SkyboxBk = "rbxassetid://0"
        darkSky.SkyboxDn = "rbxassetid://0"
        darkSky.SkyboxFt = "rbxassetid://0"
        darkSky.SkyboxLf = "rbxassetid://0"
        darkSky.SkyboxRt = "rbxassetid://0"
        darkSky.SkyboxUp = "rbxassetid://0"
        darkSky.Parent = lighting

        lighting.Brightness = 0
        lighting.ClockTime = 0
        lighting.TimeOfDay = "00:00:00"
        lighting.OutdoorAmbient = Color3.new(0, 0, 0)
        lighting.Ambient = Color3.new(0, 0, 0)
        lighting.FogColor = Color3.new(0, 0, 0)
        lighting.FogEnd = 100

        task.spawn(function()
            while true do
                wait(5)
                if not lighting:FindFirstChild("DarkSky") then
                    darkSky:Clone().Parent = lighting
                end
                lighting.Brightness = 0
                lighting.ClockTime = 0
                lighting.OutdoorAmbient = Color3.new(0, 0, 0)
                lighting.Ambient = Color3.new(0, 0, 0)
                lighting.FogColor = Color3.new(0, 0, 0)
                lighting.FogEnd = 100
            end
        end)
    end

    local function removeParticleEffects()
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("ParticleEmitter") then
                obj:Destroy()
            end
        end
    end

    local function removeLightSources()
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("PointLight") or obj:IsA("SpotLight") or obj:IsA("SurfaceLight") then
                obj:Destroy()
            end
        end
    end

    removeParticleEffects()
    removeLightSources()
    darkenSky()
end)


AutoFarm:AddButton("✅تجهير 8 بتات سرعة تمرين", function()
    print("Botón presionado: تم التجهيز")

    local LocalPlayer = game:GetService("Players").LocalPlayer
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    -- Primero desequipamos todo
    local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
    if not petsFolder then return end

    for _, folder in pairs(petsFolder:GetChildren()) do
        if folder:IsA("Folder") then
            for _, pet in pairs(folder:GetChildren()) do
                ReplicatedStorage.rEvents.equipPetEvent:FireServer("unequipPet", pet)
            end
        end
    end
    task.wait(0.1)

    -- Ahora equipamos máximo 8 "Swift Samurai"
    local equipped = 0
    local maxEquip = 8
    for _, folder in pairs(petsFolder:GetChildren()) do
        if folder:IsA("Folder") then
            for _, pet in pairs(folder:GetChildren()) do
                if pet.Name == "Swift Samurai" then
                    ReplicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", pet)
                    equipped += 1
                    print("Equipado Swift Samurai #" .. equipped)

                    if equipped >= maxEquip then
                        return -- salir cuando ya haya 8 equipados
                    end
                end
            end
        end
    end

    print("Se equiparon " .. equipped .. " Swift Samurai")
end)


AutoFarm:AddButton(" ✅ينقلك لمكان تمرين قوة و دم", function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    hrp.CFrame = CFrame.new(-8371.4336, 6.7981, 2858.8853)
    task.wait(0.2)

    local VirtualInputManager = game:GetService("VirtualInputManager")
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end)

AutoFarm:AddButton(" ✅ينقلك لمكان تمرين قوة", function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    -- Teletransportar al nuevo CFrame
    hrp.CFrame = CFrame.new(-8652.8672, 29.2667, 2089.2617)
    task.wait(0.2)

    local VirtualInputManager = game:GetService("VirtualInputManager")
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end)

AutoFarm:AddLabel("🔥عدد الريبر الي ربحتهم ").TextSize = 23


local fastStrengthFolder = AutoFarm:AddFolder("🔥خاصية الريبر السريع")

local leaderstats = LocalPlayer:WaitForChild("leaderstats")
local rebirthsStat = leaderstats:WaitForChild("Rebirths")

local footerTimeLabel = fastStrengthFolder:AddLabel("0d 0h 0m 0s")
footerTimeLabel.TextSize = 18
local footerRebirthsLabel = fastStrengthFolder:AddLabel("الريبر:✅ 0")
footerRebirthsLabel.TextSize = 18
local footerRebirthsGainedLabel = fastStrengthFolder:AddLabel("عدد الريبر الي سويته✅: 0")
footerRebirthsGainedLabel.TextSize = 18

local startTime = tick()
local initialRebirths = rebirthsStat.Value

task.spawn(function()
    while true do
        local elapsed = tick() - startTime
        local days = math.floor(elapsed / 86400)
        local hours = math.floor((elapsed % 86400) / 3600)
        local minutes = math.floor((elapsed % 3600) / 60)
        local seconds = math.floor(elapsed % 60)
        footerTimeLabel.Text = string.format("%dd %dh %dm %ds", days, hours, minutes, seconds)
        task.wait(1)
    end
end)

local function updateRebirths()
    local current = rebirthsStat.Value
    local gained = current - initialRebirths
    footerRebirthsLabel.Text = "✅عدد الريبر حقك: " .. current
    footerRebirthsGainedLabel.Text = "✅عدد الريبر الي سويته : " .. gained
end

rebirthsStat.Changed:Connect(updateRebirths)
updateRebirths()

getgenv().AutoFarming = false

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Configuración de mascotas
local FarmPet = "Swift Samurai"
local RebirthPet = "Tribal Overlord"

-- Funciones para equipar/unequipar
local function equipPetByName(name)
    local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
    if not petsFolder then return end
    for _, folder in pairs(petsFolder:GetChildren()) do
        if folder:IsA("Folder") then
            for _, pet in pairs(folder:GetChildren()) do
                if pet.Name == name then
                    ReplicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", pet)
                end
            end
        end
    end
end

local function unequipAllPets()
    local petsFolder = LocalPlayer:FindFirstChild("petsFolder")
    if not petsFolder then return end
    for _, folder in pairs(petsFolder:GetChildren()) do
        if folder:IsA("Folder") then
            for _, pet in pairs(folder:GetChildren()) do
                ReplicatedStorage.rEvents.equipPetEvent:FireServer("unequipPet", pet)
            end
        end
    end
    task.wait(0.1)
end

local function getGoldenRebirthCount()
    local ultimates = LocalPlayer:FindFirstChild("ultimatesFolder")
    if ultimates and ultimates:FindFirstChild("Golden Rebirth") then
        return ultimates["Golden Rebirth"].Value
    end
    return 0
end

local function getStrengthRequiredForRebirth()
    local rebirths = LocalPlayer.leaderstats.Rebirths.Value
    local baseStrength = 10000 + (5000 * rebirths)
    local golden = getGoldenRebirthCount()
    if golden >= 1 and golden <= 5 then
        baseStrength = baseStrength * (1 - golden * 0.1)
    end
    return math.floor(baseStrength)
end

-- Switch en la library
fastStrengthFolder:AddSwitch("🔥ريبر سريع", function(state)
    getgenv().AutoFarming = state

    if state then
        warn("⚡ تم التفعيل")

        task.spawn(function()
            while getgenv().AutoFarming do
                local requiredStrength = getStrengthRequiredForRebirth()
                print("Necesario para renacer:", requiredStrength)

                -- Fase de farmeo
                unequipAllPets()
                equipPetByName(FarmPet)

                while LocalPlayer.leaderstats.Strength.Value < requiredStrength and getgenv().AutoFarming do
                    for _ = 1, 10 do
                        LocalPlayer.muscleEvent:FireServer("rep")
                    end
                    task.wait()
                end

                if not getgenv().AutoFarming then break end

                -- Fase de renacimiento
                unequipAllPets()
                equipPetByName(RebirthPet)

                local oldRebirths = LocalPlayer.leaderstats.Rebirths.Value
                repeat
                    ReplicatedStorage.rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                    task.wait(0.1)
                until LocalPlayer.leaderstats.Rebirths.Value > oldRebirths or not getgenv().AutoFarming

                print("Renacimiento hecho. Reiniciando ciclo.")
            end

            print("🛑 AutoFarming DETENIDO")
        end)

    else
        warn("🛑 AutoFarming DESACTIVADO")
    end
end)
local rebirthFolder = AutoFarm:AddFolder("🔥ريبر بدون باكات")

-- Guardar objetivo de rebirths
local targetRebirthAmount = nil
local farmingTarget = false

-- Input de rebirth objetivo
rebirthFolder:AddTextBox("Target number of Rebirths", function(value)
    local amount = tonumber(value) or 1
    local currentRebirths = leaderstats.Rebirths.Value
    if amount >= currentRebirths then
        targetRebirthAmount = amount
    end
end, {clear = false})

-- Toggle para llegar al rebirth objetivo
local targetRebirthToggle = rebirthFolder:AddSwitch("Start", function(enabled)
    farmingTarget = enabled
    if enabled then
        task.spawn(function()
            while farmingTarget do
                local currentRebirths = leaderstats.Rebirths.Value
                local requiredStrength = 10000 + 5000 * currentRebirths

                -- Si ya alcanzó el objetivo, apagar toggle
                if targetRebirthAmount and currentRebirths >= targetRebirthAmount then
                    targetRebirthToggle:Set(false)
                    farmingTarget = false
                    break
                end

                -- Hacer rebirth si ya tienes fuerza suficiente
                if leaderstats.Strength.Value >= requiredStrength then
                    replicatedStorage.rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                    task.wait(0.7)
                else
                    -- Farmear fuerza
                    for i = 1, repSpeed do
                        MuscleEvent:FireServer("rep")
                    end
                end

                task.wait(0.1)
            end
        end)
    end
end)

rebirthFolder:AddSwitch("✅تيليبورت للملك", function(enabled)
    if enabled then
        _G.AutoTeleportKing = true
        local targetPosition = Vector3.new(-8750.1318359375, 124.37654876708984, -5861.2666015625)

        while _G.AutoTeleportKing do
            local player = game.Players.LocalPlayer
            local char = player.Character
            if char then
                local rootPart = char:FindFirstChild("HumanoidRootPart")
                if rootPart then
                    rootPart.CFrame = CFrame.new(targetPosition)
                    rootPart.Velocity = Vector3.new(0, 0, 0)
                    rootPart.RotVelocity = Vector3.new(0, 0, 0)
                end
            end
            task.wait(0.1)
        end
    else
        _G.AutoTeleportKing = false
    end
end)

rebirthFolder:AddSwitch("حجم 2", function(enabled)
    if enabled then
        _G.AutoSize2 = true
        while _G.AutoSize2 do
            local args = {
                "changeSize",
                2
            }
            game:GetService("ReplicatedStorage")
                :WaitForChild("rEvents")
                :WaitForChild("changeSpeedSizeRemote")
                :InvokeServer(unpack(args))

            task.wait(1)
        end
    else
        _G.AutoSize2 = false
    end
end)




local autoEquipToolsFolder = AutoFarm:AddFolder("🔥ادوات اوتو")

-- Botón para desbloquear el Gamepass AutoLift
autoEquipToolsFolder:AddButton("Gamepass AutoLift", function()
    local gamepassFolder = game:GetService("ReplicatedStorage").gamepassIds
    local player = game:GetService("Players").LocalPlayer
    for _, gamepass in pairs(gamepassFolder:GetChildren()) do
        local value = Instance.new("IntValue")
        value.Name = gamepass.Name
        value.Value = gamepass.Value
        value.Parent = player.ownedGamepasses
    end
end)

-- Función para crear switches de auto-equip
local function createAutoToolSwitch(toolName, globalVar)
    autoEquipToolsFolder:AddSwitch("Auto " .. toolName, function(Value)
        _G[globalVar] = Value
        
        if Value then
            local tool = LocalPlayer.Backpack:FindFirstChild(toolName)
            if tool then
                LocalPlayer.Character.Humanoid:EquipTool(tool)
            end
        else
            local character = LocalPlayer.Character
            local equipped = character:FindFirstChild(toolName)
            if equipped then
                equipped.Parent = LocalPlayer.Backpack
            end
        end
        
        task.spawn(function()
            while _G[globalVar] do
                if not _G[globalVar] then break end
                LocalPlayer.muscleEvent:FireServer("rep")
                task.wait(0.1)
            end
        end)
    end)
end

createAutoToolSwitch("Weight", "AutoWeight")
createAutoToolSwitch("Pushups", "AutoPushups")
createAutoToolSwitch("Handstands", "AutoHandstands")
createAutoToolSwitch("Situps", "AutoSitups")


autoEquipToolsFolder:AddSwitch("Auto Punch", function(Value)
    _G.fastHitActive = Value
    
    if Value then
        task.spawn(function()
            while _G.fastHitActive do
                if not _G.fastHitActive then break end
                
                local punch = LocalPlayer.Backpack:FindFirstChild("Punch")
                if punch then
                    punch.Parent = LocalPlayer.Character
                    if punch:FindFirstChild("attackTime") then
                        punch.attackTime.Value = 0
                    end
                end
                task.wait(0.1)
            end
        end)
        
        task.spawn(function()
            while _G.fastHitActive do
                if not _G.fastHitActive then break end
                
                LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
                LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
                
                local character = LocalPlayer.Character
                if character then
                    local punchTool = character:FindFirstChild("Punch")
                    if punchTool then
                        punchTool:Activate()
                    end
                end
                task.wait()
            end
        end)
    else
        local character = LocalPlayer.Character
        local equipped = character:FindFirstChild("Punch")
        if equipped then
            equipped.Parent = LocalPlayer.Backpack
        end
    end
end)

autoEquipToolsFolder:AddSwitch("Fast Tools", function(Value)
    _G.FastTools = Value
    
    local toolSettings = {
        {"Punch", "attackTime", Value and 0 or 0.35},
        {"Ground Slam", "attackTime", Value and 0 or 6},
        {"Stomp", "attackTime", Value and 0 or 7},
        {"Handstands", "repTime", Value and 0 or 1},
        {"Pushups", "repTime", Value and 0 or 1},
        {"Weight", "repTime", Value and 0 or 1},
        {"Situps", "repTime", Value and 0 or 1}
    }
    
    local backpack = LocalPlayer:WaitForChild("Backpack")
    
    for _, toolInfo in ipairs(toolSettings) do
        local tool = backpack:FindFirstChild(toolInfo[1])
        if tool and tool:FindFirstChild(toolInfo[2]) then
            tool[toolInfo[2]].Value = toolInfo[3]
        end
        
        local equippedTool = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(toolInfo[1])
        if equippedTool and equippedTool:FindFirstChild(toolInfo[2]) then
            equippedTool[toolInfo[2]].Value = toolInfo[3]
        end
    end
end)


local estadisticas = window:AddTab("طاقات")

local SelectPlayerName = ""

local PlayerDrop = estadisticas:AddDropdown("اختار الاعب", function(Value)
    SelectPlayerName = Value:match("| (.+)")
    previousValues = {}
end)

local Playerslist = {}
for _, Plr in pairs(game:GetService("Players"):GetPlayers()) do
    local displayName = Plr.DisplayName .. " | " .. Plr.Name
    table.insert(Playerslist, displayName)
end
for _, AddPlr in ipairs(Playerslist) do
    PlayerDrop:Add(AddPlr)
end

local function FormatNumberWithCommas(number)
    local formatted = tostring(number):reverse():gsub("(%d%d%d)", "%1,"):reverse()
    return formatted:gsub("^,", "")
end

local function FormatAbbreviated(number)
    local abbreviations = {"", "K", "M", "B", "T", "Qa", "Qi"}
    local abbreviationIndex = 1
    while number >= 1000 do
        number = number / 1000
        abbreviationIndex = abbreviationIndex + 1
    end
    return string.format("%.2f", number) .. abbreviations[abbreviationIndex]
end

local function FormatDisplay(value)
    local normal = FormatNumberWithCommas(value)
    local abbreviated = FormatAbbreviated(value)
    return "[ " .. normal .. " | " .. abbreviated .. " ]"
end

local previousValues = {}

local Update = estadisticas:AddLabel("")
local Update1 = estadisticas:AddLabel("")
local Update2 = estadisticas:AddLabel("")
local Update3 = estadisticas:AddLabel("")
local Update4 = estadisticas:AddLabel("")
local Update5 = estadisticas:AddLabel("")
local Update6 = estadisticas:AddLabel("")
local Update9 = estadisticas:AddLabel("")
local Update10 = estadisticas:AddLabel("")
local Update11 = estadisticas:AddLabel("")
local Update12 = estadisticas:AddLabel("")
local Update13 = estadisticas:AddLabel("")

task.spawn(function()
    while task.wait(0) do
        if SelectPlayerName ~= "" then
            local player = game.Players:FindFirstChild(SelectPlayerName)
            if player then
                if player:FindFirstChild("Gems") then
                    Update1.Text = "Gems: " .. FormatDisplay(player.Gems.Value)
                end
                if player:FindFirstChild("Agility") then
                    Update3.Text = "Agility: " .. FormatDisplay(player.Agility.Value)
                end
                if player:FindFirstChild("Durability") then
                    Update4.Text = "Durability: " .. FormatDisplay(player.Durability.Value)
                end
                if player:FindFirstChild("muscleKingTime") then
                    Update6.Text = "Muscle King Time: " .. FormatDisplay(player.muscleKingTime.Value)
                end
                if player:FindFirstChild("customSize") then
                    Update10.Text = "Custom Size: " .. FormatDisplay(player.customSize.Value)
                end
                if player:FindFirstChild("customSpeed") then
                    Update11.Text = "Custom Speed: " .. FormatDisplay(player.customSpeed.Value)
                end
                if player:FindFirstChild("evilKarma") then
                    Update12.Text = "Evil Karma: " .. FormatDisplay(player.evilKarma.Value)
                end
                if player:FindFirstChild("goodKarma") then
                    Update13.Text = "Good Karma: " .. FormatDisplay(player.goodKarma.Value)
                end

                local leaderstats = player:FindFirstChild("leaderstats")
                if leaderstats then
                    if leaderstats:FindFirstChild("Strength") then
                        Update.Text = "Strength: " .. FormatDisplay(leaderstats.Strength.Value)
                    end
                    if leaderstats:FindFirstChild("Rebirths") then
                        Update2.Text = "Rebirth: " .. FormatDisplay(leaderstats.Rebirths.Value)
                    end
                    if leaderstats:FindFirstChild("Kills") then
                        Update5.Text = "Kills: " .. FormatDisplay(leaderstats.Kills.Value)
                    end
                end

                if player:FindFirstChild("currentMap") then
                    Update9.Text = "Current Map: " .. tostring(player.currentMap.Value)
                else
                    Update9.Text = "Current Map: Aucune donnÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â©e"
                end
            end
        end
    end
end)

--إحصائيات متقدمة ضمن "الإحصائيات"
estadisticas:AddLabel("————————————————————————————")
estadisticas:AddLabel("احصائيات متقدمة:").TextSize = 24

local enemyHealthLabel = estadisticas:AddLabel("دم الخصم: N/A")
enemyHealthLabel.TextSize = 20
enemyHealthLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

local playerDamageLabel = estadisticas:AddLabel("Your Damage: N/A")
playerDamageLabel.TextSize = 20
playerDamageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

local hitsToKillLabel = estadisticas:AddLabel("Hits to Kill: N/A")
hitsToKillLabel.TextSize = 20
hitsToKillLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

local function calculateEnemyHealth(targetPlayer)
    if not targetPlayer then
        return 0
    end
    local baseDura = 0
    local durabilityStat =
        targetPlayer:FindFirstChild("Durability") or
        (targetPlayer:FindFirstChild("leaderstats") and targetPlayer.leaderstats:FindFirstChild("Durability"))
    if durabilityStat then
        baseDura = durabilityStat.Value
    end
    local totalMultiplier = 1
    local ultFolder = targetPlayer:FindFirstChild("ultimatesFolder")
    if ultFolder then
        local infernalHealth = ultFolder:FindFirstChild("Infernal Health")
        if infernalHealth then
            local upgrades = infernalHealth.Value or 0
            totalMultiplier = totalMultiplier + 0.15 * upgrades
        end
    end
    local backpack = targetPlayer:FindFirstChild("Backpack")
    if backpack then
        local equippedPets = backpack:FindFirstChild("EquippedPets") or backpack:FindFirstChild("equippedPets")
        if equippedPets then
            for _, pet in ipairs(equippedPets:GetChildren()) do
                if string.lower(tostring(pet)):match("mighty") and string.lower(tostring(pet)):match("monster") then
                    totalMultiplier = totalMultiplier + 0.5
                    break
                end
            end
        end
    end
    local totalHealth = baseDura * totalMultiplier
    return totalHealth
end

local function calculateLocalPlayerDamage()
    local strengthStat = nil
    local leaderstats = Player:FindFirstChild("leaderstats")
    if leaderstats then
        strengthStat = leaderstats:FindFirstChild("Strength")
    end
    if not strengthStat then
        return 0
    end
    local baseDamage = strengthStat.Value * 0.0667
    local totalMultiplier = 1
    local ultFolder = Player:FindFirstChild("ultimatesFolder")
    if ultFolder then
        local demonDamage = ultFolder:FindFirstChild("Demon Damage")
        if demonDamage then
            local upgrades = demonDamage.Value or 0
            totalMultiplier = totalMultiplier + math.min(0.1 * upgrades, 0.5)
        end
    end
    local backpack = Player:FindFirstChild("Backpack")
    if backpack then
        local equippedPets = backpack:FindFirstChild("EquippedPets") or backpack:FindFirstChild("equippedPets")
        if equippedPets then
            for _, pet in ipairs(equippedPets:GetChildren()) do
                if string.lower(tostring(pet)):match("wild") and string.lower(tostring(pet)):match("wizard") then
                    totalMultiplier = totalMultiplier + 0.5
                    break
                end
            end
        end
    end
    baseDamage = baseDamage * totalMultiplier
    return baseDamage
end

local function calculateHitsToKill(health, damage)
    if damage <= 0 then
        return "∞"
    end
    local hits = math.ceil(health / damage)
    if hits > 50 then
        return "∞"
    elseif hits < 1 then
        return 1
    else
        return hits
    end
end

local function updateAdvancedStats(targetPlayer)
    if not targetPlayer then
        enemyHealthLabel.Text = "vida del enemigo: N/A"
        playerDamageLabel.Text = "Tu daño: N/A"
        hitsToKillLabel.Text = "Hits to Kill: N/A"
        return
    end
    local enemyHealth = calculateEnemyHealth(targetPlayer)
    local playerDamage = calculateLocalPlayerDamage()
    local hitsToKill = calculateHitsToKill(enemyHealth, playerDamage)
    enemyHealthLabel.Text = "life of the enemy: " .. FormatDisplay(enemyHealth)
    playerDamageLabel.Text = "You damage: " .. FormatDisplay(playerDamage)
    hitsToKillLabel.Text = "Golpes para matarlo: " .. tostring(hitsToKill)
end

task.spawn(function()
    while true do
        local selectedPlayer = game.Players:FindFirstChild(SelectPlayerName)
        if selectedPlayer then
            updateAdvancedStats(selectedPlayer)
        else
            updateAdvancedStats(nil)
        end
        task.wait(0.2)
    end
end)


local teleport = window:AddTab("Teleport")

teleport:AddButton("Spawn", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(2, 8, 115)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Spawn",
        Duration = 0
    })
end)

teleport:AddButton("Secret Area", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(1947, 2, 6191)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Secret Area",
        Duration = 0
    })
end)

teleport:AddButton("Tiny Island", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(-34, 7, 1903)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Tiny Island",
        Duration = 0
    })
end)

teleport:AddButton("Frozen Island", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(- 2600.00244, 3.67686558, - 403.884369, 0.0873617008, 1.0482899e-09, 0.99617666, 3.07204253e-08, 1, - 3.7464023e-09, - 0.99617666, 3.09302628e-08, 0.0873617008)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Frozen Island",
        Duration = 0
    })
end)

teleport:AddButton("Mythical Island", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(2255, 7, 1071)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Mythical Island",
        Duration = 0
    })
end)

teleport:AddButton("Hell Island", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(-6768, 7, -1287)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Hell Island",
        Duration = 0
    })
end)

teleport:AddButton("Legend Island", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(4604, 991, -3887)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Legend Island",
        Duration = 0
    })
end)

teleport:AddButton("Muscle King Island", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(-8646, 17, -5738)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Muscle King",
        Duration = 0
    })
end)

teleport:AddButton("Jungle Island", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(-8659, 6, 2384)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Jungle Island",
        Duration = 0
    })
end)

teleport:AddButton("Brawl Lava", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(4471, 119, -8836)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Brawl Lava",
        Duration = 0
    })
end)

teleport:AddButton("Brawl Desert", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(960, 17, -7398)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Brawl Desert",
        Duration = 0
    })
end)

teleport:AddButton("Brawl Regular", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(-1849, 20, -6335)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Brawl Regular",
        Duration = 0
    })
end)



local Calculadora = window:AddTab("calculator", Color3.fromRGB(200, 100, 100))

local baseStrength = 0
local resultadoLabelsDamage = {}

local FolderDamage = Calculadora:AddFolder("Pack Damage Calculator")

FolderDamage:AddTextBox("Base Strongth (ej: 1.27Qa, T, B)", function(text)
    local unidades = { ["T"] = 1e12, ["Q"] = 1e15, ["B"] = 1e9 }
    text = text:upper()
    for u, m in pairs(unidades) do
        if text:find(u) then
            local num = tonumber(text:match("(%d+%.?%d*)"))
            if num then
                baseStrength = num * m
                return
            end
        end
    end
    baseStrength = tonumber(text:match("(%d+%.?%d*)")) or 0
end)

local mensajeLabelDamage = FolderDamage:AddLabel("")

for i = 1, 8 do
    resultadoLabelsDamage[i] = FolderDamage:AddLabel(string.format("%d pack(s): -", i))
end

FolderDamage:AddButton("Calculate Damage", function()
    if baseStrength <= 0 then
        mensajeLabelDamage.Text = "Enter a valid value."
        for i = 1, 8 do
            resultadoLabelsDamage[i].Text = string.format("%d pack(s): -", i)
        end
        return
    end

    mensajeLabelDamage.Text = ""

    local danoAjustado = baseStrength * 0.10
    local incremento = 0.335

    for pack = 1, 8 do
        local mult = 1 + (pack * incremento)
        local valor = danoAjustado * mult

        local disp
        if valor >= 1e15 then
            disp = string.format("%.3f Qa", valor / 1e15)
        elseif valor >= 1e12 then
            disp = string.format("%.2f T", valor / 1e12)
        elseif valor >= 1e9 then
            disp = string.format("%.2f B", valor / 1e9)
        else
            disp = tostring(math.floor(valor))
        end

        resultadoLabelsDamage[pack].Text = string.format("%d pack(s): %s", pack, disp)
    end
end)

local baseDurabilidad = 0
local resultadoLabelsDurabilidad = {}

local FolderDurabilidad = Calculadora:AddFolder("Pack Durability Calculator")

FolderDurabilidad:AddTextBox("Base durability (ej: 1.27Qa, T, B)", function(text)
    local unidades = { ["T"] = 1e12, ["Q"] = 1e15, ["B"] = 1e9 }
    text = text:upper()
    for u, m in pairs(unidades) do
        if text:find(u) then
            local num = tonumber(text:match("(%d+%.?%d*)"))
            if num then
                baseDurabilidad = num * m
                return
            end
        end
    end
    baseDurabilidad = tonumber(text:match("(%d+%.?%d*)")) or 0
end)

local mensajeLabelDurabilidad = FolderDurabilidad:AddLabel("")

for i = 1, 8 do
    resultadoLabelsDurabilidad[i] = FolderDurabilidad:AddLabel(string.format("%d pack(s): -", i))
end

FolderDurabilidad:AddButton("Calculate Durability", function()
    if baseDurabilidad <= 0 then
        mensajeLabelDurabilidad.Text = "Enter a valid value."
        for i = 1, 8 do
            resultadoLabelsDurabilidad[i].Text = string.format("%d pack(s): -", i)
        end
        return
    end

    mensajeLabelDurabilidad.Text = ""

    local incremento = 0.335
    local adicional = 1.5

    for pack = 1, 8 do
        local mult = 1 + (pack * incremento)
        local valor = baseDurabilidad * mult * adicional

        local disp
        if valor >= 1e15 then
            disp = string.format("%.3f Qa", valor / 1e15)
        elseif valor >= 1e12 then
            disp = string.format("%.2f T", valor / 1e12)
        elseif valor >= 1e9 then
            disp = string.format("%.2f B", valor / 1e9)
        else
            disp = tostring(math.floor(valor))
        end

        resultadoLabelsDurabilidad[pack].Text = string.format("%d pack(s): %s", pack, disp)
    end
end)

local features = window:AddTab("Calculate Stats")
features:Show()

local player = game.Players.LocalPlayer
local leaderstats = player:WaitForChild("leaderstats")
local strengthStat = leaderstats:WaitForChild("Strength")
local durabilityStat = player:WaitForChild("Durability")

local function formatNumber(number)
    local isNegative = number < 0
    number = math.abs(number)
    if number >= 1e15 then
        return (isNegative and "-" or "") .. string.format("%.2fQa", number / 1e15)
    elseif number >= 1e12 then
        return (isNegative and "-" or "") .. string.format("%.2fT", number / 1e12)
    elseif number >= 1e9 then
        return (isNegative and "-" or "") .. string.format("%.2fB", number / 1e9)
    elseif number >= 1e6 then
        return (isNegative and "-" or "") .. string.format("%.2fM", number / 1e6)
    elseif number >= 1e3 then
        return (isNegative and "-" or "") .. string.format("%.2fK", number / 1e3)
    else
        return (isNegative and "-" or "") .. string.format("%.2f", number)
    end
end

local stopwatchLabel = features:AddLabel("Fast Rep Time: 0d 0h 0m 0s")
stopwatchLabel.TextSize = 20

local projectedStrengthLabel = features:AddLabel("Strength Rate: 0 /Hour | 0 /Day | 0 /Week | 0 /Month")
projectedStrengthLabel.TextSize = 20

local projectedDurabilityLabel = features:AddLabel("Durability Rate: 0 /Hour | 0 /Day | 0 /Week | 0 /Month")
projectedDurabilityLabel.TextSize = 20

features:AddLabel("").TextSize = 10

local statsLabel = features:AddLabel("Stats:")
statsLabel.TextSize = 24

local strengthLabel = features:AddLabel("Strength: 0 | Gained: 0")
strengthLabel.TextSize = 20

local durabilityLabel = features:AddLabel("Durability: 0 | Gained: 0")
durabilityLabel.TextSize = 20

local startTime = tick()
local initialStrength = strengthStat.Value
local initialDurability = durabilityStat.Value
local trackingStarted = false

local strengthHistory = {}
local durabilityHistory = {}
local calculationInterval = 10

task.spawn(function()
    local lastCalcTime = tick()
    while true do
        local currentTime = tick()
        local currentStrength = strengthStat.Value
        local currentDurability = durabilityStat.Value

        if not trackingStarted and (currentStrength - initialStrength) >= 100e9 then
            trackingStarted = true
            startTime = tick()
            strengthHistory = {}
            durabilityHistory = {}
        end

        if trackingStarted then
            local elapsedTime = currentTime - startTime
            local days = math.floor(elapsedTime / (24 * 3600))
            local hours = math.floor((elapsedTime % (24 * 3600)) / 3600)
            local minutes = math.floor((elapsedTime % 3600) / 60)
            local seconds = math.floor(elapsedTime % 60)

            stopwatchLabel.Text = string.format("Fast Rep Time: %dd %dh %dm %ds", days, hours, minutes, seconds)

            local sessionStrengthDelta = currentStrength - initialStrength
            local sessionDurabilityDelta = currentDurability - initialDurability

            strengthLabel.Text = "Strength: " .. formatNumber(currentStrength) .. " | Gained: " .. formatNumber(sessionStrengthDelta)
            durabilityLabel.Text = "Durability: " .. formatNumber(currentDurability) .. " | Gained: " .. formatNumber(sessionDurabilityDelta)

            table.insert(strengthHistory, {time = currentTime, value = currentStrength})
            table.insert(durabilityHistory, {time = currentTime, value = currentDurability})

            while #strengthHistory > 0 and currentTime - strengthHistory[1].time > calculationInterval do
                table.remove(strengthHistory, 1)
            end
            while #durabilityHistory > 0 and currentTime - durabilityHistory[1].time > calculationInterval do
                table.remove(durabilityHistory, 1)
            end

            if currentTime - lastCalcTime >= calculationInterval then
                lastCalcTime = currentTime

                if #strengthHistory >= 2 then
                    local strengthDelta = strengthHistory[#strengthHistory].value - strengthHistory[1].value
                    local strengthPerSecond = strengthDelta / calculationInterval
                    local strengthPerHour = math.floor(strengthPerSecond * 3600)
                    local strengthPerDay = math.floor(strengthPerSecond * 86400)
                    local strengthPerWeek = math.floor(strengthPerSecond * 604800)
                    local strengthPerMonth = math.floor(strengthPerSecond * 2592000)

                    projectedStrengthLabel.Text = "Strength Rate: " .. formatNumber(strengthPerHour) .. "/Hour | " .. formatNumber(strengthPerDay) .. "/Day | " .. formatNumber(strengthPerWeek) .. "/Week | " .. formatNumber(strengthPerMonth) .. "/Month"
                end

                if #durabilityHistory >= 2 then
                    local durabilityDelta = durabilityHistory[#durabilityHistory].value - durabilityHistory[1].value
                    local durabilityPerSecond = durabilityDelta / calculationInterval
                    local durabilityPerHour = math.floor(durabilityPerSecond * 3600)
                    local durabilityPerDay = math.floor(durabilityPerSecond * 86400)
                    local durabilityPerWeek = math.floor(durabilityPerSecond * 604800)
                    local durabilityPerMonth = math.floor(durabilityPerSecond * 2592000)

                    projectedDurabilityLabel.Text = "Durability Rate: " .. formatNumber(durabilityPerHour) .. "/Hour | " .. formatNumber(durabilityPerDay) .. "/Day | " .. formatNumber(durabilityPerWeek) .. "/Week | " .. formatNumber(durabilityPerMonth) .. "/Month"
                end
            end
        end

        task.wait(0.05)
    end
end)

-- ==================== DEVIL HUB INVENTORY REPLACEMENT ====================
local function __DEVIL_SETUP_INVENTORY()

-- Added from DEVIL HUB V1.01 Inventory without modifying the original DEVIL HUB code.
local InventoryServices = {
    Players = game:GetService("Players"),
    ReplicatedStorage = game:GetService("ReplicatedStorage"),
    VirtualUser = game:GetService("VirtualUser"),
    Workspace = workspace,
    Lighting = game:GetService("Lighting"),
    UserInputService = game:GetService("UserInputService"),
    RunService = game:GetService("RunService")
}

local InventoryPlayerData = {
    Player = InventoryServices.Players.LocalPlayer,
    Character = InventoryServices.Players.LocalPlayer.Character,
    Backpack = InventoryServices.Players.LocalPlayer:WaitForChild("Backpack")
}

local InventoryRemotes = {
    MuscleEvent = InventoryPlayerData.Player:WaitForChild("muscleEvent")
}

local Inventory = window:AddTab("Inventory")

-- aliases used by the original PHOENIX Inventory code
local Services = InventoryServices
local PlayerData = InventoryPlayerData
local Remotes = InventoryRemotes

Inventory:AddLabel("🍫 Boost Eater:")

local EggEaterData = {Running = false}

task.spawn(function()
	while true do
		if EggEaterData.Running then
			local tool = PlayerData.Player.Character:FindFirstChild("Protein Egg") or PlayerData.Player.Backpack:FindFirstChild("Protein Egg")
			if tool then PlayerData.Player.muscleEvent:FireServer("proteinEgg", tool) end
			task.wait(0.25)
		else
			task.wait(1)
		end
	end
end)

Inventory:AddSwitch("Eat All Eggs", function(state) EggEaterData.Running = state end)

local BoostData = {
	ItemList = {"Tropical Shake", "Energy Shake", "Protein Bar", "TOUGH Bar", "Protein Shake", "ULTRA Shake", "Energy Bar"},
	Running = false
}

task.spawn(function()
	while true do
		if BoostData.Running then
			for _, itemName in ipairs(BoostData.ItemList) do
				local tool = PlayerData.Player.Character:FindFirstChild(itemName) or PlayerData.Player.Backpack:FindFirstChild(itemName)
				if tool then
					local parts = {}
					for word in itemName:gmatch("%S+") do table.insert(parts, word:lower()) end
					for i = 2, #parts do parts[i] = parts[i]:sub(1, 1):upper() .. parts[i]:sub(2) end
					for i = 1, 10 do PlayerData.Player.muscleEvent:FireServer(table.concat(parts), tool) end
				end
			end
		end
		task.wait(0.1)
	end
end)

Inventory:AddSwitch("Eat all Boosts (expect lag)", function(state) BoostData.Running = state end)

Inventory:AddLabel("🛒 Pet Shop:")

local PetShopData = {
    SelectedPet = nil,
    PetList = {}
}

local function getPetShopFolder()
    return Services.ReplicatedStorage:FindFirstChild("shared") 
        and Services.ReplicatedStorage.shared.runtime 
        and Services.ReplicatedStorage.shared.runtime:FindFirstChild("cPetShopFolder")
        or Services.ReplicatedStorage:FindFirstChild("cPetShopFolder")
end

local function refreshPetList()
    table.clear(PetShopData.PetList)
    local folder = getPetShopFolder()
    if not folder then return end
    for _, obj in ipairs(folder:GetChildren()) do
        table.insert(PetShopData.PetList, obj.Name)
    end
    table.sort(PetShopData.PetList)
end

refreshPetList()

local petDropdown = Inventory:AddDropdown("Choose Pet", function(text)
    PetShopData.SelectedPet = text
end)

for _, petName in ipairs(PetShopData.PetList) do
    petDropdown:Add(petName)
end

local function getSelectedPetObject()
    local folder = getPetShopFolder()
    local selected = PetShopData.SelectedPet
    if not folder or not selected then return nil end
    return folder:FindFirstChild(selected)
end

local function buySelectedPet()
    local remote = Services.ReplicatedStorage.rEvents:FindFirstChild("cPetShopRemote")
    local petObject = getSelectedPetObject()

    if not remote then
        warn("DEVIL HUB V1.01: cPetShopRemote not found.")
        return false
    end
    if not petObject then
        warn("DEVIL HUB V1.01: Selected pet was not found in cPetShopFolder.")
        return false
    end

    local ok, result = pcall(function()
        if remote:IsA("RemoteFunction") then
            return remote:InvokeServer(petObject)
        elseif remote:IsA("RemoteEvent") then
            remote:FireServer(petObject)
            return true
        end
        return false
    end)

    if not ok then
        warn("DEVIL HUB V1.01: Pet purchase request failed: " .. tostring(result))
        return false
    end

    return result ~= false
end

Inventory:AddButton("🛒 Buy Selected Pet", function()
    buySelectedPet()
end)

Inventory:AddSwitch("⚡ Auto Buy Selected Pet", function(bool)
    _G.AutoBuySelectedPet = bool
    if bool then
        task.spawn(function()
            while _G.AutoBuySelectedPet do
                pcall(function()
                    buySelectedPet()
                end)
                task.wait(0.1)
            end
        end)
    end
end)

Inventory:AddLabel("Auras:").TextSize = 22

local AuraData = {
	SelectedAura = nil,
	AuraList = {"Entropic Blast", "Muscle King", "Dark Storm", "Astral Electro", "Azure Tundra", "Blue Aura", "Dark Electro",
		"Dark Lightning", "Electro", "Enchanted Mirage", "Eternal Megastrike", "Grand Supernova", "Green Aura", "Inferno",
		"Lightning", "Power Lightning", "Purple Aura", "Purple Nova", "Red Aura", "Supernova", "Ultra Inferno", "Ultra Mirage",
		"Unstable Mirage", "Yellow Aura"}
}

local auraDropdown = Inventory:AddDropdown("Select Aura", function(text) AuraData.SelectedAura = text end)
for _, auraName in ipairs(AuraData.AuraList) do auraDropdown:Add(auraName) end

Inventory:AddSwitch("Buy Aura", function(bool)
	_G.AutoHatchAura = bool
	if bool then
		spawn(function()
			while _G.AutoHatchAura and AuraData.SelectedAura ~= "" do
				if Services.ReplicatedStorage.cPetShopFolder:FindFirstChild(AuraData.SelectedAura) then
					Services.ReplicatedStorage.cPetShopRemote:InvokeServer(Services.ReplicatedStorage.cPetShopFolder[AuraData.SelectedAura])
				end
				task.wait(0.1)
			end
		end)
	end
end)

Inventory:AddLabel("You need Gems and Inventory Space!").TextSize = 14

Inventory:AddLabel("🔃 Auto Evolving:")

local petDropdown3 = Inventory:AddDropdown("Choose Pet", function(text) PetShopData.SelectedPet = text end)
for _, petName in ipairs(PetShopData.PetList) do petDropdown3:Add(petName) end

local running = false

Inventory:AddSwitch("Auto Evolve", function(state)
    running = state
    if not state then return end

    task.spawn(function()
        while running do
            if PetShopData.SelectedPet then
                game.ReplicatedStorage.rEvents.petEvolveEvent:FireServer(
                    "evolvePet",
                    PetShopData.SelectedPet
                )
            end
            task.wait(0.5)
        end
    end)
end)



Inventory:AddLabel("🔁 Auto Trading:")

local TradeData = {SelectedPlayer = nil}

local playerDropdown4 = Inventory:AddDropdown("Choose Player", function(name)
    local username = name:match(" | (.+)") or name
    TradeData.SelectedPlayer = Services.Players:FindFirstChild(username)
end)

for _, player in ipairs(Services.Players:GetPlayers()) do
    if player ~= Services.Players.LocalPlayer then
        playerDropdown4:Add(player.DisplayName .. " | " .. player.Name)
    end
end

Services.Players.PlayerAdded:Connect(function(player)
    if player ~= Services.Players.LocalPlayer then
        playerDropdown4:Add(player.DisplayName .. " | " .. player.Name)
    end
end)

Services.Players.PlayerRemoving:Connect(function(player)
    playerDropdown4:Remove(player.DisplayName .. " | " .. player.Name)
    if TradeData.SelectedPlayer == player then TradeData.SelectedPlayer = nil end
end)

local petDropdown2 = Inventory:AddDropdown("Choose Pet", function(text) PetShopData.SelectedPet = text end)
for _, petName in ipairs(PetShopData.PetList) do petDropdown2:Add(petName) end



local running = false

Inventory:AddSwitch("Auto Trade", function(state)
    running = state
    if not state then return end

    task.spawn(function()
        while running do
            if TradeData.SelectedPlayer and PetShopData.SelectedPet then
                local tradingEvent = game.ReplicatedStorage.rEvents.tradingEvent
                local unique = game.Players.LocalPlayer.petsFolder.Unique

                tradingEvent:FireServer(
                    "sendTradeRequest",
                    TradeData.SelectedPlayer
                )

                task.wait(0.5)

                local offered = 0
                for _, pet in ipairs(unique:GetChildren()) do
                    if not running then break end

                    if pet.Name == PetShopData.SelectedPet then
                        tradingEvent:FireServer("offerItem", pet)
                        offered += 1
                        task.wait(0.01)

                        if offered >= 6 then
                            break
                        end
                    end
                end

                task.wait(0.05)


                if running then
                    tradingEvent:FireServer("acceptTrade")
                end
            end

            task.wait(2)
        end
    end)
end)





Inventory:AddLabel("🥚 Egg Gifter:")

local EggGifterData = {ProteinEggLabel = Inventory:AddLabel("Protein Eggs: 0"), SelectedPlayer = nil, EggCount = 0}
EggGifterData.ProteinEggLabel.TextSize = 14

local playerDropdown = Inventory:AddDropdown("Choose Player", function(name)
    local username = name:match(" | (.+)") or name
    EggGifterData.SelectedPlayer = Services.Players:FindFirstChild(username)
end)

for _, player in ipairs(Services.Players:GetPlayers()) do
    if player ~= Services.Players.LocalPlayer then
        playerDropdown:Add(player.DisplayName .. " | " .. player.Name)
    end
end

Services.Players.PlayerAdded:Connect(function(player)
    if player ~= Services.Players.LocalPlayer then
        playerDropdown:Add(player.DisplayName .. " | " .. player.Name)
    end
end)

Services.Players.PlayerRemoving:Connect(function(player)
    playerDropdown:Remove(player.DisplayName .. " | " .. player.Name)
    if EggGifterData.SelectedPlayer == player then EggGifterData.SelectedPlayer = nil end
end)

Inventory:AddTextBox("Amount:", function(Text) EggGifterData.EggCount = tonumber(Text) end)

Inventory:AddButton("Start Gifting", function()
    if EggGifterData.SelectedPlayer and EggGifterData.EggCount and EggGifterData.EggCount > 0 then
        local egg = Services.Players.LocalPlayer.consumablesFolder:FindFirstChild("Protein Egg")
        if egg then
            for i = 1, EggGifterData.EggCount do
                pcall(function()
                    Services.ReplicatedStorage.rEvents.giftRemote:InvokeServer("giftRequest", EggGifterData.SelectedPlayer, egg)
                end)
                task.wait(0.1)
            end
        end
    end
end)

Inventory:AddLabel("🍹 Shake Gifter:")

local ShakeGifterData = {TropicalShakeLabel = Inventory:AddLabel("Tropical Shakes: 0"), SelectedPlayer = nil, ShakeCount = 0}
ShakeGifterData.TropicalShakeLabel.TextSize = 14

local playerDropdown3 = Inventory:AddDropdown("Choose Player", function(name)
	local usernameone = name:match(" | (.+)") or name
	ShakeGifterData.SelectedPlayer = Services.Players:FindFirstChild(usernameone)
end)

for _, player in ipairs(Services.Players:GetPlayers()) do
	if player ~= Services.Players.LocalPlayer then
		playerDropdown3:Add(player.DisplayName .. " | " .. player.Name)
	end
end

Services.Players.PlayerAdded:Connect(function(player)
	if player ~= Services.Players.LocalPlayer then
		playerDropdown3:Add(player.DisplayName .. " | " .. player.Name)
	end
end)

Services.Players.PlayerRemoving:Connect(function(player)
	playerDropdown3:Remove(player.DisplayName .. " | " .. player.Name)
	if ShakeGifterData.SelectedPlayer == player then ShakeGifterData.SelectedPlayer = nil end
end)

Inventory:AddTextBox("Amount:", function(Text) ShakeGifterData.ShakeCount = tonumber(Text) end)

Inventory:AddButton("Start Gifting", function()
	if ShakeGifterData.SelectedPlayer and ShakeGifterData.ShakeCount and ShakeGifterData.ShakeCount > 0 then
		for i = 1, ShakeGifterData.ShakeCount do
			Services.ReplicatedStorage.rEvents.giftRemote:InvokeServer("giftRequest", ShakeGifterData.SelectedPlayer, 
				Services.Players.LocalPlayer.consumablesFolder:FindFirstChild("Tropical Shake"))
		end
	end
end)

task.spawn(function()
	while true do
		local proteinEggCount = 0
		local tropicalShakeCount = 0
		if PlayerData.Backpack then
			for _, item in ipairs(PlayerData.Backpack:GetChildren()) do
				if item.Name == "Protein Egg" then proteinEggCount = proteinEggCount + 1
				elseif item.Name == "Tropical Shake" then tropicalShakeCount = tropicalShakeCount + 1 end
			end
		end
		EggGifterData.ProteinEggLabel.Text = "Protein Eggs: " .. proteinEggCount
		ShakeGifterData.TropicalShakeLabel.Text = "Tropical Shakes: " .. tropicalShakeCount
		task.wait(7.5)
	end
end)

Inventory:AddLabel("Interferes with Boosts you got gifted. Get on a machine for less Lag!").TextSize = 14


end

local __inventory_ok, __inventory_err = pcall(__DEVIL_SETUP_INVENTORY)
if not __inventory_ok then
    warn('[DEVIL HUB] Inventory failed to initialize: '..tostring(__inventory_err))
end
local farmTab = window:AddTab("Rock")
farmTab:AddLabel("Rock Farming")
 
local function gettool()
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.Name == "Punch" and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
        end
    end
    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
end
 
local tinyIslandRockSwitch = farmTab:AddSwitch("Tiny Island Rock", function(bool)
    selectrock = "Tiny Island Rock"
    getgenv().autoFarm = bool
 
    if bool then
        spawn(function()
            while getgenv().autoFarm do
                task.wait()
                if game:GetService("Players").LocalPlayer.Durability.Value >= 0 then
                    for i, v in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                        if v.Name == "neededDurability" and v.Value == 0 and 
                           game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") and 
                           game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
 
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 1)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 1)
                            gettool()
                        end
                    end
                end
            end
        end)
    end
end)
 
local starterIslandRockSwitch = farmTab:AddSwitch("Starter Island Rock", function(bool)
    selectrock = "Starter Island Rock"
    getgenv().autoFarm = bool
 
    if bool then
        spawn(function()
            while getgenv().autoFarm do
                task.wait()
                if game:GetService("Players").LocalPlayer.Durability.Value >= 100 then
                    for i, v in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                        if v.Name == "neededDurability" and v.Value == 100 and 
                           game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") and 
                           game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
 
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 1)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 1)
                            gettool()
                        end
                    end
                end
            end
        end)
    end
end)
 
local legendBeachRockSwitch = farmTab:AddSwitch("Legend Beach Rock", function(bool)
    selectrock = "Legend Beach Rock"
    getgenv().autoFarm = bool
 
    if bool then
        spawn(function()
            while getgenv().autoFarm do
                task.wait()
                if game:GetService("Players").LocalPlayer.Durability.Value >= 5000 then
                    for i, v in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                        if v.Name == "neededDurability" and v.Value == 5000 and 
                           game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") and 
                           game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
 
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 1)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 1)
                            gettool()
                        end
                    end
                end
            end
        end)
    end
end)
 
local frostGymRockSwitch = farmTab:AddSwitch("Frost Gym Rock", function(bool)
    selectrock = "Frost Gym Rock"
    getgenv().autoFarm = bool
 
    if bool then
        spawn(function()
            while getgenv().autoFarm do
                task.wait()
                if game:GetService("Players").LocalPlayer.Durability.Value >= 150000 then
                    for i, v in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                        if v.Name == "neededDurability" and v.Value == 150000 and 
                           game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") and 
                           game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
 
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 1)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 1)
                            gettool()
                        end
                    end
                end
            end
        end)
    end
end)
 
local mythicalGymRockSwitch = farmTab:AddSwitch("Mythical Gym Rock", function(bool)
    selectrock = "Mythical Gym Rock"
    getgenv().autoFarm = bool
 
    if bool then
        spawn(function()
            while getgenv().autoFarm do
                task.wait()
                if game:GetService("Players").LocalPlayer.Durability.Value >= 400000 then
                    for i, v in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                        if v.Name == "neededDurability" and v.Value == 400000 and 
                           game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") and 
                           game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
 
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 1)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 1)
                            gettool()
                        end
                    end
                end
            end
        end)
    end
end)
 
local eternalGymRockSwitch = farmTab:AddSwitch("Eternal Gym Rock", function(bool)
    selectrock = "Eternal Gym Rock"
    getgenv().autoFarm = bool
 
    if bool then
        spawn(function()
            while getgenv().autoFarm do
                task.wait()
                if game:GetService("Players").LocalPlayer.Durability.Value >= 750000 then
                    for i, v in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                        if v.Name == "neededDurability" and v.Value == 750000 and 
                           game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") and 
                           game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
 
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 1)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 1)
                            gettool()
                        end
                    end
                end
            end
        end)
    end
end)
 
local legendGymRockSwitch = farmTab:AddSwitch("Legend Gym Rock", function(bool)
    selectrock = "Legend Gym Rock"
    getgenv().autoFarm = bool
 
    if bool then
        spawn(function()
            while getgenv().autoFarm do
                task.wait()
                if game:GetService("Players").LocalPlayer.Durability.Value >= 1000000 then
                    for i, v in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                        if v.Name == "neededDurability" and v.Value == 1000000 and 
                           game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") and 
                           game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
 
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 1)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 1)
                            gettool()
                        end
                    end
                end
            end
        end)
    end
end)
 
local muscleKingGymRockSwitch = farmTab:AddSwitch("Muscle King Gym Rock", function(bool)
    selectrock = "Muscle King Gym Rock"
    getgenv().autoFarm = bool
 
    if bool then
        spawn(function()
            while getgenv().autoFarm do
                task.wait()
                if game:GetService("Players").LocalPlayer.Durability.Value >= 5000000 then
                    for i, v in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                        if v.Name == "neededDurability" and v.Value == 5000000 and 
                           game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") and 
                           game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
 
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 1)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 1)
                            gettool()
                        end
                    end
                end
            end
        end)
    end
end)
 
local ancientJungleRockSwitch = farmTab:AddSwitch("Ancient Jungle Rock", function(bool)
    selectrock = "Ancient Jungle Rock"
    getgenv().autoFarm = bool
 
    if bool then
        spawn(function()
            while getgenv().autoFarm do
                task.wait()
                if game:GetService("Players").LocalPlayer.Durability.Value >= 10000000 then
                    for i, v in pairs(game:GetService("Workspace").machinesFolder:GetDescendants()) do
                        if v.Name == "neededDurability" and v.Value == 10000000 and 
                           game.Players.LocalPlayer.Character:FindFirstChild("LeftHand") and 
                           game.Players.LocalPlayer.Character:FindFirstChild("RightHand") then
 
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.RightHand, 1)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 0)
                            firetouchinterest(v.Parent.Rock, game:GetService("Players").LocalPlayer.Character.LeftHand, 1)
                            gettool()
                        end
                    end
                end
            end
        end)
    end
end)



------------------------------------------------------------------
-- DEVIL HUB V1.01 — MAIN PARITY EXTENSIONS
------------------------------------------------------------------
do
    local MainParity = window:AddTab("Main Extras")
    local LP = game:GetService("Players").LocalPlayer
    local RS = game:GetService("ReplicatedStorage")
    local WS = game:GetService("Workspace")
    local RunService = game:GetService("RunService")

    -- Auto Rebirth
    MainParity:AddLabel("Rebirths")
    local rebirthTarget = 0
    local rebirthRunning = false
    MainParity:AddTextBox("Set Rebirth Target", function(v)
        local n = tonumber(v)
        if n then rebirthTarget = math.max(0, math.floor(n)) end
    end, {clear=false})
    MainParity:AddSwitch("Auto Rebirth", function(on)
        rebirthRunning = on
        if not on then return end
        task.spawn(function()
            while rebirthRunning and rebirthTarget > 0 do
                local ls = LP:FindFirstChild("leaderstats")
                local rb = ls and ls:FindFirstChild("Rebirths")
                if rb and rb.Value >= rebirthTarget then break end
                pcall(function() RS.rEvents.rebirthRemote:InvokeServer("rebirthRequest") end)
                task.wait(0.08)
            end
            rebirthRunning = false
        end)
    end)

    -- Auto Size 1
    local sizeOne = false
    MainParity:AddSwitch("Auto Size 1", function(on) sizeOne = on end)
    task.spawn(function()
        while true do
            if sizeOne then
                pcall(function()
                    local r = RS.rEvents:FindFirstChild("changeSpeedSizeRemote")
                    if r then r:InvokeServer("changeSize", 1) end
                end)
                pcall(function()
                    local r = RS.rEvents:FindFirstChild("changeSpeedSize")
                    if r then r:InvokeServer("changeSize", 1) end
                end)
            end
            task.wait(0.05)
        end
    end)

    -- Auto King
    local kingOn = false
    local kingCF = CFrame.new(-8665.4, 17.21, -5792.9)
    MainParity:AddSwitch("Auto King", function(on) kingOn = on end)
    task.spawn(function()
        while true do
            if kingOn then
                local c = LP.Character
                local hrp = c and c:FindFirstChild("HumanoidRootPart")
                local hum = c and c:FindFirstChildOfClass("Humanoid")
                if hrp and hum and hum.Health > 0 and (hrp.Position - kingCF.Position).Magnitude > 5 then
                    pcall(function() hrp.CFrame = kingCF end)
                end
            end
            task.wait(0.1)
        end
    end)

    -- Squat / Lift machine farming
    local machinesFolder = WS:FindFirstChild("machinesFolder")
    local function interactPart(machine)
        if not machine then return nil end
        for _, d in ipairs(machine:GetDescendants()) do
            if d:IsA("BasePart") and string.lower(d.Name) == "interactseat" then return d end
        end
    end
    local function machineList(keyword, excluded)
        local out = {}
        if not machinesFolder then return out end
        for _, m in ipairs(machinesFolder:GetChildren()) do
            local n = string.lower(m.Name)
            if string.find(n, keyword, 1, true) and n ~= excluded then table.insert(out, m) end
        end
        table.sort(out, function(a,b) return a.Name < b.Name end)
        return out
    end
    local squatChoices, liftChoices = {}, {}
    for _, m in ipairs(machineList("squat", "squat rack")) do squatChoices[m.Name] = m end
    for _, m in ipairs(machineList("lift", "deadlift")) do liftChoices[m.Name] = m end

    local function addMachineFarm(label, choices)
        local selected, running = nil, false
        local dd = MainParity:AddDropdown(label, function(v) selected = choices[v] end)
        for name in pairs(choices) do dd:Add(name) end
        MainParity:AddSwitch("Auto " .. label:gsub("Select ", ""), function(on)
            running = on
            if not on then return end
            task.spawn(function()
                while running do
                    local c = LP.Character
                    local hrp = c and c:FindFirstChild("HumanoidRootPart")
                    local hum = c and c:FindFirstChildOfClass("Humanoid")
                    local seat = interactPart(selected)
                    if hrp and hum and hum.Health > 0 and seat then
                        pcall(function()
                            hrp.CFrame = seat.CFrame * CFrame.new(0,3,0)
                            hrp.AssemblyLinearVelocity = Vector3.zero
                            hrp.AssemblyAngularVelocity = Vector3.zero
                        end)
                        task.wait(0.35)
                        pcall(function()
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
                            task.wait(0.08)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.E, false, game)
                        end)
                        task.wait(0.35)
                        pcall(function() LP.muscleEvent:FireServer("rep") end)
                    end
                    task.wait(0.05)
                end
            end)
        end)
    end
    addMachineFarm("Select Squat", squatChoices)
    addMachineFarm("Select Lift", liftChoices)

    -- Select Rock + Auto Rock (separate from DEVIL's existing Rock tab)
    MainParity:AddLabel("Auto Rock")
    local rockData = {
        ["Tiny Rock - 0 Dura"] = 0, ["Large Rock - 100 Dura"] = 100,
        ["Punching Rock - 10 Dura"] = 10, ["Golden Rock - 5k Dura"] = 5000,
        ["Frost Rock - 150k Dura"] = 150000, ["Mythical Rock - 400k Dura"] = 400000,
        ["Eternal Rock - 750k Dura"] = 750000, ["Legend Rock - 1m Dura"] = 1000000,
        ["Muscle King Rock - 5m Dura"] = 5000000, ["Jungle Rock - 10m Dura"] = 10000000,
        ["Industrial Rock - 25m Dura"] = 25000000
    }
    local selectedRock
    local rockDD = MainParity:AddDropdown("Select Rock", function(v) selectedRock = v end)
    for name in pairs(rockData) do rockDD:Add(name) end
    local rockRunning = false
    MainParity:AddSwitch("Auto Rock", function(on)
        rockRunning = on
        if not on then return end
        task.spawn(function()
            while rockRunning do
                local req = selectedRock and rockData[selectedRock]
                local dura = LP:FindFirstChild("Durability")
                local c = LP.Character
                local lh, rh = c and c:FindFirstChild("LeftHand"), c and c:FindFirstChild("RightHand")
                if req and dura and dura.Value >= req and lh and rh and machinesFolder then
                    for _, v in ipairs(machinesFolder:GetDescendants()) do
                        if not rockRunning then break end
                        if v.Name == "neededDurability" and v.Value == req and v.Parent:FindFirstChild("Rock") then
                            local rock = v.Parent.Rock
                            pcall(function()
                                firetouchinterest(rock, rh, 0); firetouchinterest(rock, rh, 1)
                                firetouchinterest(rock, lh, 0); firetouchinterest(rock, lh, 1)
                                LP.muscleEvent:FireServer("punch", "leftHand")
                                LP.muscleEvent:FireServer("punch", "rightHand")
                            end)
                        end
                    end
                end
                task.wait(0.12)
            end
        end)
    end)

    -- Better Strength Farming presets
    MainParity:AddLabel("Better Strength Farming")
    local presets = {
        ["Pushup + Industrial Rock"] = {tool="Pushups", rock="Industrial Rock"},
        ["Pushup + Jungle Rock"] = {tool="Pushups", rock="Ancient Jungle Rock"},
        ["Pushup + Muscle King Rock"] = {tool="Pushups", rock="Muscle King Mountain"},
        ["Pushup + Legends Rock"] = {tool="Pushups", rock="Rock Of Legends"}
    }
    local presetStates = {}
    local function startPreset(name, cfg)
        task.spawn(function()
            while presetStates[name] do
                local c = LP.Character
                local hum = c and c:FindFirstChildOfClass("Humanoid")
                if c and hum then
                    local tool = c:FindFirstChild(cfg.tool) or LP.Backpack:FindFirstChild(cfg.tool)
                    if tool and tool.Parent == LP.Backpack then pcall(function() hum:EquipTool(tool) end) end
                    pcall(function() LP.muscleEvent:FireServer("rep") end)
                    if machinesFolder then
                        local m = machinesFolder:FindFirstChild(cfg.rock)
                        if m and m:FindFirstChild("Rock") and c:FindFirstChild("LeftHand") then
                            pcall(function()
                                firetouchinterest(m.Rock, c.LeftHand, 0); firetouchinterest(m.Rock, c.LeftHand, 1)
                            end)
                        end
                    end
                end
                task.wait(0.05)
            end
        end)
    end
    for name, cfg in pairs(presets) do
        MainParity:AddSwitch(name, function(on)
            presetStates[name] = on
            if on then startPreset(name, cfg) end
        end)
    end

    -- Best stat pets
    local function equipBest(priority)
        local pf = LP:FindFirstChild("petsFolder")
        local ev = RS.rEvents:FindFirstChild("equipPetEvent")
        if not pf or not ev then return end
        for _, folder in ipairs(pf:GetChildren()) do
            if folder:IsA("Folder") then
                for _, pet in ipairs(folder:GetChildren()) do pcall(function() ev:FireServer("unequipPet", pet) end) end
            end
        end
        task.wait(0.2)
        local unique = pf:FindFirstChild("Unique")
        if not unique then return end
        local count = 0
        for _, wanted in ipairs(priority) do
            for _, pet in ipairs(unique:GetChildren()) do
                if pet.Name == wanted and count < 9 then
                    pcall(function() ev:FireServer("equipPet", pet) end)
                    count += 1
                    task.wait(0.08)
                end
            end
        end
    end
    MainParity:AddButton("Equip Best Damage", function()
        equipBest({"Wild Wizard", "Chaos Sorcerer", "Mighty Monster", "Small Fry"})
    end)
    MainParity:AddButton("Equip Best Health", function()
        equipBest({"Mighty Monster", "Small Fry", "Wild Wizard", "Chaos Sorcerer"})
    end)

    -- Ring Color for the existing DEVIL ring
    MainParity:AddLabel("Ring Color")
    local ringColors = {
        Silence=Color3.fromRGB(138,0,0), Red=Color3.fromRGB(255,0,0), Orange=Color3.fromRGB(255,128,0),
        Yellow=Color3.fromRGB(255,230,0), Lime=Color3.fromRGB(128,255,0), Green=Color3.fromRGB(0,200,70),
        Cyan=Color3.fromRGB(0,220,255), Blue=Color3.fromRGB(0,100,255), Purple=Color3.fromRGB(145,70,255),
        Pink=Color3.fromRGB(255,80,180), White=Color3.fromRGB(255,255,255), Black=Color3.fromRGB(0,0,0)
    }
    local colorDD = MainParity:AddDropdown("Ring Color", function(name)
        local c = ringColors[name]
        if c then
            local r = WS:FindFirstChild("DEVIL_KillAuraRing") or WS:FindFirstChild("SilenceKillAuraRing")
            if r and r:IsA("BasePart") then r.Color = c end
            local globalRing = _G.DEVIL_KillAuraRing
            if globalRing and globalRing:IsA("BasePart") then globalRing.Color = c end
        end
    end)
    for name in pairs(ringColors) do colorDD:Add(name) end
end

------------------------------------------------------------------
-- DEVIL HUB V1.01 — EXTRA FEATURES / MAIN PARITY
------------------------------------------------------------------
do
    local Extra = window:AddTab("Extras")
    local LP = game:GetService("Players").LocalPlayer
    local RS = game:GetService("ReplicatedStorage")
    local UIS = game:GetService("UserInputService")
    local Lighting = game:GetService("Lighting")
    local RunService = game:GetService("RunService")

    Extra:AddLabel("Movement / Visuals")

    Extra:AddTextBox("WalkSpeed", function(v)
        local n = tonumber(v)
        if n and LP.Character then
            local h = LP.Character:FindFirstChildOfClass("Humanoid")
            if h then h.WalkSpeed = math.clamp(n, 0, 250) end
        end
    end, {clear=false})

    Extra:AddTextBox("FOV", function(v)
        local n = tonumber(v)
        if n and workspace.CurrentCamera then
            workspace.CurrentCamera.FieldOfView = math.clamp(n, 1, 120)
        end
    end, {clear=false})

    local infiniteJump = false
    Extra:AddSwitch("Infinite Jump", function(v) infiniteJump = v end)
    UIS.JumpRequest:Connect(function()
        if infiniteJump and LP.Character then
            local h = LP.Character:FindFirstChildOfClass("Humanoid")
            if h then h:ChangeState(Enum.HumanoidStateType.Jumping) end
        end
    end)

    local hidePets = false
    local function updatePets()
        local c = LP.Character
        if not c then return end
        for _,d in ipairs(c:GetDescendants()) do
            if d:IsA("BasePart") and d.Name:lower():find("pet") then
                d.LocalTransparencyModifier = hidePets and 1 or 0
            end
        end
    end
    Extra:AddSwitch("Hide Pets", function(v) hidePets=v; updatePets() end)
    RunService.RenderStepped:Connect(function() if hidePets then updatePets() end end)

    local hidePopups = false
    Extra:AddSwitch("Hide Popups", function(v) hidePopups=v end)
    RunService.RenderStepped:Connect(function()
        if not hidePopups then return end
        local pg = LP:FindFirstChildOfClass("PlayerGui")
        if not pg then return end
        for _,d in ipairs(pg:GetDescendants()) do
            if (d:IsA("Frame") or d:IsA("TextLabel") or d:IsA("ImageLabel")) and d.Name:lower():find("popup") then
                d.Visible = false
            end
        end
    end)

    local walkWater = false
    Extra:AddSwitch("Walk on Water", function(v) walkWater=v end)
    RunService.Heartbeat:Connect(function()
        if not walkWater then return end
        for _,d in ipairs(workspace:GetDescendants()) do
            if d:IsA("BasePart") and d.Name:lower():find("water") then
                d.CanCollide = true
            end
        end
    end)

    Extra:AddDropdown("Change Time", function(v)
        Lighting.ClockTime = (v == "Night") and 0 or 9
    end):Add("Day")
    -- The library dropdown returns its object, so add Night separately.
    local timeDrop = Extra:AddDropdown("Time", function(v) Lighting.ClockTime = (v=="Night") and 0 or 9 end)
    timeDrop:Add("Day")
    timeDrop:Add("Night")

    Extra:AddLabel("Farming")

    local exerciseRunning = false
    local selectedExercise = "Pushups"
    local exDrop = Extra:AddDropdown("Select Exercise", function(v) selectedExercise=v end)
    for _,v in ipairs({"Weight","Pushups","Situps","Handstands"}) do exDrop:Add(v) end
    Extra:AddSwitch("Auto Exercise", function(v)
        exerciseRunning=v
        if v then
            task.spawn(function()
                while exerciseRunning do
                    local char=LP.Character
                    local tool=(LP.Backpack and LP.Backpack:FindFirstChild(selectedExercise)) or (char and char:FindFirstChild(selectedExercise))
                    if tool and char and char:FindFirstChildOfClass("Humanoid") then
                        char:FindFirstChildOfClass("Humanoid"):EquipTool(tool)
                    end
                    local me=LP:FindFirstChild("muscleEvent")
                    if me then pcall(function() me:FireServer("rep") end) end
                    task.wait(0.08)
                end
            end)
        end
    end)

    Extra:AddButton("Clear Whitelist", function()
        if type(playerWhitelist)=="table" then table.clear(playerWhitelist) end
    end)
    Extra:AddButton("Clear Killlist", function()
        if type(targetPlayerNames)=="table" then table.clear(targetPlayerNames) end
    end)

    Extra:AddLabel("Fortune Wheel")
    local wheelRunning=false
    local wheelRemote
    pcall(function() wheelRemote=RS.rEvents:FindFirstChild("openFortuneWheelRemote") end)
    Extra:AddSwitch("Spin Fortune Wheel", function(v)
        wheelRunning=v
        if v and wheelRemote then
            task.spawn(function()
                local chances
                pcall(function() chances=RS.shared.catalogs["fortuneWheelChances"]["Fortune Wheel"] end)
                while wheelRunning do
                    pcall(function() wheelRemote:InvokeServer("openFortuneWheel", chances) end)
                    task.wait(1)
                end
            end)
        end
    end)

    Extra:AddLabel("Kill Aura Ring")
    local ringOn=false
    local ringPart
    local ringRange=20
    Extra:AddTextBox("Ring Range", function(v)
        local n=tonumber(v)
        if n then ringRange=math.clamp(n,1,140); if ringPart then ringPart.Size=Vector3.new(.2,ringRange*2,ringRange*2) end end
    end,{clear=false})
    Extra:AddSwitch("Show Ring", function(v)
        ringOn=v
        if ringOn then
            if ringPart then ringPart:Destroy() end
            ringPart=Instance.new("Part")
            ringPart.Name="DEVIL_KillAuraRing"
            ringPart.Shape=Enum.PartType.Cylinder
            ringPart.Anchored=true
            ringPart.CanCollide=false
            ringPart.CanTouch=false
            ringPart.CanQuery=false
            ringPart.Transparency=.6
            ringPart.Material=Enum.Material.Neon
            ringPart.Size=Vector3.new(.2,ringRange*2,ringRange*2)
            ringPart.Parent=workspace
        elseif ringPart then ringPart:Destroy(); ringPart=nil end
    end)
    RunService.RenderStepped:Connect(function()
        if ringOn and ringPart and LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") then
            ringPart.CFrame=LP.Character.HumanoidRootPart.CFrame*CFrame.Angles(0,0,math.rad(90))
        end
    end)
end

local Credits = window:AddTab("الحقوق")
