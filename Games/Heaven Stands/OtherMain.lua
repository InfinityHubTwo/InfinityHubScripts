getgenv().Heaven_Stands = {
    ["Farming Options"] = {
        ["Box Farm"] = false,
    },
    ["Insta Kill Bosses"] = {
        ["DIO"] = false,
        ["Garou"] = false,
        ["Minos Prime"] = false,
    },
    ["Player Options"] = {
        ["Character"] = {
            ["Disable Character Functions"] = false,
            ["Disable Animate"] = false,
        },
        ["Others Options"] = {
            ["Enable Speed and Jump"] = false,
            ["WalkSpeed"] = "", -- normal is 16
            ["JumpPower"] = "", -- normal is 50
        },
    },
    ["Visual Options"] = {
        ["Destroy Spirits"] = false,
        ["Vergil 2 Swords"] = false,
        ["RTX Mode"] = false,
    },
};


loadstring(game:HttpGetAsync(
        'https://raw.githubusercontent.com/InfinityHubTwo/InfinityHubScripts/main/Games/Heaven%20Stands/MainCode.lua'
))("Heaven_Stands");
