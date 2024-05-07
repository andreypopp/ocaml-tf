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

type azurerm_kusto_cosmosdb_data_connection = {
  cosmosdb_container_id : string prop;
  id : string prop option; [@option]
  kusto_database_id : string prop;
  location : string prop;
  managed_identity_id : string prop;
  mapping_rule_name : string prop option; [@option]
  name : string prop;
  retrieval_start_date : string prop option; [@option]
  table_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kusto_cosmosdb_data_connection) -> ()

let yojson_of_azurerm_kusto_cosmosdb_data_connection =
  (function
   | {
       cosmosdb_container_id = v_cosmosdb_container_id;
       id = v_id;
       kusto_database_id = v_kusto_database_id;
       location = v_location;
       managed_identity_id = v_managed_identity_id;
       mapping_rule_name = v_mapping_rule_name;
       name = v_name;
       retrieval_start_date = v_retrieval_start_date;
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
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       let bnds =
         match v_retrieval_start_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "retrieval_start_date", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_managed_identity_id
         in
         ("managed_identity_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kusto_database_id
         in
         ("kusto_database_id", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_cosmosdb_container_id
         in
         ("cosmosdb_container_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_kusto_cosmosdb_data_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kusto_cosmosdb_data_connection

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_kusto_cosmosdb_data_connection ?id ?mapping_rule_name
    ?retrieval_start_date ?timeouts ~cosmosdb_container_id
    ~kusto_database_id ~location ~managed_identity_id ~name
    ~table_name () : azurerm_kusto_cosmosdb_data_connection =
  {
    cosmosdb_container_id;
    id;
    kusto_database_id;
    location;
    managed_identity_id;
    mapping_rule_name;
    name;
    retrieval_start_date;
    table_name;
    timeouts;
  }

type t = {
  tf_name : string;
  cosmosdb_container_id : string prop;
  id : string prop;
  kusto_database_id : string prop;
  location : string prop;
  managed_identity_id : string prop;
  mapping_rule_name : string prop;
  name : string prop;
  retrieval_start_date : string prop;
  table_name : string prop;
}

let make ?id ?mapping_rule_name ?retrieval_start_date ?timeouts
    ~cosmosdb_container_id ~kusto_database_id ~location
    ~managed_identity_id ~name ~table_name __id =
  let __type = "azurerm_kusto_cosmosdb_data_connection" in
  let __attrs =
    ({
       tf_name = __id;
       cosmosdb_container_id =
         Prop.computed __type __id "cosmosdb_container_id";
       id = Prop.computed __type __id "id";
       kusto_database_id =
         Prop.computed __type __id "kusto_database_id";
       location = Prop.computed __type __id "location";
       managed_identity_id =
         Prop.computed __type __id "managed_identity_id";
       mapping_rule_name =
         Prop.computed __type __id "mapping_rule_name";
       name = Prop.computed __type __id "name";
       retrieval_start_date =
         Prop.computed __type __id "retrieval_start_date";
       table_name = Prop.computed __type __id "table_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kusto_cosmosdb_data_connection
        (azurerm_kusto_cosmosdb_data_connection ?id
           ?mapping_rule_name ?retrieval_start_date ?timeouts
           ~cosmosdb_container_id ~kusto_database_id ~location
           ~managed_identity_id ~name ~table_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?mapping_rule_name ?retrieval_start_date
    ?timeouts ~cosmosdb_container_id ~kusto_database_id ~location
    ~managed_identity_id ~name ~table_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?mapping_rule_name ?retrieval_start_date ?timeouts
      ~cosmosdb_container_id ~kusto_database_id ~location
      ~managed_identity_id ~name ~table_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
