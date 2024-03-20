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

type azurerm_mssql_database_extended_auditing_policy = {
  database_id : string prop;  (** database_id *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  log_monitoring_enabled : bool prop option; [@option]
      (** log_monitoring_enabled *)
  retention_in_days : float prop option; [@option]
      (** retention_in_days *)
  storage_account_access_key : string prop option; [@option]
      (** storage_account_access_key *)
  storage_account_access_key_is_secondary : bool prop option;
      [@option]
      (** storage_account_access_key_is_secondary *)
  storage_endpoint : string prop option; [@option]
      (** storage_endpoint *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_database_extended_auditing_policy *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_database_extended_auditing_policy ?enabled ?id
    ?log_monitoring_enabled ?retention_in_days
    ?storage_account_access_key
    ?storage_account_access_key_is_secondary ?storage_endpoint
    ?timeouts ~database_id () :
    azurerm_mssql_database_extended_auditing_policy =
  {
    database_id;
    enabled;
    id;
    log_monitoring_enabled;
    retention_in_days;
    storage_account_access_key;
    storage_account_access_key_is_secondary;
    storage_endpoint;
    timeouts;
  }

type t = {
  database_id : string prop;
  enabled : bool prop;
  id : string prop;
  log_monitoring_enabled : bool prop;
  retention_in_days : float prop;
  storage_account_access_key : string prop;
  storage_account_access_key_is_secondary : bool prop;
  storage_endpoint : string prop;
}

let make ?enabled ?id ?log_monitoring_enabled ?retention_in_days
    ?storage_account_access_key
    ?storage_account_access_key_is_secondary ?storage_endpoint
    ?timeouts ~database_id __id =
  let __type = "azurerm_mssql_database_extended_auditing_policy" in
  let __attrs =
    ({
       database_id = Prop.computed __type __id "database_id";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       log_monitoring_enabled =
         Prop.computed __type __id "log_monitoring_enabled";
       retention_in_days =
         Prop.computed __type __id "retention_in_days";
       storage_account_access_key =
         Prop.computed __type __id "storage_account_access_key";
       storage_account_access_key_is_secondary =
         Prop.computed __type __id
           "storage_account_access_key_is_secondary";
       storage_endpoint =
         Prop.computed __type __id "storage_endpoint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_database_extended_auditing_policy
        (azurerm_mssql_database_extended_auditing_policy ?enabled ?id
           ?log_monitoring_enabled ?retention_in_days
           ?storage_account_access_key
           ?storage_account_access_key_is_secondary ?storage_endpoint
           ?timeouts ~database_id ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?log_monitoring_enabled
    ?retention_in_days ?storage_account_access_key
    ?storage_account_access_key_is_secondary ?storage_endpoint
    ?timeouts ~database_id __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?log_monitoring_enabled ?retention_in_days
      ?storage_account_access_key
      ?storage_account_access_key_is_secondary ?storage_endpoint
      ?timeouts ~database_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
