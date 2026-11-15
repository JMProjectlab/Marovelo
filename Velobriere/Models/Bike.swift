import Foundation

/// Une option proposée à la réservation, facturée au jour et par vélo.
struct BikeExtra: Identifiable, Hashable {
    let id: String
    let label: String
    let pricePerDay: Double

    var displayPricePerDay: String {
        pricePerDay.formatted(.currency(code: "EUR"))
    }
}

struct Bike: Identifiable, Hashable {
    let id: String
    let brand: String
    let name: String
    let tagline: String
    let highlights: [String]
    let variants: [BikeVariant]
    let pricingOptions: [PricingOption]
    /// Options facturées au jour et par vélo. L'antivol, lui, est inclus avec
    /// chaque vélo : il n'est donc pas une option.
    let extras: [BikeExtra]
    let deliveryFee: Double
    let deliveryRadiusKm: Int
    /// Somme des exemplaires de toutes les tailles.
    var totalUnits: Int { variants.reduce(0) { $0 + $1.units } }
    let productURL: URL?

    /// Taille correspondant à l'identifiant, la première du catalogue à défaut
    /// (identifiant inconnu ou réservation antérieure aux deux tailles).
    func variant(withID id: String?) -> BikeVariant {
        variants.first { $0.id == id } ?? variants[0]
    }

    var sizesLabel: String {
        variants.map(\.size).joined(separator: " · ")
    }

    var startingPriceLabel: String {
        guard let lowest = pricingOptions.min(by: { $0.price < $1.price }) else { return "" }
        return "À partir de \(lowest.displayPrice)"
    }
}
