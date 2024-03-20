(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type log_tag_filter = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** log_tag_filter *)

type metric_tag_filter = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** metric_tag_filter *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_new_relic_tag_rule = {
  activity_log_enabled : bool prop option; [@option]
      (** activity_log_enabled *)
  azure_active_directory_log_enabled : bool prop option; [@option]
      (** azure_active_directory_log_enabled *)
  id : string prop option; [@option]  (** id *)
  metric_enabled : bool prop option; [@option]  (** metric_enabled *)
  monitor_id : string prop;  (** monitor_id *)
  subscription_log_enabled : bool prop option; [@option]
      (** subscription_log_enabled *)
  log_tag_filter : log_tag_filter list;
  metric_tag_filter : metric_tag_filter list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_new_relic_tag_rule *)

let log_tag_filter ~action ~name ~value () : log_tag_filter =
  { action; name; value }

let metric_tag_filter ~action ~name ~value () : metric_tag_filter =
  { action; name; value }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_new_relic_tag_rule ?activity_log_enabled
    ?azure_active_directory_log_enabled ?id ?metric_enabled
    ?subscription_log_enabled ?timeouts ~monitor_id ~log_tag_filter
    ~metric_tag_filter () : azurerm_new_relic_tag_rule =
  {
    activity_log_enabled;
    azure_active_directory_log_enabled;
    id;
    metric_enabled;
    monitor_id;
    subscription_log_enabled;
    log_tag_filter;
    metric_tag_filter;
    timeouts;
  }

type t = {
  activity_log_enabled : bool prop;
  azure_active_directory_log_enabled : bool prop;
  id : string prop;
  metric_enabled : bool prop;
  monitor_id : string prop;
  subscription_log_enabled : bool prop;
}

let make ?activity_log_enabled ?azure_active_directory_log_enabled
    ?id ?metric_enabled ?subscription_log_enabled ?timeouts
    ~monitor_id ~log_tag_filter ~metric_tag_filter __id =
  let __type = "azurerm_new_relic_tag_rule" in
  let __attrs =
    ({
       activity_log_enabled =
         Prop.computed __type __id "activity_log_enabled";
       azure_active_directory_log_enabled =
         Prop.computed __type __id
           "azure_active_directory_log_enabled";
       id = Prop.computed __type __id "id";
       metric_enabled = Prop.computed __type __id "metric_enabled";
       monitor_id = Prop.computed __type __id "monitor_id";
       subscription_log_enabled =
         Prop.computed __type __id "subscription_log_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_new_relic_tag_rule
        (azurerm_new_relic_tag_rule ?activity_log_enabled
           ?azure_active_directory_log_enabled ?id ?metric_enabled
           ?subscription_log_enabled ?timeouts ~monitor_id
           ~log_tag_filter ~metric_tag_filter ());
    attrs = __attrs;
  }

let register ?tf_module ?activity_log_enabled
    ?azure_active_directory_log_enabled ?id ?metric_enabled
    ?subscription_log_enabled ?timeouts ~monitor_id ~log_tag_filter
    ~metric_tag_filter __id =
  let (r : _ Tf_core.resource) =
    make ?activity_log_enabled ?azure_active_directory_log_enabled
      ?id ?metric_enabled ?subscription_log_enabled ?timeouts
      ~monitor_id ~log_tag_filter ~metric_tag_filter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
