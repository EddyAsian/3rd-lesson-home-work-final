
import Foundation

// Программа прогноза погоды

print(" Пожалуйста, выберите город Кыргызстана")

let name = readLine()
if name == "Бишкек" {
        print("Погода на ближайшие 3 дня: Сегодня - 29°, солнечно. Ночью 16°. Завтра - 25°, облачно, ночью 17°. Послезавтра - 24°, без осадков, ночью 13°")
    }else if name == "Чолпон-Ата" {
        print("Погода на ближайшие 3 дня: Сегодня - 18°, солнечно. Ночью 13°. Завтра - 19°, облачно, ночью 13°. Послезавтра - 19°, без осадков, ночью 13°")
    }else if name == "Талас" {
        print("Погода на ближайшие 3 дня: Сегодня - 26°, солнечно. Ночью 13°. Завтра - 28°, облачно, ночью 13°. Послезавтра - 26°, без осадков, ночью 12°")
    }else if name == "Ош" {
        print("Погода на ближайшие 3 дня: Сегодня - 28°, солнечно. Ночью 16°. Завтра - 29°, облачно, ночью 17°. Послезавтра - 28°, без осадков, ночью 16°")

    }else if name == "Джалал-Абад" {
        print("Погода на ближайшие 3 дня: Сегодня - 31°, солнечно. Ночью 16°. Завтра - 31°, облачно, ночью 17°. Послезавтра - 29°, без осадков, ночью 16°")
    }else if name == "Нарын" {
        print("Погода на ближайшие 3 дня: Сегодня - 30°, солнечно. Ночью 15°. Завтра - 31°, облачно, ночью 17°. Послезавтра - 29°, без осадков, ночью 16°")
    }else if name == "Баткен" {
        print("Погода на ближайшие 3 дня: Сегодня - 28°, солнечно. Ночью 15°. Завтра - 27°, облачно, ночью 15°. Послезавтра - 28°, без осадков, ночью 16°")

    } else {
        print("ВЫберите другой город")
    }


 


//// Вторая часть Д/З - Программа для итоговой стоимости покупок со скидкой в 5 %

let cigarettes = 120 // начальные базовые данные
let strawberry = 201
let asu = 65
let cookie = 188
let bread = 30

var cigarettesCount = 0
var strawberryCount = 0
var asuCount = 0
var cookieCount = 0
var breadCount = 0

var total = 0.0
var discount = 0.0

// скидка

var price = ""
// price все помещает в 1 строку удобен

func Finalbasket(cost: Int, name: String) {
    
    //в стоимость добавляет цену
  
    total += Double(cost)
    price += "\(name) - \(cost) сом\n"
}

//функция для получения стоимости цены и конвертации русских букв  в англ


print("Здравствуйте, введите название товара. Продаются 5 видов: Сигареты, Клубника, Асу, Печенье, Хлеб")

let product = readLine()!
Finalbasket(cost: getEnglishAndCost(name: product), name: product.lowercased())
//  тоже самое что и addToBag(cost: 50, name: product.lowercased())
// getEnglishAndCost(name: product) -> первая часть стоимость,
// name: product) -> название

let product2 = readLine()!
Finalbasket(cost: getEnglishAndCost(name: product2), name: product2.lowercased())
let product3 = readLine()!
Finalbasket(cost: getEnglishAndCost(name: product3), name: product3.lowercased())
let product4 = readLine()!
Finalbasket(cost: getEnglishAndCost(name: product4), name: product4.lowercased())
let product5 = readLine()!
Finalbasket(cost: getEnglishAndCost(name: product5), name: product5.lowercased())
discount = total * 0.05


func getEnglishAndCost(name: String) -> Int{
    if name.lowercased() == "сигареты" {
        // lowercased все приводит к обычным буквам даже если писались строчные и прописные
        cigarettesCount += 1
        // += это total плюс что нибудь
        return cigarettes
    }else if name.lowercased() == "клубника" {
        strawberryCount += 1
        return strawberry
    }else if name.lowercased() == "асу" {
        asuCount += 1
        return asu
    }else if name.lowercased() == "печенье" {
        cookieCount += 1
        return cookie
    }else if name.lowercased() == "хлеб" {
        breadCount += 1
        return bread
    }else{
        print("Извините, нет в наличии")
        print("Выберите другой товар")
        return 0
//        let product = readLine()!
//        return getEnglishAndCost(name: product)
    }
}



if cigarettesCount > 0 {
    price += "Всего \(cigarettesCount) пачка сигарет\n"
}
if strawberryCount > 0 {
    price += "Всего \(strawberryCount) кг клубники\n"
}
if asuCount > 0 {
    price += "Всего \(asuCount) Асу\n"
}
if cookieCount > 0 {
    price += "Всего \(cookieCount) кг печенья\n"
}
if breadCount > 0 {
    price += "Всего \(breadCount)  шт хлеба\n"
}
let FinalString = "Сумма за продукты \(total) сом. Cкидка = \(discount) \nИтоговая сумма = \(total - discount)"
print(price + FinalString)
