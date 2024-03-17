(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_identitystore_group__external_ids = {
  id : string prop;  (** id *)
  issuer : string prop;  (** issuer *)
}

type aws_identitystore_group

type t = private {
  description : string prop;
  display_name : string prop;
  external_ids : aws_identitystore_group__external_ids list prop;
  group_id : string prop;
  id : string prop;
  identity_store_id : string prop;
}

val aws_identitystore_group :
  ?description:string prop ->
  ?id:string prop ->
  display_name:string prop ->
  identity_store_id:string prop ->
  string ->
  t
