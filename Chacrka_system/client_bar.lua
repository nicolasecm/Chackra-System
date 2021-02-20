-- chakra_c by manawydan

local tx,ty = guiGetScreenSize()

local Recarregar_linhaExp = function ()
	if getElementData(localPlayer,"chakra") then
		local Exp_b_p = tonumber(getElementData(localPlayer,"chakra"))
--	local Ret = dxDrawRectangle(tx-200,ty-55,Exp_b_p/100*100,10,tocolor(0,0,180,200))
	end
end
addEventHandler("onClientRender",root,Recarregar_linhaExp)
 
function Diminuirchakra(N)
	if  N and tonumber(N) and getElementData(localPlayer,"chakra") then
		local expP = tonumber(getElementData(localPlayer,"chakra"))
	if (expP > N) then
		setElementData(localPlayer,"chakra",expP-N) else
		setElementData(localPlayer,"chakra",0)
	end
    end
end

function ischakraSuficientePara(Sn)
	if  (type(Sn) == "number") then
		local expB = tonumber(getElementData(localPlayer,"chakra"))
	if (expB >= Sn) then
		return true
	else
		return false
	end
	end
end

local ReloadPBar = function()
	local DATA = getElementData(localPlayer,"chakra") if DATA and tonumber(getElementData(localPlayer,"chakra")) then if ((DATA + 1) <100 ) then
	setElementData(localPlayer,"chakra",DATA + 1)
end
end
end
setTimer(ReloadPBar,500,0)