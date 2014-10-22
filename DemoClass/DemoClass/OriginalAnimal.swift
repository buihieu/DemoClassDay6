//
//  OriginalAnimal.swift
//  DemoClass
//
//  Created by Thien Chuong on 10/6/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation
struct SexAge{
    var age:Int
    var firstSexAge:Int;
    var lastSexAge:Int;
    var didSex:Bool
    var canSex:Bool{
        if(age > firstSexAge || age < lastSexAge){
            return true
        }else{
            return false
        }
        
    }
}

class  OriginalAnimal {
    var name:String
    var sex:String
    var diedAge:Int
    var sexAge:SexAge
    var age:Int=0;
    var sound:String;
    init(name:String,diedAge:Int,sexAge:SexAge,sex:String,sound:String){
        self.name=name;
        self.diedAge=diedAge;
        self.sexAge=sexAge
        self.sex=sex;
        self.sound=sound;
    }
    func sound(tone:String)->String{
        return("Yealling \(sound)")
    }
}
class Doggie:OriginalAnimal{
    
    init(sex:String){
        let sound="Gau"
        
        super.init(name: "Dogs",diedAge: 40, sexAge: SexAge(age:age,firstSexAge: 10, lastSexAge: 20, didSex: false), sex: sex, sound: sound )
    }
}
class Catties:OriginalAnimal{
    
    init(sex:String){
        let sound="Meoo"
        super.init(name: "Cats",diedAge: 45, sexAge: SexAge(age:age,firstSexAge: 7, lastSexAge: 15, didSex: false), sex: sex, sound: sound )
    }
}
class Tigers:OriginalAnimal{
    
    init(sex:String){
        let sound="Oahmm"
        super.init(name: "Tigers",diedAge: 35, sexAge: SexAge(age:age,firstSexAge: 15, lastSexAge: 30, didSex: false), sex: sex, sound: sound )
    }
}
class Rabbits:OriginalAnimal{
    
    init(sex:String){
        let sound="Uok"
        super.init(name: "Rabbits",diedAge: 10, sexAge: SexAge(age:age,firstSexAge: 2, lastSexAge: 8, didSex: false), sex: sex, sound: sound )
    }
}
class Horses:OriginalAnimal{
    
    init(sex:String){
        let sound="Heeeiii"
        super.init(name: "Horses",diedAge: 20, sexAge: SexAge(age:age,firstSexAge: 5, lastSexAge: 18, didSex: false), sex: sex, sound: sound )
    }
}
class Mouses:OriginalAnimal{
    
    init(sex:String){
        let sound="Chit chit"
        super.init(name: "Mouses",diedAge: 5, sexAge: SexAge(age:age,firstSexAge: 2, lastSexAge: 4, didSex: false), sex: sex, sound: sound )
    }
}