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

type azurerm_sentinel_data_connector_microsoft_cloud_app_security = {
  alerts_enabled : bool prop option; [@option]
  discovery_logs_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  log_analytics_workspace_id : string prop;
  name : string prop;
  tenant_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_sentinel_data_connector_microsoft_cloud_app_security) ->
  ()

let yojson_of_azurerm_sentinel_data_connector_microsoft_cloud_app_security
    =
  (function
   | {
       alerts_enabled = v_alerts_enabled;
       discovery_logs_enabled = v_discovery_logs_enabled;
       id = v_id;
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       name = v_name;
       tenant_id = v_tenant_id;
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
         match v_tenant_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tenant_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_discovery_logs_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "discovery_logs_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alerts_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "alerts_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_sentinel_data_connector_microsoft_cloud_app_security ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_sentinel_data_connector_microsoft_cloud_app_security

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_data_connector_microsoft_cloud_app_security
    ?alerts_enabled ?discovery_logs_enabled ?id ?tenant_id ?timeouts
    ~log_analytics_workspace_id ~name () :
    azurerm_sentinel_data_connector_microsoft_cloud_app_security =
  {
    alerts_enabled;
    discovery_logs_enabled;
    id;
    log_analytics_workspace_id;
    name;
    tenant_id;
    timeouts;
  }

type t = {
  tf_name : string;
  alerts_enabled : bool prop;
  discovery_logs_enabled : bool prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  tenant_id : string prop;
}

let make ?alerts_enabled ?discovery_logs_enabled ?id ?tenant_id
    ?timeouts ~log_analytics_workspace_id ~name __id =
  let __type =
    "azurerm_sentinel_data_connector_microsoft_cloud_app_security"
  in
  let __attrs =
    ({
       tf_name = __id;
       alerts_enabled = Prop.computed __type __id "alerts_enabled";
       discovery_logs_enabled =
         Prop.computed __type __id "discovery_logs_enabled";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_data_connector_microsoft_cloud_app_security
        (azurerm_sentinel_data_connector_microsoft_cloud_app_security
           ?alerts_enabled ?discovery_logs_enabled ?id ?tenant_id
           ?timeouts ~log_analytics_workspace_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?alerts_enabled ?discovery_logs_enabled ?id
    ?tenant_id ?timeouts ~log_analytics_workspace_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?alerts_enabled ?discovery_logs_enabled ?id ?tenant_id
      ?timeouts ~log_analytics_workspace_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
