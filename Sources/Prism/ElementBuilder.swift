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
    
    // MARK: Expression Builders

    public static func buildExpression(_ expression: PrismElement) -> PrismElement {
        expression
    }

    public static func buildExpression(_ expression: PrismElementConvertible) -> PrismElement {
        expression.prismElement
    }

    public static func buildExpression(_ expression: [PrismElement]) -> [PrismElement] {
        expression
    }

    public static func buildExpression(_ expression: [PrismElementConvertible]) -> [PrismElement] {
        expression.map { $0.prismElement }
    }

    // MARK: Conditional Builders

    public static func buildEither(first components: PrismElement...) -> [PrismElement] {
        components
    }

    public static func buildEither(second components: PrismElement...) -> [PrismElement] {
        components
    }

    public static func buildEither(first components: [PrismElement]...) -> [PrismElement] {
        components.flatMap { $0 }
    }

    public static func buildEither(second components: [PrismElement]...) -> [PrismElement] {
        components.flatMap { $0 }
    }
    
    // MARK: Optionnal Builders
    
    public static func buildOptional(_ component: [PrismElement]?) -> [PrismElement] {
        component ?? []
    }
}
