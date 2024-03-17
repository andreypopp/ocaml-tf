(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_cassandra_datacenter__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_datacenter__timeouts *)

type azurerm_cosmosdb_cassandra_datacenter = {
  availability_zones_enabled : bool prop option; [@option]
      (** availability_zones_enabled *)
  backup_storage_customer_key_uri : string prop option; [@option]
      (** backup_storage_customer_key_uri *)
  base64_encoded_yaml_fragment : string prop option; [@option]
      (** base64_encoded_yaml_fragment *)
  cassandra_cluster_id : string prop;  (** cassandra_cluster_id *)
  delegated_management_subnet_id : string prop;
      (** delegated_management_subnet_id *)
  disk_count : float prop option; [@option]  (** disk_count *)
  disk_sku : string prop option; [@option]  (** disk_sku *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  managed_disk_customer_key_uri : string prop option; [@option]
      (** managed_disk_customer_key_uri *)
  name : string prop;  (** name *)
  node_count : float prop option; [@option]  (** node_count *)
  sku_name : string prop option; [@option]  (** sku_name *)
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
