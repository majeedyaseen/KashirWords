//
//  Data.swift
//  KashirWords
//
//  Created by Yaseen Majeed on 25/02/20.
//  Copyright © 2020 Yaseen Majeed. All rights reserved.
//

import Foundation


let vegetableData: [SoundModel] = [
    SoundModel(title: VegetableConsts.brinjal.capitalized, Kashmiriname: VegetableConstsKashmiri.brinjal.capitalized, audioFileLocation: getSoundPath(Category.Vegetables , VegetableConsts.brinjal), imageName: ""),
    SoundModel(title: VegetableConsts.capsicum.capitalized,Kashmiriname: VegetableConstsKashmiri.capsicum.capitalized, audioFileLocation: getSoundPath(Category.Vegetables , VegetableConsts.capsicum), imageName: ""),
    SoundModel(title: VegetableConsts.carrot.capitalized, Kashmiriname: VegetableConstsKashmiri.carrot.capitalized, audioFileLocation: getSoundPath(Category.Vegetables , VegetableConsts.carrot), imageName: ""),
    SoundModel(title: VegetableConsts.cucumber.capitalized, Kashmiriname: VegetableConstsKashmiri.cucumber.capitalized, audioFileLocation: getSoundPath(Category.Vegetables , VegetableConsts.cucumber), imageName: ""),
    SoundModel(title: VegetableConsts.onion.capitalized, Kashmiriname: VegetableConstsKashmiri.onion.capitalized, audioFileLocation: getSoundPath(Category.Vegetables , VegetableConsts.onion), imageName: ""),
    SoundModel(title: VegetableConsts.peas.capitalized, Kashmiriname: VegetableConstsKashmiri.peas.capitalized, audioFileLocation:
        getSoundPath(Category.Vegetables , VegetableConsts.peas), imageName: ""),
    SoundModel(title: VegetableConsts.potato.capitalized, Kashmiriname: VegetableConstsKashmiri.potato.capitalized, audioFileLocation: getSoundPath(Category.Vegetables , VegetableConsts.potato), imageName: ""),
    SoundModel(title: VegetableConsts.spinach.capitalized, Kashmiriname: VegetableConstsKashmiri.spinach.capitalized, audioFileLocation: getSoundPath(Category.Vegetables , VegetableConsts.spinach), imageName: ""),
    SoundModel(title: VegetableConsts.tomato.capitalized,Kashmiriname: VegetableConstsKashmiri.tomato.capitalized, audioFileLocation: getSoundPath(Category.Vegetables , VegetableConsts.tomato), imageName: ""),
    SoundModel(title: VegetableConsts.turnip.capitalized,Kashmiriname: VegetableConstsKashmiri.turnip.capitalized, audioFileLocation: getSoundPath(Category.Vegetables , VegetableConsts.turnip), imageName: "")


]

let colorsData : [SoundModel] = [
        SoundModel(title: ColorConsts.black.capitalized,Kashmiriname: ColorConstsKashmiri.black.capitalized, audioFileLocation: getSoundPath(Category.Colors , ColorConsts.black), imageName: ""),
        SoundModel(title: ColorConsts.blonde.capitalized, Kashmiriname: ColorConstsKashmiri.blonde.capitalized, audioFileLocation: getSoundPath(Category.Colors , ColorConsts.blonde), imageName: ""),
        SoundModel(title: ColorConsts.green.capitalized, Kashmiriname: ColorConstsKashmiri.green.capitalized, audioFileLocation: getSoundPath(Category.Colors , ColorConsts.green), imageName: ""),
        SoundModel(title: ColorConsts.red.capitalized, Kashmiriname: ColorConstsKashmiri.red.capitalized, audioFileLocation: getSoundPath(Category.Colors , ColorConsts.red), imageName: ""),
        SoundModel(title: ColorConsts.white.capitalized,Kashmiriname: ColorConstsKashmiri.white.capitalized, audioFileLocation: getSoundPath(Category.Colors , ColorConsts.white), imageName: "")
]
let numbersData : [SoundModel] = [
    SoundModel(title: NumberConsts.one.capitalized,Kashmiriname: NumberConstsKashmiri.one.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.one), imageName: ""),
    SoundModel(title: NumberConsts.two.capitalized,Kashmiriname: NumberConstsKashmiri.two.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.two), imageName: ""),
    SoundModel(title: NumberConsts.three.capitalized, Kashmiriname: NumberConstsKashmiri.three.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.three), imageName: ""),
    SoundModel(title: NumberConsts.four.capitalized,Kashmiriname: NumberConstsKashmiri.four.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.four), imageName: ""),
    SoundModel(title: NumberConsts.five.capitalized,Kashmiriname: NumberConstsKashmiri.five.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.five), imageName: ""),
    SoundModel(title: NumberConsts.six.capitalized,Kashmiriname: NumberConstsKashmiri.six.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.six), imageName: ""),
    SoundModel(title: NumberConsts.seven.capitalized,Kashmiriname:NumberConstsKashmiri.seven.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.seven), imageName: ""),
    SoundModel(title: NumberConsts.eigth.capitalized, Kashmiriname: NumberConstsKashmiri.eigth.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.eigth), imageName: ""),
    SoundModel(title: NumberConsts.nine.capitalized,Kashmiriname: NumberConstsKashmiri.nine.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.nine), imageName: ""),
    SoundModel(title: NumberConsts.ten.capitalized,Kashmiriname: NumberConstsKashmiri.ten.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.ten), imageName: ""),
    SoundModel(title: NumberConsts.eleven.capitalized,Kashmiriname: NumberConstsKashmiri.eleven.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.eleven), imageName: ""),
    SoundModel(title: NumberConsts.twelve.capitalized,Kashmiriname: NumberConstsKashmiri.twelve.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.twelve), imageName: ""),
    SoundModel(title: NumberConsts.thirteen.capitalized, Kashmiriname: NumberConstsKashmiri.thirteen.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.thirteen), imageName: ""),
    SoundModel(title: NumberConsts.fourteen.capitalized,Kashmiriname: NumberConstsKashmiri.fourteen.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.fourteen), imageName: ""),
    SoundModel(title: NumberConsts.fifteen.capitalized,Kashmiriname: NumberConstsKashmiri.fifteen.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.fifteen), imageName: ""),
    SoundModel(title: NumberConsts.sixteen.capitalized,Kashmiriname: NumberConstsKashmiri.sixteen.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.sixteen), imageName: ""),
    SoundModel(title: NumberConsts.seventeen.capitalized,Kashmiriname: NumberConstsKashmiri.seventeen.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.seventeen), imageName: ""),
    SoundModel(title: NumberConsts.eighteen.capitalized,Kashmiriname: NumberConstsKashmiri.eighteen.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.eighteen), imageName: ""),
    SoundModel(title: NumberConsts.nineteen.capitalized,Kashmiriname: NumberConstsKashmiri.nineteen.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.nineteen), imageName: ""),
    SoundModel(title: NumberConsts.twenty.capitalized,Kashmiriname: NumberConstsKashmiri.twenty.capitalized, audioFileLocation: getSoundPath(Category.Numbers, NumberConsts.twenty), imageName: ""),

]

let fruitsData : [SoundModel] = [
    SoundModel(title: FruitsConsts.apple.capitalized,Kashmiriname: FruitsConstsKashmiri.apple.capitalized, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.apple), imageName: ""),
    SoundModel(title: FruitsConsts.banana.capitalized,Kashmiriname: FruitsConstsKashmiri.banana.capitalized, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.banana), imageName: ""),
    SoundModel(title: FruitsConsts.grapes.capitalized,Kashmiriname: FruitsConstsKashmiri.grapes.capitalized, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.grapes), imageName: ""),
    SoundModel(title: FruitsConsts.mango.capitalized,Kashmiriname: FruitsConstsKashmiri.mango.capitalized, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.mango), imageName: ""),
    SoundModel(title: FruitsConsts.melon.capitalized,Kashmiriname: FruitsConstsKashmiri.melon.capitalized, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.melon), imageName: ""),
    SoundModel(title: FruitsConsts.orange.capitalized,Kashmiriname: FruitsConstsKashmiri.orange.capitalized, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.orange), imageName: ""),
    SoundModel(title: FruitsConsts.pear.capitalized,Kashmiriname: FruitsConstsKashmiri.pear.capitalized, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.pear), imageName: ""),
    SoundModel(title: FruitsConsts.plum.capitalized,Kashmiriname: FruitsConstsKashmiri.plum.capitalized, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.plum), imageName: ""),
    SoundModel(title: FruitsConsts.pomegranade.capitalized,Kashmiriname: FruitsConstsKashmiri.pomegranade.capitalized, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.pomegranade), imageName: ""),
    SoundModel(title: FruitsConsts.watermelon.capitalized,Kashmiriname: FruitsConstsKashmiri.watermelon.capitalized, audioFileLocation: getSoundPath(Category.Fruits, FruitsConsts.watermelon), imageName: "")
    ]

let animalsData : [SoundModel] = [
    SoundModel(title: AnimalsConsts.bear.capitalized,Kashmiriname: AnimalsConstsKashmiri.bear.capitalized, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.bear), imageName: ""),
    SoundModel(title: AnimalsConsts.cat.capitalized,Kashmiriname: AnimalsConstsKashmiri.cat.capitalized, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.cat), imageName: ""),
    SoundModel(title: AnimalsConsts.cow.capitalized,Kashmiriname: AnimalsConstsKashmiri.cow.capitalized, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.cow), imageName: ""),
    SoundModel(title: AnimalsConsts.dog.capitalized,Kashmiriname: AnimalsConstsKashmiri.dog.capitalized, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.dog), imageName: ""),
    SoundModel(title: AnimalsConsts.horse.capitalized,Kashmiriname: AnimalsConstsKashmiri.horse.capitalized, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.horse), imageName: ""),
    SoundModel(title: AnimalsConsts.monkey.capitalized,Kashmiriname: AnimalsConstsKashmiri.monkey.capitalized, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.monkey), imageName: ""),
    SoundModel(title: AnimalsConsts.rabbit.capitalized,Kashmiriname: AnimalsConstsKashmiri.rabbit.capitalized, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.rabbit), imageName: ""),
    SoundModel(title: AnimalsConsts.rat.capitalized,Kashmiriname: AnimalsConstsKashmiri.rat.capitalized, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.rat), imageName: ""),
    SoundModel(title: AnimalsConsts.tiger.capitalized,Kashmiriname: AnimalsConstsKashmiri.tiger.capitalized, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.tiger), imageName: ""),
    SoundModel(title: AnimalsConsts.wolf.capitalized,Kashmiriname: AnimalsConstsKashmiri.wolf.capitalized, audioFileLocation: getSoundPath(Category.Animals, AnimalsConsts.wolf), imageName: ""),
    ]


let relationsData : [SoundModel] = [
    SoundModel(title: RelationsConsts.brother.capitalized,Kashmiriname: RelationsConstsKashmiri.brother.capitalized, audioFileLocation: getSoundPath(Category.Relations , RelationsConsts.brother), imageName: ""),
        SoundModel(title: RelationsConsts.father.capitalized,Kashmiriname: RelationsConstsKashmiri.father.capitalized, audioFileLocation: getSoundPath(Category.Relations , RelationsConsts.father), imageName: ""),
        SoundModel(title: RelationsConsts.grandfather.capitalized,Kashmiriname: RelationsConstsKashmiri.grandfather.capitalized, audioFileLocation: getSoundPath(Category.Relations , RelationsConsts.grandfather), imageName: ""),
        SoundModel(title: RelationsConsts.grandmother.capitalized,Kashmiriname: RelationsConstsKashmiri.grandmother.capitalized, audioFileLocation: getSoundPath(Category.Relations , RelationsConsts.grandmother), imageName: ""),
        SoundModel(title: RelationsConsts.mother.capitalized,Kashmiriname: RelationsConstsKashmiri.mother.capitalized, audioFileLocation: getSoundPath(Category.Relations , RelationsConsts.mother), imageName: ""),
        SoundModel(title: RelationsConsts.sister.capitalized,Kashmiriname: RelationsConstsKashmiri.sister.capitalized, audioFileLocation: getSoundPath(Category.Relations , RelationsConsts.sister), imageName: "")
]
