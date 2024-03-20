(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_identitystore_group_membership

val aws_identitystore_group_membership :
  ?id:string prop ->
  group_id:string prop ->
  identity_store_id:string prop ->
  member_id:string prop ->
  unit ->
  aws_identitystore_group_membership

val yojson_of_aws_identitystore_group_membership :
  aws_identitystore_group_membership -> json

(** RESOURCE REGISTRATION *)

type t = private {
  group_id : string prop;
  id : string prop;
  identity_store_id : string prop;
  member_id : string prop;
  membership_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  group_id:string prop ->
  identity_store_id:string prop ->
  member_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  group_id:string prop ->
  identity_store_id:string prop ->
  member_id:string prop ->
  string ->
  t Tf_core.resource
