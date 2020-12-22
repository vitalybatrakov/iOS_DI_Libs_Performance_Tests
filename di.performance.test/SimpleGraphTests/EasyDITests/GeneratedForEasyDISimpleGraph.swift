//
//  GeneratedForEasyDISimpleGraph.swift
//  di.performance.test
//
//  Created by v.batrakov on 20.09.2020.
//  Copyright © 2020 v.batrakov. All rights reserved.
//

import Foundation
import EasyDi

extension EasyDISimpleGraphTests {
    
    static func createAssembly(count: Int) -> Assembly {
        switch count {
        case 100:
            let assembly = EasyDIAssembly100.instance()
            _ = assembly.injectedAssembly
            return assembly
            
        case 200:
            let assembly = EasyDIAssembly200.instance()
            _ = assembly.assembly_100
            _ = assembly.assembly_100.injectedAssembly
            return assembly
            
        case 500:
            let assembly = EasyDIAssembly500.instance()
            _ = assembly.assembly_200
            _ = assembly.assembly_200.assembly_100
            _ = assembly.assembly_200.assembly_100.injectedAssembly
            return assembly
            
        case 1000:
            let assembly = EasyDIAssembly1000.instance()
            _ = assembly.assembly_500
            _ = assembly.assembly_500.assembly_200
            _ = assembly.assembly_500.assembly_200.assembly_100
            _ = assembly.assembly_500.assembly_200.assembly_100.injectedAssembly
            return assembly
            
        default:
            assert(false, "EasyDISimpleGraphTests create Invalid count")
        }
    }
    
    static func resolve(assembly: Assembly, count: Int) {
        switch count {
        case 100:
            resolve_100(assembly: assembly as! EasyDIAssembly100)
            
        case 200:
            resolve_200(assembly: assembly as! EasyDIAssembly200)
            
        case 500:
            resolve_500(assembly: assembly as! EasyDIAssembly500)
            
        case 1000:
            resolve_1000(assembly: assembly as! EasyDIAssembly1000)
            
        default:
            print("EasyDISimpleGraphTests resolve Invalid count")
            break
        }
    }
    
    final class EasyDIInjectedAssembly: Assembly {
        var injectedTestProperty1: InjectedTestProtocol8 {
            return define(/*scope: .prototype, */init: InjectedTestClass8(param1: self.injectedTestProperty2,
                                                                          param2: self.injectedTestProperty3))
        }
        var injectedTestProperty2: InjectedTestProtocol9 {
            return define(/*scope: .prototype, */init: InjectedTestClass9(param1: self.injectedTestProperty3))
        }
        var injectedTestProperty3: InjectedTestProtocol10 {
            return define(/*scope: .prototype, */init: InjectedTestClass10())
        }
    }
    
    final class EasyDIAssembly100: Assembly {
        lazy var injectedAssembly: EasyDIInjectedAssembly = self.context.assembly()
        
        var property1: TestProtocol1 {
            return define(init: SimpleGraphTestClass1())
        }
        var property2: TestProtocol2 {
            return define(init: SimpleGraphTestClass2())
        }
        var property3: TestProtocol3 {
            return define(init: SimpleGraphTestClass3())
        }
        var property4: TestProtocol4 {
            return define(init: SimpleGraphTestClass4())
        }
        var property5: TestProtocol5 {
            return define(init: SimpleGraphTestClass5())
        }
        var property6: TestProtocol6 {
            return define(init: SimpleGraphTestClass6())
        }
        var property7: TestProtocol7 {
            return define(init: SimpleGraphTestClass7())
        }
        var property8: TestProtocol8 {
            return define(init: SimpleGraphTestClass8())
        }
        var property9: TestProtocol9 {
            return define(init: SimpleGraphTestClass9())
        }
        var property10: TestProtocol10 {
            return define(init: SimpleGraphTestClass10())
        }
        var property11: TestProtocol11 {
            return define(init: SimpleGraphTestClass11())
        }
        var property12: TestProtocol12 {
            return define(init: SimpleGraphTestClass12())
        }
        var property13: TestProtocol13 {
            return define(init: SimpleGraphTestClass13())
        }
        var property14: TestProtocol14 {
            return define(init: SimpleGraphTestClass14())
        }
        var property15: TestProtocol15 {
            return define(init: SimpleGraphTestClass15())
        }
        var property16: TestProtocol16 {
            return define(init: SimpleGraphTestClass16())
        }
        var property17: TestProtocol17 {
            return define(init: SimpleGraphTestClass17())
        }
        var property18: TestProtocol18 {
            return define(init: SimpleGraphTestClass18())
        }
        var property19: TestProtocol19 {
            return define(init: SimpleGraphTestClass19())
        }
        var property20: TestProtocol20 {
            return define(init: SimpleGraphTestClass20())
        }
        var property21: TestProtocol21 {
            return define(init: SimpleGraphTestClass21())
        }
        var property22: TestProtocol22 {
            return define(init: SimpleGraphTestClass22())
        }
        var property23: TestProtocol23 {
            return define(init: SimpleGraphTestClass23())
        }
        var property24: TestProtocol24 {
            return define(init: SimpleGraphTestClass24())
        }
        var property25: TestProtocol25 {
            return define(init: SimpleGraphTestClass25())
        }
        var property26: TestProtocol26 {
            return define(init: SimpleGraphTestClass26(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property27: TestProtocol27 {
            return define(init: SimpleGraphTestClass27(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property28: TestProtocol28 {
            return define(init: SimpleGraphTestClass28(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property29: TestProtocol29 {
            return define(init: SimpleGraphTestClass29(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property30: TestProtocol30 {
            return define(init: SimpleGraphTestClass30(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property31: TestProtocol31 {
            return define(init: SimpleGraphTestClass31(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property32: TestProtocol32 {
            return define(init: SimpleGraphTestClass32(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property33: TestProtocol33 {
            return define(init: SimpleGraphTestClass33(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property34: TestProtocol34 {
            return define(init: SimpleGraphTestClass34(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property35: TestProtocol35 {
            return define(init: SimpleGraphTestClass35(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property36: TestProtocol36 {
            return define(init: SimpleGraphTestClass36(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property37: TestProtocol37 {
            return define(init: SimpleGraphTestClass37(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property38: TestProtocol38 {
            return define(init: SimpleGraphTestClass38(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property39: TestProtocol39 {
            return define(init: SimpleGraphTestClass39(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property40: TestProtocol40 {
            return define(init: SimpleGraphTestClass40(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property41: TestProtocol41 {
            return define(init: SimpleGraphTestClass41(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property42: TestProtocol42 {
            return define(init: SimpleGraphTestClass42(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property43: TestProtocol43 {
            return define(init: SimpleGraphTestClass43(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property44: TestProtocol44 {
            return define(init: SimpleGraphTestClass44(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property45: TestProtocol45 {
            return define(init: SimpleGraphTestClass45(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property46: TestProtocol46 {
            return define(init: SimpleGraphTestClass46(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property47: TestProtocol47 {
            return define(init: SimpleGraphTestClass47(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property48: TestProtocol48 {
            return define(init: SimpleGraphTestClass48(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property49: TestProtocol49 {
            return define(init: SimpleGraphTestClass49(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property50: TestProtocol50 {
            return define(init: SimpleGraphTestClass50(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property51: TestProtocol51 {
            return define(init: SimpleGraphTestClass51(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property52: TestProtocol52 {
            return define(init: SimpleGraphTestClass52(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property53: TestProtocol53 {
            return define(init: SimpleGraphTestClass53(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property54: TestProtocol54 {
            return define(init: SimpleGraphTestClass54(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property55: TestProtocol55 {
            return define(init: SimpleGraphTestClass55(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property56: TestProtocol56 {
            return define(init: SimpleGraphTestClass56(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property57: TestProtocol57 {
            return define(init: SimpleGraphTestClass57(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property58: TestProtocol58 {
            return define(init: SimpleGraphTestClass58(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property59: TestProtocol59 {
            return define(init: SimpleGraphTestClass59(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property60: TestProtocol60 {
            return define(init: SimpleGraphTestClass60(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property61: TestProtocol61 {
            return define(init: SimpleGraphTestClass61(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property62: TestProtocol62 {
            return define(init: SimpleGraphTestClass62(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property63: TestProtocol63 {
            return define(init: SimpleGraphTestClass63(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property64: TestProtocol64 {
            return define(init: SimpleGraphTestClass64(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property65: TestProtocol65 {
            return define(init: SimpleGraphTestClass65(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property66: TestProtocol66 {
            return define(init: SimpleGraphTestClass66(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property67: TestProtocol67 {
            return define(init: SimpleGraphTestClass67(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property68: TestProtocol68 {
            return define(init: SimpleGraphTestClass68(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property69: TestProtocol69 {
            return define(init: SimpleGraphTestClass69(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property70: TestProtocol70 {
            return define(init: SimpleGraphTestClass70(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property71: TestProtocol71 {
            return define(init: SimpleGraphTestClass71(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property72: TestProtocol72 {
            return define(init: SimpleGraphTestClass72(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property73: TestProtocol73 {
            return define(init: SimpleGraphTestClass73(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property74: TestProtocol74 {
            return define(init: SimpleGraphTestClass74(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property75: TestProtocol75 {
            return define(init: SimpleGraphTestClass75(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property76: TestProtocol76 {
            return define(init: SimpleGraphTestClass76(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property77: TestProtocol77 {
            return define(init: SimpleGraphTestClass77(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property78: TestProtocol78 {
            return define(init: SimpleGraphTestClass78(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property79: TestProtocol79 {
            return define(init: SimpleGraphTestClass79(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property80: TestProtocol80 {
            return define(init: SimpleGraphTestClass80(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property81: TestProtocol81 {
            return define(init: SimpleGraphTestClass81(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property82: TestProtocol82 {
            return define(init: SimpleGraphTestClass82(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property83: TestProtocol83 {
            return define(init: SimpleGraphTestClass83(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property84: TestProtocol84 {
            return define(init: SimpleGraphTestClass84(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property85: TestProtocol85 {
            return define(init: SimpleGraphTestClass85(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property86: TestProtocol86 {
            return define(init: SimpleGraphTestClass86(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property87: TestProtocol87 {
            return define(init: SimpleGraphTestClass87(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property88: TestProtocol88 {
            return define(init: SimpleGraphTestClass88(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property89: TestProtocol89 {
            return define(init: SimpleGraphTestClass89(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property90: TestProtocol90 {
            return define(init: SimpleGraphTestClass90(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property91: TestProtocol91 {
            return define(init: SimpleGraphTestClass91(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property92: TestProtocol92 {
            return define(init: SimpleGraphTestClass92(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property93: TestProtocol93 {
            return define(init: SimpleGraphTestClass93(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property94: TestProtocol94 {
            return define(init: SimpleGraphTestClass94(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property95: TestProtocol95 {
            return define(init: SimpleGraphTestClass95(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property96: TestProtocol96 {
            return define(init: SimpleGraphTestClass96(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property97: TestProtocol97 {
            return define(init: SimpleGraphTestClass97(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property98: TestProtocol98 {
            return define(init: SimpleGraphTestClass98(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property99: TestProtocol99 {
            return define(init: SimpleGraphTestClass99(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property100: TestProtocol100 {
            return define(init: SimpleGraphTestClass100(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
    }
    
    static func resolve_100(assembly: EasyDIAssembly100) {
                _ = assembly.property1
               _ = assembly.property2
               _ = assembly.property3
               _ = assembly.property4
               _ = assembly.property5
               _ = assembly.property6
               _ = assembly.property7
               _ = assembly.property8
               _ = assembly.property9
               _ = assembly.property10
               _ = assembly.property11
               _ = assembly.property12
               _ = assembly.property13
               _ = assembly.property14
               _ = assembly.property15
               _ = assembly.property16
               _ = assembly.property17
               _ = assembly.property18
               _ = assembly.property19
               _ = assembly.property20
               _ = assembly.property21
               _ = assembly.property22
               _ = assembly.property23
               _ = assembly.property24
               _ = assembly.property25
               _ = assembly.property26
               _ = assembly.property27
               _ = assembly.property28
               _ = assembly.property29
               _ = assembly.property30
               _ = assembly.property31
               _ = assembly.property32
               _ = assembly.property33
               _ = assembly.property34
               _ = assembly.property35
               _ = assembly.property36
               _ = assembly.property37
               _ = assembly.property38
               _ = assembly.property39
               _ = assembly.property40
               _ = assembly.property41
               _ = assembly.property42
               _ = assembly.property43
               _ = assembly.property44
               _ = assembly.property45
               _ = assembly.property46
               _ = assembly.property47
               _ = assembly.property48
               _ = assembly.property49
               _ = assembly.property50
               _ = assembly.property51
               _ = assembly.property52
               _ = assembly.property53
               _ = assembly.property54
               _ = assembly.property55
               _ = assembly.property56
               _ = assembly.property57
               _ = assembly.property58
               _ = assembly.property59
               _ = assembly.property60
               _ = assembly.property61
               _ = assembly.property62
               _ = assembly.property63
               _ = assembly.property64
               _ = assembly.property65
               _ = assembly.property66
               _ = assembly.property67
               _ = assembly.property68
               _ = assembly.property69
               _ = assembly.property70
               _ = assembly.property71
               _ = assembly.property72
               _ = assembly.property73
               _ = assembly.property74
               _ = assembly.property75
               _ = assembly.property76
               _ = assembly.property77
               _ = assembly.property78
               _ = assembly.property79
               _ = assembly.property80
               _ = assembly.property81
               _ = assembly.property82
               _ = assembly.property83
               _ = assembly.property84
               _ = assembly.property85
               _ = assembly.property86
               _ = assembly.property87
               _ = assembly.property88
               _ = assembly.property89
               _ = assembly.property90
               _ = assembly.property91
               _ = assembly.property92
               _ = assembly.property93
               _ = assembly.property94
               _ = assembly.property95
               _ = assembly.property96
               _ = assembly.property97
               _ = assembly.property98
               _ = assembly.property99
               _ = assembly.property100
    }
    
    final class EasyDIAssembly200: Assembly {
        
        var injectedAssembly: EasyDIInjectedAssembly {
            return assembly_100.injectedAssembly
        }
        lazy var assembly_100: EasyDIAssembly100 = self.context.assembly()
        
        var property1: SimpleGraphNextTestProtocol1 {
            return define(init: SimpleGraphNextTestClass1())
        }
        var property2: SimpleGraphNextTestProtocol2 {
            return define(init: SimpleGraphNextTestClass2())
        }
        var property3: SimpleGraphNextTestProtocol3 {
            return define(init: SimpleGraphNextTestClass3())
        }
        var property4: SimpleGraphNextTestProtocol4 {
            return define(init: SimpleGraphNextTestClass4())
        }
        var property5: SimpleGraphNextTestProtocol5 {
            return define(init: SimpleGraphNextTestClass5())
        }
        var property6: SimpleGraphNextTestProtocol6 {
            return define(init: SimpleGraphNextTestClass6())
        }
        var property7: SimpleGraphNextTestProtocol7 {
            return define(init: SimpleGraphNextTestClass7())
        }
        var property8: SimpleGraphNextTestProtocol8 {
            return define(init: SimpleGraphNextTestClass8())
        }
        var property9: SimpleGraphNextTestProtocol9 {
            return define(init: SimpleGraphNextTestClass9())
        }
        var property10: SimpleGraphNextTestProtocol10 {
            return define(init: SimpleGraphNextTestClass10())
        }
        var property11: SimpleGraphNextTestProtocol11 {
            return define(init: SimpleGraphNextTestClass11())
        }
        var property12: SimpleGraphNextTestProtocol12 {
            return define(init: SimpleGraphNextTestClass12())
        }
        var property13: SimpleGraphNextTestProtocol13 {
            return define(init: SimpleGraphNextTestClass13())
        }
        var property14: SimpleGraphNextTestProtocol14 {
            return define(init: SimpleGraphNextTestClass14())
        }
        var property15: SimpleGraphNextTestProtocol15 {
            return define(init: SimpleGraphNextTestClass15())
        }
        var property16: SimpleGraphNextTestProtocol16 {
            return define(init: SimpleGraphNextTestClass16())
        }
        var property17: SimpleGraphNextTestProtocol17 {
            return define(init: SimpleGraphNextTestClass17())
        }
        var property18: SimpleGraphNextTestProtocol18 {
            return define(init: SimpleGraphNextTestClass18())
        }
        var property19: SimpleGraphNextTestProtocol19 {
            return define(init: SimpleGraphNextTestClass19())
        }
        var property20: SimpleGraphNextTestProtocol20 {
            return define(init: SimpleGraphNextTestClass20())
        }
        var property21: SimpleGraphNextTestProtocol21 {
            return define(init: SimpleGraphNextTestClass21())
        }
        var property22: SimpleGraphNextTestProtocol22 {
            return define(init: SimpleGraphNextTestClass22())
        }
        var property23: SimpleGraphNextTestProtocol23 {
            return define(init: SimpleGraphNextTestClass23())
        }
        var property24: SimpleGraphNextTestProtocol24 {
            return define(init: SimpleGraphNextTestClass24())
        }
        var property25: SimpleGraphNextTestProtocol25 {
            return define(init: SimpleGraphNextTestClass25())
        }
        var property26: SimpleGraphNextTestProtocol26 {
            return define(init: SimpleGraphNextTestClass26(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property27: SimpleGraphNextTestProtocol27 {
            return define(init: SimpleGraphNextTestClass27(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property28: SimpleGraphNextTestProtocol28 {
            return define(init: SimpleGraphNextTestClass28(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property29: SimpleGraphNextTestProtocol29 {
            return define(init: SimpleGraphNextTestClass29(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property30: SimpleGraphNextTestProtocol30 {
            return define(init: SimpleGraphNextTestClass30(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property31: SimpleGraphNextTestProtocol31 {
            return define(init: SimpleGraphNextTestClass31(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property32: SimpleGraphNextTestProtocol32 {
            return define(init: SimpleGraphNextTestClass32(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property33: SimpleGraphNextTestProtocol33 {
            return define(init: SimpleGraphNextTestClass33(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property34: SimpleGraphNextTestProtocol34 {
            return define(init: SimpleGraphNextTestClass34(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property35: SimpleGraphNextTestProtocol35 {
            return define(init: SimpleGraphNextTestClass35(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property36: SimpleGraphNextTestProtocol36 {
            return define(init: SimpleGraphNextTestClass36(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property37: SimpleGraphNextTestProtocol37 {
            return define(init: SimpleGraphNextTestClass37(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property38: SimpleGraphNextTestProtocol38 {
            return define(init: SimpleGraphNextTestClass38(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property39: SimpleGraphNextTestProtocol39 {
            return define(init: SimpleGraphNextTestClass39(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property40: SimpleGraphNextTestProtocol40 {
            return define(init: SimpleGraphNextTestClass40(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property41: SimpleGraphNextTestProtocol41 {
            return define(init: SimpleGraphNextTestClass41(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property42: SimpleGraphNextTestProtocol42 {
            return define(init: SimpleGraphNextTestClass42(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property43: SimpleGraphNextTestProtocol43 {
            return define(init: SimpleGraphNextTestClass43(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property44: SimpleGraphNextTestProtocol44 {
            return define(init: SimpleGraphNextTestClass44(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property45: SimpleGraphNextTestProtocol45 {
            return define(init: SimpleGraphNextTestClass45(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property46: SimpleGraphNextTestProtocol46 {
            return define(init: SimpleGraphNextTestClass46(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property47: SimpleGraphNextTestProtocol47 {
            return define(init: SimpleGraphNextTestClass47(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property48: SimpleGraphNextTestProtocol48 {
            return define(init: SimpleGraphNextTestClass48(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property49: SimpleGraphNextTestProtocol49 {
            return define(init: SimpleGraphNextTestClass49(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property50: SimpleGraphNextTestProtocol50 {
            return define(init: SimpleGraphNextTestClass50(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property51: SimpleGraphNextTestProtocol51 {
            return define(init: SimpleGraphNextTestClass51(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property52: SimpleGraphNextTestProtocol52 {
            return define(init: SimpleGraphNextTestClass52(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property53: SimpleGraphNextTestProtocol53 {
            return define(init: SimpleGraphNextTestClass53(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property54: SimpleGraphNextTestProtocol54 {
            return define(init: SimpleGraphNextTestClass54(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property55: SimpleGraphNextTestProtocol55 {
            return define(init: SimpleGraphNextTestClass55(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property56: SimpleGraphNextTestProtocol56 {
            return define(init: SimpleGraphNextTestClass56(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property57: SimpleGraphNextTestProtocol57 {
            return define(init: SimpleGraphNextTestClass57(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property58: SimpleGraphNextTestProtocol58 {
            return define(init: SimpleGraphNextTestClass58(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property59: SimpleGraphNextTestProtocol59 {
            return define(init: SimpleGraphNextTestClass59(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property60: SimpleGraphNextTestProtocol60 {
            return define(init: SimpleGraphNextTestClass60(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property61: SimpleGraphNextTestProtocol61 {
            return define(init: SimpleGraphNextTestClass61(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property62: SimpleGraphNextTestProtocol62 {
            return define(init: SimpleGraphNextTestClass62(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property63: SimpleGraphNextTestProtocol63 {
            return define(init: SimpleGraphNextTestClass63(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property64: SimpleGraphNextTestProtocol64 {
            return define(init: SimpleGraphNextTestClass64(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property65: SimpleGraphNextTestProtocol65 {
            return define(init: SimpleGraphNextTestClass65(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property66: SimpleGraphNextTestProtocol66 {
            return define(init: SimpleGraphNextTestClass66(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property67: SimpleGraphNextTestProtocol67 {
            return define(init: SimpleGraphNextTestClass67(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property68: SimpleGraphNextTestProtocol68 {
            return define(init: SimpleGraphNextTestClass68(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property69: SimpleGraphNextTestProtocol69 {
            return define(init: SimpleGraphNextTestClass69(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property70: SimpleGraphNextTestProtocol70 {
            return define(init: SimpleGraphNextTestClass70(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property71: SimpleGraphNextTestProtocol71 {
            return define(init: SimpleGraphNextTestClass71(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property72: SimpleGraphNextTestProtocol72 {
            return define(init: SimpleGraphNextTestClass72(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property73: SimpleGraphNextTestProtocol73 {
            return define(init: SimpleGraphNextTestClass73(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property74: SimpleGraphNextTestProtocol74 {
            return define(init: SimpleGraphNextTestClass74(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property75: SimpleGraphNextTestProtocol75 {
            return define(init: SimpleGraphNextTestClass75(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property76: SimpleGraphNextTestProtocol76 {
            return define(init: SimpleGraphNextTestClass76(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property77: SimpleGraphNextTestProtocol77 {
            return define(init: SimpleGraphNextTestClass77(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property78: SimpleGraphNextTestProtocol78 {
            return define(init: SimpleGraphNextTestClass78(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property79: SimpleGraphNextTestProtocol79 {
            return define(init: SimpleGraphNextTestClass79(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property80: SimpleGraphNextTestProtocol80 {
            return define(init: SimpleGraphNextTestClass80(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property81: SimpleGraphNextTestProtocol81 {
            return define(init: SimpleGraphNextTestClass81(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property82: SimpleGraphNextTestProtocol82 {
            return define(init: SimpleGraphNextTestClass82(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property83: SimpleGraphNextTestProtocol83 {
            return define(init: SimpleGraphNextTestClass83(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property84: SimpleGraphNextTestProtocol84 {
            return define(init: SimpleGraphNextTestClass84(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property85: SimpleGraphNextTestProtocol85 {
            return define(init: SimpleGraphNextTestClass85(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property86: SimpleGraphNextTestProtocol86 {
            return define(init: SimpleGraphNextTestClass86(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property87: SimpleGraphNextTestProtocol87 {
            return define(init: SimpleGraphNextTestClass87(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property88: SimpleGraphNextTestProtocol88 {
            return define(init: SimpleGraphNextTestClass88(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property89: SimpleGraphNextTestProtocol89 {
            return define(init: SimpleGraphNextTestClass89(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property90: SimpleGraphNextTestProtocol90 {
            return define(init: SimpleGraphNextTestClass90(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property91: SimpleGraphNextTestProtocol91 {
            return define(init: SimpleGraphNextTestClass91(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property92: SimpleGraphNextTestProtocol92 {
            return define(init: SimpleGraphNextTestClass92(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property93: SimpleGraphNextTestProtocol93 {
            return define(init: SimpleGraphNextTestClass93(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property94: SimpleGraphNextTestProtocol94 {
            return define(init: SimpleGraphNextTestClass94(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property95: SimpleGraphNextTestProtocol95 {
            return define(init: SimpleGraphNextTestClass95(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property96: SimpleGraphNextTestProtocol96 {
            return define(init: SimpleGraphNextTestClass96(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property97: SimpleGraphNextTestProtocol97 {
            return define(init: SimpleGraphNextTestClass97(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property98: SimpleGraphNextTestProtocol98 {
            return define(init: SimpleGraphNextTestClass98(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property99: SimpleGraphNextTestProtocol99 {
            return define(init: SimpleGraphNextTestClass99(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property100: SimpleGraphNextTestProtocol100 {
            return define(init: SimpleGraphNextTestClass100(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
    }
    
    static func resolve_200(assembly: EasyDIAssembly200) {
        resolve_100(assembly: assembly.assembly_100)
        
        _ = assembly.property1
         _ = assembly.property2
         _ = assembly.property3
         _ = assembly.property4
         _ = assembly.property5
         _ = assembly.property6
         _ = assembly.property7
         _ = assembly.property8
         _ = assembly.property9
         _ = assembly.property10
         _ = assembly.property11
         _ = assembly.property12
         _ = assembly.property13
         _ = assembly.property14
         _ = assembly.property15
         _ = assembly.property16
         _ = assembly.property17
         _ = assembly.property18
         _ = assembly.property19
         _ = assembly.property20
         _ = assembly.property21
         _ = assembly.property22
         _ = assembly.property23
         _ = assembly.property24
         _ = assembly.property25
         _ = assembly.property26
         _ = assembly.property27
         _ = assembly.property28
         _ = assembly.property29
         _ = assembly.property30
         _ = assembly.property31
         _ = assembly.property32
         _ = assembly.property33
         _ = assembly.property34
         _ = assembly.property35
         _ = assembly.property36
         _ = assembly.property37
         _ = assembly.property38
         _ = assembly.property39
         _ = assembly.property40
         _ = assembly.property41
         _ = assembly.property42
         _ = assembly.property43
         _ = assembly.property44
         _ = assembly.property45
         _ = assembly.property46
         _ = assembly.property47
         _ = assembly.property48
         _ = assembly.property49
         _ = assembly.property50
         _ = assembly.property51
         _ = assembly.property52
         _ = assembly.property53
         _ = assembly.property54
         _ = assembly.property55
         _ = assembly.property56
         _ = assembly.property57
         _ = assembly.property58
         _ = assembly.property59
         _ = assembly.property60
         _ = assembly.property61
         _ = assembly.property62
         _ = assembly.property63
         _ = assembly.property64
         _ = assembly.property65
         _ = assembly.property66
         _ = assembly.property67
         _ = assembly.property68
         _ = assembly.property69
         _ = assembly.property70
         _ = assembly.property71
         _ = assembly.property72
         _ = assembly.property73
         _ = assembly.property74
         _ = assembly.property75
         _ = assembly.property76
         _ = assembly.property77
         _ = assembly.property78
         _ = assembly.property79
         _ = assembly.property80
         _ = assembly.property81
         _ = assembly.property82
         _ = assembly.property83
         _ = assembly.property84
         _ = assembly.property85
         _ = assembly.property86
         _ = assembly.property87
         _ = assembly.property88
         _ = assembly.property89
         _ = assembly.property90
         _ = assembly.property91
         _ = assembly.property92
         _ = assembly.property93
         _ = assembly.property94
         _ = assembly.property95
         _ = assembly.property96
         _ = assembly.property97
         _ = assembly.property98
         _ = assembly.property99
         _ = assembly.property100
    }
    
    final class EasyDIAssembly500: Assembly {
        var injectedAssembly: EasyDIInjectedAssembly {
            return assembly_200.assembly_100.injectedAssembly
        }
        lazy var assembly_200: EasyDIAssembly200 = self.context.assembly()
        
        var property1: SimpleGraph500TestProtocol1 {
            return define(init: SimpleGraph500TestClass1())
        }
        var property2: SimpleGraph500TestProtocol2 {
            return define(init: SimpleGraph500TestClass2())
        }
        var property3: SimpleGraph500TestProtocol3 {
            return define(init: SimpleGraph500TestClass3())
        }
        var property4: SimpleGraph500TestProtocol4 {
            return define(init: SimpleGraph500TestClass4())
        }
        var property5: SimpleGraph500TestProtocol5 {
            return define(init: SimpleGraph500TestClass5())
        }
        var property6: SimpleGraph500TestProtocol6 {
            return define(init: SimpleGraph500TestClass6())
        }
        var property7: SimpleGraph500TestProtocol7 {
            return define(init: SimpleGraph500TestClass7())
        }
        var property8: SimpleGraph500TestProtocol8 {
            return define(init: SimpleGraph500TestClass8())
        }
        var property9: SimpleGraph500TestProtocol9 {
            return define(init: SimpleGraph500TestClass9())
        }
        var property10: SimpleGraph500TestProtocol10 {
            return define(init: SimpleGraph500TestClass10())
        }
        var property11: SimpleGraph500TestProtocol11 {
            return define(init: SimpleGraph500TestClass11())
        }
        var property12: SimpleGraph500TestProtocol12 {
            return define(init: SimpleGraph500TestClass12())
        }
        var property13: SimpleGraph500TestProtocol13 {
            return define(init: SimpleGraph500TestClass13())
        }
        var property14: SimpleGraph500TestProtocol14 {
            return define(init: SimpleGraph500TestClass14())
        }
        var property15: SimpleGraph500TestProtocol15 {
            return define(init: SimpleGraph500TestClass15())
        }
        var property16: SimpleGraph500TestProtocol16 {
            return define(init: SimpleGraph500TestClass16())
        }
        var property17: SimpleGraph500TestProtocol17 {
            return define(init: SimpleGraph500TestClass17())
        }
        var property18: SimpleGraph500TestProtocol18 {
            return define(init: SimpleGraph500TestClass18())
        }
        var property19: SimpleGraph500TestProtocol19 {
            return define(init: SimpleGraph500TestClass19())
        }
        var property20: SimpleGraph500TestProtocol20 {
            return define(init: SimpleGraph500TestClass20())
        }
        var property21: SimpleGraph500TestProtocol21 {
            return define(init: SimpleGraph500TestClass21())
        }
        var property22: SimpleGraph500TestProtocol22 {
            return define(init: SimpleGraph500TestClass22())
        }
        var property23: SimpleGraph500TestProtocol23 {
            return define(init: SimpleGraph500TestClass23())
        }
        var property24: SimpleGraph500TestProtocol24 {
            return define(init: SimpleGraph500TestClass24())
        }
        var property25: SimpleGraph500TestProtocol25 {
            return define(init: SimpleGraph500TestClass25())
        }
        var property26: SimpleGraph500TestProtocol26 {
            return define(init: SimpleGraph500TestClass26())
        }
        var property27: SimpleGraph500TestProtocol27 {
            return define(init: SimpleGraph500TestClass27())
        }
        var property28: SimpleGraph500TestProtocol28 {
            return define(init: SimpleGraph500TestClass28())
        }
        var property29: SimpleGraph500TestProtocol29 {
            return define(init: SimpleGraph500TestClass29())
        }
        var property30: SimpleGraph500TestProtocol30 {
            return define(init: SimpleGraph500TestClass30())
        }
        var property31: SimpleGraph500TestProtocol31 {
            return define(init: SimpleGraph500TestClass31())
        }
        var property32: SimpleGraph500TestProtocol32 {
            return define(init: SimpleGraph500TestClass32())
        }
        var property33: SimpleGraph500TestProtocol33 {
            return define(init: SimpleGraph500TestClass33())
        }
        var property34: SimpleGraph500TestProtocol34 {
            return define(init: SimpleGraph500TestClass34())
        }
        var property35: SimpleGraph500TestProtocol35 {
            return define(init: SimpleGraph500TestClass35())
        }
        var property36: SimpleGraph500TestProtocol36 {
            return define(init: SimpleGraph500TestClass36())
        }
        var property37: SimpleGraph500TestProtocol37 {
            return define(init: SimpleGraph500TestClass37())
        }
        var property38: SimpleGraph500TestProtocol38 {
            return define(init: SimpleGraph500TestClass38())
        }
        var property39: SimpleGraph500TestProtocol39 {
            return define(init: SimpleGraph500TestClass39())
        }
        var property40: SimpleGraph500TestProtocol40 {
            return define(init: SimpleGraph500TestClass40())
        }
        var property41: SimpleGraph500TestProtocol41 {
            return define(init: SimpleGraph500TestClass41())
        }
        var property42: SimpleGraph500TestProtocol42 {
            return define(init: SimpleGraph500TestClass42())
        }
        var property43: SimpleGraph500TestProtocol43 {
            return define(init: SimpleGraph500TestClass43())
        }
        var property44: SimpleGraph500TestProtocol44 {
            return define(init: SimpleGraph500TestClass44())
        }
        var property45: SimpleGraph500TestProtocol45 {
            return define(init: SimpleGraph500TestClass45())
        }
        var property46: SimpleGraph500TestProtocol46 {
            return define(init: SimpleGraph500TestClass46())
        }
        var property47: SimpleGraph500TestProtocol47 {
            return define(init: SimpleGraph500TestClass47())
        }
        var property48: SimpleGraph500TestProtocol48 {
            return define(init: SimpleGraph500TestClass48())
        }
        var property49: SimpleGraph500TestProtocol49 {
            return define(init: SimpleGraph500TestClass49())
        }
        var property50: SimpleGraph500TestProtocol50 {
            return define(init: SimpleGraph500TestClass50())
        }
        var property51: SimpleGraph500TestProtocol51 {
            return define(init: SimpleGraph500TestClass51())
        }
        var property52: SimpleGraph500TestProtocol52 {
            return define(init: SimpleGraph500TestClass52())
        }
        var property53: SimpleGraph500TestProtocol53 {
            return define(init: SimpleGraph500TestClass53())
        }
        var property54: SimpleGraph500TestProtocol54 {
            return define(init: SimpleGraph500TestClass54())
        }
        var property55: SimpleGraph500TestProtocol55 {
            return define(init: SimpleGraph500TestClass55())
        }
        var property56: SimpleGraph500TestProtocol56 {
            return define(init: SimpleGraph500TestClass56())
        }
        var property57: SimpleGraph500TestProtocol57 {
            return define(init: SimpleGraph500TestClass57())
        }
        var property58: SimpleGraph500TestProtocol58 {
            return define(init: SimpleGraph500TestClass58())
        }
        var property59: SimpleGraph500TestProtocol59 {
            return define(init: SimpleGraph500TestClass59())
        }
        var property60: SimpleGraph500TestProtocol60 {
            return define(init: SimpleGraph500TestClass60())
        }
        var property61: SimpleGraph500TestProtocol61 {
            return define(init: SimpleGraph500TestClass61())
        }
        var property62: SimpleGraph500TestProtocol62 {
            return define(init: SimpleGraph500TestClass62())
        }
        var property63: SimpleGraph500TestProtocol63 {
            return define(init: SimpleGraph500TestClass63())
        }
        var property64: SimpleGraph500TestProtocol64 {
            return define(init: SimpleGraph500TestClass64())
        }
        var property65: SimpleGraph500TestProtocol65 {
            return define(init: SimpleGraph500TestClass65())
        }
        var property66: SimpleGraph500TestProtocol66 {
            return define(init: SimpleGraph500TestClass66())
        }
        var property67: SimpleGraph500TestProtocol67 {
            return define(init: SimpleGraph500TestClass67())
        }
        var property68: SimpleGraph500TestProtocol68 {
            return define(init: SimpleGraph500TestClass68())
        }
        var property69: SimpleGraph500TestProtocol69 {
            return define(init: SimpleGraph500TestClass69())
        }
        var property70: SimpleGraph500TestProtocol70 {
            return define(init: SimpleGraph500TestClass70())
        }
        var property71: SimpleGraph500TestProtocol71 {
            return define(init: SimpleGraph500TestClass71())
        }
        var property72: SimpleGraph500TestProtocol72 {
            return define(init: SimpleGraph500TestClass72())
        }
        var property73: SimpleGraph500TestProtocol73 {
            return define(init: SimpleGraph500TestClass73())
        }
        var property74: SimpleGraph500TestProtocol74 {
            return define(init: SimpleGraph500TestClass74())
        }
        var property75: SimpleGraph500TestProtocol75 {
            return define(init: SimpleGraph500TestClass75())
        }
        var property76: SimpleGraph500TestProtocol76 {
            return define(init: SimpleGraph500TestClass76(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property77: SimpleGraph500TestProtocol77 {
            return define(init: SimpleGraph500TestClass77(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property78: SimpleGraph500TestProtocol78 {
            return define(init: SimpleGraph500TestClass78(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property79: SimpleGraph500TestProtocol79 {
            return define(init: SimpleGraph500TestClass79(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property80: SimpleGraph500TestProtocol80 {
            return define(init: SimpleGraph500TestClass80(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property81: SimpleGraph500TestProtocol81 {
            return define(init: SimpleGraph500TestClass81(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property82: SimpleGraph500TestProtocol82 {
            return define(init: SimpleGraph500TestClass82(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property83: SimpleGraph500TestProtocol83 {
            return define(init: SimpleGraph500TestClass83(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property84: SimpleGraph500TestProtocol84 {
            return define(init: SimpleGraph500TestClass84(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property85: SimpleGraph500TestProtocol85 {
            return define(init: SimpleGraph500TestClass85(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property86: SimpleGraph500TestProtocol86 {
            return define(init: SimpleGraph500TestClass86(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property87: SimpleGraph500TestProtocol87 {
            return define(init: SimpleGraph500TestClass87(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property88: SimpleGraph500TestProtocol88 {
            return define(init: SimpleGraph500TestClass88(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property89: SimpleGraph500TestProtocol89 {
            return define(init: SimpleGraph500TestClass89(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property90: SimpleGraph500TestProtocol90 {
            return define(init: SimpleGraph500TestClass90(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property91: SimpleGraph500TestProtocol91 {
            return define(init: SimpleGraph500TestClass91(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property92: SimpleGraph500TestProtocol92 {
            return define(init: SimpleGraph500TestClass92(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property93: SimpleGraph500TestProtocol93 {
            return define(init: SimpleGraph500TestClass93(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property94: SimpleGraph500TestProtocol94 {
            return define(init: SimpleGraph500TestClass94(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property95: SimpleGraph500TestProtocol95 {
            return define(init: SimpleGraph500TestClass95(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property96: SimpleGraph500TestProtocol96 {
            return define(init: SimpleGraph500TestClass96(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property97: SimpleGraph500TestProtocol97 {
            return define(init: SimpleGraph500TestClass97(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property98: SimpleGraph500TestProtocol98 {
            return define(init: SimpleGraph500TestClass98(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property99: SimpleGraph500TestProtocol99 {
            return define(init: SimpleGraph500TestClass99(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property100: SimpleGraph500TestProtocol100 {
            return define(init: SimpleGraph500TestClass100(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property101: SimpleGraph500TestProtocol101 {
            return define(init: SimpleGraph500TestClass101(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property102: SimpleGraph500TestProtocol102 {
            return define(init: SimpleGraph500TestClass102(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property103: SimpleGraph500TestProtocol103 {
            return define(init: SimpleGraph500TestClass103(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property104: SimpleGraph500TestProtocol104 {

            return define(init: SimpleGraph500TestClass104(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property105: SimpleGraph500TestProtocol105 {
            return define(init: SimpleGraph500TestClass105(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property106: SimpleGraph500TestProtocol106 {
            return define(init: SimpleGraph500TestClass106(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property107: SimpleGraph500TestProtocol107 {
            return define(init: SimpleGraph500TestClass107(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property108: SimpleGraph500TestProtocol108 {
            return define(init: SimpleGraph500TestClass108(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property109: SimpleGraph500TestProtocol109 {
            return define(init: SimpleGraph500TestClass109(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property110: SimpleGraph500TestProtocol110 {
            return define(init: SimpleGraph500TestClass110(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property111: SimpleGraph500TestProtocol111 {
            return define(init: SimpleGraph500TestClass111(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property112: SimpleGraph500TestProtocol112 {
            return define(init: SimpleGraph500TestClass112(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property113: SimpleGraph500TestProtocol113 {
            return define(init: SimpleGraph500TestClass113(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property114: SimpleGraph500TestProtocol114 {
            return define(init: SimpleGraph500TestClass114(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property115: SimpleGraph500TestProtocol115 {
            return define(init: SimpleGraph500TestClass115(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property116: SimpleGraph500TestProtocol116 {
            return define(init: SimpleGraph500TestClass116(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property117: SimpleGraph500TestProtocol117 {
            return define(init: SimpleGraph500TestClass117(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property118: SimpleGraph500TestProtocol118 {
            return define(init: SimpleGraph500TestClass118(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property119: SimpleGraph500TestProtocol119 {
            return define(init: SimpleGraph500TestClass119(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property120: SimpleGraph500TestProtocol120 {
            return define(init: SimpleGraph500TestClass120(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property121: SimpleGraph500TestProtocol121 {
            return define(init: SimpleGraph500TestClass121(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property122: SimpleGraph500TestProtocol122 {
            return define(init: SimpleGraph500TestClass122(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property123: SimpleGraph500TestProtocol123 {
            return define(init: SimpleGraph500TestClass123(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property124: SimpleGraph500TestProtocol124 {
            return define(init: SimpleGraph500TestClass124(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property125: SimpleGraph500TestProtocol125 {
            return define(init: SimpleGraph500TestClass125(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property126: SimpleGraph500TestProtocol126 {
            return define(init: SimpleGraph500TestClass126(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property127: SimpleGraph500TestProtocol127 {
            return define(init: SimpleGraph500TestClass127(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property128: SimpleGraph500TestProtocol128 {
            return define(init: SimpleGraph500TestClass128(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property129: SimpleGraph500TestProtocol129 {
            return define(init: SimpleGraph500TestClass129(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property130: SimpleGraph500TestProtocol130 {
            return define(init: SimpleGraph500TestClass130(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property131: SimpleGraph500TestProtocol131 {
            return define(init: SimpleGraph500TestClass131(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property132: SimpleGraph500TestProtocol132 {
            return define(init: SimpleGraph500TestClass132(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property133: SimpleGraph500TestProtocol133 {
            return define(init: SimpleGraph500TestClass133(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property134: SimpleGraph500TestProtocol134 {
            return define(init: SimpleGraph500TestClass134(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property135: SimpleGraph500TestProtocol135 {
            return define(init: SimpleGraph500TestClass135(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property136: SimpleGraph500TestProtocol136 {
            return define(init: SimpleGraph500TestClass136(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property137: SimpleGraph500TestProtocol137 {
            return define(init: SimpleGraph500TestClass137(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property138: SimpleGraph500TestProtocol138 {
            return define(init: SimpleGraph500TestClass138(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property139: SimpleGraph500TestProtocol139 {
            return define(init: SimpleGraph500TestClass139(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property140: SimpleGraph500TestProtocol140 {
            return define(init: SimpleGraph500TestClass140(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property141: SimpleGraph500TestProtocol141 {
            return define(init: SimpleGraph500TestClass141(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property142: SimpleGraph500TestProtocol142 {
            return define(init: SimpleGraph500TestClass142(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property143: SimpleGraph500TestProtocol143 {
            return define(init: SimpleGraph500TestClass143(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property144: SimpleGraph500TestProtocol144 {
            return define(init: SimpleGraph500TestClass144(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property145: SimpleGraph500TestProtocol145 {
            return define(init: SimpleGraph500TestClass145(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property146: SimpleGraph500TestProtocol146 {
            return define(init: SimpleGraph500TestClass146(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property147: SimpleGraph500TestProtocol147 {
            return define(init: SimpleGraph500TestClass147(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property148: SimpleGraph500TestProtocol148 {
            return define(init: SimpleGraph500TestClass148(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property149: SimpleGraph500TestProtocol149 {
            return define(init: SimpleGraph500TestClass149(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property150: SimpleGraph500TestProtocol150 {
            return define(init: SimpleGraph500TestClass150(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property151: SimpleGraph500TestProtocol151 {
            return define(init: SimpleGraph500TestClass151(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property152: SimpleGraph500TestProtocol152 {
            return define(init: SimpleGraph500TestClass152(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property153: SimpleGraph500TestProtocol153 {
            return define(init: SimpleGraph500TestClass153(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property154: SimpleGraph500TestProtocol154 {
            return define(init: SimpleGraph500TestClass154(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property155: SimpleGraph500TestProtocol155 {
            return define(init: SimpleGraph500TestClass155(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property156: SimpleGraph500TestProtocol156 {
            return define(init: SimpleGraph500TestClass156(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property157: SimpleGraph500TestProtocol157 {
            return define(init: SimpleGraph500TestClass157(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property158: SimpleGraph500TestProtocol158 {
            return define(init: SimpleGraph500TestClass158(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property159: SimpleGraph500TestProtocol159 {
            return define(init: SimpleGraph500TestClass159(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property160: SimpleGraph500TestProtocol160 {
            return define(init: SimpleGraph500TestClass160(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property161: SimpleGraph500TestProtocol161 {
            return define(init: SimpleGraph500TestClass161(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property162: SimpleGraph500TestProtocol162 {
            return define(init: SimpleGraph500TestClass162(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property163: SimpleGraph500TestProtocol163 {
            return define(init: SimpleGraph500TestClass163(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property164: SimpleGraph500TestProtocol164 {
            return define(init: SimpleGraph500TestClass164(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property165: SimpleGraph500TestProtocol165 {
            return define(init: SimpleGraph500TestClass165(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property166: SimpleGraph500TestProtocol166 {
            return define(init: SimpleGraph500TestClass166(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property167: SimpleGraph500TestProtocol167 {
            return define(init: SimpleGraph500TestClass167(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property168: SimpleGraph500TestProtocol168 {
            return define(init: SimpleGraph500TestClass168(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property169: SimpleGraph500TestProtocol169 {
            return define(init: SimpleGraph500TestClass169(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property170: SimpleGraph500TestProtocol170 {
            return define(init: SimpleGraph500TestClass170(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property171: SimpleGraph500TestProtocol171 {
            return define(init: SimpleGraph500TestClass171(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property172: SimpleGraph500TestProtocol172 {
            return define(init: SimpleGraph500TestClass172(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property173: SimpleGraph500TestProtocol173 {
            return define(init: SimpleGraph500TestClass173(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property174: SimpleGraph500TestProtocol174 {
            return define(init: SimpleGraph500TestClass174(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property175: SimpleGraph500TestProtocol175 {
            return define(init: SimpleGraph500TestClass175(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property176: SimpleGraph500TestProtocol176 {
            return define(init: SimpleGraph500TestClass176(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property177: SimpleGraph500TestProtocol177 {
            return define(init: SimpleGraph500TestClass177(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property178: SimpleGraph500TestProtocol178 {
            return define(init: SimpleGraph500TestClass178(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property179: SimpleGraph500TestProtocol179 {
            return define(init: SimpleGraph500TestClass179(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property180: SimpleGraph500TestProtocol180 {
            return define(init: SimpleGraph500TestClass180(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property181: SimpleGraph500TestProtocol181 {
            return define(init: SimpleGraph500TestClass181(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property182: SimpleGraph500TestProtocol182 {
            return define(init: SimpleGraph500TestClass182(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property183: SimpleGraph500TestProtocol183 {
            return define(init: SimpleGraph500TestClass183(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property184: SimpleGraph500TestProtocol184 {
            return define(init: SimpleGraph500TestClass184(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property185: SimpleGraph500TestProtocol185 {
            return define(init: SimpleGraph500TestClass185(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property186: SimpleGraph500TestProtocol186 {
            return define(init: SimpleGraph500TestClass186(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property187: SimpleGraph500TestProtocol187 {
            return define(init: SimpleGraph500TestClass187(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property188: SimpleGraph500TestProtocol188 {
            return define(init: SimpleGraph500TestClass188(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property189: SimpleGraph500TestProtocol189 {
            return define(init: SimpleGraph500TestClass189(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property190: SimpleGraph500TestProtocol190 {
            return define(init: SimpleGraph500TestClass190(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property191: SimpleGraph500TestProtocol191 {
            return define(init: SimpleGraph500TestClass191(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property192: SimpleGraph500TestProtocol192 {
            return define(init: SimpleGraph500TestClass192(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property193: SimpleGraph500TestProtocol193 {
            return define(init: SimpleGraph500TestClass193(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property194: SimpleGraph500TestProtocol194 {
            return define(init: SimpleGraph500TestClass194(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property195: SimpleGraph500TestProtocol195 {
            return define(init: SimpleGraph500TestClass195(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property196: SimpleGraph500TestProtocol196 {
            return define(init: SimpleGraph500TestClass196(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property197: SimpleGraph500TestProtocol197 {
            return define(init: SimpleGraph500TestClass197(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property198: SimpleGraph500TestProtocol198 {
            return define(init: SimpleGraph500TestClass198(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property199: SimpleGraph500TestProtocol199 {
            return define(init: SimpleGraph500TestClass199(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property200: SimpleGraph500TestProtocol200 {
            return define(init: SimpleGraph500TestClass200(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property201: SimpleGraph500TestProtocol201 {
            return define(init: SimpleGraph500TestClass201(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property202: SimpleGraph500TestProtocol202 {
            return define(init: SimpleGraph500TestClass202(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property203: SimpleGraph500TestProtocol203 {
            return define(init: SimpleGraph500TestClass203(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property204: SimpleGraph500TestProtocol204 {
            return define(init: SimpleGraph500TestClass204(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property205: SimpleGraph500TestProtocol205 {
            return define(init: SimpleGraph500TestClass205(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property206: SimpleGraph500TestProtocol206 {
            return define(init: SimpleGraph500TestClass206(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property207: SimpleGraph500TestProtocol207 {
            return define(init: SimpleGraph500TestClass207(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property208: SimpleGraph500TestProtocol208 {
            return define(init: SimpleGraph500TestClass208(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property209: SimpleGraph500TestProtocol209 {
            return define(init: SimpleGraph500TestClass209(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property210: SimpleGraph500TestProtocol210 {
            return define(init: SimpleGraph500TestClass210(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property211: SimpleGraph500TestProtocol211 {
            return define(init: SimpleGraph500TestClass211(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property212: SimpleGraph500TestProtocol212 {
            return define(init: SimpleGraph500TestClass212(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property213: SimpleGraph500TestProtocol213 {
            return define(init: SimpleGraph500TestClass213(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property214: SimpleGraph500TestProtocol214 {
            return define(init: SimpleGraph500TestClass214(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property215: SimpleGraph500TestProtocol215 {
            return define(init: SimpleGraph500TestClass215(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property216: SimpleGraph500TestProtocol216 {
            return define(init: SimpleGraph500TestClass216(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property217: SimpleGraph500TestProtocol217 {
            return define(init: SimpleGraph500TestClass217(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property218: SimpleGraph500TestProtocol218 {
            return define(init: SimpleGraph500TestClass218(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property219: SimpleGraph500TestProtocol219 {
            return define(init: SimpleGraph500TestClass219(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property220: SimpleGraph500TestProtocol220 {
            return define(init: SimpleGraph500TestClass220(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property221: SimpleGraph500TestProtocol221 {
            return define(init: SimpleGraph500TestClass221(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property222: SimpleGraph500TestProtocol222 {
            return define(init: SimpleGraph500TestClass222(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property223: SimpleGraph500TestProtocol223 {
            return define(init: SimpleGraph500TestClass223(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property224: SimpleGraph500TestProtocol224 {
            return define(init: SimpleGraph500TestClass224(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property225: SimpleGraph500TestProtocol225 {
            return define(init: SimpleGraph500TestClass225(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property226: SimpleGraph500TestProtocol226 {
            return define(init: SimpleGraph500TestClass226(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property227: SimpleGraph500TestProtocol227 {
            return define(init: SimpleGraph500TestClass227(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property228: SimpleGraph500TestProtocol228 {
            return define(init: SimpleGraph500TestClass228(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property229: SimpleGraph500TestProtocol229 {
            return define(init: SimpleGraph500TestClass229(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property230: SimpleGraph500TestProtocol230 {
            return define(init: SimpleGraph500TestClass230(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property231: SimpleGraph500TestProtocol231 {
            return define(init: SimpleGraph500TestClass231(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property232: SimpleGraph500TestProtocol232 {
            return define(init: SimpleGraph500TestClass232(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property233: SimpleGraph500TestProtocol233 {
            return define(init: SimpleGraph500TestClass233(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property234: SimpleGraph500TestProtocol234 {
            return define(init: SimpleGraph500TestClass234(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property235: SimpleGraph500TestProtocol235 {
            return define(init: SimpleGraph500TestClass235(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property236: SimpleGraph500TestProtocol236 {
            return define(init: SimpleGraph500TestClass236(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property237: SimpleGraph500TestProtocol237 {
            return define(init: SimpleGraph500TestClass237(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property238: SimpleGraph500TestProtocol238 {
            return define(init: SimpleGraph500TestClass238(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property239: SimpleGraph500TestProtocol239 {
            return define(init: SimpleGraph500TestClass239(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property240: SimpleGraph500TestProtocol240 {
            return define(init: SimpleGraph500TestClass240(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property241: SimpleGraph500TestProtocol241 {
            return define(init: SimpleGraph500TestClass241(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property242: SimpleGraph500TestProtocol242 {
            return define(init: SimpleGraph500TestClass242(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property243: SimpleGraph500TestProtocol243 {
            return define(init: SimpleGraph500TestClass243(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property244: SimpleGraph500TestProtocol244 {
            return define(init: SimpleGraph500TestClass244(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property245: SimpleGraph500TestProtocol245 {
            return define(init: SimpleGraph500TestClass245(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property246: SimpleGraph500TestProtocol246 {
            return define(init: SimpleGraph500TestClass246(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property247: SimpleGraph500TestProtocol247 {
            return define(init: SimpleGraph500TestClass247(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property248: SimpleGraph500TestProtocol248 {
            return define(init: SimpleGraph500TestClass248(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property249: SimpleGraph500TestProtocol249 {
            return define(init: SimpleGraph500TestClass249(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property250: SimpleGraph500TestProtocol250 {
            return define(init: SimpleGraph500TestClass250(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property251: SimpleGraph500TestProtocol251 {
            return define(init: SimpleGraph500TestClass251(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property252: SimpleGraph500TestProtocol252 {
            return define(init: SimpleGraph500TestClass252(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property253: SimpleGraph500TestProtocol253 {
            return define(init: SimpleGraph500TestClass253(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property254: SimpleGraph500TestProtocol254 {
            return define(init: SimpleGraph500TestClass254(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property255: SimpleGraph500TestProtocol255 {
            return define(init: SimpleGraph500TestClass255(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property256: SimpleGraph500TestProtocol256 {
            return define(init: SimpleGraph500TestClass256(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property257: SimpleGraph500TestProtocol257 {
            return define(init: SimpleGraph500TestClass257(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property258: SimpleGraph500TestProtocol258 {
            return define(init: SimpleGraph500TestClass258(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property259: SimpleGraph500TestProtocol259 {
            return define(init: SimpleGraph500TestClass259(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property260: SimpleGraph500TestProtocol260 {
            return define(init: SimpleGraph500TestClass260(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property261: SimpleGraph500TestProtocol261 {
            return define(init: SimpleGraph500TestClass261(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property262: SimpleGraph500TestProtocol262 {
            return define(init: SimpleGraph500TestClass262(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property263: SimpleGraph500TestProtocol263 {
            return define(init: SimpleGraph500TestClass263(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property264: SimpleGraph500TestProtocol264 {
            return define(init: SimpleGraph500TestClass264(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property265: SimpleGraph500TestProtocol265 {
            return define(init: SimpleGraph500TestClass265(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property266: SimpleGraph500TestProtocol266 {
            return define(init: SimpleGraph500TestClass266(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property267: SimpleGraph500TestProtocol267 {
            return define(init: SimpleGraph500TestClass267(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property268: SimpleGraph500TestProtocol268 {
            return define(init: SimpleGraph500TestClass268(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property269: SimpleGraph500TestProtocol269 {
            return define(init: SimpleGraph500TestClass269(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property270: SimpleGraph500TestProtocol270 {
            return define(init: SimpleGraph500TestClass270(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property271: SimpleGraph500TestProtocol271 {
            return define(init: SimpleGraph500TestClass271(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property272: SimpleGraph500TestProtocol272 {
            return define(init: SimpleGraph500TestClass272(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property273: SimpleGraph500TestProtocol273 {
            return define(init: SimpleGraph500TestClass273(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property274: SimpleGraph500TestProtocol274 {
            return define(init: SimpleGraph500TestClass274(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property275: SimpleGraph500TestProtocol275 {
            return define(init: SimpleGraph500TestClass275(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property276: SimpleGraph500TestProtocol276 {
            return define(init: SimpleGraph500TestClass276(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property277: SimpleGraph500TestProtocol277 {
            return define(init: SimpleGraph500TestClass277(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property278: SimpleGraph500TestProtocol278 {
            return define(init: SimpleGraph500TestClass278(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property279: SimpleGraph500TestProtocol279 {
            return define(init: SimpleGraph500TestClass279(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property280: SimpleGraph500TestProtocol280 {
            return define(init: SimpleGraph500TestClass280(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property281: SimpleGraph500TestProtocol281 {
            return define(init: SimpleGraph500TestClass281(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property282: SimpleGraph500TestProtocol282 {
            return define(init: SimpleGraph500TestClass282(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property283: SimpleGraph500TestProtocol283 {
            return define(init: SimpleGraph500TestClass283(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property284: SimpleGraph500TestProtocol284 {
            return define(init: SimpleGraph500TestClass284(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property285: SimpleGraph500TestProtocol285 {
            return define(init: SimpleGraph500TestClass285(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property286: SimpleGraph500TestProtocol286 {
            return define(init: SimpleGraph500TestClass286(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property287: SimpleGraph500TestProtocol287 {
            return define(init: SimpleGraph500TestClass287(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property288: SimpleGraph500TestProtocol288 {
            return define(init: SimpleGraph500TestClass288(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property289: SimpleGraph500TestProtocol289 {
            return define(init: SimpleGraph500TestClass289(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property290: SimpleGraph500TestProtocol290 {
            return define(init: SimpleGraph500TestClass290(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property291: SimpleGraph500TestProtocol291 {
            return define(init: SimpleGraph500TestClass291(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property292: SimpleGraph500TestProtocol292 {
            return define(init: SimpleGraph500TestClass292(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property293: SimpleGraph500TestProtocol293 {
            return define(init: SimpleGraph500TestClass293(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property294: SimpleGraph500TestProtocol294 {
            return define(init: SimpleGraph500TestClass294(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property295: SimpleGraph500TestProtocol295 {
            return define(init: SimpleGraph500TestClass295(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property296: SimpleGraph500TestProtocol296 {
            return define(init: SimpleGraph500TestClass296(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property297: SimpleGraph500TestProtocol297 {
            return define(init: SimpleGraph500TestClass297(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property298: SimpleGraph500TestProtocol298 {
            return define(init: SimpleGraph500TestClass298(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property299: SimpleGraph500TestProtocol299 {
            return define(init: SimpleGraph500TestClass299(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property300: SimpleGraph500TestProtocol300 {
            return define(init: SimpleGraph500TestClass300(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
    }
    
    static func resolve_500(assembly: EasyDIAssembly500) {
        resolve_200(assembly: assembly.assembly_200)
        
        _ = assembly.property1
          _ = assembly.property2
          _ = assembly.property3
          _ = assembly.property4
          _ = assembly.property5
          _ = assembly.property6
          _ = assembly.property7
          _ = assembly.property8
          _ = assembly.property9
          _ = assembly.property10
          _ = assembly.property11
          _ = assembly.property12
          _ = assembly.property13
          _ = assembly.property14
          _ = assembly.property15
          _ = assembly.property16
          _ = assembly.property17
          _ = assembly.property18
          _ = assembly.property19
          _ = assembly.property20
          _ = assembly.property21
          _ = assembly.property22
          _ = assembly.property23
          _ = assembly.property24
          _ = assembly.property25
          _ = assembly.property26
          _ = assembly.property27
          _ = assembly.property28
          _ = assembly.property29
          _ = assembly.property30
          _ = assembly.property31
          _ = assembly.property32
          _ = assembly.property33
          _ = assembly.property34
          _ = assembly.property35
          _ = assembly.property36
          _ = assembly.property37
          _ = assembly.property38
          _ = assembly.property39
          _ = assembly.property40
          _ = assembly.property41
          _ = assembly.property42
          _ = assembly.property43
          _ = assembly.property44
          _ = assembly.property45
          _ = assembly.property46
          _ = assembly.property47
          _ = assembly.property48
          _ = assembly.property49
          _ = assembly.property50
          _ = assembly.property51
          _ = assembly.property52
          _ = assembly.property53
          _ = assembly.property54
          _ = assembly.property55
          _ = assembly.property56
          _ = assembly.property57
          _ = assembly.property58
          _ = assembly.property59
          _ = assembly.property60
          _ = assembly.property61
          _ = assembly.property62
          _ = assembly.property63
          _ = assembly.property64
          _ = assembly.property65
          _ = assembly.property66
          _ = assembly.property67
          _ = assembly.property68
          _ = assembly.property69
          _ = assembly.property70
          _ = assembly.property71
          _ = assembly.property72
          _ = assembly.property73
          _ = assembly.property74
          _ = assembly.property75
          _ = assembly.property76
          _ = assembly.property77
          _ = assembly.property78
          _ = assembly.property79
          _ = assembly.property80
          _ = assembly.property81
          _ = assembly.property82
          _ = assembly.property83
          _ = assembly.property84
          _ = assembly.property85
          _ = assembly.property86
          _ = assembly.property87
          _ = assembly.property88
          _ = assembly.property89
          _ = assembly.property90
          _ = assembly.property91
          _ = assembly.property92
          _ = assembly.property93
          _ = assembly.property94
          _ = assembly.property95
          _ = assembly.property96
          _ = assembly.property97
          _ = assembly.property98
          _ = assembly.property99
          _ = assembly.property100
          _ = assembly.property101
          _ = assembly.property102
          _ = assembly.property103
          _ = assembly.property104
          _ = assembly.property105
          _ = assembly.property106
          _ = assembly.property107
          _ = assembly.property108
          _ = assembly.property109
          _ = assembly.property110
          _ = assembly.property111
          _ = assembly.property112
          _ = assembly.property113
          _ = assembly.property114
          _ = assembly.property115
          _ = assembly.property116
          _ = assembly.property117
          _ = assembly.property118
          _ = assembly.property119
          _ = assembly.property120
          _ = assembly.property121
          _ = assembly.property122
          _ = assembly.property123
          _ = assembly.property124
          _ = assembly.property125
          _ = assembly.property126
          _ = assembly.property127
          _ = assembly.property128
          _ = assembly.property129
          _ = assembly.property130
          _ = assembly.property131
          _ = assembly.property132
          _ = assembly.property133
          _ = assembly.property134
          _ = assembly.property135
          _ = assembly.property136
          _ = assembly.property137
          _ = assembly.property138
          _ = assembly.property139
          _ = assembly.property140
          _ = assembly.property141
          _ = assembly.property142
          _ = assembly.property143
          _ = assembly.property144
          _ = assembly.property145
          _ = assembly.property146
          _ = assembly.property147
          _ = assembly.property148
          _ = assembly.property149
          _ = assembly.property150
          _ = assembly.property151
          _ = assembly.property152
          _ = assembly.property153
          _ = assembly.property154
          _ = assembly.property155
          _ = assembly.property156
          _ = assembly.property157
          _ = assembly.property158
          _ = assembly.property159
          _ = assembly.property160
          _ = assembly.property161
          _ = assembly.property162
          _ = assembly.property163
          _ = assembly.property164
          _ = assembly.property165
          _ = assembly.property166
          _ = assembly.property167
          _ = assembly.property168
          _ = assembly.property169
          _ = assembly.property170
          _ = assembly.property171
          _ = assembly.property172
          _ = assembly.property173
          _ = assembly.property174
          _ = assembly.property175
          _ = assembly.property176
          _ = assembly.property177
          _ = assembly.property178
          _ = assembly.property179
          _ = assembly.property180
          _ = assembly.property181
          _ = assembly.property182
          _ = assembly.property183
          _ = assembly.property184
          _ = assembly.property185
          _ = assembly.property186
          _ = assembly.property187
          _ = assembly.property188
          _ = assembly.property189
          _ = assembly.property190
          _ = assembly.property191
          _ = assembly.property192
          _ = assembly.property193
          _ = assembly.property194
          _ = assembly.property195
          _ = assembly.property196
          _ = assembly.property197
          _ = assembly.property198
          _ = assembly.property199
          _ = assembly.property200
          _ = assembly.property201
          _ = assembly.property202
          _ = assembly.property203
          _ = assembly.property204
          _ = assembly.property205
          _ = assembly.property206
          _ = assembly.property207
          _ = assembly.property208
          _ = assembly.property209
          _ = assembly.property210
          _ = assembly.property211
          _ = assembly.property212
          _ = assembly.property213
          _ = assembly.property214
          _ = assembly.property215
          _ = assembly.property216
          _ = assembly.property217
          _ = assembly.property218
          _ = assembly.property219
          _ = assembly.property220
          _ = assembly.property221
          _ = assembly.property222
          _ = assembly.property223
          _ = assembly.property224
          _ = assembly.property225
          _ = assembly.property226
          _ = assembly.property227
          _ = assembly.property228
          _ = assembly.property229
          _ = assembly.property230
          _ = assembly.property231
          _ = assembly.property232
          _ = assembly.property233
          _ = assembly.property234
          _ = assembly.property235
          _ = assembly.property236
          _ = assembly.property237
          _ = assembly.property238
          _ = assembly.property239
          _ = assembly.property240
          _ = assembly.property241
          _ = assembly.property242
          _ = assembly.property243
          _ = assembly.property244
          _ = assembly.property245
          _ = assembly.property246
          _ = assembly.property247
          _ = assembly.property248
          _ = assembly.property249
          _ = assembly.property250
          _ = assembly.property251
          _ = assembly.property252
          _ = assembly.property253
          _ = assembly.property254
          _ = assembly.property255
          _ = assembly.property256
          _ = assembly.property257
          _ = assembly.property258
          _ = assembly.property259
          _ = assembly.property260
          _ = assembly.property261
          _ = assembly.property262
          _ = assembly.property263
          _ = assembly.property264
          _ = assembly.property265
          _ = assembly.property266
          _ = assembly.property267
          _ = assembly.property268
          _ = assembly.property269
          _ = assembly.property270
          _ = assembly.property271
          _ = assembly.property272
          _ = assembly.property273
          _ = assembly.property274
          _ = assembly.property275
          _ = assembly.property276
          _ = assembly.property277
          _ = assembly.property278
          _ = assembly.property279
          _ = assembly.property280
          _ = assembly.property281
          _ = assembly.property282
          _ = assembly.property283
          _ = assembly.property284
          _ = assembly.property285
          _ = assembly.property286
          _ = assembly.property287
          _ = assembly.property288
          _ = assembly.property289
          _ = assembly.property290
          _ = assembly.property291
          _ = assembly.property292
          _ = assembly.property293
          _ = assembly.property294
          _ = assembly.property295
          _ = assembly.property296
          _ = assembly.property297
          _ = assembly.property298
          _ = assembly.property299
          _ = assembly.property300
    }
    
    final class EasyDIAssembly1000: Assembly {
        var injectedAssembly: EasyDIInjectedAssembly {
            return assembly_500.assembly_200.assembly_100.injectedAssembly
        }
        lazy var assembly_500: EasyDIAssembly500 = self.context.assembly()
        
        var property1: SimpleGraph1000TestProtocol1 {
            return define(init: SimpleGraph1000TestClass1())
        }
        var property2: SimpleGraph1000TestProtocol2 {
            return define(init: SimpleGraph1000TestClass2())
        }
        var property3: SimpleGraph1000TestProtocol3 {
            return define(init: SimpleGraph1000TestClass3())
        }
        var property4: SimpleGraph1000TestProtocol4 {
            return define(init: SimpleGraph1000TestClass4())
        }
        var property5: SimpleGraph1000TestProtocol5 {
            return define(init: SimpleGraph1000TestClass5())
        }
        var property6: SimpleGraph1000TestProtocol6 {
            return define(init: SimpleGraph1000TestClass6())
        }
        var property7: SimpleGraph1000TestProtocol7 {
            return define(init: SimpleGraph1000TestClass7())
        }
        var property8: SimpleGraph1000TestProtocol8 {
            return define(init: SimpleGraph1000TestClass8())
        }
        var property9: SimpleGraph1000TestProtocol9 {
            return define(init: SimpleGraph1000TestClass9())
        }
        var property10: SimpleGraph1000TestProtocol10 {
            return define(init: SimpleGraph1000TestClass10())
        }
        var property11: SimpleGraph1000TestProtocol11 {
            return define(init: SimpleGraph1000TestClass11())
        }
        var property12: SimpleGraph1000TestProtocol12 {
            return define(init: SimpleGraph1000TestClass12())
        }
        var property13: SimpleGraph1000TestProtocol13 {
            return define(init: SimpleGraph1000TestClass13())
        }
        var property14: SimpleGraph1000TestProtocol14 {
            return define(init: SimpleGraph1000TestClass14())
        }
        var property15: SimpleGraph1000TestProtocol15 {
            return define(init: SimpleGraph1000TestClass15())
        }
        var property16: SimpleGraph1000TestProtocol16 {
            return define(init: SimpleGraph1000TestClass16())
        }
        var property17: SimpleGraph1000TestProtocol17 {
            return define(init: SimpleGraph1000TestClass17())
        }
        var property18: SimpleGraph1000TestProtocol18 {
            return define(init: SimpleGraph1000TestClass18())
        }
        var property19: SimpleGraph1000TestProtocol19 {
            return define(init: SimpleGraph1000TestClass19())
        }
        var property20: SimpleGraph1000TestProtocol20 {
            return define(init: SimpleGraph1000TestClass20())
        }
        var property21: SimpleGraph1000TestProtocol21 {
            return define(init: SimpleGraph1000TestClass21())
        }
        var property22: SimpleGraph1000TestProtocol22 {
            return define(init: SimpleGraph1000TestClass22())
        }
        var property23: SimpleGraph1000TestProtocol23 {
            return define(init: SimpleGraph1000TestClass23())
        }
        var property24: SimpleGraph1000TestProtocol24 {
            return define(init: SimpleGraph1000TestClass24())
        }
        var property25: SimpleGraph1000TestProtocol25 {
            return define(init: SimpleGraph1000TestClass25())
        }
        var property26: SimpleGraph1000TestProtocol26 {
            return define(init: SimpleGraph1000TestClass26())
        }
        var property27: SimpleGraph1000TestProtocol27 {
            return define(init: SimpleGraph1000TestClass27())
        }
        var property28: SimpleGraph1000TestProtocol28 {
            return define(init: SimpleGraph1000TestClass28())
        }
        var property29: SimpleGraph1000TestProtocol29 {
            return define(init: SimpleGraph1000TestClass29())
        }
        var property30: SimpleGraph1000TestProtocol30 {
            return define(init: SimpleGraph1000TestClass30())
        }
        var property31: SimpleGraph1000TestProtocol31 {
            return define(init: SimpleGraph1000TestClass31())
        }
        var property32: SimpleGraph1000TestProtocol32 {
            return define(init: SimpleGraph1000TestClass32())
        }
        var property33: SimpleGraph1000TestProtocol33 {
            return define(init: SimpleGraph1000TestClass33())
        }
        var property34: SimpleGraph1000TestProtocol34 {
            return define(init: SimpleGraph1000TestClass34())
        }
        var property35: SimpleGraph1000TestProtocol35 {
            return define(init: SimpleGraph1000TestClass35())
        }
        var property36: SimpleGraph1000TestProtocol36 {
            return define(init: SimpleGraph1000TestClass36())
        }
        var property37: SimpleGraph1000TestProtocol37 {
            return define(init: SimpleGraph1000TestClass37())
        }
        var property38: SimpleGraph1000TestProtocol38 {
            return define(init: SimpleGraph1000TestClass38())
        }
        var property39: SimpleGraph1000TestProtocol39 {
            return define(init: SimpleGraph1000TestClass39())
        }
        var property40: SimpleGraph1000TestProtocol40 {
            return define(init: SimpleGraph1000TestClass40())
        }
        var property41: SimpleGraph1000TestProtocol41 {
            return define(init: SimpleGraph1000TestClass41())
        }
        var property42: SimpleGraph1000TestProtocol42 {
            return define(init: SimpleGraph1000TestClass42())
        }
        var property43: SimpleGraph1000TestProtocol43 {
            return define(init: SimpleGraph1000TestClass43())
        }
        var property44: SimpleGraph1000TestProtocol44 {
            return define(init: SimpleGraph1000TestClass44())
        }
        var property45: SimpleGraph1000TestProtocol45 {
            return define(init: SimpleGraph1000TestClass45())
        }
        var property46: SimpleGraph1000TestProtocol46 {
            return define(init: SimpleGraph1000TestClass46())
        }
        var property47: SimpleGraph1000TestProtocol47 {
            return define(init: SimpleGraph1000TestClass47())
        }
        var property48: SimpleGraph1000TestProtocol48 {
            return define(init: SimpleGraph1000TestClass48())
        }
        var property49: SimpleGraph1000TestProtocol49 {
            return define(init: SimpleGraph1000TestClass49())
        }
        var property50: SimpleGraph1000TestProtocol50 {
            return define(init: SimpleGraph1000TestClass50())
        }
        var property51: SimpleGraph1000TestProtocol51 {
            return define(init: SimpleGraph1000TestClass51())
        }
        var property52: SimpleGraph1000TestProtocol52 {
            return define(init: SimpleGraph1000TestClass52())
        }
        var property53: SimpleGraph1000TestProtocol53 {
            return define(init: SimpleGraph1000TestClass53())
        }
        var property54: SimpleGraph1000TestProtocol54 {
            return define(init: SimpleGraph1000TestClass54())
        }
        var property55: SimpleGraph1000TestProtocol55 {
            return define(init: SimpleGraph1000TestClass55())
        }
        var property56: SimpleGraph1000TestProtocol56 {
            return define(init: SimpleGraph1000TestClass56())
        }
        var property57: SimpleGraph1000TestProtocol57 {
            return define(init: SimpleGraph1000TestClass57())
        }
        var property58: SimpleGraph1000TestProtocol58 {
            return define(init: SimpleGraph1000TestClass58())
        }
        var property59: SimpleGraph1000TestProtocol59 {
            return define(init: SimpleGraph1000TestClass59())
        }
        var property60: SimpleGraph1000TestProtocol60 {
            return define(init: SimpleGraph1000TestClass60())
        }
        var property61: SimpleGraph1000TestProtocol61 {
            return define(init: SimpleGraph1000TestClass61())
        }
        var property62: SimpleGraph1000TestProtocol62 {
            return define(init: SimpleGraph1000TestClass62())
        }
        var property63: SimpleGraph1000TestProtocol63 {
            return define(init: SimpleGraph1000TestClass63())
        }
        var property64: SimpleGraph1000TestProtocol64 {
            return define(init: SimpleGraph1000TestClass64())
        }
        var property65: SimpleGraph1000TestProtocol65 {
            return define(init: SimpleGraph1000TestClass65())
        }
        var property66: SimpleGraph1000TestProtocol66 {
            return define(init: SimpleGraph1000TestClass66())
        }
        var property67: SimpleGraph1000TestProtocol67 {
            return define(init: SimpleGraph1000TestClass67())
        }
        var property68: SimpleGraph1000TestProtocol68 {
            return define(init: SimpleGraph1000TestClass68())
        }
        var property69: SimpleGraph1000TestProtocol69 {
            return define(init: SimpleGraph1000TestClass69())
        }
        var property70: SimpleGraph1000TestProtocol70 {
            return define(init: SimpleGraph1000TestClass70())
        }
        var property71: SimpleGraph1000TestProtocol71 {
            return define(init: SimpleGraph1000TestClass71())
        }
        var property72: SimpleGraph1000TestProtocol72 {
            return define(init: SimpleGraph1000TestClass72())
        }
        var property73: SimpleGraph1000TestProtocol73 {
            return define(init: SimpleGraph1000TestClass73())
        }
        var property74: SimpleGraph1000TestProtocol74 {
            return define(init: SimpleGraph1000TestClass74())
        }
        var property75: SimpleGraph1000TestProtocol75 {
            return define(init: SimpleGraph1000TestClass75())
        }
        var property76: SimpleGraph1000TestProtocol76 {
            return define(init: SimpleGraph1000TestClass76())
        }
        var property77: SimpleGraph1000TestProtocol77 {
            return define(init: SimpleGraph1000TestClass77())
        }
        var property78: SimpleGraph1000TestProtocol78 {
            return define(init: SimpleGraph1000TestClass78())
        }
        var property79: SimpleGraph1000TestProtocol79 {
            return define(init: SimpleGraph1000TestClass79())
        }
        var property80: SimpleGraph1000TestProtocol80 {
            return define(init: SimpleGraph1000TestClass80())
        }
        var property81: SimpleGraph1000TestProtocol81 {
            return define(init: SimpleGraph1000TestClass81())
        }
        var property82: SimpleGraph1000TestProtocol82 {
            return define(init: SimpleGraph1000TestClass82())
        }
        var property83: SimpleGraph1000TestProtocol83 {
            return define(init: SimpleGraph1000TestClass83())
        }
        var property84: SimpleGraph1000TestProtocol84 {
            return define(init: SimpleGraph1000TestClass84())
        }
        var property85: SimpleGraph1000TestProtocol85 {
            return define(init: SimpleGraph1000TestClass85())
        }
        var property86: SimpleGraph1000TestProtocol86 {
            return define(init: SimpleGraph1000TestClass86())
        }
        var property87: SimpleGraph1000TestProtocol87 {
            return define(init: SimpleGraph1000TestClass87())
        }
        var property88: SimpleGraph1000TestProtocol88 {
            return define(init: SimpleGraph1000TestClass88())
        }
        var property89: SimpleGraph1000TestProtocol89 {
            return define(init: SimpleGraph1000TestClass89())
        }
        var property90: SimpleGraph1000TestProtocol90 {
            return define(init: SimpleGraph1000TestClass90())
        }
        var property91: SimpleGraph1000TestProtocol91 {
            return define(init: SimpleGraph1000TestClass91())
        }
        var property92: SimpleGraph1000TestProtocol92 {
            return define(init: SimpleGraph1000TestClass92())
        }
        var property93: SimpleGraph1000TestProtocol93 {
            return define(init: SimpleGraph1000TestClass93())
        }
        var property94: SimpleGraph1000TestProtocol94 {
            return define(init: SimpleGraph1000TestClass94())
        }
        var property95: SimpleGraph1000TestProtocol95 {
            return define(init: SimpleGraph1000TestClass95())
        }
        var property96: SimpleGraph1000TestProtocol96 {
            return define(init: SimpleGraph1000TestClass96())
        }
        var property97: SimpleGraph1000TestProtocol97 {
            return define(init: SimpleGraph1000TestClass97())
        }
        var property98: SimpleGraph1000TestProtocol98 {
            return define(init: SimpleGraph1000TestClass98())
        }
        var property99: SimpleGraph1000TestProtocol99 {
            return define(init: SimpleGraph1000TestClass99())
        }
        var property100: SimpleGraph1000TestProtocol100 {
            return define(init: SimpleGraph1000TestClass100())
        }
        var property101: SimpleGraph1000TestProtocol101 {
            return define(init: SimpleGraph1000TestClass101())
        }
        var property102: SimpleGraph1000TestProtocol102 {
            return define(init: SimpleGraph1000TestClass102())
        }
        var property103: SimpleGraph1000TestProtocol103 {
            return define(init: SimpleGraph1000TestClass103())
        }
        var property104: SimpleGraph1000TestProtocol104 {
            return define(init: SimpleGraph1000TestClass104())
        }
        var property105: SimpleGraph1000TestProtocol105 {
            return define(init: SimpleGraph1000TestClass105())
        }
        var property106: SimpleGraph1000TestProtocol106 {
            return define(init: SimpleGraph1000TestClass106())
        }
        var property107: SimpleGraph1000TestProtocol107 {
            return define(init: SimpleGraph1000TestClass107())
        }
        var property108: SimpleGraph1000TestProtocol108 {
            return define(init: SimpleGraph1000TestClass108())
        }
        var property109: SimpleGraph1000TestProtocol109 {
            return define(init: SimpleGraph1000TestClass109())
        }
        var property110: SimpleGraph1000TestProtocol110 {
            return define(init: SimpleGraph1000TestClass110())
        }
        var property111: SimpleGraph1000TestProtocol111 {
            return define(init: SimpleGraph1000TestClass111())
        }
        var property112: SimpleGraph1000TestProtocol112 {
            return define(init: SimpleGraph1000TestClass112())
        }
        var property113: SimpleGraph1000TestProtocol113 {
            return define(init: SimpleGraph1000TestClass113())
        }
        var property114: SimpleGraph1000TestProtocol114 {
            return define(init: SimpleGraph1000TestClass114())
        }
        var property115: SimpleGraph1000TestProtocol115 {
            return define(init: SimpleGraph1000TestClass115())
        }
        var property116: SimpleGraph1000TestProtocol116 {
            return define(init: SimpleGraph1000TestClass116())
        }
        var property117: SimpleGraph1000TestProtocol117 {
            return define(init: SimpleGraph1000TestClass117())
        }
        var property118: SimpleGraph1000TestProtocol118 {
            return define(init: SimpleGraph1000TestClass118())
        }
        var property119: SimpleGraph1000TestProtocol119 {
            return define(init: SimpleGraph1000TestClass119())
        }
        var property120: SimpleGraph1000TestProtocol120 {
            return define(init: SimpleGraph1000TestClass120())
        }
        var property121: SimpleGraph1000TestProtocol121 {
            return define(init: SimpleGraph1000TestClass121())
        }
        var property122: SimpleGraph1000TestProtocol122 {
            return define(init: SimpleGraph1000TestClass122())
        }
        var property123: SimpleGraph1000TestProtocol123 {
            return define(init: SimpleGraph1000TestClass123())
        }
        var property124: SimpleGraph1000TestProtocol124 {
            return define(init: SimpleGraph1000TestClass124())
        }
        var property125: SimpleGraph1000TestProtocol125 {
            return define(init: SimpleGraph1000TestClass125())
        }
        var property126: SimpleGraph1000TestProtocol126 {
            return define(init: SimpleGraph1000TestClass126(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property127: SimpleGraph1000TestProtocol127 {
            return define(init: SimpleGraph1000TestClass127(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property128: SimpleGraph1000TestProtocol128 {
            return define(init: SimpleGraph1000TestClass128(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property129: SimpleGraph1000TestProtocol129 {
            return define(init: SimpleGraph1000TestClass129(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property130: SimpleGraph1000TestProtocol130 {
            return define(init: SimpleGraph1000TestClass130(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property131: SimpleGraph1000TestProtocol131 {
            return define(init: SimpleGraph1000TestClass131(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property132: SimpleGraph1000TestProtocol132 {
            return define(init: SimpleGraph1000TestClass132(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property133: SimpleGraph1000TestProtocol133 {
            return define(init: SimpleGraph1000TestClass133(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property134: SimpleGraph1000TestProtocol134 {
            return define(init: SimpleGraph1000TestClass134(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property135: SimpleGraph1000TestProtocol135 {
            return define(init: SimpleGraph1000TestClass135(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property136: SimpleGraph1000TestProtocol136 {
            return define(init: SimpleGraph1000TestClass136(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property137: SimpleGraph1000TestProtocol137 {
            return define(init: SimpleGraph1000TestClass137(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property138: SimpleGraph1000TestProtocol138 {
            return define(init: SimpleGraph1000TestClass138(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property139: SimpleGraph1000TestProtocol139 {
            return define(init: SimpleGraph1000TestClass139(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property140: SimpleGraph1000TestProtocol140 {
            return define(init: SimpleGraph1000TestClass140(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property141: SimpleGraph1000TestProtocol141 {
            return define(init: SimpleGraph1000TestClass141(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property142: SimpleGraph1000TestProtocol142 {
            return define(init: SimpleGraph1000TestClass142(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property143: SimpleGraph1000TestProtocol143 {
            return define(init: SimpleGraph1000TestClass143(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property144: SimpleGraph1000TestProtocol144 {
            return define(init: SimpleGraph1000TestClass144(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property145: SimpleGraph1000TestProtocol145 {
            return define(init: SimpleGraph1000TestClass145(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property146: SimpleGraph1000TestProtocol146 {
            return define(init: SimpleGraph1000TestClass146(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property147: SimpleGraph1000TestProtocol147 {
            return define(init: SimpleGraph1000TestClass147(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property148: SimpleGraph1000TestProtocol148 {
            return define(init: SimpleGraph1000TestClass148(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property149: SimpleGraph1000TestProtocol149 {
            return define(init: SimpleGraph1000TestClass149(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property150: SimpleGraph1000TestProtocol150 {
            return define(init: SimpleGraph1000TestClass150(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property151: SimpleGraph1000TestProtocol151 {
            return define(init: SimpleGraph1000TestClass151(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property152: SimpleGraph1000TestProtocol152 {
            return define(init: SimpleGraph1000TestClass152(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property153: SimpleGraph1000TestProtocol153 {
            return define(init: SimpleGraph1000TestClass153(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property154: SimpleGraph1000TestProtocol154 {
            return define(init: SimpleGraph1000TestClass154(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property155: SimpleGraph1000TestProtocol155 {
            return define(init: SimpleGraph1000TestClass155(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property156: SimpleGraph1000TestProtocol156 {
            return define(init: SimpleGraph1000TestClass156(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property157: SimpleGraph1000TestProtocol157 {
            return define(init: SimpleGraph1000TestClass157(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property158: SimpleGraph1000TestProtocol158 {
            return define(init: SimpleGraph1000TestClass158(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property159: SimpleGraph1000TestProtocol159 {
            return define(init: SimpleGraph1000TestClass159(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property160: SimpleGraph1000TestProtocol160 {
            return define(init: SimpleGraph1000TestClass160(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property161: SimpleGraph1000TestProtocol161 {
            return define(init: SimpleGraph1000TestClass161(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property162: SimpleGraph1000TestProtocol162 {
            return define(init: SimpleGraph1000TestClass162(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property163: SimpleGraph1000TestProtocol163 {
            return define(init: SimpleGraph1000TestClass163(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property164: SimpleGraph1000TestProtocol164 {
            return define(init: SimpleGraph1000TestClass164(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property165: SimpleGraph1000TestProtocol165 {
            return define(init: SimpleGraph1000TestClass165(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property166: SimpleGraph1000TestProtocol166 {
            return define(init: SimpleGraph1000TestClass166(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property167: SimpleGraph1000TestProtocol167 {
            return define(init: SimpleGraph1000TestClass167(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property168: SimpleGraph1000TestProtocol168 {
            return define(init: SimpleGraph1000TestClass168(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property169: SimpleGraph1000TestProtocol169 {
            return define(init: SimpleGraph1000TestClass169(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property170: SimpleGraph1000TestProtocol170 {
            return define(init: SimpleGraph1000TestClass170(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property171: SimpleGraph1000TestProtocol171 {
            return define(init: SimpleGraph1000TestClass171(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property172: SimpleGraph1000TestProtocol172 {
            return define(init: SimpleGraph1000TestClass172(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property173: SimpleGraph1000TestProtocol173 {
            return define(init: SimpleGraph1000TestClass173(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property174: SimpleGraph1000TestProtocol174 {
            return define(init: SimpleGraph1000TestClass174(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property175: SimpleGraph1000TestProtocol175 {
            return define(init: SimpleGraph1000TestClass175(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property176: SimpleGraph1000TestProtocol176 {
            return define(init: SimpleGraph1000TestClass176(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property177: SimpleGraph1000TestProtocol177 {
            return define(init: SimpleGraph1000TestClass177(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property178: SimpleGraph1000TestProtocol178 {
            return define(init: SimpleGraph1000TestClass178(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property179: SimpleGraph1000TestProtocol179 {
            return define(init: SimpleGraph1000TestClass179(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property180: SimpleGraph1000TestProtocol180 {
            return define(init: SimpleGraph1000TestClass180(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property181: SimpleGraph1000TestProtocol181 {
            return define(init: SimpleGraph1000TestClass181(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property182: SimpleGraph1000TestProtocol182 {
            return define(init: SimpleGraph1000TestClass182(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property183: SimpleGraph1000TestProtocol183 {
            return define(init: SimpleGraph1000TestClass183(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property184: SimpleGraph1000TestProtocol184 {
            return define(init: SimpleGraph1000TestClass184(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property185: SimpleGraph1000TestProtocol185 {
            return define(init: SimpleGraph1000TestClass185(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property186: SimpleGraph1000TestProtocol186 {
            return define(init: SimpleGraph1000TestClass186(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property187: SimpleGraph1000TestProtocol187 {
            return define(init: SimpleGraph1000TestClass187(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property188: SimpleGraph1000TestProtocol188 {
            return define(init: SimpleGraph1000TestClass188(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property189: SimpleGraph1000TestProtocol189 {
            return define(init: SimpleGraph1000TestClass189(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property190: SimpleGraph1000TestProtocol190 {
            return define(init: SimpleGraph1000TestClass190(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property191: SimpleGraph1000TestProtocol191 {
            return define(init: SimpleGraph1000TestClass191(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property192: SimpleGraph1000TestProtocol192 {
            return define(init: SimpleGraph1000TestClass192(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property193: SimpleGraph1000TestProtocol193 {
            return define(init: SimpleGraph1000TestClass193(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property194: SimpleGraph1000TestProtocol194 {
            return define(init: SimpleGraph1000TestClass194(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property195: SimpleGraph1000TestProtocol195 {
            return define(init: SimpleGraph1000TestClass195(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property196: SimpleGraph1000TestProtocol196 {
            return define(init: SimpleGraph1000TestClass196(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property197: SimpleGraph1000TestProtocol197 {
            return define(init: SimpleGraph1000TestClass197(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property198: SimpleGraph1000TestProtocol198 {
            return define(init: SimpleGraph1000TestClass198(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property199: SimpleGraph1000TestProtocol199 {
            return define(init: SimpleGraph1000TestClass199(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property200: SimpleGraph1000TestProtocol200 {
            return define(init: SimpleGraph1000TestClass200(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property201: SimpleGraph1000TestProtocol201 {
            return define(init: SimpleGraph1000TestClass201(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property202: SimpleGraph1000TestProtocol202 {
            return define(init: SimpleGraph1000TestClass202(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property203: SimpleGraph1000TestProtocol203 {
            return define(init: SimpleGraph1000TestClass203(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property204: SimpleGraph1000TestProtocol204 {
            return define(init: SimpleGraph1000TestClass204(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property205: SimpleGraph1000TestProtocol205 {
            return define(init: SimpleGraph1000TestClass205(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property206: SimpleGraph1000TestProtocol206 {
            return define(init: SimpleGraph1000TestClass206(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property207: SimpleGraph1000TestProtocol207 {
            return define(init: SimpleGraph1000TestClass207(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property208: SimpleGraph1000TestProtocol208 {
            return define(init: SimpleGraph1000TestClass208(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property209: SimpleGraph1000TestProtocol209 {
            return define(init: SimpleGraph1000TestClass209(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property210: SimpleGraph1000TestProtocol210 {
            return define(init: SimpleGraph1000TestClass210(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property211: SimpleGraph1000TestProtocol211 {
            return define(init: SimpleGraph1000TestClass211(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property212: SimpleGraph1000TestProtocol212 {
            return define(init: SimpleGraph1000TestClass212(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property213: SimpleGraph1000TestProtocol213 {
            return define(init: SimpleGraph1000TestClass213(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property214: SimpleGraph1000TestProtocol214 {
            return define(init: SimpleGraph1000TestClass214(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property215: SimpleGraph1000TestProtocol215 {
            return define(init: SimpleGraph1000TestClass215(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property216: SimpleGraph1000TestProtocol216 {
            return define(init: SimpleGraph1000TestClass216(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property217: SimpleGraph1000TestProtocol217 {
            return define(init: SimpleGraph1000TestClass217(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property218: SimpleGraph1000TestProtocol218 {
            return define(init: SimpleGraph1000TestClass218(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property219: SimpleGraph1000TestProtocol219 {
            return define(init: SimpleGraph1000TestClass219(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property220: SimpleGraph1000TestProtocol220 {
            return define(init: SimpleGraph1000TestClass220(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property221: SimpleGraph1000TestProtocol221 {
            return define(init: SimpleGraph1000TestClass221(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property222: SimpleGraph1000TestProtocol222 {
            return define(init: SimpleGraph1000TestClass222(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property223: SimpleGraph1000TestProtocol223 {
            return define(init: SimpleGraph1000TestClass223(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property224: SimpleGraph1000TestProtocol224 {
            return define(init: SimpleGraph1000TestClass224(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property225: SimpleGraph1000TestProtocol225 {
            return define(init: SimpleGraph1000TestClass225(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property226: SimpleGraph1000TestProtocol226 {
            return define(init: SimpleGraph1000TestClass226(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property227: SimpleGraph1000TestProtocol227 {
            return define(init: SimpleGraph1000TestClass227(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property228: SimpleGraph1000TestProtocol228 {
            return define(init: SimpleGraph1000TestClass228(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property229: SimpleGraph1000TestProtocol229 {
            return define(init: SimpleGraph1000TestClass229(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property230: SimpleGraph1000TestProtocol230 {
            return define(init: SimpleGraph1000TestClass230(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property231: SimpleGraph1000TestProtocol231 {
            return define(init: SimpleGraph1000TestClass231(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property232: SimpleGraph1000TestProtocol232 {
            return define(init: SimpleGraph1000TestClass232(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property233: SimpleGraph1000TestProtocol233 {
            return define(init: SimpleGraph1000TestClass233(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property234: SimpleGraph1000TestProtocol234 {
            return define(init: SimpleGraph1000TestClass234(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property235: SimpleGraph1000TestProtocol235 {
            return define(init: SimpleGraph1000TestClass235(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property236: SimpleGraph1000TestProtocol236 {
            return define(init: SimpleGraph1000TestClass236(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property237: SimpleGraph1000TestProtocol237 {
            return define(init: SimpleGraph1000TestClass237(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property238: SimpleGraph1000TestProtocol238 {
            return define(init: SimpleGraph1000TestClass238(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property239: SimpleGraph1000TestProtocol239 {
            return define(init: SimpleGraph1000TestClass239(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property240: SimpleGraph1000TestProtocol240 {
            return define(init: SimpleGraph1000TestClass240(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property241: SimpleGraph1000TestProtocol241 {
            return define(init: SimpleGraph1000TestClass241(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property242: SimpleGraph1000TestProtocol242 {
            return define(init: SimpleGraph1000TestClass242(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property243: SimpleGraph1000TestProtocol243 {
            return define(init: SimpleGraph1000TestClass243(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property244: SimpleGraph1000TestProtocol244 {
            return define(init: SimpleGraph1000TestClass244(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property245: SimpleGraph1000TestProtocol245 {
            return define(init: SimpleGraph1000TestClass245(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property246: SimpleGraph1000TestProtocol246 {
            return define(init: SimpleGraph1000TestClass246(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property247: SimpleGraph1000TestProtocol247 {
            return define(init: SimpleGraph1000TestClass247(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property248: SimpleGraph1000TestProtocol248 {
            return define(init: SimpleGraph1000TestClass248(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property249: SimpleGraph1000TestProtocol249 {
            return define(init: SimpleGraph1000TestClass249(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property250: SimpleGraph1000TestProtocol250 {
            return define(init: SimpleGraph1000TestClass250(param1: self.injectedAssembly.injectedTestProperty3))
        }
        var property251: SimpleGraph1000TestProtocol251 {
            return define(init: SimpleGraph1000TestClass251(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property252: SimpleGraph1000TestProtocol252 {
            return define(init: SimpleGraph1000TestClass252(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property253: SimpleGraph1000TestProtocol253 {
            return define(init: SimpleGraph1000TestClass253(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property254: SimpleGraph1000TestProtocol254 {
            return define(init: SimpleGraph1000TestClass254(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property255: SimpleGraph1000TestProtocol255 {
            return define(init: SimpleGraph1000TestClass255(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property256: SimpleGraph1000TestProtocol256 {
            return define(init: SimpleGraph1000TestClass256(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property257: SimpleGraph1000TestProtocol257 {
            return define(init: SimpleGraph1000TestClass257(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property258: SimpleGraph1000TestProtocol258 {
            return define(init: SimpleGraph1000TestClass258(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property259: SimpleGraph1000TestProtocol259 {
            return define(init: SimpleGraph1000TestClass259(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property260: SimpleGraph1000TestProtocol260 {
            return define(init: SimpleGraph1000TestClass260(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property261: SimpleGraph1000TestProtocol261 {
            return define(init: SimpleGraph1000TestClass261(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property262: SimpleGraph1000TestProtocol262 {
            return define(init: SimpleGraph1000TestClass262(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property263: SimpleGraph1000TestProtocol263 {
            return define(init: SimpleGraph1000TestClass263(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property264: SimpleGraph1000TestProtocol264 {
            return define(init: SimpleGraph1000TestClass264(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property265: SimpleGraph1000TestProtocol265 {
            return define(init: SimpleGraph1000TestClass265(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property266: SimpleGraph1000TestProtocol266 {
            return define(init: SimpleGraph1000TestClass266(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property267: SimpleGraph1000TestProtocol267 {
            return define(init: SimpleGraph1000TestClass267(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property268: SimpleGraph1000TestProtocol268 {
            return define(init: SimpleGraph1000TestClass268(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property269: SimpleGraph1000TestProtocol269 {
            return define(init: SimpleGraph1000TestClass269(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property270: SimpleGraph1000TestProtocol270 {
            return define(init: SimpleGraph1000TestClass270(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property271: SimpleGraph1000TestProtocol271 {
            return define(init: SimpleGraph1000TestClass271(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property272: SimpleGraph1000TestProtocol272 {
            return define(init: SimpleGraph1000TestClass272(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property273: SimpleGraph1000TestProtocol273 {
            return define(init: SimpleGraph1000TestClass273(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property274: SimpleGraph1000TestProtocol274 {
            return define(init: SimpleGraph1000TestClass274(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property275: SimpleGraph1000TestProtocol275 {
            return define(init: SimpleGraph1000TestClass275(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property276: SimpleGraph1000TestProtocol276 {
            return define(init: SimpleGraph1000TestClass276(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property277: SimpleGraph1000TestProtocol277 {
            return define(init: SimpleGraph1000TestClass277(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property278: SimpleGraph1000TestProtocol278 {
            return define(init: SimpleGraph1000TestClass278(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property279: SimpleGraph1000TestProtocol279 {
            return define(init: SimpleGraph1000TestClass279(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property280: SimpleGraph1000TestProtocol280 {
            return define(init: SimpleGraph1000TestClass280(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property281: SimpleGraph1000TestProtocol281 {
            return define(init: SimpleGraph1000TestClass281(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property282: SimpleGraph1000TestProtocol282 {
            return define(init: SimpleGraph1000TestClass282(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property283: SimpleGraph1000TestProtocol283 {
            return define(init: SimpleGraph1000TestClass283(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property284: SimpleGraph1000TestProtocol284 {
            return define(init: SimpleGraph1000TestClass284(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property285: SimpleGraph1000TestProtocol285 {
            return define(init: SimpleGraph1000TestClass285(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property286: SimpleGraph1000TestProtocol286 {
            return define(init: SimpleGraph1000TestClass286(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property287: SimpleGraph1000TestProtocol287 {
            return define(init: SimpleGraph1000TestClass287(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property288: SimpleGraph1000TestProtocol288 {
            return define(init: SimpleGraph1000TestClass288(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property289: SimpleGraph1000TestProtocol289 {
            return define(init: SimpleGraph1000TestClass289(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property290: SimpleGraph1000TestProtocol290 {
            return define(init: SimpleGraph1000TestClass290(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property291: SimpleGraph1000TestProtocol291 {
            return define(init: SimpleGraph1000TestClass291(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property292: SimpleGraph1000TestProtocol292 {
            return define(init: SimpleGraph1000TestClass292(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property293: SimpleGraph1000TestProtocol293 {
            return define(init: SimpleGraph1000TestClass293(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property294: SimpleGraph1000TestProtocol294 {
            return define(init: SimpleGraph1000TestClass294(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property295: SimpleGraph1000TestProtocol295 {
            return define(init: SimpleGraph1000TestClass295(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property296: SimpleGraph1000TestProtocol296 {
            return define(init: SimpleGraph1000TestClass296(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property297: SimpleGraph1000TestProtocol297 {
            return define(init: SimpleGraph1000TestClass297(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property298: SimpleGraph1000TestProtocol298 {
            return define(init: SimpleGraph1000TestClass298(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property299: SimpleGraph1000TestProtocol299 {
            return define(init: SimpleGraph1000TestClass299(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property300: SimpleGraph1000TestProtocol300 {
            return define(init: SimpleGraph1000TestClass300(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property301: SimpleGraph1000TestProtocol301 {
            return define(init: SimpleGraph1000TestClass301(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property302: SimpleGraph1000TestProtocol302 {
            return define(init: SimpleGraph1000TestClass302(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property303: SimpleGraph1000TestProtocol303 {
            return define(init: SimpleGraph1000TestClass303(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property304: SimpleGraph1000TestProtocol304 {
            return define(init: SimpleGraph1000TestClass304(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property305: SimpleGraph1000TestProtocol305 {
            return define(init: SimpleGraph1000TestClass305(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property306: SimpleGraph1000TestProtocol306 {
            return define(init: SimpleGraph1000TestClass306(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property307: SimpleGraph1000TestProtocol307 {
            return define(init: SimpleGraph1000TestClass307(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property308: SimpleGraph1000TestProtocol308 {
            return define(init: SimpleGraph1000TestClass308(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property309: SimpleGraph1000TestProtocol309 {
            return define(init: SimpleGraph1000TestClass309(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property310: SimpleGraph1000TestProtocol310 {
            return define(init: SimpleGraph1000TestClass310(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property311: SimpleGraph1000TestProtocol311 {
            return define(init: SimpleGraph1000TestClass311(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property312: SimpleGraph1000TestProtocol312 {
            return define(init: SimpleGraph1000TestClass312(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property313: SimpleGraph1000TestProtocol313 {
            return define(init: SimpleGraph1000TestClass313(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property314: SimpleGraph1000TestProtocol314 {
            return define(init: SimpleGraph1000TestClass314(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property315: SimpleGraph1000TestProtocol315 {
            return define(init: SimpleGraph1000TestClass315(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property316: SimpleGraph1000TestProtocol316 {
            return define(init: SimpleGraph1000TestClass316(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property317: SimpleGraph1000TestProtocol317 {
            return define(init: SimpleGraph1000TestClass317(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property318: SimpleGraph1000TestProtocol318 {
            return define(init: SimpleGraph1000TestClass318(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property319: SimpleGraph1000TestProtocol319 {
            return define(init: SimpleGraph1000TestClass319(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property320: SimpleGraph1000TestProtocol320 {
            return define(init: SimpleGraph1000TestClass320(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property321: SimpleGraph1000TestProtocol321 {
            return define(init: SimpleGraph1000TestClass321(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property322: SimpleGraph1000TestProtocol322 {
            return define(init: SimpleGraph1000TestClass322(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property323: SimpleGraph1000TestProtocol323 {
            return define(init: SimpleGraph1000TestClass323(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property324: SimpleGraph1000TestProtocol324 {
            return define(init: SimpleGraph1000TestClass324(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property325: SimpleGraph1000TestProtocol325 {
            return define(init: SimpleGraph1000TestClass325(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property326: SimpleGraph1000TestProtocol326 {
            return define(init: SimpleGraph1000TestClass326(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property327: SimpleGraph1000TestProtocol327 {
            return define(init: SimpleGraph1000TestClass327(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property328: SimpleGraph1000TestProtocol328 {
            return define(init: SimpleGraph1000TestClass328(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property329: SimpleGraph1000TestProtocol329 {
            return define(init: SimpleGraph1000TestClass329(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property330: SimpleGraph1000TestProtocol330 {
            return define(init: SimpleGraph1000TestClass330(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property331: SimpleGraph1000TestProtocol331 {
            return define(init: SimpleGraph1000TestClass331(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property332: SimpleGraph1000TestProtocol332 {
            return define(init: SimpleGraph1000TestClass332(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property333: SimpleGraph1000TestProtocol333 {
            return define(init: SimpleGraph1000TestClass333(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property334: SimpleGraph1000TestProtocol334 {
            return define(init: SimpleGraph1000TestClass334(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property335: SimpleGraph1000TestProtocol335 {
            return define(init: SimpleGraph1000TestClass335(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property336: SimpleGraph1000TestProtocol336 {
            return define(init: SimpleGraph1000TestClass336(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property337: SimpleGraph1000TestProtocol337 {
            return define(init: SimpleGraph1000TestClass337(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property338: SimpleGraph1000TestProtocol338 {
            return define(init: SimpleGraph1000TestClass338(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property339: SimpleGraph1000TestProtocol339 {
            return define(init: SimpleGraph1000TestClass339(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property340: SimpleGraph1000TestProtocol340 {
            return define(init: SimpleGraph1000TestClass340(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property341: SimpleGraph1000TestProtocol341 {
            return define(init: SimpleGraph1000TestClass341(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property342: SimpleGraph1000TestProtocol342 {
            return define(init: SimpleGraph1000TestClass342(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property343: SimpleGraph1000TestProtocol343 {
            return define(init: SimpleGraph1000TestClass343(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property344: SimpleGraph1000TestProtocol344 {
            return define(init: SimpleGraph1000TestClass344(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property345: SimpleGraph1000TestProtocol345 {
            return define(init: SimpleGraph1000TestClass345(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property346: SimpleGraph1000TestProtocol346 {
            return define(init: SimpleGraph1000TestClass346(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property347: SimpleGraph1000TestProtocol347 {
            return define(init: SimpleGraph1000TestClass347(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property348: SimpleGraph1000TestProtocol348 {
            return define(init: SimpleGraph1000TestClass348(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property349: SimpleGraph1000TestProtocol349 {
            return define(init: SimpleGraph1000TestClass349(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property350: SimpleGraph1000TestProtocol350 {
            return define(init: SimpleGraph1000TestClass350(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property351: SimpleGraph1000TestProtocol351 {
            return define(init: SimpleGraph1000TestClass351(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property352: SimpleGraph1000TestProtocol352 {
            return define(init: SimpleGraph1000TestClass352(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property353: SimpleGraph1000TestProtocol353 {
            return define(init: SimpleGraph1000TestClass353(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property354: SimpleGraph1000TestProtocol354 {
            return define(init: SimpleGraph1000TestClass354(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property355: SimpleGraph1000TestProtocol355 {
            return define(init: SimpleGraph1000TestClass355(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property356: SimpleGraph1000TestProtocol356 {
            return define(init: SimpleGraph1000TestClass356(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property357: SimpleGraph1000TestProtocol357 {
            return define(init: SimpleGraph1000TestClass357(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property358: SimpleGraph1000TestProtocol358 {
            return define(init: SimpleGraph1000TestClass358(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property359: SimpleGraph1000TestProtocol359 {
            return define(init: SimpleGraph1000TestClass359(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property360: SimpleGraph1000TestProtocol360 {
            return define(init: SimpleGraph1000TestClass360(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property361: SimpleGraph1000TestProtocol361 {
            return define(init: SimpleGraph1000TestClass361(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property362: SimpleGraph1000TestProtocol362 {
            return define(init: SimpleGraph1000TestClass362(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property363: SimpleGraph1000TestProtocol363 {
            return define(init: SimpleGraph1000TestClass363(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property364: SimpleGraph1000TestProtocol364 {
            return define(init: SimpleGraph1000TestClass364(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property365: SimpleGraph1000TestProtocol365 {
            return define(init: SimpleGraph1000TestClass365(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property366: SimpleGraph1000TestProtocol366 {
            return define(init: SimpleGraph1000TestClass366(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property367: SimpleGraph1000TestProtocol367 {
            return define(init: SimpleGraph1000TestClass367(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property368: SimpleGraph1000TestProtocol368 {
            return define(init: SimpleGraph1000TestClass368(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property369: SimpleGraph1000TestProtocol369 {
            return define(init: SimpleGraph1000TestClass369(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property370: SimpleGraph1000TestProtocol370 {
            return define(init: SimpleGraph1000TestClass370(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property371: SimpleGraph1000TestProtocol371 {
            return define(init: SimpleGraph1000TestClass371(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property372: SimpleGraph1000TestProtocol372 {
            return define(init: SimpleGraph1000TestClass372(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property373: SimpleGraph1000TestProtocol373 {
            return define(init: SimpleGraph1000TestClass373(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property374: SimpleGraph1000TestProtocol374 {
            return define(init: SimpleGraph1000TestClass374(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property375: SimpleGraph1000TestProtocol375 {
            return define(init: SimpleGraph1000TestClass375(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2))
        }
        var property376: SimpleGraph1000TestProtocol376 {
            return define(init: SimpleGraph1000TestClass376(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property377: SimpleGraph1000TestProtocol377 {
            return define(init: SimpleGraph1000TestClass377(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property378: SimpleGraph1000TestProtocol378 {
            return define(init: SimpleGraph1000TestClass378(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property379: SimpleGraph1000TestProtocol379 {
            return define(init: SimpleGraph1000TestClass379(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property380: SimpleGraph1000TestProtocol380 {
            return define(init: SimpleGraph1000TestClass380(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property381: SimpleGraph1000TestProtocol381 {
            return define(init: SimpleGraph1000TestClass381(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property382: SimpleGraph1000TestProtocol382 {
            return define(init: SimpleGraph1000TestClass382(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property383: SimpleGraph1000TestProtocol383 {
            return define(init: SimpleGraph1000TestClass383(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property384: SimpleGraph1000TestProtocol384 {
            return define(init: SimpleGraph1000TestClass384(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property385: SimpleGraph1000TestProtocol385 {
            return define(init: SimpleGraph1000TestClass385(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property386: SimpleGraph1000TestProtocol386 {
            return define(init: SimpleGraph1000TestClass386(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property387: SimpleGraph1000TestProtocol387 {
            return define(init: SimpleGraph1000TestClass387(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property388: SimpleGraph1000TestProtocol388 {
            return define(init: SimpleGraph1000TestClass388(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property389: SimpleGraph1000TestProtocol389 {
            return define(init: SimpleGraph1000TestClass389(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property390: SimpleGraph1000TestProtocol390 {
            return define(init: SimpleGraph1000TestClass390(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property391: SimpleGraph1000TestProtocol391 {
            return define(init: SimpleGraph1000TestClass391(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property392: SimpleGraph1000TestProtocol392 {
            return define(init: SimpleGraph1000TestClass392(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property393: SimpleGraph1000TestProtocol393 {
            return define(init: SimpleGraph1000TestClass393(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property394: SimpleGraph1000TestProtocol394 {
            return define(init: SimpleGraph1000TestClass394(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property395: SimpleGraph1000TestProtocol395 {
            return define(init: SimpleGraph1000TestClass395(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property396: SimpleGraph1000TestProtocol396 {
            return define(init: SimpleGraph1000TestClass396(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property397: SimpleGraph1000TestProtocol397 {
            return define(init: SimpleGraph1000TestClass397(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property398: SimpleGraph1000TestProtocol398 {
            return define(init: SimpleGraph1000TestClass398(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property399: SimpleGraph1000TestProtocol399 {
            return define(init: SimpleGraph1000TestClass399(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property400: SimpleGraph1000TestProtocol400 {
            return define(init: SimpleGraph1000TestClass400(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property401: SimpleGraph1000TestProtocol401 {
            return define(init: SimpleGraph1000TestClass401(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property402: SimpleGraph1000TestProtocol402 {
            return define(init: SimpleGraph1000TestClass402(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property403: SimpleGraph1000TestProtocol403 {
            return define(init: SimpleGraph1000TestClass403(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property404: SimpleGraph1000TestProtocol404 {
            return define(init: SimpleGraph1000TestClass404(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property405: SimpleGraph1000TestProtocol405 {
            return define(init: SimpleGraph1000TestClass405(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property406: SimpleGraph1000TestProtocol406 {
            return define(init: SimpleGraph1000TestClass406(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property407: SimpleGraph1000TestProtocol407 {
            return define(init: SimpleGraph1000TestClass407(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property408: SimpleGraph1000TestProtocol408 {
            return define(init: SimpleGraph1000TestClass408(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property409: SimpleGraph1000TestProtocol409 {
            return define(init: SimpleGraph1000TestClass409(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property410: SimpleGraph1000TestProtocol410 {
            return define(init: SimpleGraph1000TestClass410(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property411: SimpleGraph1000TestProtocol411 {
            return define(init: SimpleGraph1000TestClass411(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property412: SimpleGraph1000TestProtocol412 {
            return define(init: SimpleGraph1000TestClass412(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property413: SimpleGraph1000TestProtocol413 {
            return define(init: SimpleGraph1000TestClass413(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property414: SimpleGraph1000TestProtocol414 {
            return define(init: SimpleGraph1000TestClass414(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property415: SimpleGraph1000TestProtocol415 {
            return define(init: SimpleGraph1000TestClass415(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property416: SimpleGraph1000TestProtocol416 {
            return define(init: SimpleGraph1000TestClass416(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property417: SimpleGraph1000TestProtocol417 {
            return define(init: SimpleGraph1000TestClass417(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property418: SimpleGraph1000TestProtocol418 {
            return define(init: SimpleGraph1000TestClass418(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property419: SimpleGraph1000TestProtocol419 {
            return define(init: SimpleGraph1000TestClass419(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property420: SimpleGraph1000TestProtocol420 {
            return define(init: SimpleGraph1000TestClass420(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property421: SimpleGraph1000TestProtocol421 {
            return define(init: SimpleGraph1000TestClass421(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property422: SimpleGraph1000TestProtocol422 {
            return define(init: SimpleGraph1000TestClass422(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property423: SimpleGraph1000TestProtocol423 {
            return define(init: SimpleGraph1000TestClass423(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property424: SimpleGraph1000TestProtocol424 {
            return define(init: SimpleGraph1000TestClass424(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property425: SimpleGraph1000TestProtocol425 {
            return define(init: SimpleGraph1000TestClass425(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property426: SimpleGraph1000TestProtocol426 {
            return define(init: SimpleGraph1000TestClass426(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property427: SimpleGraph1000TestProtocol427 {
            return define(init: SimpleGraph1000TestClass427(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property428: SimpleGraph1000TestProtocol428 {
            return define(init: SimpleGraph1000TestClass428(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property429: SimpleGraph1000TestProtocol429 {
            return define(init: SimpleGraph1000TestClass429(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property430: SimpleGraph1000TestProtocol430 {
            return define(init: SimpleGraph1000TestClass430(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property431: SimpleGraph1000TestProtocol431 {
            return define(init: SimpleGraph1000TestClass431(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property432: SimpleGraph1000TestProtocol432 {
            return define(init: SimpleGraph1000TestClass432(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property433: SimpleGraph1000TestProtocol433 {
            return define(init: SimpleGraph1000TestClass433(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property434: SimpleGraph1000TestProtocol434 {
            return define(init: SimpleGraph1000TestClass434(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property435: SimpleGraph1000TestProtocol435 {
            return define(init: SimpleGraph1000TestClass435(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property436: SimpleGraph1000TestProtocol436 {
            return define(init: SimpleGraph1000TestClass436(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property437: SimpleGraph1000TestProtocol437 {
            return define(init: SimpleGraph1000TestClass437(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property438: SimpleGraph1000TestProtocol438 {
            return define(init: SimpleGraph1000TestClass438(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property439: SimpleGraph1000TestProtocol439 {
            return define(init: SimpleGraph1000TestClass439(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property440: SimpleGraph1000TestProtocol440 {
            return define(init: SimpleGraph1000TestClass440(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property441: SimpleGraph1000TestProtocol441 {
            return define(init: SimpleGraph1000TestClass441(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property442: SimpleGraph1000TestProtocol442 {
            return define(init: SimpleGraph1000TestClass442(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property443: SimpleGraph1000TestProtocol443 {
            return define(init: SimpleGraph1000TestClass443(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property444: SimpleGraph1000TestProtocol444 {
            return define(init: SimpleGraph1000TestClass444(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property445: SimpleGraph1000TestProtocol445 {
            return define(init: SimpleGraph1000TestClass445(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property446: SimpleGraph1000TestProtocol446 {
            return define(init: SimpleGraph1000TestClass446(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property447: SimpleGraph1000TestProtocol447 {
            return define(init: SimpleGraph1000TestClass447(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property448: SimpleGraph1000TestProtocol448 {
            return define(init: SimpleGraph1000TestClass448(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property449: SimpleGraph1000TestProtocol449 {
            return define(init: SimpleGraph1000TestClass449(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property450: SimpleGraph1000TestProtocol450 {
            return define(init: SimpleGraph1000TestClass450(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property451: SimpleGraph1000TestProtocol451 {
            return define(init: SimpleGraph1000TestClass451(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property452: SimpleGraph1000TestProtocol452 {
            return define(init: SimpleGraph1000TestClass452(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property453: SimpleGraph1000TestProtocol453 {
            return define(init: SimpleGraph1000TestClass453(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property454: SimpleGraph1000TestProtocol454 {
            return define(init: SimpleGraph1000TestClass454(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property455: SimpleGraph1000TestProtocol455 {
            return define(init: SimpleGraph1000TestClass455(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property456: SimpleGraph1000TestProtocol456 {
            return define(init: SimpleGraph1000TestClass456(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property457: SimpleGraph1000TestProtocol457 {
            return define(init: SimpleGraph1000TestClass457(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property458: SimpleGraph1000TestProtocol458 {
            return define(init: SimpleGraph1000TestClass458(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property459: SimpleGraph1000TestProtocol459 {
            return define(init: SimpleGraph1000TestClass459(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property460: SimpleGraph1000TestProtocol460 {
            return define(init: SimpleGraph1000TestClass460(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property461: SimpleGraph1000TestProtocol461 {
            return define(init: SimpleGraph1000TestClass461(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property462: SimpleGraph1000TestProtocol462 {
            return define(init: SimpleGraph1000TestClass462(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property463: SimpleGraph1000TestProtocol463 {
            return define(init: SimpleGraph1000TestClass463(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property464: SimpleGraph1000TestProtocol464 {
            return define(init: SimpleGraph1000TestClass464(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property465: SimpleGraph1000TestProtocol465 {
            return define(init: SimpleGraph1000TestClass465(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property466: SimpleGraph1000TestProtocol466 {
            return define(init: SimpleGraph1000TestClass466(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property467: SimpleGraph1000TestProtocol467 {
            return define(init: SimpleGraph1000TestClass467(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property468: SimpleGraph1000TestProtocol468 {
            return define(init: SimpleGraph1000TestClass468(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property469: SimpleGraph1000TestProtocol469 {
            return define(init: SimpleGraph1000TestClass469(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property470: SimpleGraph1000TestProtocol470 {
            return define(init: SimpleGraph1000TestClass470(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property471: SimpleGraph1000TestProtocol471 {
            return define(init: SimpleGraph1000TestClass471(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property472: SimpleGraph1000TestProtocol472 {
            return define(init: SimpleGraph1000TestClass472(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property473: SimpleGraph1000TestProtocol473 {
            return define(init: SimpleGraph1000TestClass473(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property474: SimpleGraph1000TestProtocol474 {
            return define(init: SimpleGraph1000TestClass474(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property475: SimpleGraph1000TestProtocol475 {
            return define(init: SimpleGraph1000TestClass475(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property476: SimpleGraph1000TestProtocol476 {
            return define(init: SimpleGraph1000TestClass476(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property477: SimpleGraph1000TestProtocol477 {
            return define(init: SimpleGraph1000TestClass477(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property478: SimpleGraph1000TestProtocol478 {
            return define(init: SimpleGraph1000TestClass478(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property479: SimpleGraph1000TestProtocol479 {
            return define(init: SimpleGraph1000TestClass479(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property480: SimpleGraph1000TestProtocol480 {
            return define(init: SimpleGraph1000TestClass480(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property481: SimpleGraph1000TestProtocol481 {
            return define(init: SimpleGraph1000TestClass481(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property482: SimpleGraph1000TestProtocol482 {
            return define(init: SimpleGraph1000TestClass482(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property483: SimpleGraph1000TestProtocol483 {
            return define(init: SimpleGraph1000TestClass483(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property484: SimpleGraph1000TestProtocol484 {
            return define(init: SimpleGraph1000TestClass484(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property485: SimpleGraph1000TestProtocol485 {
            return define(init: SimpleGraph1000TestClass485(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property486: SimpleGraph1000TestProtocol486 {
            return define(init: SimpleGraph1000TestClass486(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property487: SimpleGraph1000TestProtocol487 {
            return define(init: SimpleGraph1000TestClass487(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property488: SimpleGraph1000TestProtocol488 {
            return define(init: SimpleGraph1000TestClass488(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property489: SimpleGraph1000TestProtocol489 {
            return define(init: SimpleGraph1000TestClass489(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property490: SimpleGraph1000TestProtocol490 {
            return define(init: SimpleGraph1000TestClass490(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property491: SimpleGraph1000TestProtocol491 {
            return define(init: SimpleGraph1000TestClass491(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property492: SimpleGraph1000TestProtocol492 {
            return define(init: SimpleGraph1000TestClass492(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property493: SimpleGraph1000TestProtocol493 {
            return define(init: SimpleGraph1000TestClass493(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property494: SimpleGraph1000TestProtocol494 {
            return define(init: SimpleGraph1000TestClass494(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property495: SimpleGraph1000TestProtocol495 {
            return define(init: SimpleGraph1000TestClass495(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property496: SimpleGraph1000TestProtocol496 {
            return define(init: SimpleGraph1000TestClass496(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property497: SimpleGraph1000TestProtocol497 {
            return define(init: SimpleGraph1000TestClass497(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property498: SimpleGraph1000TestProtocol498 {
            return define(init: SimpleGraph1000TestClass498(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property499: SimpleGraph1000TestProtocol499 {
            return define(init: SimpleGraph1000TestClass499(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
        var property500: SimpleGraph1000TestProtocol500 {
            return define(init: SimpleGraph1000TestClass500(param1: self.injectedAssembly.injectedTestProperty3,
                                                         param2: self.injectedAssembly.injectedTestProperty2,
                                                         param3: self.injectedAssembly.injectedTestProperty1))
        }
    }
    
    static func resolve_1000(assembly: EasyDIAssembly1000) {
        resolve_500(assembly: assembly.assembly_500)
        
        _ = assembly.property1
        _ = assembly.property2
        _ = assembly.property3
        _ = assembly.property4
        _ = assembly.property5
        _ = assembly.property6
        _ = assembly.property7
        _ = assembly.property8
        _ = assembly.property9
        _ = assembly.property10
        _ = assembly.property11
        _ = assembly.property12
        _ = assembly.property13
        _ = assembly.property14
        _ = assembly.property15
        _ = assembly.property16
        _ = assembly.property17
        _ = assembly.property18
        _ = assembly.property19
        _ = assembly.property20
        _ = assembly.property21
        _ = assembly.property22
        _ = assembly.property23
        _ = assembly.property24
        _ = assembly.property25
        _ = assembly.property26
        _ = assembly.property27
        _ = assembly.property28
        _ = assembly.property29
        _ = assembly.property30
        _ = assembly.property31
        _ = assembly.property32
        _ = assembly.property33
        _ = assembly.property34
        _ = assembly.property35
        _ = assembly.property36
        _ = assembly.property37
        _ = assembly.property38
        _ = assembly.property39
        _ = assembly.property40
        _ = assembly.property41
        _ = assembly.property42
        _ = assembly.property43
        _ = assembly.property44
        _ = assembly.property45
        _ = assembly.property46
        _ = assembly.property47
        _ = assembly.property48
        _ = assembly.property49
        _ = assembly.property50
        _ = assembly.property51
        _ = assembly.property52
        _ = assembly.property53
        _ = assembly.property54
        _ = assembly.property55
        _ = assembly.property56
        _ = assembly.property57
        _ = assembly.property58
        _ = assembly.property59
        _ = assembly.property60
        _ = assembly.property61
        _ = assembly.property62
        _ = assembly.property63
        _ = assembly.property64
        _ = assembly.property65
        _ = assembly.property66
        _ = assembly.property67
        _ = assembly.property68
        _ = assembly.property69
        _ = assembly.property70
        _ = assembly.property71
        _ = assembly.property72
        _ = assembly.property73
        _ = assembly.property74
        _ = assembly.property75
        _ = assembly.property76
        _ = assembly.property77
        _ = assembly.property78
        _ = assembly.property79
        _ = assembly.property80
        _ = assembly.property81
        _ = assembly.property82
        _ = assembly.property83
        _ = assembly.property84
        _ = assembly.property85
        _ = assembly.property86
        _ = assembly.property87
        _ = assembly.property88
        _ = assembly.property89
        _ = assembly.property90
        _ = assembly.property91
        _ = assembly.property92
        _ = assembly.property93
        _ = assembly.property94
        _ = assembly.property95
        _ = assembly.property96
        _ = assembly.property97
        _ = assembly.property98
        _ = assembly.property99
        _ = assembly.property100
        _ = assembly.property101
        _ = assembly.property102
        _ = assembly.property103
        _ = assembly.property104
        _ = assembly.property105
        _ = assembly.property106
        _ = assembly.property107
        _ = assembly.property108
        _ = assembly.property109
        _ = assembly.property110
        _ = assembly.property111
        _ = assembly.property112
        _ = assembly.property113
        _ = assembly.property114
        _ = assembly.property115
        _ = assembly.property116
        _ = assembly.property117
        _ = assembly.property118
        _ = assembly.property119
        _ = assembly.property120
        _ = assembly.property121
        _ = assembly.property122
        _ = assembly.property123
        _ = assembly.property124
        _ = assembly.property125
        _ = assembly.property126
        _ = assembly.property127
        _ = assembly.property128
        _ = assembly.property129
        _ = assembly.property130
        _ = assembly.property131
        _ = assembly.property132
        _ = assembly.property133
        _ = assembly.property134
        _ = assembly.property135
        _ = assembly.property136
        _ = assembly.property137
        _ = assembly.property138
        _ = assembly.property139
        _ = assembly.property140
        _ = assembly.property141
        _ = assembly.property142
        _ = assembly.property143
        _ = assembly.property144
        _ = assembly.property145
        _ = assembly.property146
        _ = assembly.property147

        _ = assembly.property148
        _ = assembly.property149
        _ = assembly.property150
        _ = assembly.property151
        _ = assembly.property152
        _ = assembly.property153
        _ = assembly.property154
        _ = assembly.property155
        _ = assembly.property156
        _ = assembly.property157
        _ = assembly.property158
        _ = assembly.property159
        _ = assembly.property160
        _ = assembly.property161
        _ = assembly.property162
        _ = assembly.property163
        _ = assembly.property164
        _ = assembly.property165
        _ = assembly.property166
        _ = assembly.property167
        _ = assembly.property168
        _ = assembly.property169
        _ = assembly.property170
        _ = assembly.property171
        _ = assembly.property172
        _ = assembly.property173
        _ = assembly.property174
        _ = assembly.property175
        _ = assembly.property176
        _ = assembly.property177
        _ = assembly.property178
        _ = assembly.property179
        _ = assembly.property180
        _ = assembly.property181
        _ = assembly.property182
        _ = assembly.property183
        _ = assembly.property184
        _ = assembly.property185
        _ = assembly.property186
        _ = assembly.property187
        _ = assembly.property188
        _ = assembly.property189
        _ = assembly.property190
        _ = assembly.property191
        _ = assembly.property192
        _ = assembly.property193
        _ = assembly.property194
        _ = assembly.property195
        _ = assembly.property196
        _ = assembly.property197
        _ = assembly.property198
        _ = assembly.property199
        _ = assembly.property200
        _ = assembly.property201
        _ = assembly.property202
        _ = assembly.property203
        _ = assembly.property204
        _ = assembly.property205
        _ = assembly.property206
        _ = assembly.property207
        _ = assembly.property208
        _ = assembly.property209
        _ = assembly.property210
        _ = assembly.property211
        _ = assembly.property212
        _ = assembly.property213
        _ = assembly.property214
        _ = assembly.property215
        _ = assembly.property216
        _ = assembly.property217
        _ = assembly.property218
        _ = assembly.property219
        _ = assembly.property220
        _ = assembly.property221
        _ = assembly.property222
        _ = assembly.property223
        _ = assembly.property224
        _ = assembly.property225
        _ = assembly.property226
        _ = assembly.property227
        _ = assembly.property228
        _ = assembly.property229
        _ = assembly.property230
        _ = assembly.property231
        _ = assembly.property232
        _ = assembly.property233
        _ = assembly.property234
        _ = assembly.property235
        _ = assembly.property236
        _ = assembly.property237
        _ = assembly.property238
        _ = assembly.property239
        _ = assembly.property240
        _ = assembly.property241
        _ = assembly.property242
        _ = assembly.property243
        _ = assembly.property244
        _ = assembly.property245
        _ = assembly.property246
        _ = assembly.property247
        _ = assembly.property248
        _ = assembly.property249
        _ = assembly.property250
        _ = assembly.property251
        _ = assembly.property252
        _ = assembly.property253
        _ = assembly.property254
        _ = assembly.property255
        _ = assembly.property256
        _ = assembly.property257
        _ = assembly.property258
        _ = assembly.property259
        _ = assembly.property260
        _ = assembly.property261
        _ = assembly.property262
        _ = assembly.property263
        _ = assembly.property264
        _ = assembly.property265
        _ = assembly.property266
        _ = assembly.property267
        _ = assembly.property268
        _ = assembly.property269
        _ = assembly.property270
        _ = assembly.property271
        _ = assembly.property272
        _ = assembly.property273
        _ = assembly.property274
        _ = assembly.property275
        _ = assembly.property276
        _ = assembly.property277
        _ = assembly.property278
        _ = assembly.property279
        _ = assembly.property280
        _ = assembly.property281
        _ = assembly.property282
        _ = assembly.property283
        _ = assembly.property284
        _ = assembly.property285
        _ = assembly.property286
        _ = assembly.property287
        _ = assembly.property288
        _ = assembly.property289
        _ = assembly.property290
        _ = assembly.property291
        _ = assembly.property292
        _ = assembly.property293
        _ = assembly.property294
        _ = assembly.property295
        _ = assembly.property296
        _ = assembly.property297
        _ = assembly.property298
        _ = assembly.property299
        _ = assembly.property300
        _ = assembly.property301
        _ = assembly.property302
        _ = assembly.property303
        _ = assembly.property304
        _ = assembly.property305
        _ = assembly.property306
        _ = assembly.property307
        _ = assembly.property308
        _ = assembly.property309
        _ = assembly.property310
        _ = assembly.property311
        _ = assembly.property312
        _ = assembly.property313
        _ = assembly.property314
        _ = assembly.property315
        _ = assembly.property316
        _ = assembly.property317
        _ = assembly.property318
        _ = assembly.property319
        _ = assembly.property320
        _ = assembly.property321
        _ = assembly.property322
        _ = assembly.property323
        _ = assembly.property324
        _ = assembly.property325
        _ = assembly.property326
        _ = assembly.property327
        _ = assembly.property328
        _ = assembly.property329
        _ = assembly.property330
        _ = assembly.property331
        _ = assembly.property332
        _ = assembly.property333
        _ = assembly.property334
        _ = assembly.property335
        _ = assembly.property336
        _ = assembly.property337
        _ = assembly.property338
        _ = assembly.property339
        _ = assembly.property340
        _ = assembly.property341
        _ = assembly.property342
        _ = assembly.property343
        _ = assembly.property344
        _ = assembly.property345
        _ = assembly.property346
        _ = assembly.property347
        _ = assembly.property348
        _ = assembly.property349
        _ = assembly.property350
        _ = assembly.property351
        _ = assembly.property352
        _ = assembly.property353
        _ = assembly.property354
        _ = assembly.property355
        _ = assembly.property356
        _ = assembly.property357
        _ = assembly.property358
        _ = assembly.property359
        _ = assembly.property360
        _ = assembly.property361
        _ = assembly.property362
        _ = assembly.property363
        _ = assembly.property364
        _ = assembly.property365
        _ = assembly.property366
        _ = assembly.property367
        _ = assembly.property368
        _ = assembly.property369
        _ = assembly.property370
        _ = assembly.property371
        _ = assembly.property372
        _ = assembly.property373
        _ = assembly.property374
        _ = assembly.property375
        _ = assembly.property376
        _ = assembly.property377
        _ = assembly.property378
        _ = assembly.property379
        _ = assembly.property380
        _ = assembly.property381
        _ = assembly.property382
        _ = assembly.property383
        _ = assembly.property384
        _ = assembly.property385
        _ = assembly.property386
        _ = assembly.property387
        _ = assembly.property388
        _ = assembly.property389
        _ = assembly.property390
        _ = assembly.property391
        _ = assembly.property392
        _ = assembly.property393
        _ = assembly.property394
        _ = assembly.property395
        _ = assembly.property396
        _ = assembly.property397
        _ = assembly.property398
        _ = assembly.property399
        _ = assembly.property400
        _ = assembly.property401
        _ = assembly.property402
        _ = assembly.property403
        _ = assembly.property404
        _ = assembly.property405
        _ = assembly.property406
        _ = assembly.property407
        _ = assembly.property408
        _ = assembly.property409
        _ = assembly.property410
        _ = assembly.property411
        _ = assembly.property412
        _ = assembly.property413
        _ = assembly.property414
        _ = assembly.property415
        _ = assembly.property416
        _ = assembly.property417
        _ = assembly.property418
        _ = assembly.property419
        _ = assembly.property420
        _ = assembly.property421
        _ = assembly.property422
        _ = assembly.property423
        _ = assembly.property424
        _ = assembly.property425
        _ = assembly.property426
        _ = assembly.property427
        _ = assembly.property428
        _ = assembly.property429
        _ = assembly.property430
        _ = assembly.property431
        _ = assembly.property432
        _ = assembly.property433
        _ = assembly.property434
        _ = assembly.property435
        _ = assembly.property436
        _ = assembly.property437
        _ = assembly.property438
        _ = assembly.property439
        _ = assembly.property440
        _ = assembly.property441
        _ = assembly.property442
        _ = assembly.property443
        _ = assembly.property444
        _ = assembly.property445
        _ = assembly.property446
        _ = assembly.property447
        _ = assembly.property448
        _ = assembly.property449
        _ = assembly.property450
        _ = assembly.property451
        _ = assembly.property452
        _ = assembly.property453
        _ = assembly.property454
        _ = assembly.property455
        _ = assembly.property456
        _ = assembly.property457
        _ = assembly.property458
        _ = assembly.property459
        _ = assembly.property460
        _ = assembly.property461
        _ = assembly.property462
        _ = assembly.property463
        _ = assembly.property464
        _ = assembly.property465
        _ = assembly.property466
        _ = assembly.property467
        _ = assembly.property468
        _ = assembly.property469
        _ = assembly.property470
        _ = assembly.property471
        _ = assembly.property472
        _ = assembly.property473
        _ = assembly.property474
        _ = assembly.property475
        _ = assembly.property476
        _ = assembly.property477
        _ = assembly.property478
        _ = assembly.property479
        _ = assembly.property480
        _ = assembly.property481
        _ = assembly.property482
        _ = assembly.property483
        _ = assembly.property484
        _ = assembly.property485
        _ = assembly.property486
        _ = assembly.property487
        _ = assembly.property488
        _ = assembly.property489
        _ = assembly.property490
        _ = assembly.property491
        _ = assembly.property492
        _ = assembly.property493
        _ = assembly.property494
        _ = assembly.property495
        _ = assembly.property496
        _ = assembly.property497
        _ = assembly.property498
        _ = assembly.property499
        _ = assembly.property500
    }

}
