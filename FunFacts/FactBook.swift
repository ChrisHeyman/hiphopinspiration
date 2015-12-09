//
//  FactBook.swift
//  FunFacts
//
//  Created by Christopher Heyman on 11/11/15.
//  Copyright © 2015 Christopher Heyman. All rights reserved.
//

import Foundation

struct FactBook {
    let factsArray = [
        "\"I’m not a businessman, I’m a business… man.\"\n - Jay Z -- Diamonds from Sierra Leone Remix",
        "\"Its Cool To Love To Win, But Its Better To Hate To Lose\"\n - Nas",
        "\"YOU CAN SPEND HOURS , DAYS , WEEKS , OR EVEN MONTHS TRYING TO PICK UP THE PIECES AND FIGURE OUT WHAT WENT WRONG OR YOU CAN JUST LEAVE THE PIECES ON THE FLOOR AND MOVE THE F@CK ON\"\n - 2 PAC",
        "\"The most important parts,are the ones that are unseen. The wings don't make you fly, and the crown don't make you king.\"\n - Lupe -- Gold Watch",
        "\"Cause you know life is what we make it and a chance is like a picture, it’d be nice if you’d just take it.\"\n - Drizzy",
        "\"I sell ice in the winter, I sell fire in hell, I am a hustler baby, I’ll sell water to a well\"\n - Jay Z -- You Don’t know.",
        "\"Remind yourself. Nobody built like you, you design yourself.\"\n - Jay Z -- A Dream",
        "\"I give a f**k about what brand you are. I’m concerned what type of man you are. What your principles and standards are.\"\n - Mos Def – Sunshine",
        "\"Never looking back or too far in front of me. The present is a gift, and I just wanna BE.\"\n - Common",
        "\"Hip-hop isn't as complex as a woman is.\"\n - Talib Kweli",
        "\"Remember one thing Through every dark night, there's a bright day after that. So no matter how hard it get, stick your chest out. Keep your head up, and handle it.\"\n - Tupac",
        "\"Life is a wheel of fortune and it's my turn to spin it.\"\n - Tupac",
        "\"You see my tears, in the rain underneath it all, we're just the same.\"\n - Machine Gun Kelly",
        "\"Life is too short to live the same day twice. So each new day make sure you live your life.\"\n - Machine Gun Kelly",
        "\"If I woke up tomorrow and didn’t have a dolla, as long as I have my heart, I can get it all over.\"\n - Wale",
        "\"Life without dreaming is a life without meaning.\"\n - Wale",
        "\"Living well eliminates the need for revenge.\"\n - Kanye West",
        "\"Memories have to be our most painful blessing.\"\n - Kanye West",
        "\"If you admire someone, you should go ahead and tell them. People never get the flowers while they can still smell them.\"\n - Kanye West",
        "\"No matter where life takes me. Find me with a smile.\"\n - Mac Miller",
        "\"They're gonna try to tell you no, shatter all your dreams. But you gotta get up and go and think of better things.\"\n - Mac Miller",
        "\"If you're scared to take chances, you'll never have the answers.\"\n - Nas",
        "\"You have to keep your vision clear, cause only a coward lives in fear.\"\n - Nas",
        "\"Everything will eventually come to an end. So try to savor the moments, cuz time flies, don't it? The beauty of life is to make it last for the better. Cuz nothing lasts forever.\"\n - Nas",
        "\"When people treat you like nothing, you begin to feel like nothing.\"\n - Drake",
        "\"We always ignore the ones who adore us, and adore the ones who ignore us.\"\n - Drake",
        "\"You can make something of your life, it just depends on your drive.\"\n - Eminem",
        "\"The truth is you don't know what is going to happen tomorrow. Life is a crazy ride and nothing is guaranteed.\"\n - Eminem",
        "\"Living life is a choice. Making a difference in someone else's isn't.\"\n - Kid Cudi",
        "\"I'm on the pursuit of happiness. I know everything that shines ain't always gold. I'll be fine once I get it, I'll be good.\"\n - Kid Cudi",
        "\"Never apologize for what you feel. It's like apologizing for being real.\"\n - Lil Wayne",
        "\"Take the first chance that you get, because you may never get another one.\"\n - Lil Wayne",
        "\"Damn right I like the life I live, cause I went from negative to positive.\"\n - Biggie Smalls",
        "\"We can't change the world until we change ourselves.\"\n - Biggie Smalls",
        "\"Stop lookin' at what you ain't got, and start being thankful for what you do got.\"\n - T.I",
        "\"Some of y'all are not where you want to be in life. Yet you party every weekend. What exactly are you celebrating?\"\n - T.I",
        "\"Forget yesterday, live for today. Tomorrow will take care of itself.\"\n - Rick Ross",
        "\"Regardless of how it goes down, life goes on.\"\n - Rick Ross",
        "\"Some people dream of success... while others wake up and work hard at it.\"\n - Eminem",
        "\"You've got enemies? Good, that means you actually stood up for something.\"\n - Eminem",
    ]
    
    func randomFact() -> String {
        let unsignedArrayCount = UInt32(factsArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        return factsArray[randomNumber]
    }
}