(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_mssql_server_extended_auditing_policy = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  log_monitoring_enabled : bool prop option; [@option]
      (** log_monitoring_enabled *)
  retention_in_days : float prop option; [@option]
      (** retention_in_days *)
  server_id : string prop;  (** server_id *)
  storage_account_access_key : string prop option; [@option]
      (** storage_account_access_key *)
  storage_account_access_key_is_secondary : bool prop option;
      [@option]
      (** storage_account_access_key_is_secondary *)
  storage_account_subscription_id : string prop option; [@option]
      (** storage_account_subscription_id *)
  storage_endpoint : string prop option; [@option]
      (** storage_endpoint *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_server_extended_auditing_policy *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_server_extended_auditing_policy ?enabled ?id
    ?log_monitoring_enabled ?retention_in_days
    ?storage_account_access_key
    ?storage_account_access_key_is_secondary
    ?storage_account_subscription_id ?storage_endpoint ?timeouts
    ~server_id () : azurerm_mssql_server_extended_auditing_policy =
  {
    enabled;
    id;
    log_monitoring_enabled;
    retention_in_days;
    server_id;
    storage_account_access_key;
    storage_account_access_key_is_secondary;
    storage_account_subscription_id;
    storage_endpoint;
    timeouts;
  }

type t = {
  enabled : bool prop;
  id : string prop;
  log_monitoring_enabled : bool prop;
  retention_in_days : float prop;
  server_id : string prop;
  storage_account_access_key : string prop;
  storage_account_access_key_is_secondary : bool prop;
  storage_account_subscription_id : string prop;
  storage_endpoint : string prop;
}

let make ?enabled ?id ?log_monitoring_enabled ?retention_in_days
    ?storage_account_access_key
    ?storage_account_access_key_is_secondary
    ?storage_account_subscription_id ?storage_endpoint ?timeouts
    ~server_id __id =
  let __type = "azurerm_mssql_server_extended_auditing_policy" in
  let __attrs =
    ({
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       log_monitoring_enabled =
         Prop.computed __type __id "log_monitoring_enabled";
       retention_in_days =
         Prop.computed __type __id "retention_in_days";
       server_id = Prop.computed __type __id "server_id";
       storage_account_access_key =
         Prop.computed __type __id "storage_account_access_key";
       storage_account_access_key_is_secondary =
         Prop.computed __type __id
           "storage_account_access_key_is_secondary";
       storage_account_subscription_id =
         Prop.computed __type __id "storage_account_subscription_id";
       storage_endpoint =
         Prop.computed __type __id "storage_endpoint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_server_extended_auditing_policy
        (azurerm_mssql_server_extended_auditing_policy ?enabled ?id
           ?log_monitoring_enabled ?retention_in_days
           ?storage_account_access_key
           ?storage_account_access_key_is_secondary
           ?storage_account_subscription_id ?storage_endpoint
           ?timeouts ~server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?log_monitoring_enabled
    ?retention_in_days ?storage_account_access_key
    ?storage_account_access_key_is_secondary
    ?storage_account_subscription_id ?storage_endpoint ?timeouts
    ~server_id __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?log_monitoring_enabled ?retention_in_days
      ?storage_account_access_key
      ?storage_account_access_key_is_secondary
      ?storage_account_subscription_id ?storage_endpoint ?timeouts
      ~server_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
