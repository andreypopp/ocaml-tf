(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_mongodbatlas_secret_role

val vault_mongodbatlas_secret_role :
  ?cidr_blocks:string prop list ->
  ?id:string prop ->
  ?ip_addresses:string prop list ->
  ?max_ttl:string prop ->
  ?namespace:string prop ->
  ?organization_id:string prop ->
  ?project_id:string prop ->
  ?project_roles:string prop list ->
  ?ttl:string prop ->
  mount:string prop ->
  name:string prop ->
  roles:string prop list ->
  unit ->
  vault_mongodbatlas_secret_role

val yojson_of_vault_mongodbatlas_secret_role : vault_mongodbatlas_secret_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cidr_blocks : string list prop;
  id : string prop;
  ip_addresses : string list prop;
  max_ttl : string prop;
  mount : string prop;
  name : string prop;
  namespace : string prop;
  organization_id : string prop;
  project_id : string prop;
  project_roles : string list prop;
  roles : string list prop;
  ttl : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cidr_blocks:string prop list ->
  ?id:string prop ->
  ?ip_addresses:string prop list ->
  ?max_ttl:string prop ->
  ?namespace:string prop ->
  ?organization_id:string prop ->
  ?project_id:string prop ->
  ?project_roles:string prop list ->
  ?ttl:string prop ->
  mount:string prop ->
  name:string prop ->
  roles:string prop list ->
  string ->
  t

val make :
  ?cidr_blocks:string prop list ->
  ?id:string prop ->
  ?ip_addresses:string prop list ->
  ?max_ttl:string prop ->
  ?namespace:string prop ->
  ?organization_id:string prop ->
  ?project_id:string prop ->
  ?project_roles:string prop list ->
  ?ttl:string prop ->
  mount:string prop ->
  name:string prop ->
  roles:string prop list ->
  string ->
  t Tf_core.resource
