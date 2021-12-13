//
//  LoginView.swift
//  swiftUICourse
//
//  Created by emil kurbanov on 26.11.2021.
//

import SwiftUI
import Combine

struct LoginView: View {
    @State private var login: String = ""
    @State private var password: String = ""
    @State private var showInCorrectPasswordAlert: Bool = false
    @Binding var showUserView: Bool
    
    var body: some View {
       
        NavigationView {
            ZStack {
                GeometryReader { forms in
                   Image("imageTheme")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: forms.size.width, height: forms.size.height)
                }
                ScrollView {
                    VStack {
                        
                    Text("VK")
                            .foregroundColor(.gray)
                        
                    .padding(.top,32)
                    .font(.largeTitle)
                    .padding(EdgeInsets(top: 50, leading: 5, bottom: 20, trailing: 5))
                    VStack {
                 
                        HStack {
                            
                            Text("Login")
                                .foregroundColor(.teal)
                            Spacer()
                            SecureField("Login", text: $login)
                                .frame( maxWidth: 150)
                                .textInputAutocapitalization(.never)
                        }
                        HStack{
                            Text("Password")
                                .foregroundColor(.teal)
                            Spacer()
                            SecureField("Password", text: $password)
                                .frame(maxWidth: 150)
                        }
                    }
                    .frame(maxWidth: 250)
                    
                    Button(action: pushLoginPressed) {
                       Text("Войти")
                    }
                    .background(.blue)
                    .foregroundColor(.black)
                    
                        
                    .padding(EdgeInsets(top: 50, leading: 5, bottom: 20, trailing: 5))
                    .disabled(login.isEmpty || password.isEmpty)
                    Spacer()
                        Button(action: {
                            print("Регистрируемся")
                        }, label: {
                            Text("Забыли пароль?")
                        })
                            .autocapitalization(.none)
                            .frame(maxWidth: 250)
                            .padding()
                        Spacer()
                    }
            }
               
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .alert(isPresented: $showInCorrectPasswordAlert) {
                Alert(title: Text("Внимание"),
                      message: Text("Неверный логин или пароль! Попробуйте снова."),
                      dismissButton: .cancel())
        }
            .navigationBarHidden(true)
        }
      
        }
        
    private func pushLoginPressed () {
        if  login == "admin" && password == "123" {
            showUserView = true
        } else {
            //Если ошибка:
            showInCorrectPasswordAlert = true
        }
    }

    
    }
   

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(showUserView: .constant(false))
    }
}

