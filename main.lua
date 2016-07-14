
-- Sources: 
--  https://www.threadless.com/product/844/spoilt
--  http://s241.photobucket.com/user/FloridaJudy/media/spoilers_zps32bf4464.jpg.html
--
-- SSIDs are limited to 32 characters
-- (http://serverfault.com/questions/45439/what-is-the-maximum-length-of-a-wifi-access-points-ssid)
--  "12345678901234567890123456789012"
spoilers = {
    "Vader is his father", -- The Empire Strikes Back (1980)
    "It was earth all along", -- Planet of the Apes (1968)
    "Verbal is Keyser Soze", -- The Usual Suspects (1995)
    --"TheVillagersSacrificeThePoliceman", -- The Wicker Man (1973)
    "Dil is actually a man", -- The Crying Game (1992)
    "Snape kills Dumbledore", --  Harry Potter and the Half-Blood Prince (2009)
    "Kristin shot J.R.", -- Dallas (1980)
    "The kid's therapist is a ghost", -- The Sixth Sense (1999)
    "Neo is The One", -- The Matrix (1999)
    "Tyler Durden isn't real", -- Fight Club (1999)
    --"299 die", -- 300 (2006)
    --"TheKillersMotherIsAPartOfHisSplitPersonality", -- Psycho (1960)
    --"TheVillageIsPartOfAModernNatureReserve", -- The Village (2004)
    "Soylent Green is made of people", -- Soylent Green (1973)
    "Donnie dies", -- Donnie Darko (2001)
    --"HisFriendAreAllAPartOfHisBeatifulMind", -- A Beautiful Mind (2001)
    "Jack dies", -- Titanic (1997)
    "He killed his own wife", -- Memento (2000)
    "Leelo is The Fifth Element", -- The Fifth Element (1997)
    "Jake becomes a Na'vi", -- Avatar (2009)
    "Beatrix kills Bill", -- Kill Bill (2003-2004)
    "Rocky loses the fight", -- Rocky (1976)
    "TheyNeverCatchTheZodiacKiller", -- Zodiac (2007)
    "Ripley survives", -- Alien (1979)
    "Mission possible", -- Mission: Impossible (1996)
    "Nina stabs herself", -- Black Swan (2010)
    "The others live, she is a ghost", -- The Others (2001)
    "Doug is on the roof all the time", -- The Hangover (2009)
    "Ferris doesn't get into trouble", -- Ferris Bueller's Day Off (1986)
    "Mal was right", -- Inception (2010)
    "Alex remains violent", -- A Clockwork Orange (1971)
    "Rosemary'sBabyIsTheAntichrist", -- Rosemary's Baby (1968)
    "Rosebud was the name of his sled", -- Citizen Kane (1941)
}
--  "12345678901234567890123456789012"

wifi.setmode(wifi.SOFTAP)

tmr.alarm(1, 5000, 1, function()
    local i = math.random(#spoilers)
    local cfg = {}
    cfg.ssid = spoilers[i]
    cfg.pwd = "12345678"

    print(cfg.ssid .. "...")
    wifi.ap.setmac(string.format("AC-1D-1C-B1-0B-%02d", i))
    wifi.ap.config(cfg)
    print(cfg.ssid .. "...OK")
end)
