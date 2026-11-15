import Foundation

struct PricingOption: Identifiable, Hashable {
    let id: String
    let label: String
    /// Le créneau annoncé au client, par exemple « 9h – 13h ».
    let schedule: String
    /// Nombre de jours facturés pour les options au jour (casque, panier).
    /// La demi-journée et la journée comptent pour un, le week-end pour deux,
    /// la semaine pour sept.
    let billedDays: Int
    let price: Double

    var displayPrice: String {
        price.formatted(.currency(code: "EUR"))
    }
}
