//
//  LinkedList.swift
//  LinkedListExercises
//
//  Created by C4Q  on 10/24/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

public class Node<T> {
    var key: T
    var next: Node?
    init(key: T) {
        self.key = key
    }
}

public class LinkedList<T: Equatable> {
    var head: Node<T>?
    func printAllKeys() {
        var currentNode = head
        while currentNode != nil {
            print(currentNode!.key)
            currentNode = currentNode?.next
        }
    }

    var count: Int {
        var counter = 0
        var currentNode = head
        while currentNode != nil {
            counter += 1
            currentNode = currentNode!.next
        }
        return counter
        
    }
    func append(element newKey: T) {
        let newNode = Node(key: newKey)
        var currentNode = head
        guard self.head != nil else {
            self.head = newNode
            return
        }
        while currentNode?.next != nil {
            currentNode = currentNode!.next
        }
        currentNode?.next = newNode
    }
    
    func getNode(at index: Int) -> Node<T>? {
        var currentNode = head
        var currentIndex = 0
        while currentNode != nil {
            if currentIndex == index - 1 {
                return currentNode!
            }
        }
        return nil
    }
    
    func contains(element targetKey: T) -> Bool {
        var currentNode = head
        while currentNode != nil {
            if currentNode?.key == targetKey {
                return true
            }
            currentNode = currentNode!.next
        }
        return false
    }
    
    func equals(otherList: LinkedList<T>) -> Bool {
        var currentNode = head
        var newList = otherList.head
        let newListcount = otherList.count
        guard count == newListcount else {
            return false
        }
        while currentNode != nil {
            guard currentNode!.key == newList!.key else {
                return false
            }
            currentNode = currentNode?.next
            newList = newList?.next
        }
        return true
    }
    
    func toArr() -> [T] {
        var myNewArray = [T]()
        var currentNode = head
        while currentNode != nil {
            myNewArray.append(currentNode!.key)
            currentNode = currentNode!.next
        }
        return myNewArray
    }
    
    func reversed() -> LinkedList<T> {
        let newLinkedList = LinkedList<T>()
        let newArray = self.toArr().reversed()
        for i in newArray {
            newLinkedList.append(element: i)
        }
        return newLinkedList
    }
    
    func removeAll() {
        self.head = nil
    }
    
    //Challenge Questions
    func removeDuplicatesFromSortedList() {
        
    }
    
    static func mergeSortedLists<T>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
        return LinkedList<T>()
    }
    
    


}


