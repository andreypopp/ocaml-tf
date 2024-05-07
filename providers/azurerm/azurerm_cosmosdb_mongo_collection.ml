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

type index = {
  keys : string prop list;
  unique : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : index) -> ()

let yojson_of_index =
  (function
   | { keys = v_keys; unique = v_unique } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_unique with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "unique", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_keys
         in
         ("keys", arg) :: bnds
       in
       `Assoc bnds
    : index -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_index

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

type system_indexes = { keys : string prop list; unique : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : system_indexes) -> ()

let yojson_of_system_indexes =
  (function
   | { keys = v_keys; unique = v_unique } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_unique in
         ("unique", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_keys
         in
         ("keys", arg) :: bnds
       in
       `Assoc bnds
    : system_indexes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_system_indexes

[@@@deriving.end]

type azurerm_cosmosdb_mongo_collection = {
  account_name : string prop;
  analytical_storage_ttl : float prop option; [@option]
  database_name : string prop;
  default_ttl_seconds : float prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  shard_key : string prop option; [@option]
  throughput : float prop option; [@option]
  autoscale_settings : autoscale_settings list;
  index : index list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cosmosdb_mongo_collection) -> ()

let yojson_of_azurerm_cosmosdb_mongo_collection =
  (function
   | {
       account_name = v_account_name;
       analytical_storage_ttl = v_analytical_storage_ttl;
       database_name = v_database_name;
       default_ttl_seconds = v_default_ttl_seconds;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       shard_key = v_shard_key;
       throughput = v_throughput;
       autoscale_settings = v_autoscale_settings;
       index = v_index;
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
         let arg = yojson_of_list yojson_of_index v_index in
         ("index", arg) :: bnds
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
         match v_shard_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "shard_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         match v_default_ttl_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_ttl_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         match v_analytical_storage_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "analytical_storage_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_cosmosdb_mongo_collection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cosmosdb_mongo_collection

[@@@deriving.end]

let autoscale_settings ?max_throughput () : autoscale_settings =
  { max_throughput }

let index ?unique ~keys () : index = { keys; unique }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_mongo_collection ?analytical_storage_ttl
    ?default_ttl_seconds ?id ?shard_key ?throughput
    ?(autoscale_settings = []) ?timeouts ~account_name ~database_name
    ~name ~resource_group_name ~index () :
    azurerm_cosmosdb_mongo_collection =
  {
    account_name;
    analytical_storage_ttl;
    database_name;
    default_ttl_seconds;
    id;
    name;
    resource_group_name;
    shard_key;
    throughput;
    autoscale_settings;
    index;
    timeouts;
  }

type t = {
  tf_name : string;
  account_name : string prop;
  analytical_storage_ttl : float prop;
  database_name : string prop;
  default_ttl_seconds : float prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  shard_key : string prop;
  system_indexes : system_indexes list prop;
  throughput : float prop;
}

let make ?analytical_storage_ttl ?default_ttl_seconds ?id ?shard_key
    ?throughput ?(autoscale_settings = []) ?timeouts ~account_name
    ~database_name ~name ~resource_group_name ~index __id =
  let __type = "azurerm_cosmosdb_mongo_collection" in
  let __attrs =
    ({
       tf_name = __id;
       account_name = Prop.computed __type __id "account_name";
       analytical_storage_ttl =
         Prop.computed __type __id "analytical_storage_ttl";
       database_name = Prop.computed __type __id "database_name";
       default_ttl_seconds =
         Prop.computed __type __id "default_ttl_seconds";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       shard_key = Prop.computed __type __id "shard_key";
       system_indexes = Prop.computed __type __id "system_indexes";
       throughput = Prop.computed __type __id "throughput";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_mongo_collection
        (azurerm_cosmosdb_mongo_collection ?analytical_storage_ttl
           ?default_ttl_seconds ?id ?shard_key ?throughput
           ~autoscale_settings ?timeouts ~account_name ~database_name
           ~name ~resource_group_name ~index ());
    attrs = __attrs;
  }

let register ?tf_module ?analytical_storage_ttl ?default_ttl_seconds
    ?id ?shard_key ?throughput ?(autoscale_settings = []) ?timeouts
    ~account_name ~database_name ~name ~resource_group_name ~index
    __id =
  let (r : _ Tf_core.resource) =
    make ?analytical_storage_ttl ?default_ttl_seconds ?id ?shard_key
      ?throughput ~autoscale_settings ?timeouts ~account_name
      ~database_name ~name ~resource_group_name ~index __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
