//
//  main.swift
//  dz7
//
//  Created by Jarae on 9/12/22.
//

import Foundation

//№1. Составить программу, которая будет добавлять товары в базу данных товаров магазина.
//Учесть, что у некоторых товаров может не быть некоторых параметров

//Параметры:
//Название
//Производитель
//Вес
//Штрих-код
//Цена
//Скидка (если есть - указываете, если нет - nil)
//Наличие (если есть - указываете, если нет - nil)
//В конце вывести общее количество товаров (какого вида сколько товаров)
//и общую стоимость товаров магазина


var database = [[String?]]()

var product1 = [String?]()
    product1 = ["book", "knv", "250g", "111202", "10", "25" , "500"]
var product2 = [String?]()
    product2 = ["table", "knv", "200g", "111202", "100", nil , "130"]
var product3 = [String?]()
    product3 = ["bosoapok", "knv", "50g", "111202", "120", "20" , nil]
var product4 = [String?]()
    product4 = ["cookies", "knv", "20g", "111202", "145", nil , "50"]
var product5 = [String?]()
    product5 = ["water", "knv", "100g", "111202", "230", nil , nil]

database.append(product1)
database.append(product2)
database.append(product3)
database.append(product4)
database.append(product5)
//print(database)


var totalCount: Int = 0
print("Товар и количество")
for (_, item) in database.enumerated(){
    for (i, element) in item.enumerated(){
        if i == 0{
            print("Товар: \(element!)", terminator:" ")
        }else if i == 6{
            let count: String = element ?? "0"
            print("количество: \(count)")
            totalCount += Int(count) ?? 0
            //print(Int(count))
        }
    }
}
print("общее количество товаров: \(totalCount)")
    
totalCount = 0
for (_, item) in database.enumerated(){
    var count: Int = 0
    for (i, element) in item.enumerated(){
        
        if i == 4{
            let str: String = element ?? "0"
            count = Int(str) ?? 0
        }else if i == 5{
            let str: String = element ?? "0"
            let disc = Int(str) ?? 0
            count -= count * disc / 100
        }
    }
    totalCount += count
}
print("общая стоимость товаров магазина: \(totalCount)")


