//
//  ContentView.swift
//  CurrencyProject
//
//  Created by Aravinth on 12/10/22.
//

import SwiftUI

struct ContentView: View {

    
    
    @State private var itemSelected = 0
    @State private var itemSelected2 = 2
    @State private var amount:String=""
    private let currencies=["USD","EUR","INR"]

    
    func convert(_ convert:String)-> String{
        var conversion: Double = 1.0
        let amount = Double(convert.doubleValue) ?? 0.0
        let selectedCurrency = currencies[itemSelected]
        let to = currencies[itemSelected2]
       
        let euroRates = ["USD": 0.97, "EUR": 1.00,"INR": 79.80]
        let usdRates = [ "USD":1.00,"EUR": 1.03,"INR": 82.30]
        let indRates = ["USD": 0.012,"EUR": 0.013,"INR": 1.00]
       
        switch (selectedCurrency){
        case "USD" :
            conversion = amount * (usdRates[to] ?? 0.0)
        case "EUR" :
            conversion = amount * (euroRates[to] ?? 0.0)
        case "INR" :
            conversion = amount * (indRates[to] ?? 0.0)
        default:
            print ("Something went wrong! ")
        }
        return String(format: "%.2f",conversion)
    }

    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Convert a Currency")){
                    TextField("Enter amount",text:$amount)
                        .keyboardType(.decimalPad)
                    Picker(selection: $itemSelected, label: Text("From")){
                        ForEach (0 ..< currencies.count){index in
                            Text(self.currencies[index]).tag(index)
                        }
                    }
                    Picker(selection: $itemSelected2, label: Text("To")){
                        ForEach (0 ..< currencies.count){index in
                            Text(self.currencies[index]).tag(index)
                        }
                    }
                    
                }
                Section(header: Text("Conversion")){
                     Text("\(convert(amount)) \(currencies[itemSelected2])")
                }
                
                Section {
                                   
                                }  footer: {

                                    Text("Developed By Aravinth")
                                }
                .listStyle(.insetGrouped)
                            .navigationTitle("Converter Pro +")
            }
            
        }
        
    }
    
    
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
