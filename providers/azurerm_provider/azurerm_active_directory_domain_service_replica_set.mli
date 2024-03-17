(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_active_directory_domain_service_replica_set__timeouts
type azurerm_active_directory_domain_service_replica_set

val azurerm_active_directory_domain_service_replica_set :
  ?id:string prop ->
  ?timeouts:
    azurerm_active_directory_domain_service_replica_set__timeouts ->
  domain_service_id:string prop ->
  location:string prop ->
  subnet_id:string prop ->
  string ->
  unit
