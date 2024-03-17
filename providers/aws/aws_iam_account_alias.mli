(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_account_alias
type t = private { account_alias : string prop; id : string prop }

val aws_iam_account_alias :
  ?id:string prop -> account_alias:string prop -> string -> t
