(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_identitystore_group__external_ids = {
  id : string;  (** id *)
  issuer : string;  (** issuer *)
}
[@@deriving yojson_of]

type aws_identitystore_group

val aws_identitystore_group :
  ?description:string ->
  display_name:string ->
  identity_store_id:string ->
  string ->
  unit
