//
//  ContentView.swift
//  TaxCalculator
//
//  Created by Tetsurou Morishita on 2023/09/10.
//

import SwiftUI

struct ContentView: View {
    @State var inputText = ""
    // @State var tax8 = 0.0
    // @State var tax10 = 0.0
    
    var body: some View {
        //supaceの値を加えた一番上の表示関数
        VStack(spacing: 20) {
            TextField("ここに文字を入力" , text: $inputText)
                .keyboardType(.numberPad)
            //数値しか入力できないキーボードを入力
            //Button("計算"){
            //tax8 = (Double(inputText) ?? 0) * 0.08
            //inputText * 0.08は文字列になっているので数値型にしないといけない
            //Double(inputText)! * 0.08のままだとエラー落ちする。！が原因で　（）と ?? 0 を追記する
            //tax10 = (Double(inputText) ?? 0) * 0.1
            Text("価格: " + inputText)
            //別の表現としてText("価格: \(inputText)")　で中に変数を入れたいときは\を入れる
            Text("消費税8%: \((Double(inputText) ?? 0) * 0.08)")
            Text("消費税10%: \((Double(inputText) ?? 0) * 0.1)")
        }
        
        
        .padding()
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
