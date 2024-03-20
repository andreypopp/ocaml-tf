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

type azurerm_mssql_server_microsoft_support_auditing_policy = {
  blob_storage_endpoint : string prop option; [@option]
      (** blob_storage_endpoint *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  log_monitoring_enabled : bool prop option; [@option]
      (** log_monitoring_enabled *)
  server_id : string prop;  (** server_id *)
  storage_account_access_key : string prop option; [@option]
      (** storage_account_access_key *)
  storage_account_subscription_id : string prop option; [@option]
      (** storage_account_subscription_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_server_microsoft_support_auditing_policy *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_server_microsoft_support_auditing_policy
    ?blob_storage_endpoint ?enabled ?id ?log_monitoring_enabled
    ?storage_account_access_key ?storage_account_subscription_id
    ?timeouts ~server_id () :
    azurerm_mssql_server_microsoft_support_auditing_policy =
  {
    blob_storage_endpoint;
    enabled;
    id;
    log_monitoring_enabled;
    server_id;
    storage_account_access_key;
    storage_account_subscription_id;
    timeouts;
  }

type t = {
  blob_storage_endpoint : string prop;
  enabled : bool prop;
  id : string prop;
  log_monitoring_enabled : bool prop;
  server_id : string prop;
  storage_account_access_key : string prop;
  storage_account_subscription_id : string prop;
}

let make ?blob_storage_endpoint ?enabled ?id ?log_monitoring_enabled
    ?storage_account_access_key ?storage_account_subscription_id
    ?timeouts ~server_id __id =
  let __type =
    "azurerm_mssql_server_microsoft_support_auditing_policy"
  in
  let __attrs =
    ({
       blob_storage_endpoint =
         Prop.computed __type __id "blob_storage_endpoint";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       log_monitoring_enabled =
         Prop.computed __type __id "log_monitoring_enabled";
       server_id = Prop.computed __type __id "server_id";
       storage_account_access_key =
         Prop.computed __type __id "storage_account_access_key";
       storage_account_subscription_id =
         Prop.computed __type __id "storage_account_subscription_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_server_microsoft_support_auditing_policy
        (azurerm_mssql_server_microsoft_support_auditing_policy
           ?blob_storage_endpoint ?enabled ?id
           ?log_monitoring_enabled ?storage_account_access_key
           ?storage_account_subscription_id ?timeouts ~server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?blob_storage_endpoint ?enabled ?id
    ?log_monitoring_enabled ?storage_account_access_key
    ?storage_account_subscription_id ?timeouts ~server_id __id =
  let (r : _ Tf_core.resource) =
    make ?blob_storage_endpoint ?enabled ?id ?log_monitoring_enabled
      ?storage_account_access_key ?storage_account_subscription_id
      ?timeouts ~server_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
