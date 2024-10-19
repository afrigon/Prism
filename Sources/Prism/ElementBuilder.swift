//
// ElementBuilder.swift
// Prism
//

@resultBuilder
public enum ElementBuilder {

    // MARK: Block Builders
    
    static func buildBlock(_ components: PrismElement...) -> [PrismElement] {
        components
    }
    
    static func buildBlock(_ components: PrismElementConvertible...) -> [PrismElement] {
        components.map(\.prismElement)
    }

    public static func buildPartialBlock(first: PrismElement) -> PrismElement {
        first
    }
    
    public static func buildPartialBlock(accumulated: [PrismElement], next: PrismElement) -> [PrismElement] {
        accumulated + [next]
    }
    
    public static func buildPartialBlock(first: PrismElementConvertible) -> PrismElement {
        first.prismElement
    }
    
    public static func buildPartialBlock(accumulated: [PrismElement], next: PrismElementConvertible) -> [PrismElement] {
        accumulated + [next.prismElement]
    }

//    public static func buildBlock(_ components: PrismElement...) -> [PrismElement] {
//        components
//    }
//    
//    public static func buildBlock(_ components: [PrismElement]...) -> [PrismElement] {
//        components.flatMap { $0 }
//    }
//
//    public static func buildBlock(_ components: PrismElementConvertible...) -> [PrismElement] {
//        components.map(\.prismElement)
//    }
//    
//    // MARK: Conditional Builders
//
//    public static func buildEither(first components: PrismElement...) -> [PrismElement] {
//        components
//    }
//
//    public static func buildEither(second components: PrismElement...) -> [PrismElement] {
//        components
//    }
//
//    // MARK: Optionnal Builders
//    
//    public static func buildOptional(_ component: [PrismElement]?) -> [PrismElement] {
//        component ?? []
//    }
}
