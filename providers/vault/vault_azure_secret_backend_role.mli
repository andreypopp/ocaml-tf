(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type azure_groups

val azure_groups : group_name:string prop -> unit -> azure_groups

type azure_roles

val azure_roles : ?role_id:string prop -> ?role_name:string prop -> scope:string prop -> unit -> azure_roles

type vault_azure_secret_backend_role

val vault_azure_secret_backend_role :
  ?application_object_id:string prop ->
  ?backend:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_ttl:string prop ->
  ?namespace:string prop ->
  ?permanently_delete:bool prop ->
  ?sign_in_audience:string prop ->
  ?tags:string prop list ->
  ?ttl:string prop ->
  role:string prop ->
  azure_groups:azure_groups list ->
  azure_roles:azure_roles list ->
  unit ->
  vault_azure_secret_backend_role

val yojson_of_vault_azure_secret_backend_role : vault_azure_secret_backend_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_object_id : string prop;
  backend : string prop;
  description : string prop;
  id : string prop;
  max_ttl : string prop;
  namespace : string prop;
  permanently_delete : bool prop;
  role : string prop;
  sign_in_audience : string prop;
  tags : string list prop;
  ttl : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?application_object_id:string prop ->
  ?backend:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_ttl:string prop ->
  ?namespace:string prop ->
  ?permanently_delete:bool prop ->
  ?sign_in_audience:string prop ->
  ?tags:string prop list ->
  ?ttl:string prop ->
  role:string prop ->
  azure_groups:azure_groups list ->
  azure_roles:azure_roles list ->
  string ->
  t

val make :
  ?application_object_id:string prop ->
  ?backend:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_ttl:string prop ->
  ?namespace:string prop ->
  ?permanently_delete:bool prop ->
  ?sign_in_audience:string prop ->
  ?tags:string prop list ->
  ?ttl:string prop ->
  role:string prop ->
  azure_groups:azure_groups list ->
  azure_roles:azure_roles list ->
  string ->
  t Tf_core.resource
