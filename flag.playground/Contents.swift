import Foundation

//
//  Nations.swift
//  TableSample
//
//  Created by Kiyong Kim on 2017. 8. 21..
//  Copyright © 2017년 KPU ios app dev. All rights reserved.
//

import Foundation

//Nations.contintents[0].countries[0].file

struct Nations {
    static let contintents: [(region:String, countries:[(name:String, file:String)])] = [
        (region:"Africa, Middle East, and India",
         countries:[(name:"Armenia", file:"armenia"),
                    (name:"Botswana", file:"botswana"),
                    (name:"Bahrain", file:"bahrain"),
                    (name:"Cameroun", file:"cameroon"),
                    (name:"Centre Afrique", file:"central_african_republic"),
                    (name:"Côte d'Ivoire", file:"cotedivoire"),
                    (name:"Egypt", file:"egypt"),
                    (name:"Guinea-Bissau", file:"guinea_bisseau"),
                    (name:"Guinée", file:"guinea"),
                    (name:"Guinée Equatoriale", file:"equatorial_guinea"),
                    (name:"India", file:"india"),
                    (name:"Israel", file:"israel"),
                    (name:"Jordan", file:"jordan"),
                    (name:"Kenya", file:"kenya"),
                    (name:"Kuwait", file:"kuwait"),
                    (name:"Madagascar", file:"madagascar"),
                    (name:"Mali", file:"mali"),
                    (name:"Maroc", file:"morocco"),
                    (name:"Mauritius", file:"mauritius"),
                    (name:"Mozambique", file:"mozambique"),
                    (name:"Niger", file:"niger"),
                    (name:"Nigeria", file:"nigeria"),
                    (name:"Oman", file:"oman"),
                    (name:"Qatar", file:"qatar"),
                    (name:"Saudi Arabia", file:"saudi_arabia"),
                    (name:"Sénégal", file:"senegal"),
                    (name:"South Africa", file:"south_africa"),
                    (name:"Tunisie", file:"tunisia"),
                    (name:"Uganda", file:"uganda"),
                    (name:"United Arab Emirates", file:"united_arab_emirates"),
                    ]),
        (region:"Asia Pacific",
         countries:[(name:"Australia", file:"australia"),
                    (name:"中国", file:"china"),
                    (name:"Hong Kong (English)", file:"hong_kong"),
                    (name:"香港", file:"hong_kong"),
                    (name:"Indonesia", file:"indonesia"),
                    (name:"日本", file:"japan"),
                    (name:"대한민국🇰🇷", file:"south_korea"),
                    (name:"Malaysia", file:"malaysia"),
                    (name:"New Zealand", file:"new_zealand"),
                    (name:"Philippines", file:"philippines"),
                    (name:"Singapore", file:"singapore"),
                    (name:"台灣", file:"taiwan"),
                    (name:"Thailand", file:"thailand"),
                    (name:"Vietnam", file:"vietnam"),
                    (name:"Other Asia", file:"generic"),
                    ]),
        (region:"Europe",
         countries:[(name:"België", file:"belgium"),
                    (name:"Belgique", file:"belgium"),
                    (name:"България", file:"bulgaria"),
                    (name:"Česká republika", file:"czech_republic"),
                    (name:"Danmark", file:"denmark"),
                    (name:"Deutschland", file:"germany"),
                    (name:"Eesti", file:"estonia"),
                    (name:"España", file:"spain"),
                    (name:"France", file:"france"),
                    (name:"Greece", file:"greece"),
                    (name:"Hrvatska", file:"croatia"),
                    (name:"Ireland", file:"ireland"),
                    (name:"Italia", file:"italy"),
                    (name:"Latvija", file:"latvia"),
                    (name:"Liechtenstein", file:"liechtenstein"),
                    (name:"Lietuva", file:"lithuania"),
                    (name:"Luxembourg", file:"luxembourg"),
                    (name:"Macedonia", file:"macedonia"),
                    (name:"Magyarország", file:"hungary"),
                    (name:"Malta", file:"malta"),
                    (name:"Moldova", file:"moldova"),
                    (name:"Montenegro", file:"montenegro"),
                    (name:"Nederland", file:"netherlands"),
                    (name:"Norge", file:"norway"),
                    (name:"Österreich", file:"austria"),
                    (name:"Polska", file:"poland"),
                    (name:"Portugal", file:"portugal"),
                    (name:"România", file:"romania"),
                    (name:"Россия", file:"russia"),
                    (name:"Slovakia", file:"slovak_republic"),
                    (name:"Slovenia", file:"slovenia"),
                    (name:"Schweiz", file:"switzerland"),
                    (name:"Suisse", file:"switzerland"),
                    (name:"Suomi", file:"finland"),
                    (name:"Sverige", file:"sweden"),
                    (name:"Türkiye", file:"turkey"),
                    (name:"UK", file:"uk"),
                    ]),
        (region:"Latin America and the Caribbean",
         countries:[(name:"Anguilla", file:"anguilla"),
                    (name:"Antigua & Barbuda", file:"antigua"),
                    (name:"Argentina", file:"argentina"),
                    (name:"Barbados", file:"barbados"),
                    (name:"Belize", file:"belize"),
                    (name:"Bermuda", file:"bermuda"),
                    (name:"Bolivia", file:"bolivia"),
                    (name:"Brasil", file:"brazil"),
                    (name:"British Virgin Islands", file:"british-virgin-islands"),
                    (name:"Cayman Islands", file:"cayman-islands"),
                    (name:"Chile", file:"chile"),
                    (name:"Colombia", file:"colombia"),
                    (name:"Costa Rica", file:"costa_rica"),
                    (name:"Dominica", file:"dominica"),
                    (name:"República Dominicana", file:"dominican_republic"),
                    (name:"Ecuador", file:"ecuador"),
                    (name:"El Salvador", file:"el_salvador"),
                    (name:"Grenada", file:"grenada"),
                    (name:"Guatemala", file:"guatemala"),
                    (name:"Guyana", file:"guyana"),
                    (name:"Honduras", file:"honduras"),
                    (name:"Jamaica", file:"jamaica"),
                    (name:"México", file:"mexico"),
                    (name:"Montserrat", file:"montserrat"),
                    (name:"Nicaragua", file:"nicaragua"),
                    (name:"Panamá", file:"panama"),
                    (name:"Paraguay", file:"paraguay"),
                    (name:"Perú", file:"peru"),
                    (name:"St. Kitts & Nevis", file:"st-kitts-nevis"),
                    (name:"St. Lucia", file:"st-lucia"),
                    (name:"St. Vincent & The Grenadines", file:"st-vincent"),
                    (name:"Suriname", file:"suriname"),
                    (name:"The Bahamas", file:"bahamas"),
                    (name:"Trinidad & Tobago", file:"trinidad"),
                    (name:"Turks & Caicos", file:"turks_caicos"),
                    (name:"Uruguay", file:"uruguay"),
                    (name:"Venezuela", file:"venezuela"),
                    (name:"América Latina y el Caribe (español)", file:"generic"),
                    (name:"Latin America and the Caribbean (English)", file:"generic"),
                    ]),
        (region:"The United States, Canada, and Puerto Rico",
         countries:[(name:"Canada (English)", file:"canada"),
                    (name:"Canada (Français)", file:"canada"),
                    (name:"Puerto Rico (English)", file:"puerto_rico"),
                    (name:"Puerto Rico (español)", file:"puerto_rico"),
                    (name:"USA", file:"usa"),
                    ]),
        ]
}
for continent in Nations.contintents {
    print("Region(title: \"\(continent.region)\", countries: [")
    for country in continent.countries {
        print("\tCountry(name: \"\(country.name)\", file: \"\(country.file)\"),")
    }
    print("]),")
}
struct Country {
    let name: String
    let file: String
}
struct Region {
    let title: String
    let countries: [Country]
    static let all: [Region] = [
        
    ]
}
