(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_cassandra_datacenter__timeouts
type azurerm_cosmosdb_cassandra_datacenter

type t = private {
  availability_zones_enabled : bool prop;
  backup_storage_customer_key_uri : string prop;
  base64_encoded_yaml_fragment : string prop;
  cassandra_cluster_id : string prop;
  delegated_management_subnet_id : string prop;
  disk_count : float prop;
  disk_sku : string prop;
  id : string prop;
  location : string prop;
  managed_disk_customer_key_uri : string prop;
  name : string prop;
  node_count : float prop;
  seed_node_ip_addresses : string list prop;
  sku_name : string prop;
}

val azurerm_cosmosdb_cassandra_datacenter :
  ?availability_zones_enabled:bool prop ->
  ?backup_storage_customer_key_uri:string prop ->
  ?base64_encoded_yaml_fragment:string prop ->
  ?disk_count:float prop ->
  ?disk_sku:string prop ->
  ?id:string prop ->
  ?managed_disk_customer_key_uri:string prop ->
  ?node_count:float prop ->
  ?sku_name:string prop ->
  ?timeouts:azurerm_cosmosdb_cassandra_datacenter__timeouts ->
  cassandra_cluster_id:string prop ->
  delegated_management_subnet_id:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t
