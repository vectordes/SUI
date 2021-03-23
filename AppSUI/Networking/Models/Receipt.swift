//
//  Receipt.swift
//  AppSUI
//
//  Created by loop on 11.03.2021.
//

import Foundation

struct Receipt: Decodable, Identifiable {
  var id,calories:Int
  var title,image,imageType,protein,fat,carbs: String
}
