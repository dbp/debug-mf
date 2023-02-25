namespace HW7

inductive Nat where
  | zero : Nat
  | succ (n : Nat) : Nat

def Nat.add : Nat → Nat → Nat
  | Nat.zero, b   => b
  | Nat.succ a, b => Nat.succ (Nat.add a b)

def addtail (n m : Nat) : Nat :=
  match n, m with
  | Nat.zero, m => m
  | Nat.succ n', m => addtail n' (Nat.succ m)

theorem add_eq : forall n m, Nat.add n m = addtail n m := 
 by intro n
    induction n
    case zero => intro m; simp only [Nat.add, addtail]
    case succ n IH => sorry

end HW7