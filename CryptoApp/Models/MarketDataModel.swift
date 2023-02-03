//
//  MarketDataModel.swift
//  CryptoApp
//
//  Created by Siran Li on 2/2/23.
//

import Foundation

// JSON Data:
/*
 LINK: https://app.quicktype.io/
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 12361,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 650,
     "total_market_cap": {
       "btc": 47474825.52250791,
       "eth": 674316443.699586,
       "ltc": 11278047367.944578,
       "bch": 8092887342.382762,
       "bnb": 3438886770.8397884,
       "eos": 1033656381363.2692,
       "xrp": 2728946450553.1562,
       "xlm": 12125958196475.18,
       "link": 154658915616.664,
       "dot": 168853861411.84195,
       "yfi": 144471967.23263,
       "usd": 1133285089648.4236,
       "aed": 4162556134278.6553,
       "ars": 212573993507453.12,
       "aud": 1601363563655.7324,
       "bdt": 120215075605288.47,
       "bhd": 427140816713.9385,
       "bmd": 1133285089648.4236,
       "brl": 5720096696802.771,
       "cad": 1509732931017.2976,
       "chf": 1035540383951.3333,
       "clp": 883962369925770.9,
       "cny": 7629728537549.03,
       "czk": 24682949252542.63,
       "dkk": 7731191551625.28,
       "eur": 1038902840812.3242,
       "gbp": 926579555721.9993,
       "hkd": 8889428179092.477,
       "huf": 400741364399201.94,
       "idr": 16906109233628776,
       "ils": 3842459760707.458,
       "inr": 93028712055848.27,
       "jpy": 145857727707502.3,
       "krw": 1388870848221621,
       "kwd": 345749414860.4785,
       "lkr": 414763623208212,
       "mmk": 2379791389962683.5,
       "mxn": 21135200279398.25,
       "myr": 4811928490647.218,
       "ngn": 521923115186684.94,
       "nok": 11385005809594.918,
       "nzd": 1750306689847.863,
       "php": 61091994794536.97,
       "pkr": 306270295477486.4,
       "pln": 4870144212417.372,
       "rub": 79403619806216.52,
       "sar": 4252754294563.775,
       "sek": 11755444973418.49,
       "sgd": 1484425541680.3562,
       "thb": 37420507017646.09,
       "try": 21311766096365.48,
       "twd": 33668198952535.086,
       "uah": 41644617531568.98,
       "vef": 113475836026.49637,
       "vnd": 26574864702471572,
       "zar": 19359391275178.055,
       "xdr": 838447374155.3099,
       "xag": 48375169346.86372,
       "xau": 592798764.6932967,
       "bits": 47474825522507.914,
       "sats": 4747482552250791
     },
     "total_volume": {
       "btc": 3944742.499543713,
       "eth": 56029794.82972126,
       "ltc": 937107030.4008967,
       "bch": 672448108.9115587,
       "bnb": 285741393.39635724,
       "eos": 85887798693.54332,
       "xrp": 226751566203.69876,
       "xlm": 1007560999305.7894,
       "link": 12850802307.365082,
       "dot": 14030278068.269356,
       "yfi": 12004356.053189691,
       "usd": 94166072398.00937,
       "aed": 345871983917.88806,
       "ars": 17663038405249.57,
       "aud": 133059296948.41437,
       "bdt": 9988820656143.635,
       "bhd": 35491663517.17167,
       "bmd": 94166072398.00937,
       "brl": 475289973012.74365,
       "cad": 125445593330.74562,
       "chf": 86044342819.75317,
       "clp": 73449536470447.34,
       "cny": 633963665812.3569,
       "czk": 2050937056828.641,
       "dkk": 642394354274.153,
       "eur": 86323733556.55841,
       "gbp": 76990651622.97444,
       "hkd": 738633681088.148,
       "huf": 33298100078771.117,
       "idr": 1404749714439831.5,
       "ils": 319274776769.07025,
       "inr": 7729871781214.571,
       "jpy": 12119500620426.172,
       "krw": 115403012039710.88,
       "kwd": 28728750363.61905,
       "lkr": 34463227062487.54,
       "mmk": 197739836486250.84,
       "mxn": 1756150167186.6736,
       "myr": 399829143401.9487,
       "ngn": 43367242982179.234,
       "nok": 945994340797.9203,
       "nzd": 145435167179.39487,
       "php": 5076210088095.182,
       "pkr": 25448381065562.023,
       "pln": 404666360374.9624,
       "rub": 6597745862566.504,
       "sar": 353366661620.0457,
       "sek": 976774593214.8035,
       "sgd": 123342770768.02547,
       "thb": 3109316627546.0684,
       "try": 1770821241266.284,
       "twd": 2797532667670.1875,
       "uah": 3460303241686.2515,
       "vef": 9428848829.212654,
       "vnd": 2208138672605823.5,
       "zar": 1608595980880.1084,
       "xdr": 69667638670.79842,
       "xag": 4019553191.5062194,
       "xau": 49256389.14995068,
       "bits": 3944742499543.713,
       "sats": 394474249954371.3
     },
     "market_cap_percentage": {
       "btc": 40.61054176988909,
       "eth": 17.86445332327441,
       "usdt": 6.003625404139617,
       "bnb": 3.9203808080212252,
       "usdc": 3.7517685070105546,
       "xrp": 1.8615232488470832,
       "busd": 1.422581997321682,
       "ada": 1.2559486999344995,
       "doge": 1.1342845760404154,
       "matic": 0.9779239169678388
     },
     "market_cap_change_percentage_24h_usd": 4.2824933744691265,
     "updated_at": 1675369877
   }
 }
 
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
//        if let item = totalMarketCap.first(where: { (key, value) -> Bool in
//            return key == "usd"
//        }) {
//            return ".\(item.value)"
//        }
        
        if let item = totalMarketCap.first(where: {$0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: {$0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: {$0.key == "btc"}) {
            return item.value.asPercentString()
        }
        return ""
    }
}
