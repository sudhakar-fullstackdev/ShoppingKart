

struct MockGenerator {
    static func getMockProducts() -> [Product] {
        return [
            Product(id: 1,
                    title: "Essence Mascara Lash Princess",
                    description: "The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
                    price: 10.10,
                    category: "beauty",
                    thumbnail: "https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/thumbnail.webp",
                    images: ["https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp"]),
            Product(id: 2,
                    title: "Eyeshadow Palette with Mirror",
                    description: "The Eyeshadow Palette with Mirror offers a versatile range of eyeshadow shades for creating stunning eye looks. With a built-in mirror, it's convenient for on-the-go makeup application.",
                    price: 9.99,
                    category: "beauty",
                    thumbnail: "https://cdn.dummyjson.com/product-images/beauty/eyeshadow-palette-with-mirror/thumbnail.webp",
                    images: ["https://cdn.dummyjson.com/product-images/beauty/eyeshadow-palette-with-mirror/1.webp"])
            
        ]
    }
}

