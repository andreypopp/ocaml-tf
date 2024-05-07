(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cosmosdb_cassandra_datacenter

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
  ?timeouts:timeouts ->
  cassandra_cluster_id:string prop ->
  delegated_management_subnet_id:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  azurerm_cosmosdb_cassandra_datacenter

val yojson_of_azurerm_cosmosdb_cassandra_datacenter :
  azurerm_cosmosdb_cassandra_datacenter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?availability_zones_enabled:bool prop ->
  ?backup_storage_customer_key_uri:string prop ->
  ?base64_encoded_yaml_fragment:string prop ->
  ?disk_count:float prop ->
  ?disk_sku:string prop ->
  ?id:string prop ->
  ?managed_disk_customer_key_uri:string prop ->
  ?node_count:float prop ->
  ?sku_name:string prop ->
  ?timeouts:timeouts ->
  cassandra_cluster_id:string prop ->
  delegated_management_subnet_id:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?availability_zones_enabled:bool prop ->
  ?backup_storage_customer_key_uri:string prop ->
  ?base64_encoded_yaml_fragment:string prop ->
  ?disk_count:float prop ->
  ?disk_sku:string prop ->
  ?id:string prop ->
  ?managed_disk_customer_key_uri:string prop ->
  ?node_count:float prop ->
  ?sku_name:string prop ->
  ?timeouts:timeouts ->
  cassandra_cluster_id:string prop ->
  delegated_management_subnet_id:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
