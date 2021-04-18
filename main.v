Require Import Arith.

Theorem Th1 :
forall (n : nat),
(exists m : nat, n = m * 2)
-> exists k : nat, n * 2 = k * 4.

Proof.
intros.
destruct H.
exists x.
rewrite H.
rewrite mult_assoc_reverse.
simpl.
reflexivity.
Qed.
