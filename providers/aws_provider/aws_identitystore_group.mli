(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_identitystore_group__external_ids = {
  id : string prop;  (** id *)
  issuer : string prop;  (** issuer *)
}

type aws_identitystore_group

val aws_identitystore_group :
  ?description:string prop ->
  ?id:string prop ->
  display_name:string prop ->
  identity_store_id:string prop ->
  string ->
  unit
