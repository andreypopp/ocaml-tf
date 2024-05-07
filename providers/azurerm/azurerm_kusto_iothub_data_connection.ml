(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
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

type azurerm_kusto_iothub_data_connection = {
  cluster_name : string prop;
  consumer_group : string prop;
  data_format : string prop option; [@option]
  database_name : string prop;
  database_routing_type : string prop option; [@option]
  event_system_properties : string prop list option; [@option]
  id : string prop option; [@option]
  iothub_id : string prop;
  location : string prop;
  mapping_rule_name : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  shared_access_policy_name : string prop;
  table_name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kusto_iothub_data_connection) -> ()

let yojson_of_azurerm_kusto_iothub_data_connection =
  (function
   | {
       cluster_name = v_cluster_name;
       consumer_group = v_consumer_group;
       data_format = v_data_format;
       database_name = v_database_name;
       database_routing_type = v_database_routing_type;
       event_system_properties = v_event_system_properties;
       id = v_id;
       iothub_id = v_iothub_id;
       location = v_location;
       mapping_rule_name = v_mapping_rule_name;
       name = v_name;
       resource_group_name = v_resource_group_name;
       shared_access_policy_name = v_shared_access_policy_name;
       table_name = v_table_name;
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
         match v_table_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "table_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_shared_access_policy_name
         in
         ("shared_access_policy_name", arg) :: bnds
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
         match v_mapping_rule_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mapping_rule_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iothub_id in
         ("iothub_id", arg) :: bnds
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
         match v_event_system_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "event_system_properties", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database_routing_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database_routing_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         match v_data_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_format", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_consumer_group
         in
         ("consumer_group", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_kusto_iothub_data_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kusto_iothub_data_connection

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_kusto_iothub_data_connection ?data_format
    ?database_routing_type ?event_system_properties ?id
    ?mapping_rule_name ?table_name ?timeouts ~cluster_name
    ~consumer_group ~database_name ~iothub_id ~location ~name
    ~resource_group_name ~shared_access_policy_name () :
    azurerm_kusto_iothub_data_connection =
  {
    cluster_name;
    consumer_group;
    data_format;
    database_name;
    database_routing_type;
    event_system_properties;
    id;
    iothub_id;
    location;
    mapping_rule_name;
    name;
    resource_group_name;
    shared_access_policy_name;
    table_name;
    timeouts;
  }

type t = {
  tf_name : string;
  cluster_name : string prop;
  consumer_group : string prop;
  data_format : string prop;
  database_name : string prop;
  database_routing_type : string prop;
  event_system_properties : string list prop;
  id : string prop;
  iothub_id : string prop;
  location : string prop;
  mapping_rule_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  shared_access_policy_name : string prop;
  table_name : string prop;
}

let make ?data_format ?database_routing_type ?event_system_properties
    ?id ?mapping_rule_name ?table_name ?timeouts ~cluster_name
    ~consumer_group ~database_name ~iothub_id ~location ~name
    ~resource_group_name ~shared_access_policy_name __id =
  let __type = "azurerm_kusto_iothub_data_connection" in
  let __attrs =
    ({
       tf_name = __id;
       cluster_name = Prop.computed __type __id "cluster_name";
       consumer_group = Prop.computed __type __id "consumer_group";
       data_format = Prop.computed __type __id "data_format";
       database_name = Prop.computed __type __id "database_name";
       database_routing_type =
         Prop.computed __type __id "database_routing_type";
       event_system_properties =
         Prop.computed __type __id "event_system_properties";
       id = Prop.computed __type __id "id";
       iothub_id = Prop.computed __type __id "iothub_id";
       location = Prop.computed __type __id "location";
       mapping_rule_name =
         Prop.computed __type __id "mapping_rule_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       shared_access_policy_name =
         Prop.computed __type __id "shared_access_policy_name";
       table_name = Prop.computed __type __id "table_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kusto_iothub_data_connection
        (azurerm_kusto_iothub_data_connection ?data_format
           ?database_routing_type ?event_system_properties ?id
           ?mapping_rule_name ?table_name ?timeouts ~cluster_name
           ~consumer_group ~database_name ~iothub_id ~location ~name
           ~resource_group_name ~shared_access_policy_name ());
    attrs = __attrs;
  }

let register ?tf_module ?data_format ?database_routing_type
    ?event_system_properties ?id ?mapping_rule_name ?table_name
    ?timeouts ~cluster_name ~consumer_group ~database_name ~iothub_id
    ~location ~name ~resource_group_name ~shared_access_policy_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?data_format ?database_routing_type ?event_system_properties
      ?id ?mapping_rule_name ?table_name ?timeouts ~cluster_name
      ~consumer_group ~database_name ~iothub_id ~location ~name
      ~resource_group_name ~shared_access_policy_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
