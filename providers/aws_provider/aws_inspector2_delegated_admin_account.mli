(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_inspector2_delegated_admin_account__timeouts
type aws_inspector2_delegated_admin_account

type t = private {
  account_id : string prop;
  id : string prop;
  relationship_status : string prop;
}

val aws_inspector2_delegated_admin_account :
  ?id:string prop ->
  ?timeouts:aws_inspector2_delegated_admin_account__timeouts ->
  account_id:string prop ->
  string ->
  t
