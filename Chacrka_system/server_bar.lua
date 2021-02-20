-- chakra_s by manawydan

function Diminuirchakra(thePlayer,N)
	if thePlayer and N and tonumber(N) and getElementData(thePlayer,"chakra") then
		local expP = tonumber(getElementData(thePlayer,"chakra"))
	if (expP > N) then
		setElementData(thePlayer,"chakra",expP-N) else
		setElementData(thePlayer,"chakra",0)
	end
    end
end

function ischakraSuficientePara(thePlayer,Sn)
	if thePlayer and (type(Sn) == "number") then
		local expB = tonumber(getElementData(thePlayer,"chakra"))
	if (expB >= Sn) then
	return true
	else
	return false
	end
	end
end

function RemoverBarra(thePlayer)
	if thePlayer then
	if getElementData(thePlayer,"chakra") then
		removeElementData(thePlayer,"chakra")
	end
	end
end

local expMax = 100	
local BarChange = function (dataName,old)
	if not (dataName == "chakra") then return end
	local exp = tonumber(getElementData(source,"chakra")) or 0
	if (exp > expMax) then
	setElementData(source,"chakra",100)
	end
end
addEventHandler("onElementDataChange",getRootElement(),BarChange)


function getChakraPlayer(thePlayer)
	if thePlayer and getElementData(thePlayer,"chakra") then
		local expPlayer = tonumber(getElementData(thePlayer,"chakra"))
	return expPlayer end
end

function addPlayerchakra (thePlayer,N)
	if thePlayer and N and tonumber(N) then
	if (N < expMax) then 
	local y = N + tonumber(getElementData(thePlayer,"chakra"))
	if (y <= expMax) then
		setElementData(thePlayer,"chakra",N+tonumber(getElementData(thePlayer,"chakra")))
	end
	end
    end
end

local ExpStartP = function ()
	setElementData(source,"chakra",100)
end
addEventHandler("onPlayerJoin",root,ExpStartP)
 