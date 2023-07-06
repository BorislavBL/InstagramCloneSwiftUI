//
//  LoginView.swift
//  InstagramClone
//
//  Created by Borislav Lorinkov on 6.07.23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack{
            Spacer()
            
            VStack{
                Image("instagram")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
            }
            
            VStack{
                TextField("Enter your email", text: $viewModel.email)
                    .autocapitalization(.none)
                    .modifier(IGTextFieldModifier())
                
                SecureField("Password", text: $viewModel.password)
                    .modifier(IGTextFieldModifier())
            }
            
            Button {
                print("fp")
            } label: {
                Text("Forget Password?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.trailing, 28)
                    .padding(.top)
            }
            .frame(maxWidth:.infinity, alignment: .trailing)

            Button {
                Task{
                    try await viewModel.signIn()
                }
            } label: {
                Text("Login")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 44)
                    .foregroundColor(.white)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
                    
            }
            .padding(.vertical)
            
            
            HStack{
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                Text("OR")
                    .fontWeight(.semibold)
                    .font(.footnote)
            
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
            }
            .foregroundColor(.gray)
            
            HStack{
                Button {
                print("fb")
                }
                label: {
                    Image("facebook")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                }
                .padding(.top, 8)
            }
            
            Spacer()
            
            Divider()
            
            NavigationLink {
                AddEmailView()
                    .navigationBarBackButtonHidden(true)
                
            } label: {
                HStack(spacing: 3){
                    Text("Dont have an account?")
                    Text("Sign Up")
                        .fontWeight(.semibold)
                }
            }
            .padding(.vertical, 16)
            .font(.footnote)
            

        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(RegistrationViewModel())
    }
}
