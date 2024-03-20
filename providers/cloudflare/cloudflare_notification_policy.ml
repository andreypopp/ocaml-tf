(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type email_integration = {
  id : string prop;
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : email_integration) -> ()

let yojson_of_email_integration =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : email_integration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_email_integration

[@@@deriving.end]

type filters = {
  actions : string prop list option; [@option]
  affected_components : string prop list option; [@option]
  alert_trigger_preferences : string prop list option; [@option]
  enabled : string prop list option; [@option]
  environment : string prop list option; [@option]
  event : string prop list option; [@option]
  event_source : string prop list option; [@option]
  event_type : string prop list option; [@option]
  group_by : string prop list option; [@option]
  health_check_id : string prop list option; [@option]
  incident_impact : string prop list option; [@option]
  input_id : string prop list option; [@option]
  limit : string prop list option; [@option]
  megabits_per_second : string prop list option; [@option]
  new_health : string prop list option; [@option]
  new_status : string prop list option; [@option]
  packets_per_second : string prop list option; [@option]
  pool_id : string prop list option; [@option]
  product : string prop list option; [@option]
  project_id : string prop list option; [@option]
  protocol : string prop list option; [@option]
  requests_per_second : string prop list option; [@option]
  selectors : string prop list option; [@option]
  services : string prop list option; [@option]
  slo : string prop list option; [@option]
  status : string prop list option; [@option]
  target_hostname : string prop list option; [@option]
  target_zone_name : string prop list option; [@option]
  tunnel_id : string prop list option; [@option]
  where : string prop list option; [@option]
  zones : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters) -> ()

let yojson_of_filters =
  (function
   | {
       actions = v_actions;
       affected_components = v_affected_components;
       alert_trigger_preferences = v_alert_trigger_preferences;
       enabled = v_enabled;
       environment = v_environment;
       event = v_event;
       event_source = v_event_source;
       event_type = v_event_type;
       group_by = v_group_by;
       health_check_id = v_health_check_id;
       incident_impact = v_incident_impact;
       input_id = v_input_id;
       limit = v_limit;
       megabits_per_second = v_megabits_per_second;
       new_health = v_new_health;
       new_status = v_new_status;
       packets_per_second = v_packets_per_second;
       pool_id = v_pool_id;
       product = v_product;
       project_id = v_project_id;
       protocol = v_protocol;
       requests_per_second = v_requests_per_second;
       selectors = v_selectors;
       services = v_services;
       slo = v_slo;
       status = v_status;
       target_hostname = v_target_hostname;
       target_zone_name = v_target_zone_name;
       tunnel_id = v_tunnel_id;
       where = v_where;
       zones = v_zones;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "zones", arg in
             bnd :: bnds
       in
       let bnds =
         match v_where with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "where", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tunnel_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_zone_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "target_zone_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "target_hostname", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_slo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "slo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_services with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "services", arg in
             bnd :: bnds
       in
       let bnds =
         match v_selectors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "selectors", arg in
             bnd :: bnds
       in
       let bnds =
         match v_requests_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "requests_per_second", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "project_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_product with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "product", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pool_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "pool_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_packets_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "packets_per_second", arg in
             bnd :: bnds
       in
       let bnds =
         match v_new_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "new_status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_new_health with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "new_health", arg in
             bnd :: bnds
       in
       let bnds =
         match v_megabits_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "megabits_per_second", arg in
             bnd :: bnds
       in
       let bnds =
         match v_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_input_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "input_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_incident_impact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "incident_impact", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "health_check_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_by with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "group_by", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "event_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "event_source", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "event", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "environment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alert_trigger_preferences with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "alert_trigger_preferences", arg in
             bnd :: bnds
       in
       let bnds =
         match v_affected_components with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "affected_components", arg in
             bnd :: bnds
       in
       let bnds =
         match v_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "actions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters

[@@@deriving.end]

type pagerduty_integration = {
  id : string prop;
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pagerduty_integration) -> ()

let yojson_of_pagerduty_integration =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : pagerduty_integration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pagerduty_integration

[@@@deriving.end]

type webhooks_integration = {
  id : string prop;
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : webhooks_integration) -> ()

let yojson_of_webhooks_integration =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : webhooks_integration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhooks_integration

[@@@deriving.end]

type cloudflare_notification_policy = {
  account_id : string prop;
  alert_type : string prop;
  description : string prop option; [@option]
  enabled : bool prop;
  id : string prop option; [@option]
  name : string prop;
  email_integration : email_integration list;
  filters : filters list;
  pagerduty_integration : pagerduty_integration list;
  webhooks_integration : webhooks_integration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_notification_policy) -> ()

let yojson_of_cloudflare_notification_policy =
  (function
   | {
       account_id = v_account_id;
       alert_type = v_alert_type;
       description = v_description;
       enabled = v_enabled;
       id = v_id;
       name = v_name;
       email_integration = v_email_integration;
       filters = v_filters;
       pagerduty_integration = v_pagerduty_integration;
       webhooks_integration = v_webhooks_integration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_webhooks_integration
             v_webhooks_integration
         in
         ("webhooks_integration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_pagerduty_integration
             v_pagerduty_integration
         in
         ("pagerduty_integration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_filters v_filters in
         ("filters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_email_integration
             v_email_integration
         in
         ("email_integration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_alert_type in
         ("alert_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_notification_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_notification_policy

[@@@deriving.end]

let email_integration ?name ~id () : email_integration = { id; name }

let filters ?actions ?affected_components ?alert_trigger_preferences
    ?enabled ?environment ?event ?event_source ?event_type ?group_by
    ?health_check_id ?incident_impact ?input_id ?limit
    ?megabits_per_second ?new_health ?new_status ?packets_per_second
    ?pool_id ?product ?project_id ?protocol ?requests_per_second
    ?selectors ?services ?slo ?status ?target_hostname
    ?target_zone_name ?tunnel_id ?where ?zones () : filters =
  {
    actions;
    affected_components;
    alert_trigger_preferences;
    enabled;
    environment;
    event;
    event_source;
    event_type;
    group_by;
    health_check_id;
    incident_impact;
    input_id;
    limit;
    megabits_per_second;
    new_health;
    new_status;
    packets_per_second;
    pool_id;
    product;
    project_id;
    protocol;
    requests_per_second;
    selectors;
    services;
    slo;
    status;
    target_hostname;
    target_zone_name;
    tunnel_id;
    where;
    zones;
  }

let pagerduty_integration ?name ~id () : pagerduty_integration =
  { id; name }

let webhooks_integration ?name ~id () : webhooks_integration =
  { id; name }

let cloudflare_notification_policy ?description ?id ~account_id
    ~alert_type ~enabled ~name ~email_integration ~filters
    ~pagerduty_integration ~webhooks_integration () :
    cloudflare_notification_policy =
  {
    account_id;
    alert_type;
    description;
    enabled;
    id;
    name;
    email_integration;
    filters;
    pagerduty_integration;
    webhooks_integration;
  }

type t = {
  account_id : string prop;
  alert_type : string prop;
  created : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  modified : string prop;
  name : string prop;
}

let make ?description ?id ~account_id ~alert_type ~enabled ~name
    ~email_integration ~filters ~pagerduty_integration
    ~webhooks_integration __id =
  let __type = "cloudflare_notification_policy" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       alert_type = Prop.computed __type __id "alert_type";
       created = Prop.computed __type __id "created";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       modified = Prop.computed __type __id "modified";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_notification_policy
        (cloudflare_notification_policy ?description ?id ~account_id
           ~alert_type ~enabled ~name ~email_integration ~filters
           ~pagerduty_integration ~webhooks_integration ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~account_id ~alert_type
    ~enabled ~name ~email_integration ~filters ~pagerduty_integration
    ~webhooks_integration __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~account_id ~alert_type ~enabled ~name
      ~email_integration ~filters ~pagerduty_integration
      ~webhooks_integration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
