(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_macie2_organization_admin_account
type t = private { admin_account_id : string prop; id : string prop }

val aws_macie2_organization_admin_account :
  ?id:string prop -> admin_account_id:string prop -> string -> t
