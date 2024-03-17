(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_cassandra_datacenter__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_datacenter__timeouts *)

type azurerm_cosmosdb_cassandra_datacenter = {
  availability_zones_enabled : bool option; [@option]
      (** availability_zones_enabled *)
  backup_storage_customer_key_uri : string option; [@option]
      (** backup_storage_customer_key_uri *)
  base64_encoded_yaml_fragment : string option; [@option]
      (** base64_encoded_yaml_fragment *)
  cassandra_cluster_id : string;  (** cassandra_cluster_id *)
  delegated_management_subnet_id : string;
      (** delegated_management_subnet_id *)
  disk_count : float option; [@option]  (** disk_count *)
  disk_sku : string option; [@option]  (** disk_sku *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  managed_disk_customer_key_uri : string option; [@option]
      (** managed_disk_customer_key_uri *)
  name : string;  (** name *)
  node_count : float option; [@option]  (** node_count *)
  sku_name : string option; [@option]  (** sku_name *)
  timeouts : azurerm_cosmosdb_cassandra_datacenter__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_datacenter *)

let azurerm_cosmosdb_cassandra_datacenter ?availability_zones_enabled
    ?backup_storage_customer_key_uri ?base64_encoded_yaml_fragment
    ?disk_count ?disk_sku ?id ?managed_disk_customer_key_uri
    ?node_count ?sku_name ?timeouts ~cassandra_cluster_id
    ~delegated_management_subnet_id ~location ~name __resource_id =
  let __resource_type = "azurerm_cosmosdb_cassandra_datacenter" in
  let __resource =
    {
      availability_zones_enabled;
      backup_storage_customer_key_uri;
      base64_encoded_yaml_fragment;
      cassandra_cluster_id;
      delegated_management_subnet_id;
      disk_count;
      disk_sku;
      id;
      location;
      managed_disk_customer_key_uri;
      name;
      node_count;
      sku_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_cassandra_datacenter __resource);
  ()
