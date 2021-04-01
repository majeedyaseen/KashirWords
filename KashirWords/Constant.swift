//
//  Constant.swift
//  KashirWords
//
//  Created by Yaseen Majeed on 25/02/20.
//  Copyright © 2020 Yaseen Majeed. All rights reserved.
//

import Foundation

let mainPath = "SoundResource"
let soundFormat = ".mp3"

struct VegetableConsts {
    public static let brinjal  = "brinjal"
    public static let capsicum = "capsicum"
    public static let carrot   = "carrot"
    public static let cucumber = "cucumber"
    public static let onion    = "onion"
    public static let peas     = "peas"
    public static let potato   = "potato"
    public static let spinach  = "spinach"
    public static let tomato   = "tomato"
    public static let turnip   = "turnip"
}

struct VegetableConstsKashmiri {
    public static let brinjal  = "vaangan"
    public static let capsicum = "shimla marchivangun"
    public static let carrot   = "gaazri"
    public static let cucumber = "laier"
    public static let onion    = "gandi"
    public static let peas     = "mattar"
    public static let potato   = "aaelvi"
    public static let spinach  = "paalak"
    public static let tomato   = "ruvaangan"
    public static let turnip   = "goagji"
}


struct RelationsConsts {
    public static let brother       = "brother"
    public static let father        = "father"
    public static let grandfather   = "grandfather"
    public static let grandmother   = "grandmother"
    public static let mother        = "mother"
    public static let sister        = "sister"
}

struct RelationsConstsKashmiri {
    public static let brother       = "boi"
    public static let father        = "moul"
    public static let grandfather   = "bidibab"
    public static let grandmother   = "nain"
    public static let mother        = "moaj"
    public static let sister        = "beni"
}

struct ColorConsts {
    public static let black       = "black"
    public static let blonde      = "blonde"
    public static let green       = "green"
    public static let red         = "red"
    public static let white       = "white"
}

struct ColorConstsKashmiri {
    public static let black       = "kruhun"
    public static let blonde      = "kaachur"
    public static let green       = "sabz"
    public static let red         = "vozul"
    public static let white       = "safaied"
}

struct NumberConsts {
    public static let one            = "one"
    public static let two            = "two"
    public static let three          = "three"
    public static let four           = "four"
    public static let five           = "five"
    public static let six            = "six"
    public static let seven          = "seven"
    public static let eigth          = "eight"
    public static let nine           = "nine"
    public static let ten            = "ten"
    public static let eleven         = "eleven"
    public static let twelve         = "twelve"
    public static let thirteen       = "thirteen"
    public static let fourteen       = "fourteen"
    public static let fifteen        = "fifteen"
    public static let sixteen        = "sixteen"
    public static let seventeen      = "seventeen"
    public static let eighteen       = "eighteen"
    public static let nineteen       = "nineteen"
    public static let twenty         = "twenty"
}

struct NumberConstsKashmiri {
    public static let one            = "akh"
    public static let two            = "zi"
    public static let three          = "trei"
    public static let four           = "chour"
    public static let five           = "paanch"
    public static let six            = "shei"
    public static let seven          = "sath"
    public static let eigth          = "aeeth"
    public static let nine           = "nav"
    public static let ten            = "dah"
    public static let eleven         = "kah"
    public static let twelve         = "bah"
    public static let thirteen       = "truva"
    public static let fourteen       = "choddah"
    public static let fifteen        = "pandah"
    public static let sixteen        = "shurah"
    public static let seventeen      = "sadah"
    public static let eighteen       = "ardah"
    public static let nineteen       = "kunwuh"
    public static let twenty         = "wuh"
}

struct FruitsConsts {
    public static let apple             = "apple"
    public static let banana            = "banana"
    public static let grapes            = "grapes"
    public static let mango             = "mango"
    public static let melon             = "melon"
    public static let orange            = "orange"
    public static let pear              = "pear"
    public static let plum              = "plum"
    public static let pomegranade       = "pomegranade"
    public static let watermelon        = "watermelon"
}

struct FruitsConstsKashmiri {
    public static let apple             = "Chount"
    public static let banana            = "Keal"
    public static let grapes            = "Dachh"
    public static let mango             = "Ambb"
    public static let melon             = "Kharbuz"
    public static let orange            = "Sangtar"
    public static let pear              = "Tang"
    public static let plum              = "Aeer"
    public static let pomegranade       = "Daen"
    public static let watermelon        = "HendWend"
}

struct AnimalsConsts {
    public static let bear       = "bear"
    public static let cat        = "cat"
    public static let cow        = "cow"
    public static let dog        = "dog"
    public static let horse      = "horse"
    public static let monkey     = "monkey"
    public static let rabbit     = "rabbit"
    public static let rat        = "rat"
    public static let tiger      = "tiger"
    public static let wolf       = "wolf"
}
struct AnimalsConstsKashmiri {
    public static let bear       = "haput"
    public static let cat        = "Beair"
    public static let cow        = "Gaw"
    public static let dog        = "Hoon"
    public static let horse      = "Gur"
    public static let monkey     = "Ponz"
    public static let rabbit     = "Khargosh"
    public static let rat        = "Gagur"
    public static let tiger      = "Sehh"
    public static let wolf       = "shaal"
}

func getSoundPath(_ category: Category , _ sound: String) -> String{
    return (mainPath + "/" + category.rawValue + "/" + sound + soundFormat)
}

enum Category: String{
    case Animals
    case Colors
    case Fruits
    case Numbers
    case Relations
    case Vegetables
}
