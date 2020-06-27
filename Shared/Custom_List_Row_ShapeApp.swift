
import SwiftUI

@main
struct Custom_List_Row_ShapeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(items: [
                Item(name: "Red", color: .red),
                Item(name: "Yellow", color: .yellow),
                Item(name: "Blue", color: .blue),
                Item(name: "Orange", color: .orange),
                Item(name: "Pink", color: .pink),
                Item(name: "Purple", color: .purple),
                Item(name: "Green", color: .green),
                Item(name: "Red", color: .red),
                Item(name: "Yellow", color: .yellow),
                Item(name: "Blue", color: .blue),
                Item(name: "Orange", color: .orange),
                Item(name: "Pink", color: .pink),
                Item(name: "Purple", color: .purple),
                Item(name: "Green", color: .green),
            ])
        }
    }
}
