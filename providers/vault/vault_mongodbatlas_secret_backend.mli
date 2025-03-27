(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_mongodbatlas_secret_backend

val vault_mongodbatlas_secret_backend :
  ?id:string prop ->
  ?namespace:string prop ->
  mount:string prop ->
  private_key:string prop ->
  public_key:string prop ->
  unit ->
  vault_mongodbatlas_secret_backend

val yojson_of_vault_mongodbatlas_secret_backend : vault_mongodbatlas_secret_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  mount : string prop;
  namespace : string prop;
  path : string prop;
  private_key : string prop;
  public_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  mount:string prop ->
  private_key:string prop ->
  public_key:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  mount:string prop ->
  private_key:string prop ->
  public_key:string prop ->
  string ->
  t Tf_core.resource
