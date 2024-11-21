import Cocoa

if let pasteboardItems = NSPasteboard.general.pasteboardItems {
    print("Количество элементов в буфере: \(pasteboardItems.count)")

    if let firstItem = pasteboardItems.first {
        print("Доступные типы данных: \(firstItem.types)")

        if let imageData = firstItem.data(forType: .png) {
            if let nsImage = NSImage(data: imageData) {
                print("Скриншот перехвачен из буфера обмена")
                
                if let imageRep = nsImage.representations.first as? NSBitmapImageRep,
                   let pngData = imageRep.representation(using: .png, properties: [:]) {
                    let filePath = "/tmp/swift.png"  
                    do {
                        try pngData.write(to: URL(fileURLWithPath: filePath))
                        print("Изображение сохранено по пути: \(filePath)")
                    } catch {
                        print("Ошибка при сохранении изображения: \(error)")
                    }
                }
            } else {
                print("Не удалось создать NSImage из data")
            }
        } else {
            if let imageData = firstItem.data(forType: .tiff) {
                if let nsImage = NSImage(data: imageData) {
                    print("Скриншот перехвачен из буфера обмена как TIFF")

                    if let imageRep = nsImage.representations.first as? NSBitmapImageRep,
                       let pngData = imageRep.representation(using: .png, properties: [:]) {
                        let filePath = "/tmp/screenshot.png"  
                        do {
                            try pngData.write(to: URL(fileURLWithPath: filePath))
                            print("Изображение сохранено по пути: \(filePath)")
                        } catch {
                            print("Ошибка при сохранении изображения: \(error)")
                        }
                    }
                } else {
                    print("Не удалось создать NSImage из data в формате TIFF")
                }
            } else {
                print("Первый элемент не содержит данных для .png и .tiff")
            }
        }
    } else {
        print("Нет первых элементов в буфере обмена")
    }
} else {
    print("Буфер обмена пуст или недоступен")
}
