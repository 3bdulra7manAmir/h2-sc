function frontend()
    LUI.onmenuopen("main_lockout", function(menu)
        PersistentBackground.ChangeBackground("h2_custom_menu_background", nil, false)
    end)

    LUI.onmenuopen("main_campaign", function(menu)
        PersistentBackground.ChangeBackground("h2_custom_menu_background_greyscale", nil, false)
    end)

    LUI.onmenuopen("mods_menu", function(menu)
        PersistentBackground.ChangeBackground("h2_custom_menu_background_alternative", nil, false)
    end)
end

function ingame()
    isIntelCheatsAllowed = function()
        return true
    end
end

if (Engine.InFrontend()) then
    frontend()
else
    ingame()
end