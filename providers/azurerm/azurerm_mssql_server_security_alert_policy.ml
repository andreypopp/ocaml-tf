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

type azurerm_mssql_server_security_alert_policy = {
  disabled_alerts : string prop list option; [@option]
      (** disabled_alerts *)
  email_account_admins : bool prop option; [@option]
      (** email_account_admins *)
  email_addresses : string prop list option; [@option]
      (** email_addresses *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  retention_days : float prop option; [@option]
      (** retention_days *)
  server_name : string prop;  (** server_name *)
  state : string prop;  (** state *)
  storage_account_access_key : string prop option; [@option]
      (** storage_account_access_key *)
  storage_endpoint : string prop option; [@option]
      (** storage_endpoint *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_server_security_alert_policy *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_server_security_alert_policy ?disabled_alerts
    ?email_account_admins ?email_addresses ?id ?retention_days
    ?storage_account_access_key ?storage_endpoint ?timeouts
    ~resource_group_name ~server_name ~state () :
    azurerm_mssql_server_security_alert_policy =
  {
    disabled_alerts;
    email_account_admins;
    email_addresses;
    id;
    resource_group_name;
    retention_days;
    server_name;
    state;
    storage_account_access_key;
    storage_endpoint;
    timeouts;
  }

type t = {
  disabled_alerts : string list prop;
  email_account_admins : bool prop;
  email_addresses : string list prop;
  id : string prop;
  resource_group_name : string prop;
  retention_days : float prop;
  server_name : string prop;
  state : string prop;
  storage_account_access_key : string prop;
  storage_endpoint : string prop;
}

let make ?disabled_alerts ?email_account_admins ?email_addresses ?id
    ?retention_days ?storage_account_access_key ?storage_endpoint
    ?timeouts ~resource_group_name ~server_name ~state __id =
  let __type = "azurerm_mssql_server_security_alert_policy" in
  let __attrs =
    ({
       disabled_alerts = Prop.computed __type __id "disabled_alerts";
       email_account_admins =
         Prop.computed __type __id "email_account_admins";
       email_addresses = Prop.computed __type __id "email_addresses";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       retention_days = Prop.computed __type __id "retention_days";
       server_name = Prop.computed __type __id "server_name";
       state = Prop.computed __type __id "state";
       storage_account_access_key =
         Prop.computed __type __id "storage_account_access_key";
       storage_endpoint =
         Prop.computed __type __id "storage_endpoint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_server_security_alert_policy
        (azurerm_mssql_server_security_alert_policy ?disabled_alerts
           ?email_account_admins ?email_addresses ?id ?retention_days
           ?storage_account_access_key ?storage_endpoint ?timeouts
           ~resource_group_name ~server_name ~state ());
    attrs = __attrs;
  }

let register ?tf_module ?disabled_alerts ?email_account_admins
    ?email_addresses ?id ?retention_days ?storage_account_access_key
    ?storage_endpoint ?timeouts ~resource_group_name ~server_name
    ~state __id =
  let (r : _ Tf_core.resource) =
    make ?disabled_alerts ?email_account_admins ?email_addresses ?id
      ?retention_days ?storage_account_access_key ?storage_endpoint
      ?timeouts ~resource_group_name ~server_name ~state __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
