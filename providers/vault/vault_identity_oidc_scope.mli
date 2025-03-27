(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_oidc_scope

val vault_identity_oidc_scope :
  ?description:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?template:string prop ->
  name:string prop ->
  unit ->
  vault_identity_oidc_scope

val yojson_of_vault_identity_oidc_scope : vault_identity_oidc_scope -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  template : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?template:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?template:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
