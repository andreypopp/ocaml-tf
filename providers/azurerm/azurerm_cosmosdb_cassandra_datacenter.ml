(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_cosmosdb_cassandra_datacenter = {
  availability_zones_enabled : bool prop option; [@option]
  backup_storage_customer_key_uri : string prop option; [@option]
  base64_encoded_yaml_fragment : string prop option; [@option]
  cassandra_cluster_id : string prop;
  delegated_management_subnet_id : string prop;
  disk_count : float prop option; [@option]
  disk_sku : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  managed_disk_customer_key_uri : string prop option; [@option]
  name : string prop;
  node_count : float prop option; [@option]
  sku_name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cosmosdb_cassandra_datacenter) -> ()

let yojson_of_azurerm_cosmosdb_cassandra_datacenter =
  (function
   | {
       availability_zones_enabled = v_availability_zones_enabled;
       backup_storage_customer_key_uri =
         v_backup_storage_customer_key_uri;
       base64_encoded_yaml_fragment = v_base64_encoded_yaml_fragment;
       cassandra_cluster_id = v_cassandra_cluster_id;
       delegated_management_subnet_id =
         v_delegated_management_subnet_id;
       disk_count = v_disk_count;
       disk_sku = v_disk_sku;
       id = v_id;
       location = v_location;
       managed_disk_customer_key_uri =
         v_managed_disk_customer_key_uri;
       name = v_name;
       node_count = v_node_count;
       sku_name = v_sku_name;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_sku_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "node_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_managed_disk_customer_key_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_disk_customer_key_uri", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_sku", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_delegated_management_subnet_id
         in
         ("delegated_management_subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cassandra_cluster_id
         in
         ("cassandra_cluster_id", arg) :: bnds
       in
       let bnds =
         match v_base64_encoded_yaml_fragment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "base64_encoded_yaml_fragment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backup_storage_customer_key_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backup_storage_customer_key_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_zones_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "availability_zones_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_cosmosdb_cassandra_datacenter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cosmosdb_cassandra_datacenter

[@@@deriving.end]

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

let make ?availability_zones_enabled ?backup_storage_customer_key_uri
    ?base64_encoded_yaml_fragment ?disk_count ?disk_sku ?id
    ?managed_disk_customer_key_uri ?node_count ?sku_name ?timeouts
    ~cassandra_cluster_id ~delegated_management_subnet_id ~location
    ~name __id =
  let __type = "azurerm_cosmosdb_cassandra_datacenter" in
  let __attrs =
    ({
       tf_name = __id;
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
