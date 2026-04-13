import SwiftUI

struct LaunchView: View {
    @Binding var showLaunch: Bool
    @State private var isVisible = false

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.blue.opacity(0.6), Color.purple.opacity(0.5)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 24) {
                Image(systemName: "checkmark.circle.fill")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)

                Text("Advanced ToDo")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)

                Text("COMP3097 – Group G9")
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.9))

                VStack(alignment: .leading, spacing: 8) {
                    Text("Pratik Pokhrel – 101487514")
                    Text("Khalid Wasim Mushir – 101514568")
                    Text("Vaishnavi Vodapalli – 101504750")
                }
                .font(.caption)
                .foregroundStyle(.white.opacity(0.85))
                .padding(.top, 8)
            }
            .padding()
            .scaleEffect(isVisible ? 1 : 0.92)
            .opacity(isVisible ? 1 : 0)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.4)) {
                isVisible = true
            }
            // Show the main app after 2.5 seconds.
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation { showLaunch = false }
            }
        }
    }
}

#Preview {
    LaunchView(showLaunch: .constant(true))
}
