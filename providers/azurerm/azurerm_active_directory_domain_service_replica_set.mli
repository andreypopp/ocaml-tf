(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_active_directory_domain_service_replica_set__timeouts
type azurerm_active_directory_domain_service_replica_set

type t = private {
  domain_controller_ip_addresses : string list prop;
  domain_service_id : string prop;
  external_access_ip_address : string prop;
  id : string prop;
  location : string prop;
  service_status : string prop;
  subnet_id : string prop;
}

val azurerm_active_directory_domain_service_replica_set :
  ?id:string prop ->
  ?timeouts:
    azurerm_active_directory_domain_service_replica_set__timeouts ->
  domain_service_id:string prop ->
  location:string prop ->
  subnet_id:string prop ->
  string ->
  t
