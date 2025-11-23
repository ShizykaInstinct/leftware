-- Получаем сервисы и игрока
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Создаем главный GUI
local gui = Instance.new("ScreenGui")
gui.Name = "MySimpleGUI"
gui.Parent = player:WaitForChild("PlayerGui")

-- Создаем основной фрейм (окно)
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 250, 0, 300)  -- Ширина 250 пикселей, Высота 300 пикселей
mainFrame.Position = UDim2.new(0, 50, 0, 50)  -- Позиция: X=50, Y=50 (левый верхний угол)
mainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)  -- Темно-серый фон
mainFrame.BorderSizePixel = 0  -- Убираем границу
mainFrame.Parent = gui

-- Заголовок окна
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)  -- Ширина 100%, Высота 40 пикселей
title.Position = UDim2.new(0, 0, 0, 0)  -- Вверху окна
title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)  -- Темнее чем основной фон
title.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Белый текст
title.Text = "МОЙ СКРИПТ"  -- Название в заголовке
title.TextScaled = true  -- Автоматически подбирать размер текста
title.Font = Enum.Font.GothamBold  -- Шрифт
title.Parent = mainFrame

--=== ПУНКТ 1: КНОПКА ===--
local button1 = Instance.new("TextButton")
button1.Size = UDim2.new(0.9, 0, 0, 40)  -- Ширина 90%, Высота 40 пикселей
button1.Position = UDim2.new(0.05, 0, 0.15, 0)  -- Отступ слева 5%, сверху 15%
button1.BackgroundColor3 = Color3.fromRGB(60, 60, 60)  -- Серый фон кнопки
button1.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Белый текст
button1.Text = "Телепорт на базу"  -- Текст на кнопке
button1.Font = Enum.Font.Gotham  -- Шрифт
button1.Parent = mainFrame

-- Функция при нажатии на кнопку 1
button1.MouseButton1Click:Connect(function()
    print("Кнопка 1 нажата!")
    -- СЮДА ВСТАВЬ СВОЙ КОД ДЛЯ ТЕЛЕПОРТА
    -- Например: 
    -- player.Character.HumanoidRootPart.CFrame = CFrame.new(0, 50, 0)
end)

--=== ПУНКТ 2: ПЕРЕКЛЮЧАТЕЛЬ ===--
local button2 = Instance.new("TextButton")
button2.Size = UDim2.new(0.9, 0, 0, 40)
button2.Position = UDim2.new(0.05, 0, 0.35, 0)  -- Ниже первой кнопки
button2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
button2.TextColor3 = Color3.fromRGB(255, 255, 255)
button2.Text = "Бессмертие: ВЫКЛ"  -- Начальный текст
button2.Font = Enum.Font.Gotham
button2.Parent = mainFrame

-- Переменная для состояния переключателя
local toggleState = false

-- Функция при нажатии на кнопку 2 (переключатель)
button2.MouseButton1Click:Connect(function()
    -- Меняем состояние на противоположное
    toggleState = not toggleState
    
    if toggleState then
        -- Если ВКЛЮЧЕНО
        button2.Text = "Бессмертие: ВКЛ"
        button2.BackgroundColor3 = Color3.fromRGB(0, 100, 0)  -- Зеленый цвет
        print("Бессмертие включено!")
        -- СЮДА ВСТАВЬ КОД ДЛЯ ВКЛЮЧЕНИЯ БЕССМЕРТИЯ
    else
        -- Если ВЫКЛЮЧЕНО
        button2.Text = "Бессмертие: ВЫКЛ"
        button2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)  -- Возвращаем серый
        print("Бессмертие выключено!")
        -- СЮДА ВСТАВЬ КОД ДЛЯ ВЫКЛЮЧЕНИЯ БЕССМЕРТИЯ
    end
end)

--=== ПУНКТ 3: ВТОРАЯ КНОПКА ===--
local button3 = Instance.new("TextButton")
button3.Size = UDim2.new(0.9, 0, 0, 40)
button3.Position = UDim2.new(0.05, 0, 0.55, 0)  -- Еще ниже
button3.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
button3.TextColor3 = Color3.fromRGB(255, 255, 255)
button3.Text = "Дать оружие"  -- Текст на кнопке
button3.Font = Enum.Font.Gotham
button3.Parent = mainFrame

-- Функция при нажатии на кнопку 3
button3.MouseButton1Click:Connect(function()
    print("Кнопка 3 нажата!")
    -- СЮДА ВСТАВЬ СВОЙ КОД ДЛЯ ВЫДАЧИ ОРУЖИЯ
    -- Например: создать инструмент в инвентаре
end)

--=== КНОПКА ЗАКРЫТИЯ ===--
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)  -- Маленькая кнопка
closeButton.Position = UDim2.new(1, -30, 0, 5)  -- В правом верхнем углу
closeButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)  -- Красный цвет
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Text = "X"  -- Текст на кнопке закрытия
closeButton.Font = Enum.Font.GothamBold
closeButton.Parent = mainFrame

-- Функция закрытия GUI
closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()  -- Удаляем GUI
    print("GUI закрыто")
end)

print("GUI успешно создано!")  -- Сообщение в консоль
