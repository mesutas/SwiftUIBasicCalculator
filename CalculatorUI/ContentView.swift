//
//  ContentView.swift
//  CalculatorUI
//
//  Created by Mesut As on 22.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State var firstNumber : String = ""
    @State var secondNumber : String = ""
    @State var result = 0.0
    
    var body: some View {
       
        
        VStack {
      
            Label ("SwiftUI\nBasit Hesap Makinası",systemImage: "x.squareroot")
            
                .font(.headline)
                .foregroundColor(.green)
                .padding()
                .frame(width: 300,height: 100)
                
                
            
            TextField("İlk Sayıyı Girin", text: $firstNumber)
                .keyboardType(.numberPad)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(15)
                .padding()
        
            TextField("İkinci Sayıyı Girin", text: $secondNumber)
                .keyboardType(.numberPad)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(15)
                .padding()
//                
//            Button("+") {
//
//                
//            }.font(.largeTitle)
            
            HStack {
                Button("+", action: {
                    if let number1 = Double (firstNumber), let number2 = Double (secondNumber){
                        result = number1 + number2
                    }
                    
                }).padding()
                    .font(.largeTitle)
                    .frame(width: 55)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(15)
                    
            
                
                Button("-", action: {
                    if let number1 = Double (firstNumber), let number2 = Double (secondNumber){
                        result = number1 - number2
                    }
                    
                }).padding()
                    .font(.largeTitle)
                    .frame(width: 55)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(15)
                
                Button("*", action: {
                    if let number1 = Double (firstNumber), let number2 = Double (secondNumber){
                        result = number1 * number2
                    }
                    
                }).padding()
                    .font(.largeTitle)
                    .frame(width: 55)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(15)
                
                Button("/", action: {
                    if let number1 = Double (firstNumber), let number2 = Double (secondNumber){
                        result = number1 / number2
                    }
                    
                }).padding()
                    .font(.largeTitle)
                    .frame(width: 55)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(15)
            }
    
            
//            Text ("Sonuç: \(result,specifier:"%.f")")
//                .padding()
//        
//
            Label ("Sonuç: \(result,specifier: "%.f")",systemImage: "")
                .font(.largeTitle)
                .foregroundColor(.green)
                .padding()
                .frame(width: 400,height: 100)
            
            
            Label{
                Text("Mesut As")
                    .font(.caption)
                    .foregroundColor(.green)
                  
            }icon: {
                Image(systemName: "equal")
                    .foregroundColor(.green)
                    .labelStyle(.iconOnly)
                    
                
            }
                
            
        }
            
        

        }
    
   
}

#Preview {
    ContentView()
}
