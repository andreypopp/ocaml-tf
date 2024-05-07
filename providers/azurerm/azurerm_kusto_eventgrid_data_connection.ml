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

type azurerm_kusto_eventgrid_data_connection = {
  blob_storage_event_type : string prop option; [@option]
  cluster_name : string prop;
  data_format : string prop option; [@option]
  database_name : string prop;
  database_routing_type : string prop option; [@option]
  eventgrid_resource_id : string prop option; [@option]
  eventhub_consumer_group_name : string prop;
  eventhub_id : string prop;
  id : string prop option; [@option]
  location : string prop;
  managed_identity_resource_id : string prop option; [@option]
  mapping_rule_name : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  skip_first_record : bool prop option; [@option]
  storage_account_id : string prop;
  table_name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kusto_eventgrid_data_connection) -> ()

let yojson_of_azurerm_kusto_eventgrid_data_connection =
  (function
   | {
       blob_storage_event_type = v_blob_storage_event_type;
       cluster_name = v_cluster_name;
       data_format = v_data_format;
       database_name = v_database_name;
       database_routing_type = v_database_routing_type;
       eventgrid_resource_id = v_eventgrid_resource_id;
       eventhub_consumer_group_name = v_eventhub_consumer_group_name;
       eventhub_id = v_eventhub_id;
       id = v_id;
       location = v_location;
       managed_identity_resource_id = v_managed_identity_resource_id;
       mapping_rule_name = v_mapping_rule_name;
       name = v_name;
       resource_group_name = v_resource_group_name;
       skip_first_record = v_skip_first_record;
       storage_account_id = v_storage_account_id;
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
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         match v_skip_first_record with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_first_record", arg in
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
         match v_mapping_rule_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mapping_rule_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_managed_identity_resource_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_identity_resource_id", arg in
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
         let arg = yojson_of_prop yojson_of_string v_eventhub_id in
         ("eventhub_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_eventhub_consumer_group_name
         in
         ("eventhub_consumer_group_name", arg) :: bnds
       in
       let bnds =
         match v_eventgrid_resource_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eventgrid_resource_id", arg in
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
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       let bnds =
         match v_blob_storage_event_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "blob_storage_event_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_kusto_eventgrid_data_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kusto_eventgrid_data_connection

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kusto_eventgrid_data_connection ?blob_storage_event_type
    ?data_format ?database_routing_type ?eventgrid_resource_id ?id
    ?managed_identity_resource_id ?mapping_rule_name
    ?skip_first_record ?table_name ?timeouts ~cluster_name
    ~database_name ~eventhub_consumer_group_name ~eventhub_id
    ~location ~name ~resource_group_name ~storage_account_id () :
    azurerm_kusto_eventgrid_data_connection =
  {
    blob_storage_event_type;
    cluster_name;
    data_format;
    database_name;
    database_routing_type;
    eventgrid_resource_id;
    eventhub_consumer_group_name;
    eventhub_id;
    id;
    location;
    managed_identity_resource_id;
    mapping_rule_name;
    name;
    resource_group_name;
    skip_first_record;
    storage_account_id;
    table_name;
    timeouts;
  }

type t = {
  tf_name : string;
  blob_storage_event_type : string prop;
  cluster_name : string prop;
  data_format : string prop;
  database_name : string prop;
  database_routing_type : string prop;
  eventgrid_resource_id : string prop;
  eventhub_consumer_group_name : string prop;
  eventhub_id : string prop;
  id : string prop;
  location : string prop;
  managed_identity_resource_id : string prop;
  mapping_rule_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  skip_first_record : bool prop;
  storage_account_id : string prop;
  table_name : string prop;
}

let make ?blob_storage_event_type ?data_format ?database_routing_type
    ?eventgrid_resource_id ?id ?managed_identity_resource_id
    ?mapping_rule_name ?skip_first_record ?table_name ?timeouts
    ~cluster_name ~database_name ~eventhub_consumer_group_name
    ~eventhub_id ~location ~name ~resource_group_name
    ~storage_account_id __id =
  let __type = "azurerm_kusto_eventgrid_data_connection" in
  let __attrs =
    ({
       tf_name = __id;
       blob_storage_event_type =
         Prop.computed __type __id "blob_storage_event_type";
       cluster_name = Prop.computed __type __id "cluster_name";
       data_format = Prop.computed __type __id "data_format";
       database_name = Prop.computed __type __id "database_name";
       database_routing_type =
         Prop.computed __type __id "database_routing_type";
       eventgrid_resource_id =
         Prop.computed __type __id "eventgrid_resource_id";
       eventhub_consumer_group_name =
         Prop.computed __type __id "eventhub_consumer_group_name";
       eventhub_id = Prop.computed __type __id "eventhub_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       managed_identity_resource_id =
         Prop.computed __type __id "managed_identity_resource_id";
       mapping_rule_name =
         Prop.computed __type __id "mapping_rule_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       skip_first_record =
         Prop.computed __type __id "skip_first_record";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       table_name = Prop.computed __type __id "table_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kusto_eventgrid_data_connection
        (azurerm_kusto_eventgrid_data_connection
           ?blob_storage_event_type ?data_format
           ?database_routing_type ?eventgrid_resource_id ?id
           ?managed_identity_resource_id ?mapping_rule_name
           ?skip_first_record ?table_name ?timeouts ~cluster_name
           ~database_name ~eventhub_consumer_group_name ~eventhub_id
           ~location ~name ~resource_group_name ~storage_account_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?blob_storage_event_type ?data_format
    ?database_routing_type ?eventgrid_resource_id ?id
    ?managed_identity_resource_id ?mapping_rule_name
    ?skip_first_record ?table_name ?timeouts ~cluster_name
    ~database_name ~eventhub_consumer_group_name ~eventhub_id
    ~location ~name ~resource_group_name ~storage_account_id __id =
  let (r : _ Tf_core.resource) =
    make ?blob_storage_event_type ?data_format ?database_routing_type
      ?eventgrid_resource_id ?id ?managed_identity_resource_id
      ?mapping_rule_name ?skip_first_record ?table_name ?timeouts
      ~cluster_name ~database_name ~eventhub_consumer_group_name
      ~eventhub_id ~location ~name ~resource_group_name
      ~storage_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
