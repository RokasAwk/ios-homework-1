import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            VStack{
                
                Text("Instant Developer")
                    .font(.system(size: 40))
                    .foregroundStyle(.white)
                
                Text("Get help form exports in 15 minutes") .foregroundStyle(.white)
                
                BuildImageView()
                
                Text("Need help with coding problems? Register!")
                    .foregroundStyle(.white)
                
            }
            
            Spacer()
            
            BuildButton()
            
        }
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
        )
    }
}

#Preview {
    ContentView()
}

struct BuildImageView: View {
    var body: some View {
        HStack{
            Image("student")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image("tutor")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .padding(.horizontal, 40)
        .padding(.vertical, 15)
    }
}

struct BuildButton: View {
    var body: some View {
        VStack{
            Button{
                // sign up onPressed
            }label:{
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.indigo)
            .clipShape(RoundedRectangle(cornerRadius: 10)
            )
            
            Button{
                // log in onPressed
            }label:{
                Text("Log In")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.gray)
            .clipShape(RoundedRectangle(cornerRadius: 10)
            )
        }
    }
}
