local regions = { CharacterMicroButton:GetRegions() }
for k, region in pairs(regions) do
	region:SetVertexColor(1, 0.6, 0.4, 1)
end

local regions = { SpellbookMicroButton:GetRegions() }
for k, region in pairs(regions) do
	region:SetVertexColor(1, 0.4, 0.4, 1)
end

local regions = { TalentMicroButton:GetRegions() }
for k, region in pairs(regions) do
	region:SetVertexColor(1, 0.2, 0.4, 1)
end

local regions = { AchievementMicroButton:GetRegions() }
for k, region in pairs(regions) do
	region:SetVertexColor(1, 1, 0, 1)
end

local regions = { QuestLogMicroButton:GetRegions() }
for k, region in pairs(regions) do
	region:SetVertexColor(1, 0.8, 0, 1)
end

local regions = { GuildMicroButton:GetRegions() }
for k, region in pairs(regions) do
	region:SetVertexColor(1, 1, 1, 1)
end

local frame = CreateFrame("FRAME", "VeryLAddonFrame");
frame:RegisterEvent("PLAYER_ENTERING_WORLD");
frame:RegisterEvent("PLAYER_ALIVE");
frame:RegisterEvent("GUILD_ROSTER_UPDATE");
local function eventHandler(self, event, ...)
	if event:find("PLAYER_ENTERING_WORLD") then
		for id=1,C_Minimap.GetNumTrackingTypes() do
			local name, texture, active, category = C_Minimap.GetTrackingInfo(id);
			if name == "Transmogrifizierer" then
				C_Minimap.SetTracking(id, false);
			end
		end
	elseif event:find("PLAYER_ALIVE") then
		if IsInGuild() then
			GuildRoster();
		end
	elseif event:find("GUILD_ROSTER_UPDATE") then
		local bkgR, bkgG, bkgB, borderR, borderG, borderB, emblemR, emblemG, emblemB, emblemFilename = GetGuildLogoInfo();
		--print("bkgR " .. bkgR .. " bkgG " .. bkgG .. " bkgB " .. bkgB)
		--print("borderR " .. borderR .. " borderG " .. borderG .. " borderB " .. borderB)
		--print("emblemR " .. emblemR .. " emblemG " .. emblemG .. " emblemB " .. emblemB)
		--print("emblemFilename " .. emblemFilename)
		if bkgR and bkgG and bkgB then
			local regions = { GuildMicroButton:GetRegions() }
			local i = 0
			for k, region in pairs(regions) do
				if emblemFilename == 415005 then
					region:SetVertexColor(borderR / 255.0, borderG / 255.0, borderB / 255.0, 1);
				else
					region:SetVertexColor(bkgR / 255.0, bkgG / 255.0, bkgB / 255.0, 1);
					--region:SetVertexColor(emblemR / 255.0, emblemG / 255.0, emblemB / 255.0, 1);
				end
			end
		end
	end
end
frame:SetScript("OnEvent", eventHandler);

local regions = { LFDMicroButton:GetRegions() }
for k, region in pairs(regions) do
	region:SetVertexColor(0, 0.8, 0, 1)
end

local regions = { CollectionsMicroButton:GetRegions() }
for k, region in pairs(regions) do
	region:SetVertexColor(1, 0.6, 0.2, 1)
end

local regions = { EJMicroButton:GetRegions() }
for k, region in pairs(regions) do
	region:SetVertexColor(1, 1, 1, 1)
end

local regions = { StoreMicroButton:GetRegions() }
for k, region in pairs(regions) do
	region:SetVertexColor(1, 1, 0, 1)
end

local regions = { HelpMicroButton:GetRegions() }
for k, region in pairs(regions) do
	region:SetVertexColor(1, 0.8, 0.8, 1)
end

local regions = { MainMenuMicroButton:GetRegions() }
for k, region in pairs(regions) do
	region:SetVertexColor(1, 0, 0, 1)
end
