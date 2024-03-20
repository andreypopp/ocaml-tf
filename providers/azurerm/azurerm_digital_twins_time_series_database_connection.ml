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

type azurerm_digital_twins_time_series_database_connection = {
  digital_twins_id : string prop;
  eventhub_consumer_group_name : string prop option; [@option]
  eventhub_name : string prop;
  eventhub_namespace_endpoint_uri : string prop;
  eventhub_namespace_id : string prop;
  id : string prop option; [@option]
  kusto_cluster_id : string prop;
  kusto_cluster_uri : string prop;
  kusto_database_name : string prop;
  kusto_table_name : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_digital_twins_time_series_database_connection) ->
  ()

let yojson_of_azurerm_digital_twins_time_series_database_connection =
  (function
   | {
       digital_twins_id = v_digital_twins_id;
       eventhub_consumer_group_name = v_eventhub_consumer_group_name;
       eventhub_name = v_eventhub_name;
       eventhub_namespace_endpoint_uri =
         v_eventhub_namespace_endpoint_uri;
       eventhub_namespace_id = v_eventhub_namespace_id;
       id = v_id;
       kusto_cluster_id = v_kusto_cluster_id;
       kusto_cluster_uri = v_kusto_cluster_uri;
       kusto_database_name = v_kusto_database_name;
       kusto_table_name = v_kusto_table_name;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_kusto_table_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kusto_table_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kusto_database_name
         in
         ("kusto_database_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kusto_cluster_uri
         in
         ("kusto_cluster_uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kusto_cluster_id
         in
         ("kusto_cluster_id", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_eventhub_namespace_id
         in
         ("eventhub_namespace_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_eventhub_namespace_endpoint_uri
         in
         ("eventhub_namespace_endpoint_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_eventhub_name in
         ("eventhub_name", arg) :: bnds
       in
       let bnds =
         match v_eventhub_consumer_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eventhub_consumer_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_digital_twins_id
         in
         ("digital_twins_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_digital_twins_time_series_database_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_digital_twins_time_series_database_connection

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_digital_twins_time_series_database_connection
    ?eventhub_consumer_group_name ?id ?kusto_table_name ?timeouts
    ~digital_twins_id ~eventhub_name ~eventhub_namespace_endpoint_uri
    ~eventhub_namespace_id ~kusto_cluster_id ~kusto_cluster_uri
    ~kusto_database_name ~name () :
    azurerm_digital_twins_time_series_database_connection =
  {
    digital_twins_id;
    eventhub_consumer_group_name;
    eventhub_name;
    eventhub_namespace_endpoint_uri;
    eventhub_namespace_id;
    id;
    kusto_cluster_id;
    kusto_cluster_uri;
    kusto_database_name;
    kusto_table_name;
    name;
    timeouts;
  }

type t = {
  digital_twins_id : string prop;
  eventhub_consumer_group_name : string prop;
  eventhub_name : string prop;
  eventhub_namespace_endpoint_uri : string prop;
  eventhub_namespace_id : string prop;
  id : string prop;
  kusto_cluster_id : string prop;
  kusto_cluster_uri : string prop;
  kusto_database_name : string prop;
  kusto_table_name : string prop;
  name : string prop;
}

let make ?eventhub_consumer_group_name ?id ?kusto_table_name
    ?timeouts ~digital_twins_id ~eventhub_name
    ~eventhub_namespace_endpoint_uri ~eventhub_namespace_id
    ~kusto_cluster_id ~kusto_cluster_uri ~kusto_database_name ~name
    __id =
  let __type =
    "azurerm_digital_twins_time_series_database_connection"
  in
  let __attrs =
    ({
       digital_twins_id =
         Prop.computed __type __id "digital_twins_id";
       eventhub_consumer_group_name =
         Prop.computed __type __id "eventhub_consumer_group_name";
       eventhub_name = Prop.computed __type __id "eventhub_name";
       eventhub_namespace_endpoint_uri =
         Prop.computed __type __id "eventhub_namespace_endpoint_uri";
       eventhub_namespace_id =
         Prop.computed __type __id "eventhub_namespace_id";
       id = Prop.computed __type __id "id";
       kusto_cluster_id =
         Prop.computed __type __id "kusto_cluster_id";
       kusto_cluster_uri =
         Prop.computed __type __id "kusto_cluster_uri";
       kusto_database_name =
         Prop.computed __type __id "kusto_database_name";
       kusto_table_name =
         Prop.computed __type __id "kusto_table_name";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_digital_twins_time_series_database_connection
        (azurerm_digital_twins_time_series_database_connection
           ?eventhub_consumer_group_name ?id ?kusto_table_name
           ?timeouts ~digital_twins_id ~eventhub_name
           ~eventhub_namespace_endpoint_uri ~eventhub_namespace_id
           ~kusto_cluster_id ~kusto_cluster_uri ~kusto_database_name
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?eventhub_consumer_group_name ?id
    ?kusto_table_name ?timeouts ~digital_twins_id ~eventhub_name
    ~eventhub_namespace_endpoint_uri ~eventhub_namespace_id
    ~kusto_cluster_id ~kusto_cluster_uri ~kusto_database_name ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?eventhub_consumer_group_name ?id ?kusto_table_name
      ?timeouts ~digital_twins_id ~eventhub_name
      ~eventhub_namespace_endpoint_uri ~eventhub_namespace_id
      ~kusto_cluster_id ~kusto_cluster_uri ~kusto_database_name ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
