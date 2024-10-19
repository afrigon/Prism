//
// ElementBuilder.swift
// Prism
//

@resultBuilder
public enum ElementBuilder {

    public static func buildPartialBlock(first: PrismElement...) -> [PrismElement] {
        first
    }
    
    public static func buildPartialBlock(accumulated: [PrismElement], next: PrismElement...) -> [PrismElement] {
        accumulated + next
    }
    
    public static func buildPartialBlock(first: [PrismElement]...) -> [PrismElement] {
        first.flatMap { $0 }
    }
    
    public static func buildPartialBlock(accumulated: [PrismElement], next: [PrismElement]...) -> [PrismElement] {
        accumulated + next.flatMap { $0 }
    }
    
    public static func buildPartialBlock(first: PrismElementConvertible...) -> [PrismElement] {
        first.map(\.prismElement)
    }
    
    public static func buildPartialBlock(accumulated: [PrismElement], next: PrismElementConvertible...) -> [PrismElement] {
        accumulated + next.map(\.prismElement)
    }
    
    public static func buildOptional(_ component: [PrismElement]?) -> [PrismElement] {
        component ?? []
    }
    
    public static func buildEither(first component: [PrismElement]) -> [PrismElement] {
        component
    }
    
    public static func buildEither(second component: [PrismElement]) -> [PrismElement] {
        component
    }
}
