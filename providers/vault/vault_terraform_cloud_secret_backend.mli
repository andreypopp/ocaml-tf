(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_terraform_cloud_secret_backend

val vault_terraform_cloud_secret_backend :
  ?address:string prop ->
  ?backend:string prop ->
  ?base_path:string prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?token:string prop ->
  unit ->
  vault_terraform_cloud_secret_backend

val yojson_of_vault_terraform_cloud_secret_backend : vault_terraform_cloud_secret_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address : string prop;
  backend : string prop;
  base_path : string prop;
  default_lease_ttl_seconds : float prop;
  description : string prop;
  disable_remount : bool prop;
  id : string prop;
  max_lease_ttl_seconds : float prop;
  namespace : string prop;
  token : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?address:string prop ->
  ?backend:string prop ->
  ?base_path:string prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?token:string prop ->
  string ->
  t

val make :
  ?address:string prop ->
  ?backend:string prop ->
  ?base_path:string prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?token:string prop ->
  string ->
  t Tf_core.resource
