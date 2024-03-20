(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type capabilities = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : capabilities) -> ()

let yojson_of_capabilities =
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
    : capabilities -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_capabilities

[@@@deriving.end]

type consistency_policy = {
  consistency_level : string prop;
  max_interval_in_seconds : float prop;
  max_staleness_prefix : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : consistency_policy) -> ()

let yojson_of_consistency_policy =
  (function
   | {
       consistency_level = v_consistency_level;
       max_interval_in_seconds = v_max_interval_in_seconds;
       max_staleness_prefix = v_max_staleness_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_staleness_prefix
         in
         ("max_staleness_prefix", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_interval_in_seconds
         in
         ("max_interval_in_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_consistency_level
         in
         ("consistency_level", arg) :: bnds
       in
       `Assoc bnds
    : consistency_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_consistency_policy

[@@@deriving.end]

type geo_location = {
  failover_priority : float prop;
  id : string prop;
  location : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : geo_location) -> ()

let yojson_of_geo_location =
  (function
   | {
       failover_priority = v_failover_priority;
       id = v_id;
       location = v_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failover_priority
         in
         ("failover_priority", arg) :: bnds
       in
       `Assoc bnds
    : geo_location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_geo_location

[@@@deriving.end]

type virtual_network_rule = { id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : virtual_network_rule) -> ()

let yojson_of_virtual_network_rule =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : virtual_network_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_network_rule

[@@@deriving.end]

type azurerm_cosmosdb_account = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cosmosdb_account) -> ()

let yojson_of_azurerm_cosmosdb_account =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
       `Assoc bnds
    : azurerm_cosmosdb_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cosmosdb_account

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_cosmosdb_account ?id ?timeouts ~name ~resource_group_name
    () : azurerm_cosmosdb_account =
  { id; name; resource_group_name; timeouts }

type t = {
  capabilities : capabilities list prop;
  connection_strings : string list prop;
  consistency_policy : consistency_policy list prop;
  enable_automatic_failover : bool prop;
  enable_free_tier : bool prop;
  enable_multiple_write_locations : bool prop;
  endpoint : string prop;
  geo_location : geo_location list prop;
  id : string prop;
  ip_range_filter : string prop;
  is_virtual_network_filter_enabled : bool prop;
  key_vault_key_id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  offer_type : string prop;
  primary_key : string prop;
  primary_mongodb_connection_string : string prop;
  primary_readonly_key : string prop;
  primary_readonly_mongodb_connection_string : string prop;
  primary_readonly_sql_connection_string : string prop;
  primary_sql_connection_string : string prop;
  read_endpoints : string list prop;
  resource_group_name : string prop;
  secondary_key : string prop;
  secondary_mongodb_connection_string : string prop;
  secondary_readonly_key : string prop;
  secondary_readonly_mongodb_connection_string : string prop;
  secondary_readonly_sql_connection_string : string prop;
  secondary_sql_connection_string : string prop;
  tags : (string * string) list prop;
  virtual_network_rule : virtual_network_rule list prop;
  write_endpoints : string list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_cosmosdb_account" in
  let __attrs =
    ({
       capabilities = Prop.computed __type __id "capabilities";
       connection_strings =
         Prop.computed __type __id "connection_strings";
       consistency_policy =
         Prop.computed __type __id "consistency_policy";
       enable_automatic_failover =
         Prop.computed __type __id "enable_automatic_failover";
       enable_free_tier =
         Prop.computed __type __id "enable_free_tier";
       enable_multiple_write_locations =
         Prop.computed __type __id "enable_multiple_write_locations";
       endpoint = Prop.computed __type __id "endpoint";
       geo_location = Prop.computed __type __id "geo_location";
       id = Prop.computed __type __id "id";
       ip_range_filter = Prop.computed __type __id "ip_range_filter";
       is_virtual_network_filter_enabled =
         Prop.computed __type __id
           "is_virtual_network_filter_enabled";
       key_vault_key_id =
         Prop.computed __type __id "key_vault_key_id";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       offer_type = Prop.computed __type __id "offer_type";
       primary_key = Prop.computed __type __id "primary_key";
       primary_mongodb_connection_string =
         Prop.computed __type __id
           "primary_mongodb_connection_string";
       primary_readonly_key =
         Prop.computed __type __id "primary_readonly_key";
       primary_readonly_mongodb_connection_string =
         Prop.computed __type __id
           "primary_readonly_mongodb_connection_string";
       primary_readonly_sql_connection_string =
         Prop.computed __type __id
           "primary_readonly_sql_connection_string";
       primary_sql_connection_string =
         Prop.computed __type __id "primary_sql_connection_string";
       read_endpoints = Prop.computed __type __id "read_endpoints";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_key = Prop.computed __type __id "secondary_key";
       secondary_mongodb_connection_string =
         Prop.computed __type __id
           "secondary_mongodb_connection_string";
       secondary_readonly_key =
         Prop.computed __type __id "secondary_readonly_key";
       secondary_readonly_mongodb_connection_string =
         Prop.computed __type __id
           "secondary_readonly_mongodb_connection_string";
       secondary_readonly_sql_connection_string =
         Prop.computed __type __id
           "secondary_readonly_sql_connection_string";
       secondary_sql_connection_string =
         Prop.computed __type __id "secondary_sql_connection_string";
       tags = Prop.computed __type __id "tags";
       virtual_network_rule =
         Prop.computed __type __id "virtual_network_rule";
       write_endpoints = Prop.computed __type __id "write_endpoints";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_account
        (azurerm_cosmosdb_account ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
