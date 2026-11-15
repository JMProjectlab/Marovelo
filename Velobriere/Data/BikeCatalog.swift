import Foundation

/// Catalogue des vélos proposés à la réservation.
///
/// Le premier modèle référencé est le Decathlon E-ACTV 100 LF C2. Les
/// caractéristiques techniques précises (autonomie, poids, tailles de cadre…)
/// ne sont volontairement pas listées ici : la fiche produit Decathlon
/// (lien ci-dessous) n'a pas pu être récupérée automatiquement (accès
/// restreint sur decathlonpro.fr), donc l'app renvoie vers la page officielle
/// plutôt que d'afficher des chiffres non vérifiés. Les tarifs, eux, sont
/// ceux communiqués par Mar'O Velo — antivol inclus avec chaque vélo, casque
/// et panier en option à 1 € par jour et par vélo, livraison en option
/// (+15 €, rayon de 15 km).
enum BikeCatalog {
    static let eActv100 = Bike(
        id: "e-actv-100-lf-c2",
        brand: "Decathlon",
        name: "E-ACTV 100 LF C2",
        tagline: "Vélo à assistance électrique, cadre bas",
        highlights: [
            "Cadre bas, facile à enfourcher",
            "Assistance électrique pour rouler sans effort",
            "Confortable pour les balades autour de la Brière",
            "Idéal pour découvrir marais, villages et chemins",
            "Deux tailles : S/M et L/XL, deux exemplaires de chaque",
            "Antivol inclus avec chaque vélo",
            "Casque et panier en option, 1 € par jour"
        ],
        variants: [
            BikeVariant(id: "sm",  size: "S / M",  colorName: "Vert sauge", imageName: "BikeSM",  units: 2),
            BikeVariant(id: "lxl", size: "L / XL", colorName: "Blanc",      imageName: "BikeLXL", units: 2)
        ],
        pricingOptions: [
            PricingOption(id: "half-day", label: "Demi-journée", schedule: "9h – 13h", billedDays: 1, price: 19),
            PricingOption(id: "day", label: "Journée", schedule: "9h – 19h", billedDays: 1, price: 29),
            PricingOption(id: "weekend", label: "Week-end", schedule: "Vendredi 19h au dimanche 19h", billedDays: 2, price: 59),
            PricingOption(id: "week", label: "Semaine", schedule: "7 jours consécutifs", billedDays: 7, price: 139)
        ],
        extras: [
            BikeExtra(id: "casque", label: "Casque", pricePerDay: 1),
            BikeExtra(id: "panier", label: "Panier", pricePerDay: 1)
        ],
        deliveryFee: 15,
        deliveryRadiusKm: 15,
        productURL: URL(string: "https://www.decathlonpro.fr/e-actv-100-lf-c2-id-8983925.html")
    )

    static let all: [Bike] = [eActv100]
}
