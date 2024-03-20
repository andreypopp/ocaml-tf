(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_datacenter *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_cassandra_datacenter ?availability_zones_enabled
    ?backup_storage_customer_key_uri ?base64_encoded_yaml_fragment
    ?disk_count ?disk_sku ?id ?managed_disk_customer_key_uri
    ?node_count ?sku_name ?timeouts ~cassandra_cluster_id
    ~delegated_management_subnet_id ~location ~name () :
    azurerm_cosmosdb_cassandra_datacenter =
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

type t = {
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

let make ?availability_zones_enabled ?backup_storage_customer_key_uri
    ?base64_encoded_yaml_fragment ?disk_count ?disk_sku ?id
    ?managed_disk_customer_key_uri ?node_count ?sku_name ?timeouts
    ~cassandra_cluster_id ~delegated_management_subnet_id ~location
    ~name __id =
  let __type = "azurerm_cosmosdb_cassandra_datacenter" in
  let __attrs =
    ({
       availability_zones_enabled =
         Prop.computed __type __id "availability_zones_enabled";
       backup_storage_customer_key_uri =
         Prop.computed __type __id "backup_storage_customer_key_uri";
       base64_encoded_yaml_fragment =
         Prop.computed __type __id "base64_encoded_yaml_fragment";
       cassandra_cluster_id =
         Prop.computed __type __id "cassandra_cluster_id";
       delegated_management_subnet_id =
         Prop.computed __type __id "delegated_management_subnet_id";
       disk_count = Prop.computed __type __id "disk_count";
       disk_sku = Prop.computed __type __id "disk_sku";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       managed_disk_customer_key_uri =
         Prop.computed __type __id "managed_disk_customer_key_uri";
       name = Prop.computed __type __id "name";
       node_count = Prop.computed __type __id "node_count";
       seed_node_ip_addresses =
         Prop.computed __type __id "seed_node_ip_addresses";
       sku_name = Prop.computed __type __id "sku_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_cassandra_datacenter
        (azurerm_cosmosdb_cassandra_datacenter
           ?availability_zones_enabled
           ?backup_storage_customer_key_uri
           ?base64_encoded_yaml_fragment ?disk_count ?disk_sku ?id
           ?managed_disk_customer_key_uri ?node_count ?sku_name
           ?timeouts ~cassandra_cluster_id
           ~delegated_management_subnet_id ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_zones_enabled
    ?backup_storage_customer_key_uri ?base64_encoded_yaml_fragment
    ?disk_count ?disk_sku ?id ?managed_disk_customer_key_uri
    ?node_count ?sku_name ?timeouts ~cassandra_cluster_id
    ~delegated_management_subnet_id ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?availability_zones_enabled ?backup_storage_customer_key_uri
      ?base64_encoded_yaml_fragment ?disk_count ?disk_sku ?id
      ?managed_disk_customer_key_uri ?node_count ?sku_name ?timeouts
      ~cassandra_cluster_id ~delegated_management_subnet_id ~location
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
