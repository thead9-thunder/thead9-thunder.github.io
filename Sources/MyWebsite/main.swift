import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct ThunderingDragon: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case recheck
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://thunderingdragon.com")!
    var name = "Thundering Dragon"
    var description = "Developing apps for Apple Platforms from Orlando, FL"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try ThunderingDragon().publish(withTheme: .dragon)
