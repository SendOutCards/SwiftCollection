//
//  SectionSource+CollectionSource.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

#if canImport(UIKit)
import UIKit

extension SectionSource where Self : CollectionSource {
    
    // Delegate
    
    public func shouldHighlightItemAtIndexPath(_ indexPath: IndexPath) -> Bool {
        return shouldHighlightItem(indexPath.item)
    }
    
    public func didHighlightItemAtIndexPath(_ indexPath: IndexPath) {
        didHighlightItem(indexPath.item)
    }
    
    public func didUnhighlightItemAtIndexPath(_ indexPath: IndexPath) {
        didUnhighlightItem(indexPath.item)
    }
    
    public func shouldSelectItemAtIndexPath(_ indexPath: IndexPath) -> Bool {
        return shouldSelectItem(indexPath.item)
    }
    
    public func shouldDeselectItemAtIndexPath(_ indexPath: IndexPath) -> Bool {
        return shouldDeselectItem(indexPath.item)
    }
    
    public func didSelectItemAtIndexPath(_ indexPath: IndexPath) {
        didSelectItem(indexPath.item)
    }
    
    public func didDeselectItemAtIndexPath(_ indexPath: IndexPath) {
        didDeselectItem(indexPath.item)
    }
    
    public func willDisplayCell(_ cell: UICollectionViewCell, forItemAtIndexPath indexPath: IndexPath) {
        willDisplayCell(cell, forItem: indexPath.item)
    }
    
    public func willDisplaySupplementaryView(_ view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: IndexPath) {
        willDisplaySupplementaryView(view, forElementKind: elementKind, forItem: indexPath.item)
    }
    
    public func didEndDisplayingCell(_ cell: UICollectionViewCell, forItemAtIndexPath indexPath: IndexPath) {
        didEndDisplayingCell(cell, forItem: indexPath.item)
    }
    
    public func didEndDisplayingSupplementaryView(_ view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: IndexPath) {
        didEndDisplayingSupplementaryView(view, forElementOfKind: elementKind, forItem: indexPath.item)
    }
    
    // Flow Layout Delegate
    
    public func sizeForItemAtIndexPath(_ indexPath: IndexPath) -> CGSize {
        return sizeForItem(indexPath.item)
    }
    
    public func insetForSectionAtIndex(_ section: Int) -> UIEdgeInsets {
        return inset
    }
    
    public func minimumLineSpacingForSectionAtIndex(_ section: Int) -> CGFloat {
        return minimumLineSpacing
    }
    
    public func minimumInteritemSpacingForSectionAtIndex(_ section: Int) -> CGFloat {
        return minimumInteritemSpacing
    }
    
    public func referenceSizeForHeaderInSection(_ section: Int) -> CGSize {
        return referenceSizeForHeader
    }
    
    public func referenceSizeForFooterInSection(_ section: Int) -> CGSize {
        return referenceSizeForFooter
    }
    
    // Data Source
    
    public func numberOfItemsInSection(_ section: Int) -> Int {
        return numberOfItems
    }
    
    public func cellForItemAtIndexPath(_ indexPath: IndexPath) -> UICollectionViewCell {
        return cellForItem(indexPath.item)
    }
    
    public func viewForSupplementaryElementOfKind(_ kind: String, atIndexPath indexPath: IndexPath) -> UICollectionReusableView {
        return viewForSupplementaryElementOfKind(kind, item: indexPath.item)
    }
    
}
#endif
