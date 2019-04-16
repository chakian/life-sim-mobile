local background = display.newImage("images/KroLife_bg_1920_1080.png");

-- Hide status bar
display.setStatusBar(display.HiddenStatusBar);

-- 3. Find device display height and width
_H = display.contentHeight;
_W = display.contentWidth;

-- Create a new text field using native device font
local ageText = display.newText("Age 1", 0, 0, native.systemFont, 16*2);
ageText:setFillColor( 0, 0, 0 );
ageText.xScale = 0.5;
ageText.yScale = 0.5;

-- Place the text on screen
ageText.x = 5;
ageText.y = 20;

--[[display.setStatusBar( display.HiddenStatusBar )

-- include Corona's "widget" library
local widget = require "widget"
local composer = require "composer"
local person = require "personInfo"

person.age = 1;
person.money = 2520;

-- event listeners for tab buttons:
local function onMainView( event )
	composer.gotoScene( "mainView" );
end

local function onEducationView( event )
	composer.gotoScene( "educationView" );
end

-- create a bar at the top to display status
local tabStatus = {
	{ defaultFile="icons/life_32.png", overFile="icons/life_32.png", label="Age "..person.age, width=32, height=32 },
	{ defaultFile="icons/dollar_circle_32.png", overFile="icons/dollar_circle_32.png", label=person.getFormattedMoney(), width=32, height=32 },
	{ label="Happy", width=32, height=32 }
}
local tabStatusBar = widget.newTabBar{
	top = 0,
	buttons = tabStatus
}

-- create a tabBar widget with two buttons at the bottom of the screen
-- table to setup buttons
local tabButtons = {
	{ label="First", defaultFile="button1.png", overFile="button1-down.png", width = 32, height = 32, onPress=onMainView, selected=true },
	{ label="Second", defaultFile="button2.png", overFile="button2-down.png", width = 32, height = 32, onPress=onEducationView },
}

-- create the actual tabBar widget
local tabBar = widget.newTabBar{
	top = display.contentHeight - 50,	-- 50 is default height for tabBar widget
	buttons = tabButtons
}

-- invoke first tab button's onPress event manually
onMainView();
]]--
