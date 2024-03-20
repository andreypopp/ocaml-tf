(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type autoscale_settings = {
  max_throughput : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : autoscale_settings) -> ()

let yojson_of_autoscale_settings =
  (function
   | { max_throughput = v_max_throughput } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_throughput", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : autoscale_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscale_settings

[@@@deriving.end]

type schema__cluster_key = {
  name : string prop;
  order_by : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schema__cluster_key) -> ()

let yojson_of_schema__cluster_key =
  (function
   | { name = v_name; order_by = v_order_by } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_order_by in
         ("order_by", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : schema__cluster_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema__cluster_key

[@@@deriving.end]

type schema__column = {
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schema__column) -> ()

let yojson_of_schema__column =
  (function
   | { name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : schema__column -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema__column

[@@@deriving.end]

type schema__partition_key = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : schema__partition_key) -> ()

let yojson_of_schema__partition_key =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : schema__partition_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema__partition_key

[@@@deriving.end]

type schema = {
  cluster_key : schema__cluster_key list;
  column : schema__column list;
  partition_key : schema__partition_key list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schema) -> ()

let yojson_of_schema =
  (function
   | {
       cluster_key = v_cluster_key;
       column = v_column;
       partition_key = v_partition_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_schema__partition_key
             v_partition_key
         in
         ("partition_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_schema__column v_column
         in
         ("column", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_schema__cluster_key v_cluster_key
         in
         ("cluster_key", arg) :: bnds
       in
       `Assoc bnds
    : schema -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema

[@@@deriving.end]

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

type azurerm_cosmosdb_cassandra_table = {
  analytical_storage_ttl : float prop option; [@option]
  cassandra_keyspace_id : string prop;
  default_ttl : float prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  throughput : float prop option; [@option]
  autoscale_settings : autoscale_settings list;
  schema : schema list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cosmosdb_cassandra_table) -> ()

let yojson_of_azurerm_cosmosdb_cassandra_table =
  (function
   | {
       analytical_storage_ttl = v_analytical_storage_ttl;
       cassandra_keyspace_id = v_cassandra_keyspace_id;
       default_ttl = v_default_ttl;
       id = v_id;
       name = v_name;
       throughput = v_throughput;
       autoscale_settings = v_autoscale_settings;
       schema = v_schema;
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
         let arg = yojson_of_list yojson_of_schema v_schema in
         ("schema", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_autoscale_settings
             v_autoscale_settings
         in
         ("autoscale_settings", arg) :: bnds
       in
       let bnds =
         match v_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throughput", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_default_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cassandra_keyspace_id
         in
         ("cassandra_keyspace_id", arg) :: bnds
       in
       let bnds =
         match v_analytical_storage_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "analytical_storage_ttl", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_cosmosdb_cassandra_table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cosmosdb_cassandra_table

[@@@deriving.end]

let autoscale_settings ?max_throughput () : autoscale_settings =
  { max_throughput }

let schema__cluster_key ~name ~order_by () : schema__cluster_key =
  { name; order_by }

let schema__column ~name ~type_ () : schema__column = { name; type_ }
let schema__partition_key ~name () : schema__partition_key = { name }

let schema ~cluster_key ~column ~partition_key () : schema =
  { cluster_key; column; partition_key }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_cassandra_table ?analytical_storage_ttl
    ?default_ttl ?id ?throughput ?timeouts ~cassandra_keyspace_id
    ~name ~autoscale_settings ~schema () :
    azurerm_cosmosdb_cassandra_table =
  {
    analytical_storage_ttl;
    cassandra_keyspace_id;
    default_ttl;
    id;
    name;
    throughput;
    autoscale_settings;
    schema;
    timeouts;
  }

type t = {
  analytical_storage_ttl : float prop;
  cassandra_keyspace_id : string prop;
  default_ttl : float prop;
  id : string prop;
  name : string prop;
  throughput : float prop;
}

let make ?analytical_storage_ttl ?default_ttl ?id ?throughput
    ?timeouts ~cassandra_keyspace_id ~name ~autoscale_settings
    ~schema __id =
  let __type = "azurerm_cosmosdb_cassandra_table" in
  let __attrs =
    ({
       analytical_storage_ttl =
         Prop.computed __type __id "analytical_storage_ttl";
       cassandra_keyspace_id =
         Prop.computed __type __id "cassandra_keyspace_id";
       default_ttl = Prop.computed __type __id "default_ttl";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       throughput = Prop.computed __type __id "throughput";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_cassandra_table
        (azurerm_cosmosdb_cassandra_table ?analytical_storage_ttl
           ?default_ttl ?id ?throughput ?timeouts
           ~cassandra_keyspace_id ~name ~autoscale_settings ~schema
           ());
    attrs = __attrs;
  }

let register ?tf_module ?analytical_storage_ttl ?default_ttl ?id
    ?throughput ?timeouts ~cassandra_keyspace_id ~name
    ~autoscale_settings ~schema __id =
  let (r : _ Tf_core.resource) =
    make ?analytical_storage_ttl ?default_ttl ?id ?throughput
      ?timeouts ~cassandra_keyspace_id ~name ~autoscale_settings
      ~schema __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
