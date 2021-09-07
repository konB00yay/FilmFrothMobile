// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class AllArticlesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query AllArticles {
      blogPostCollection(order: date_DESC) {
        __typename
        items {
          __typename
          style
          path
          title
          date
          preview
          seoPic {
            __typename
            url
          }
          previewImage {
            __typename
            url
          }
          author
          content
        }
      }
    }
    """

  public let operationName: String = "AllArticles"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("blogPostCollection", arguments: ["order": "date_DESC"], type: .object(BlogPostCollection.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(blogPostCollection: BlogPostCollection? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "blogPostCollection": blogPostCollection.flatMap { (value: BlogPostCollection) -> ResultMap in value.resultMap }])
    }

    public var blogPostCollection: BlogPostCollection? {
      get {
        return (resultMap["blogPostCollection"] as? ResultMap).flatMap { BlogPostCollection(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "blogPostCollection")
      }
    }

    public struct BlogPostCollection: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["BlogPostCollection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(items: [Item?]) {
        self.init(unsafeResultMap: ["__typename": "BlogPostCollection", "items": items.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (resultMap["items"] as! [ResultMap?]).map { (value: ResultMap?) -> Item? in value.flatMap { (value: ResultMap) -> Item in Item(unsafeResultMap: value) } }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } }, forKey: "items")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["BlogPost"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("style", type: .scalar(Int.self)),
            GraphQLField("path", type: .scalar(String.self)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("date", type: .scalar(String.self)),
            GraphQLField("preview", type: .scalar(String.self)),
            GraphQLField("seoPic", type: .object(SeoPic.selections)),
            GraphQLField("previewImage", type: .object(PreviewImage.selections)),
            GraphQLField("author", type: .scalar(String.self)),
            GraphQLField("content", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(style: Int? = nil, path: String? = nil, title: String? = nil, date: String? = nil, preview: String? = nil, seoPic: SeoPic? = nil, previewImage: PreviewImage? = nil, author: String? = nil, content: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "BlogPost", "style": style, "path": path, "title": title, "date": date, "preview": preview, "seoPic": seoPic.flatMap { (value: SeoPic) -> ResultMap in value.resultMap }, "previewImage": previewImage.flatMap { (value: PreviewImage) -> ResultMap in value.resultMap }, "author": author, "content": content])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var style: Int? {
          get {
            return resultMap["style"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "style")
          }
        }

        public var path: String? {
          get {
            return resultMap["path"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "path")
          }
        }

        public var title: String? {
          get {
            return resultMap["title"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        public var date: String? {
          get {
            return resultMap["date"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "date")
          }
        }

        public var preview: String? {
          get {
            return resultMap["preview"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "preview")
          }
        }

        public var seoPic: SeoPic? {
          get {
            return (resultMap["seoPic"] as? ResultMap).flatMap { SeoPic(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "seoPic")
          }
        }

        public var previewImage: PreviewImage? {
          get {
            return (resultMap["previewImage"] as? ResultMap).flatMap { PreviewImage(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "previewImage")
          }
        }

        public var author: String? {
          get {
            return resultMap["author"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "author")
          }
        }

        public var content: String? {
          get {
            return resultMap["content"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "content")
          }
        }

        public struct SeoPic: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Asset"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("url", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(url: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Asset", "url": url])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var url: String? {
            get {
              return resultMap["url"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "url")
            }
          }
        }

        public struct PreviewImage: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Asset"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("url", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(url: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Asset", "url": url])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var url: String? {
            get {
              return resultMap["url"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "url")
            }
          }
        }
      }
    }
  }
}
