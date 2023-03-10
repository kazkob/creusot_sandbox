(* This file is generated by Why3's Coq driver *)
(* Beware! Only edit allowed sections below    *)
Require Import BuiltIn.
Require BuiltIn.
Require int.Int.
Require int.Abs.
Require int.ComputerDivision.

(* Why3 assumption *)
Inductive ref (a:Type) :=
  | ref'mk : a -> ref a.
Axiom ref_WhyType : forall (a:Type) {a_WT:WhyType a}, WhyType (ref a).
Existing Instance ref_WhyType.
Arguments ref'mk {a}.

(* Why3 assumption *)
Definition contents {a:Type} {a_WT:WhyType a} (v:ref a) : a :=
  match v with
  | ref'mk x => x
  end.

(* Why3 goal *)
Theorem lemma_preserve_cd_sub'vc :
  forall (d:Numbers.BinNums.Z), forall (q:Numbers.BinNums.Z),
  forall (p:Numbers.BinNums.Z), ~ (d = 0%Z) -> (0%Z <= q)%Z -> (q <= p)%Z ->
  ((ZArith.BinInt.Z.rem p d) = 0%Z) -> ((ZArith.BinInt.Z.rem q d) = 0%Z) ->
  ((ZArith.BinInt.Z.rem (p - q)%Z d) = 0%Z).
(* Why3 intros d q p h1 h2 h3 h4 h5. *)
Proof.
  Local Open Scope Z_scope.
  intros d q p Hd Hq Hqp Hremp Hremq.
  assert (Z.rem (p - q + q) d = 0) as Hpqq by now rewrite Z.sub_add.
  rewrite Z.add_rem, Hremq, Z.add_0_r, Z.rem_rem in Hpqq; auto with zarith.
Qed.

