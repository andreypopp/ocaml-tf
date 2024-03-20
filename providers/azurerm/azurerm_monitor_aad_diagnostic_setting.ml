(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type enabled_log__retention_policy = {
  days : float prop option; [@option]  (** days *)
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** enabled_log__retention_policy *)

type enabled_log = {
  category : string prop;  (** category *)
  retention_policy : enabled_log__retention_policy list;
}
[@@deriving yojson_of]
(** enabled_log *)

type log__retention_policy = {
  days : float prop option; [@option]  (** days *)
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** log__retention_policy *)

type log = {
  category : string prop;  (** category *)
  enabled : bool prop option; [@option]  (** enabled *)
  retention_policy : log__retention_policy list;
}
[@@deriving yojson_of]
(** log *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_monitor_aad_diagnostic_setting = {
  eventhub_authorization_rule_id : string prop option; [@option]
      (** eventhub_authorization_rule_id *)
  eventhub_name : string prop option; [@option]  (** eventhub_name *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop option; [@option]
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  storage_account_id : string prop option; [@option]
      (** storage_account_id *)
  enabled_log : enabled_log list;
  log : log list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_aad_diagnostic_setting *)

let enabled_log__retention_policy ?days ?enabled () :
    enabled_log__retention_policy =
  { days; enabled }

let enabled_log ~category ~retention_policy () : enabled_log =
  { category; retention_policy }

let log__retention_policy ?days ?enabled () : log__retention_policy =
  { days; enabled }

let log ?enabled ~category ~retention_policy () : log =
  { category; enabled; retention_policy }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_aad_diagnostic_setting
    ?eventhub_authorization_rule_id ?eventhub_name ?id
    ?log_analytics_workspace_id ?storage_account_id ?timeouts ~name
    ~enabled_log ~log () : azurerm_monitor_aad_diagnostic_setting =
  {
    eventhub_authorization_rule_id;
    eventhub_name;
    id;
    log_analytics_workspace_id;
    name;
    storage_account_id;
    enabled_log;
    log;
    timeouts;
  }

type t = {
  eventhub_authorization_rule_id : string prop;
  eventhub_name : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  storage_account_id : string prop;
}

let make ?eventhub_authorization_rule_id ?eventhub_name ?id
    ?log_analytics_workspace_id ?storage_account_id ?timeouts ~name
    ~enabled_log ~log __id =
  let __type = "azurerm_monitor_aad_diagnostic_setting" in
  let __attrs =
    ({
       eventhub_authorization_rule_id =
         Prop.computed __type __id "eventhub_authorization_rule_id";
       eventhub_name = Prop.computed __type __id "eventhub_name";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_aad_diagnostic_setting
        (azurerm_monitor_aad_diagnostic_setting
           ?eventhub_authorization_rule_id ?eventhub_name ?id
           ?log_analytics_workspace_id ?storage_account_id ?timeouts
           ~name ~enabled_log ~log ());
    attrs = __attrs;
  }

let register ?tf_module ?eventhub_authorization_rule_id
    ?eventhub_name ?id ?log_analytics_workspace_id
    ?storage_account_id ?timeouts ~name ~enabled_log ~log __id =
  let (r : _ Tf_core.resource) =
    make ?eventhub_authorization_rule_id ?eventhub_name ?id
      ?log_analytics_workspace_id ?storage_account_id ?timeouts ~name
      ~enabled_log ~log __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
