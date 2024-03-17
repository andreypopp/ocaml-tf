(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_identitystore_group_membership

type t = private {
  group_id : string prop;
  id : string prop;
  identity_store_id : string prop;
  member_id : string prop;
  membership_id : string prop;
}

val aws_identitystore_group_membership :
  ?id:string prop ->
  group_id:string prop ->
  identity_store_id:string prop ->
  member_id:string prop ->
  string ->
  t
