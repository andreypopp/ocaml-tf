(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fms_admin_account__timeouts
type aws_fms_admin_account
type t = private { account_id : string prop; id : string prop }

val aws_fms_admin_account :
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:aws_fms_admin_account__timeouts ->
  string ->
  t
