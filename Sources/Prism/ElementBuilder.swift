//
// ElementBuilder.swift
// Prism
//

@resultBuilder
public enum ElementBuilder {

    // MARK: Block Builders

    public static func buildBlock(_ components: PrismElement...) -> [PrismElement] {
        components
    }
    
    public static func buildBlock(_ components: [PrismElement]...) -> [PrismElement] {
        components.flatMap { $0 }
    }

    public static func buildBlock(_ components: PrismElementConvertible...) -> [PrismElement] {
        components.map(\.prismElement)
    }

    // MARK: Conditional Builders

    public static func buildEither(first components: PrismElement...) -> [PrismElement] {
        components
    }

    public static func buildEither(second components: PrismElement...) -> [PrismElement] {
        components
    }

    // MARK: Optionnal Builders
    
    public static func buildOptional(_ component: [PrismElement]?) -> [PrismElement] {
        component ?? []
    }
}
