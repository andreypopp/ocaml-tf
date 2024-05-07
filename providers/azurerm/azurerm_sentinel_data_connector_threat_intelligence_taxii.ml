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

type azurerm_sentinel_data_connector_threat_intelligence_taxii = {
  api_root_url : string prop;
  collection_id : string prop;
  display_name : string prop;
  id : string prop option; [@option]
  log_analytics_workspace_id : string prop;
  lookback_date : string prop option; [@option]
  name : string prop;
  password : string prop option; [@option]
  polling_frequency : string prop option; [@option]
  tenant_id : string prop option; [@option]
  user_name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_sentinel_data_connector_threat_intelligence_taxii) ->
  ()

let yojson_of_azurerm_sentinel_data_connector_threat_intelligence_taxii
    =
  (function
   | {
       api_root_url = v_api_root_url;
       collection_id = v_collection_id;
       display_name = v_display_name;
       id = v_id;
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       lookback_date = v_lookback_date;
       name = v_name;
       password = v_password;
       polling_frequency = v_polling_frequency;
       tenant_id = v_tenant_id;
       user_name = v_user_name;
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
         match v_user_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tenant_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tenant_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_polling_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "polling_frequency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_lookback_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lookback_date", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_log_analytics_workspace_id
         in
         ("log_analytics_workspace_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_collection_id in
         ("collection_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_root_url in
         ("api_root_url", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_sentinel_data_connector_threat_intelligence_taxii ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_sentinel_data_connector_threat_intelligence_taxii

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_data_connector_threat_intelligence_taxii ?id
    ?lookback_date ?password ?polling_frequency ?tenant_id ?user_name
    ?timeouts ~api_root_url ~collection_id ~display_name
    ~log_analytics_workspace_id ~name () :
    azurerm_sentinel_data_connector_threat_intelligence_taxii =
  {
    api_root_url;
    collection_id;
    display_name;
    id;
    log_analytics_workspace_id;
    lookback_date;
    name;
    password;
    polling_frequency;
    tenant_id;
    user_name;
    timeouts;
  }

type t = {
  tf_name : string;
  api_root_url : string prop;
  collection_id : string prop;
  display_name : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  lookback_date : string prop;
  name : string prop;
  password : string prop;
  polling_frequency : string prop;
  tenant_id : string prop;
  user_name : string prop;
}

let make ?id ?lookback_date ?password ?polling_frequency ?tenant_id
    ?user_name ?timeouts ~api_root_url ~collection_id ~display_name
    ~log_analytics_workspace_id ~name __id =
  let __type =
    "azurerm_sentinel_data_connector_threat_intelligence_taxii"
  in
  let __attrs =
    ({
       tf_name = __id;
       api_root_url = Prop.computed __type __id "api_root_url";
       collection_id = Prop.computed __type __id "collection_id";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       lookback_date = Prop.computed __type __id "lookback_date";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       polling_frequency =
         Prop.computed __type __id "polling_frequency";
       tenant_id = Prop.computed __type __id "tenant_id";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_data_connector_threat_intelligence_taxii
        (azurerm_sentinel_data_connector_threat_intelligence_taxii
           ?id ?lookback_date ?password ?polling_frequency ?tenant_id
           ?user_name ?timeouts ~api_root_url ~collection_id
           ~display_name ~log_analytics_workspace_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?lookback_date ?password
    ?polling_frequency ?tenant_id ?user_name ?timeouts ~api_root_url
    ~collection_id ~display_name ~log_analytics_workspace_id ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?lookback_date ?password ?polling_frequency ?tenant_id
      ?user_name ?timeouts ~api_root_url ~collection_id ~display_name
      ~log_analytics_workspace_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
