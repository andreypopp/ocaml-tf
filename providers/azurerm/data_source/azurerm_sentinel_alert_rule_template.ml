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

type nrt_template = {
  description : string prop;
  query : string prop;
  severity : string prop;
  tactics : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nrt_template) -> ()

let yojson_of_nrt_template =
  (function
   | {
       description = v_description;
       query = v_query;
       severity = v_severity;
       tactics = v_tactics;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_tactics
         in
         ("tactics", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_severity in
         ("severity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query in
         ("query", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : nrt_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nrt_template

[@@@deriving.end]

type scheduled_template = {
  description : string prop;
  query : string prop;
  query_frequency : string prop;
  query_period : string prop;
  severity : string prop;
  tactics : string prop list;
  trigger_operator : string prop;
  trigger_threshold : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scheduled_template) -> ()

let yojson_of_scheduled_template =
  (function
   | {
       description = v_description;
       query = v_query;
       query_frequency = v_query_frequency;
       query_period = v_query_period;
       severity = v_severity;
       tactics = v_tactics;
       trigger_operator = v_trigger_operator;
       trigger_threshold = v_trigger_threshold;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_trigger_threshold
         in
         ("trigger_threshold", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_trigger_operator
         in
         ("trigger_operator", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_tactics
         in
         ("tactics", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_severity in
         ("severity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query_period in
         ("query_period", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_query_frequency
         in
         ("query_frequency", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query in
         ("query", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : scheduled_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scheduled_template

[@@@deriving.end]

type security_incident_template = {
  description : string prop;
  product_filter : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_incident_template) -> ()

let yojson_of_security_incident_template =
  (function
   | {
       description = v_description;
       product_filter = v_product_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_product_filter
         in
         ("product_filter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : security_incident_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_incident_template

[@@@deriving.end]

type azurerm_sentinel_alert_rule_template = {
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  log_analytics_workspace_id : string prop;
  name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_sentinel_alert_rule_template) -> ()

let yojson_of_azurerm_sentinel_alert_rule_template =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       log_analytics_workspace_id = v_log_analytics_workspace_id;
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_sentinel_alert_rule_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sentinel_alert_rule_template

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_sentinel_alert_rule_template ?display_name ?id ?name
    ?timeouts ~log_analytics_workspace_id () :
    azurerm_sentinel_alert_rule_template =
  { display_name; id; log_analytics_workspace_id; name; timeouts }

type t = {
  display_name : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  nrt_template : nrt_template list prop;
  scheduled_template : scheduled_template list prop;
  security_incident_template : security_incident_template list prop;
}

let make ?display_name ?id ?name ?timeouts
    ~log_analytics_workspace_id __id =
  let __type = "azurerm_sentinel_alert_rule_template" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
       nrt_template = Prop.computed __type __id "nrt_template";
       scheduled_template =
         Prop.computed __type __id "scheduled_template";
       security_incident_template =
         Prop.computed __type __id "security_incident_template";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_alert_rule_template
        (azurerm_sentinel_alert_rule_template ?display_name ?id ?name
           ?timeouts ~log_analytics_workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?name ?timeouts
    ~log_analytics_workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?name ?timeouts
      ~log_analytics_workspace_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
