MicroButtonAndBagsBar:SetScale(1.4)

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
	region:SetVertexColor(0.2, 0.2, 1, 1)
end

local regions = { LFDMicroButton:GetRegions() }
for k, region in pairs(regions) do
	region:SetVertexColor(0, 0.8, 0, 1)
end

local regions = { CollectionsMicroButton:GetRegions() }
for k, region in pairs(regions) do
	region:SetVertexColor(1, 0.8, 0.4, 1)
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
