//
//  HeroViewModel.swift
//  Heroes Marvel vs DC

import Foundation

// MARK: - HeroModelElement
struct HeroMarvelModel: Codable {
    let id: Int
    let name: String
    let thumbnail: Thumbnail
}

// MARK: - Thumbnail
struct Thumbnail: Codable {
    let path: String
    let thumbnailExtension: String

    var url: String {
        return path + "." + thumbnailExtension
    }

    enum CodingKeys: String, CodingKey {
        case path
        case thumbnailExtension = "extension"
    }
}

typealias HeroModel = [HeroMarvelModel]
