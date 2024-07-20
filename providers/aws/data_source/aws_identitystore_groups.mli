(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type groups__external_ids = {
  id : string prop;  (** id *)
  issuer : string prop;  (** issuer *)
}

type groups = {
  description : string prop;  (** description *)
  display_name : string prop;  (** display_name *)
  external_ids : groups__external_ids list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** external_ids *)
  group_id : string prop;  (** group_id *)
  identity_store_id : string prop;  (** identity_store_id *)
}

type aws_identitystore_groups

val aws_identitystore_groups :
  identity_store_id:string prop -> unit -> aws_identitystore_groups

val yojson_of_aws_identitystore_groups :
  aws_identitystore_groups -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  groups : groups list prop;
  identity_store_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  identity_store_id:string prop ->
  string ->
  t

val make :
  identity_store_id:string prop -> string -> t Tf_core.resource
