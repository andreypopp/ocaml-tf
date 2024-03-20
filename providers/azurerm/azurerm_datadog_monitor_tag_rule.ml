(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type log__filter = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** log__filter *)

type log = {
  aad_log_enabled : bool prop option; [@option]
      (** aad_log_enabled *)
  resource_log_enabled : bool prop option; [@option]
      (** resource_log_enabled *)
  subscription_log_enabled : bool prop option; [@option]
      (** subscription_log_enabled *)
  filter : log__filter list;
}
[@@deriving yojson_of]
(** log *)

type metric__filter = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** metric__filter *)

type metric = { filter : metric__filter list } [@@deriving yojson_of]
(** metric *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_datadog_monitor_tag_rule = {
  datadog_monitor_id : string prop;  (** datadog_monitor_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  log : log list;
  metric : metric list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor_tag_rule *)

let log__filter ~action ~name ~value () : log__filter =
  { action; name; value }

let log ?aad_log_enabled ?resource_log_enabled
    ?subscription_log_enabled ~filter () : log =
  {
    aad_log_enabled;
    resource_log_enabled;
    subscription_log_enabled;
    filter;
  }

let metric__filter ~action ~name ~value () : metric__filter =
  { action; name; value }

let metric ~filter () : metric = { filter }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_datadog_monitor_tag_rule ?id ?name ?timeouts
    ~datadog_monitor_id ~log ~metric () :
    azurerm_datadog_monitor_tag_rule =
  { datadog_monitor_id; id; name; log; metric; timeouts }

type t = {
  datadog_monitor_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?name ?timeouts ~datadog_monitor_id ~log ~metric __id =
  let __type = "azurerm_datadog_monitor_tag_rule" in
  let __attrs =
    ({
       datadog_monitor_id =
         Prop.computed __type __id "datadog_monitor_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_datadog_monitor_tag_rule
        (azurerm_datadog_monitor_tag_rule ?id ?name ?timeouts
           ~datadog_monitor_id ~log ~metric ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?timeouts ~datadog_monitor_id ~log
    ~metric __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?timeouts ~datadog_monitor_id ~log ~metric __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
