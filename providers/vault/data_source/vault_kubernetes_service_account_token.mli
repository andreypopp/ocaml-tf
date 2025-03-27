(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_kubernetes_service_account_token

val vault_kubernetes_service_account_token :
  ?cluster_role_binding:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?ttl:string prop ->
  backend:string prop ->
  kubernetes_namespace:string prop ->
  role:string prop ->
  unit ->
  vault_kubernetes_service_account_token

val yojson_of_vault_kubernetes_service_account_token : vault_kubernetes_service_account_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  cluster_role_binding : bool prop;
  id : string prop;
  kubernetes_namespace : string prop;
  lease_duration : float prop;
  lease_id : string prop;
  lease_renewable : bool prop;
  namespace : string prop;
  role : string prop;
  service_account_name : string prop;
  service_account_namespace : string prop;
  service_account_token : string prop;
  ttl : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cluster_role_binding:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?ttl:string prop ->
  backend:string prop ->
  kubernetes_namespace:string prop ->
  role:string prop ->
  string ->
  t

val make :
  ?cluster_role_binding:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?ttl:string prop ->
  backend:string prop ->
  kubernetes_namespace:string prop ->
  role:string prop ->
  string ->
  t Tf_core.resource
