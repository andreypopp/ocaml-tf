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

type azurerm_sentinel_alert_rule_ms_security_incident = {
  alert_rule_template_guid : string prop option; [@option]
  description : string prop option; [@option]
  display_name : string prop;
  display_name_exclude_filter : string prop list option; [@option]
  display_name_filter : string prop list option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  log_analytics_workspace_id : string prop;
  name : string prop;
  product_filter : string prop;
  severity_filter : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_sentinel_alert_rule_ms_security_incident) -> ()

let yojson_of_azurerm_sentinel_alert_rule_ms_security_incident =
  (function
   | {
       alert_rule_template_guid = v_alert_rule_template_guid;
       description = v_description;
       display_name = v_display_name;
       display_name_exclude_filter = v_display_name_exclude_filter;
       display_name_filter = v_display_name_filter;
       enabled = v_enabled;
       id = v_id;
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       name = v_name;
       product_filter = v_product_filter;
       severity_filter = v_severity_filter;
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
         if [] = v_severity_filter then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_severity_filter
           in
           let bnd = "severity_filter", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_product_filter
         in
         ("product_filter", arg) :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "display_name_filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name_exclude_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "display_name_exclude_filter", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alert_rule_template_guid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alert_rule_template_guid", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_sentinel_alert_rule_ms_security_incident ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sentinel_alert_rule_ms_security_incident

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_alert_rule_ms_security_incident
    ?alert_rule_template_guid ?description
    ?display_name_exclude_filter ?display_name_filter ?enabled ?id
    ?timeouts ~display_name ~log_analytics_workspace_id ~name
    ~product_filter ~severity_filter () :
    azurerm_sentinel_alert_rule_ms_security_incident =
  {
    alert_rule_template_guid;
    description;
    display_name;
    display_name_exclude_filter;
    display_name_filter;
    enabled;
    id;
    log_analytics_workspace_id;
    name;
    product_filter;
    severity_filter;
    timeouts;
  }

type t = {
  tf_name : string;
  alert_rule_template_guid : string prop;
  description : string prop;
  display_name : string prop;
  display_name_exclude_filter : string list prop;
  display_name_filter : string list prop;
  enabled : bool prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  product_filter : string prop;
  severity_filter : string list prop;
}

let make ?alert_rule_template_guid ?description
    ?display_name_exclude_filter ?display_name_filter ?enabled ?id
    ?timeouts ~display_name ~log_analytics_workspace_id ~name
    ~product_filter ~severity_filter __id =
  let __type = "azurerm_sentinel_alert_rule_ms_security_incident" in
  let __attrs =
    ({
       tf_name = __id;
       alert_rule_template_guid =
         Prop.computed __type __id "alert_rule_template_guid";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       display_name_exclude_filter =
         Prop.computed __type __id "display_name_exclude_filter";
       display_name_filter =
         Prop.computed __type __id "display_name_filter";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
       product_filter = Prop.computed __type __id "product_filter";
       severity_filter = Prop.computed __type __id "severity_filter";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_alert_rule_ms_security_incident
        (azurerm_sentinel_alert_rule_ms_security_incident
           ?alert_rule_template_guid ?description
           ?display_name_exclude_filter ?display_name_filter ?enabled
           ?id ?timeouts ~display_name ~log_analytics_workspace_id
           ~name ~product_filter ~severity_filter ());
    attrs = __attrs;
  }

let register ?tf_module ?alert_rule_template_guid ?description
    ?display_name_exclude_filter ?display_name_filter ?enabled ?id
    ?timeouts ~display_name ~log_analytics_workspace_id ~name
    ~product_filter ~severity_filter __id =
  let (r : _ Tf_core.resource) =
    make ?alert_rule_template_guid ?description
      ?display_name_exclude_filter ?display_name_filter ?enabled ?id
      ?timeouts ~display_name ~log_analytics_workspace_id ~name
      ~product_filter ~severity_filter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
