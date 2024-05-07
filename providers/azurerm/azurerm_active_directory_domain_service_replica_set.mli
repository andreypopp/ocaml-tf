(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_active_directory_domain_service_replica_set

val azurerm_active_directory_domain_service_replica_set :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_service_id:string prop ->
  location:string prop ->
  subnet_id:string prop ->
  unit ->
  azurerm_active_directory_domain_service_replica_set

val yojson_of_azurerm_active_directory_domain_service_replica_set :
  azurerm_active_directory_domain_service_replica_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  domain_controller_ip_addresses : string list prop;
  domain_service_id : string prop;
  external_access_ip_address : string prop;
  id : string prop;
  location : string prop;
  service_status : string prop;
  subnet_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_service_id:string prop ->
  location:string prop ->
  subnet_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_service_id:string prop ->
  location:string prop ->
  subnet_id:string prop ->
  string ->
  t Tf_core.resource
