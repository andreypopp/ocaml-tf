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

type azurerm_sentinel_data_connector_iot = {
  id : string prop option; [@option]
  log_analytics_workspace_id : string prop;
  name : string prop;
  subscription_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_sentinel_data_connector_iot) -> ()

let yojson_of_azurerm_sentinel_data_connector_iot =
  (function
   | {
       id = v_id;
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       name = v_name;
       subscription_id = v_subscription_id;
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
         match v_subscription_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subscription_id", arg in
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
       `Assoc bnds
    : azurerm_sentinel_data_connector_iot ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sentinel_data_connector_iot

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_sentinel_data_connector_iot ?id ?subscription_id
    ?timeouts ~log_analytics_workspace_id ~name () :
    azurerm_sentinel_data_connector_iot =
  { id; log_analytics_workspace_id; name; subscription_id; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  subscription_id : string prop;
}

let make ?id ?subscription_id ?timeouts ~log_analytics_workspace_id
    ~name __id =
  let __type = "azurerm_sentinel_data_connector_iot" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
       subscription_id = Prop.computed __type __id "subscription_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_data_connector_iot
        (azurerm_sentinel_data_connector_iot ?id ?subscription_id
           ?timeouts ~log_analytics_workspace_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?subscription_id ?timeouts
    ~log_analytics_workspace_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?subscription_id ?timeouts ~log_analytics_workspace_id
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
