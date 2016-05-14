//
//  _Section.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import AssociatedValues

public protocol _Section : class {
    weak var collection: CollectionInterface? { get set }
}

extension _Section {
    
    public var collection: CollectionInterface? {
        get {
            return getAssociatedValueForProperty("collection", ofObject: self)
        }
        set {
            setWeakAssociatedValue(newValue as? AnyObject, forProperty: "collection", ofObject: self)
        }
    }
    
    var _collection: CollectionInterface {
        return collection!
    }
    
}

