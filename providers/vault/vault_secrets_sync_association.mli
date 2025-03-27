(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata = {
  sub_key : string prop;  (** sub_key *)
  sync_status : string prop;  (** sync_status *)
  updated_at : string prop;  (** updated_at *)
}

type vault_secrets_sync_association

val vault_secrets_sync_association :
  ?id:string prop ->
  ?namespace:string prop ->
  mount:string prop ->
  name:string prop ->
  secret_name:string prop ->
  type_:string prop ->
  unit ->
  vault_secrets_sync_association

val yojson_of_vault_secrets_sync_association : vault_secrets_sync_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  metadata : metadata list prop;
  mount : string prop;
  name : string prop;
  namespace : string prop;
  secret_name : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  mount:string prop ->
  name:string prop ->
  secret_name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  mount:string prop ->
  name:string prop ->
  secret_name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
