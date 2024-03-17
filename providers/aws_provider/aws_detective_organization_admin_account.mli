(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_detective_organization_admin_account
type t = private { account_id : string prop; id : string prop }

val aws_detective_organization_admin_account :
  ?id:string prop -> account_id:string prop -> string -> t
