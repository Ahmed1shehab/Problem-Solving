void main() {
  var solution = Solution();
  ListNode l1 = ListNode(1, ListNode(2, ListNode(4)));
  ListNode l2 = ListNode(1, ListNode(3, ListNode(4)));
  solution.mergeTwoLists(l1, l2);
  print(solution.mergeTwoLists(l1, l2));
}

class Solution {
  ListNode? mergeTwoLists(ListNode? l1, ListNode? l2) {
    ListNode dummyNodes = ListNode(0);
    ListNode current = dummyNodes;
    if (l1 == null)
      return l2;
    else if (l2 == null) return l1;
    //l1 = [1,2,4]   l2= [1,3,4]
    while (l1 != null && l2 != null) {
      if (l1.val <= l2.val) {
        current.next = l1;
        current = current.next!;
        l1 = l1.next;
      } else if (l1.val > l2.val) {
        current.next = l2;
        current = current.next!;
        l2 = l2.next;
      }
    }
    if (l1 != null) {
      current.next = l1;
    } else if (l2 != null) {
      current.next = l2;
    }
    return dummyNodes.next;
  }
}

class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}
