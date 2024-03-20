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

type azurerm_sentinel_data_connector_microsoft_threat_intelligence = {
  bing_safety_phishing_url_lookback_date : string prop option;
      [@option]
  id : string prop option; [@option]
  log_analytics_workspace_id : string prop;
  microsoft_emerging_threat_feed_lookback_date : string prop option;
      [@option]
  name : string prop;
  tenant_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_sentinel_data_connector_microsoft_threat_intelligence) ->
  ()

let yojson_of_azurerm_sentinel_data_connector_microsoft_threat_intelligence
    =
  (function
   | {
       bing_safety_phishing_url_lookback_date =
         v_bing_safety_phishing_url_lookback_date;
       id = v_id;
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       microsoft_emerging_threat_feed_lookback_date =
         v_microsoft_emerging_threat_feed_lookback_date;
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
         match v_microsoft_emerging_threat_feed_lookback_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "microsoft_emerging_threat_feed_lookback_date", arg
             in
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
         match v_bing_safety_phishing_url_lookback_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "bing_safety_phishing_url_lookback_date", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_sentinel_data_connector_microsoft_threat_intelligence ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_sentinel_data_connector_microsoft_threat_intelligence

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_sentinel_data_connector_microsoft_threat_intelligence
    ?bing_safety_phishing_url_lookback_date ?id
    ?microsoft_emerging_threat_feed_lookback_date ?tenant_id
    ?timeouts ~log_analytics_workspace_id ~name () :
    azurerm_sentinel_data_connector_microsoft_threat_intelligence =
  {
    bing_safety_phishing_url_lookback_date;
    id;
    log_analytics_workspace_id;
    microsoft_emerging_threat_feed_lookback_date;
    name;
    tenant_id;
    timeouts;
  }

type t = {
  bing_safety_phishing_url_lookback_date : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  microsoft_emerging_threat_feed_lookback_date : string prop;
  name : string prop;
  tenant_id : string prop;
}

let make ?bing_safety_phishing_url_lookback_date ?id
    ?microsoft_emerging_threat_feed_lookback_date ?tenant_id
    ?timeouts ~log_analytics_workspace_id ~name __id =
  let __type =
    "azurerm_sentinel_data_connector_microsoft_threat_intelligence"
  in
  let __attrs =
    ({
       bing_safety_phishing_url_lookback_date =
         Prop.computed __type __id
           "bing_safety_phishing_url_lookback_date";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       microsoft_emerging_threat_feed_lookback_date =
         Prop.computed __type __id
           "microsoft_emerging_threat_feed_lookback_date";
       name = Prop.computed __type __id "name";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_data_connector_microsoft_threat_intelligence
        (azurerm_sentinel_data_connector_microsoft_threat_intelligence
           ?bing_safety_phishing_url_lookback_date ?id
           ?microsoft_emerging_threat_feed_lookback_date ?tenant_id
           ?timeouts ~log_analytics_workspace_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?bing_safety_phishing_url_lookback_date ?id
    ?microsoft_emerging_threat_feed_lookback_date ?tenant_id
    ?timeouts ~log_analytics_workspace_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?bing_safety_phishing_url_lookback_date ?id
      ?microsoft_emerging_threat_feed_lookback_date ?tenant_id
      ?timeouts ~log_analytics_workspace_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
