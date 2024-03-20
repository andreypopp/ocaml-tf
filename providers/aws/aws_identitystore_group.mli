(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type external_ids = {
  id : string prop;  (** id *)
  issuer : string prop;  (** issuer *)
}

type aws_identitystore_group

val aws_identitystore_group :
  ?description:string prop ->
  ?id:string prop ->
  display_name:string prop ->
  identity_store_id:string prop ->
  unit ->
  aws_identitystore_group

val yojson_of_aws_identitystore_group :
  aws_identitystore_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  display_name : string prop;
  external_ids : external_ids list prop;
  group_id : string prop;
  id : string prop;
  identity_store_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  display_name:string prop ->
  identity_store_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  display_name:string prop ->
  identity_store_id:string prop ->
  string ->
  t Tf_core.resource
