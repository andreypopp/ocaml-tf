(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_aws_auth_backend_role_tag

val vault_aws_auth_backend_role_tag :
  ?allow_instance_migration:bool prop ->
  ?backend:string prop ->
  ?disallow_reauthentication:bool prop ->
  ?id:string prop ->
  ?instance_id:string prop ->
  ?max_ttl:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  role:string prop ->
  unit ->
  vault_aws_auth_backend_role_tag

val yojson_of_vault_aws_auth_backend_role_tag : vault_aws_auth_backend_role_tag -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allow_instance_migration : bool prop;
  backend : string prop;
  disallow_reauthentication : bool prop;
  id : string prop;
  instance_id : string prop;
  max_ttl : string prop;
  namespace : string prop;
  policies : string list prop;
  role : string prop;
  tag_key : string prop;
  tag_value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_instance_migration:bool prop ->
  ?backend:string prop ->
  ?disallow_reauthentication:bool prop ->
  ?id:string prop ->
  ?instance_id:string prop ->
  ?max_ttl:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  role:string prop ->
  string ->
  t

val make :
  ?allow_instance_migration:bool prop ->
  ?backend:string prop ->
  ?disallow_reauthentication:bool prop ->
  ?id:string prop ->
  ?instance_id:string prop ->
  ?max_ttl:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  role:string prop ->
  string ->
  t Tf_core.resource
