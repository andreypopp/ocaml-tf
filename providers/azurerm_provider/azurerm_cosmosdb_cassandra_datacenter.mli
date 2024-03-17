(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_cassandra_datacenter__timeouts
type azurerm_cosmosdb_cassandra_datacenter

val azurerm_cosmosdb_cassandra_datacenter :
  ?availability_zones_enabled:bool ->
  ?backup_storage_customer_key_uri:string ->
  ?base64_encoded_yaml_fragment:string ->
  ?disk_count:float ->
  ?disk_sku:string ->
  ?managed_disk_customer_key_uri:string ->
  ?node_count:float ->
  ?timeouts:azurerm_cosmosdb_cassandra_datacenter__timeouts ->
  cassandra_cluster_id:string ->
  delegated_management_subnet_id:string ->
  location:string ->
  name:string ->
  string ->
  unit
