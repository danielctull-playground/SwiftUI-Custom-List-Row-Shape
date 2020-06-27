
import SwiftUI

struct Item: Identifiable {
    var id: String { name }
    let name: String
    let color: Color
}

struct ContentView: View {

    let items: [Item]

    var body: some View {
        ScrollView {
            ForEach(items) { item in
                Text(item.name)
                    .padding(.horizontal)
                    .padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    .background(CurvedShape(radius: 30).fill(item.color))
            }
        }
        .background(Color.gray)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct CurvedShape: Shape {

    let radius: CGFloat

    func path(in rect: CGRect) -> Path {

        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.minY - radius))

        path.addArc(center: CGPoint(x: rect.minX + radius, y: rect.minY - radius),
                    radius: radius,
                    startAngle: Angle(degrees: 180),
                    endAngle: Angle(degrees: 90),
                    clockwise: true)

        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))

        path.addArc(center: CGPoint(x: rect.minX + radius, y: rect.maxY - radius),
                    radius: radius,
                    startAngle: Angle(degrees: 90),
                    endAngle: Angle(degrees: 180),
                    clockwise: false)

        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))

        return path
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
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
