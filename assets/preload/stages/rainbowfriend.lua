function onCreate()
	-- background shit
	makeLuaSprite('bg', 'Stage',-600, -200);
	setLuaSpriteScrollFactor('bg', 1, 1);
	scaleObject('bg', 2, 2);
	
	makeLuaSprite('blank', 'blank', -650, 600);
	setLuaSpriteScrollFactor('blank', 0.9, 0.9);
	scaleObject('blank', 1.1, 1.1);

   makeLuaSprite('uh', 'uh', 1130, 255);
	setLuaSpriteScrollFactor('uh', 1.0, 1.0);
	scaleObject('uh', 1.1, 1.1);
   setProperty('uh.visible', false)

   makeLuaSprite('q', 'q', 1130, 255);
	setLuaSpriteScrollFactor('q', 1.0, 1.0);
	scaleObject('q', 1.1, 1.1);
   setProperty('q.visible', false)

	if not lowQuality then
		makeLuaSprite('blank', 'blank', -125, -100);
		setLuaSpriteScrollFactor('blank', 0.9, 0.9);
		scaleObject('blank', 1.1, 1.1);
		
		makeLuaSprite('blank', 'blank', 1225, -100);
		setLuaSpriteScrollFactor('blank', 0.9, 0.9);
		scaleObject('blank', 1.1, 1.1);
		setPropertyLuaSprite('blank', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('blank', 'blank', -500, -300);
		setLuaSpriteScrollFactor('blank', 1.3, 1.3);
		scaleObject('blank', 0.9, 0.9);
	end

	addLuaSprite('bg', false);
   addLuaSprite('uh', false);
   addLuaSprite('q', false);
	addLuaSprite('blank', false);
	addLuaSprite('blank', false);
	addLuaSprite('blank', false);
	addLuaSprite('blank', false);

end

function onEvent(name, value1, value2)
if name == "GifTrif" then
if value1 == 'Uh' then
setProperty('uh.visible', true)
elseif value1 =='!' then
setProperty('q.visible', true)
setProperty('uh.visible', false)
elseif value1 =='cierre' then
setProperty('uh.visible', false)
setProperty('q.visible', false)
      end
   end 
end

