# Regular expression that matches binary inputs that are multiple of 3
multipleOf3RegexVer1 = /\A0*(1(01*0)*10*)*\z/

multipleOf3RegexVer2 = /\A(0|1(01*0)*10*)*\z/

multipleOf3RegexVer3 = /^(0|1(01*0)*10*)*$/