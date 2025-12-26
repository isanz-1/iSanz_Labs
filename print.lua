if GetCurrentResourceName() ~= "iSanz_Labs" then
    print("^1⚠️  Resource name has been changed! Expected: iSanz_Labs")
    return
end

local version = "v3.0.0-BETA"
local docURL = "https://docs.solzteam.com/"
local resourceName = GetCurrentResourceName()

PerformHttpRequest("https://licensesecure.net/view.php?id=7818128", function(err, text, head)
    if string.match(text, "Sorry,") then
        print("^1⚠️  License not found! This resource requires a valid license to run.")
        return
    else
        Wait(5000)
        print("^6")
        print([[
       @@@@@@@@@@@@@@@@@@         @@@@@  @@@@@         @@@@                    @@@@@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@@@@@@         @@@@   @@@@@         @@@@                    @@@@@@@@@@@@@@@@@@@@@
    @@@@@                        @@@@@   @@@@@         @@@@                     @               @@@@
    @@@@                        @@@@@     @@@@@@       @@@@                                     @@@@
    @@@@@@@@@@@@@@@@@@@@@   @@@@@@@@       @@@@@@@@    @@@@                        @@@@@@@@@@@@@@@@@
    @@@@@@@@@@@@@@@@@@@@@   @@@@@@           @@@@@@    @@@@                      @@@@@@@@@@@@@@@@@  
    @@@@@@@@@@@@@@@@@@@@@   @@@@@@@@       @@@@@@@@    @@@@                    @@@@@@@@@@@@@@@@@@   
                    @@@@@       @@@@@     @@@@@@       @@@@                    @@@@@                
                    @@@@@        @@@@@   @@@@@         @@@@@                   @@@@@         @@@@@@@
    @@@@@@@@@@@@@@@@@@@@          @@@@   @@@@@          @@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@
    @@@@@@@@@@@@@@@@@@            @@@@@  @@@@@            @@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@
        ]])
        print("^6[^7" .. resourceName .. "^6] ^7" .. version .. " | ^6SoLZ Team^7 | ^6✅ Loaded Successfully^7")
        print("^6━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━^7")
        print("^6📦 Version:^7 " .. version)
        print("^6🌐 Documentation:^7 " .. docURL)
        print("^6📖 Usage:^7 Check documentation for setup and configuration guide")
        print("^6⚠️  Note:^7 This is a BETA version - report any issues you encounter")
        print("^6━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━^7")
    end
end)
