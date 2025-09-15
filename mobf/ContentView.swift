//
//  ContentView.swift
//  mobf
//
//  Created by Рома Глущенко on 11.09.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainScreen()
                .tabItem {
                    Image(systemName: "house")
                    Text("Главная")
                }

            Text("Поиск")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }

            Text("Избранное")
                .tabItem {
                    Image(systemName: "star")
                    Text("Избранное")
                }

            Text("Уведомления")
                .tabItem {
                    Image(systemName: "bell")
                    Text("Уведомления")
                }

            Text("Профиль")
                .tabItem {
                    Image(systemName: "person")
                    Text("Профиль")
                }
        }
    }
}

private struct MainScreen: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                // Верхний цветной контейнер с текстом по центру
                Text("Hello!!!")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 20)
                    .background(Color.blue)

                Spacer()

                // Картинка по центру
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 220)
                    .foregroundColor(.gray)
                    .padding()

                Spacer()
            }

            // Плавающая кнопка справа по центру
            Button(action: {}) {
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold))
                    .frame(width: 56, height: 56)
                    .background(Color.accentColor)
                    .clipShape(Circle())
                    .shadow(color: .black.opacity(0.2), radius: 6, x: 0, y: 3)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
            .padding(.trailing, 20)
        }
    }
}

#Preview {
    ContentView()
}
