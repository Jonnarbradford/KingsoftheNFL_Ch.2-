import SwiftUI

struct ContentView: View {
    struct Logo: Hashable {
        var image: String
    }
    
    var Logos: [Logo] = [
        Logo(image:"NewYorkGiants"),Logo(image:"NewOrleansSaints"),Logo(image: "DallasCowboys"), Logo(image:"KansasCityChiefs"),
        Logo(image: "SeattleSeahawks"), Logo(image:"AtlantaFalcons"),
        Logo(image: "GreenBayPackers"), Logo(image:"TampaBay"),
        Logo(image: "CarolinaPanthers"), Logo(image:"LasVegasRaiders"),
        Logo(image: "LosAngelesChargers"), Logo(image: "ChicagoBears"),
        Logo(image:"DenverBroncos"),Logo(image:"MinnesotaVikings"),
        Logo(image:"MiamiDolphins"),Logo(image:"DetroitLions")
    ]
    
    @State private var isPageShowing: Bool = false
    let coachName = "Coach Name" // Replace with the actual coach's name
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    if isPageShowing {
                        VStack {
                            Image("FootballPlayers")
                                .resizable()
                                .scaledToFill()
                                .frame(height: 250)
                                .clipped()
                                .ignoresSafeArea()
                            
                            TabView {
                                ForEach(Logos, id: \.image) { logo1 in
                                    HStack {
                                        VStack {
                                            Image("DetroitLions")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 100, height: 100)
                                            Text("30")
                                                .padding()
                                        }
                                        Text("VS")
                                            .padding()
                                            .padding()
                                        
                                        VStack {
                                            Image(logo1.image)
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 100, height: 100)
                                            Text("26")
                                                .padding()
                                        }
                                    }
                                }
                            }
                            .tabViewStyle(.page)
                            
                            ScrollView {
                                VStack {
                                    Text("Opening Game")
                                        .font(.title)
                                        .padding()
                                    
                                    Text("Detroit Lions Vs New York Giants")
                                        .font(.headline)
                                        .multilineTextAlignment(.center)
                                        .padding()
                                    
                                    Text("It's opening day coach and the Lions are ready to play their hearts out for a victory. The energy is electric, and the entire city is counting on the Lions for a win.")
                                        .multilineTextAlignment(.center)
                                        .padding()
                                    
                                    Text("Good luck!")
                                        .font(.headline)
                                        .padding()
                                    
                                }
                            }
                        }
                        .navigationBarItems(
                            leading: Button(action: {
                                isPageShowing.toggle()
                            }) {
                                Image(systemName: "arrow.left")
                                    .foregroundColor(.blue)
                                    .imageScale(.large)
                            }
                        )
                    } else {
                        Button(action: {
                            isPageShowing.toggle()
                        }, label: {
                            Image("nfl-fantasy")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 400, height: 200)
                            
                        })
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
