(* Smoke test: the toolchain and MathComp Analysis are available. *)
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Prelude.
Variable R : realType.

Lemma cvg_cst_prelude (x : R) : (fun _ : nat => x) @ \oo --> x.
Proof. exact: cvg_cst. Qed.

End Prelude.
