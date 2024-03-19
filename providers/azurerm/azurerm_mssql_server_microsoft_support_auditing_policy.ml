(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?blob_storage_endpoint ?enabled ?id
    ?log_monitoring_enabled ?storage_account_access_key
    ?storage_account_subscription_id ?timeouts ~server_id
    __resource_id =
  let __resource_type =
    "azurerm_mssql_server_microsoft_support_auditing_policy"
  in
  let __resource =
    azurerm_mssql_server_microsoft_support_auditing_policy
      ?blob_storage_endpoint ?enabled ?id ?log_monitoring_enabled
      ?storage_account_access_key ?storage_account_subscription_id
      ?timeouts ~server_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_server_microsoft_support_auditing_policy
       __resource);
  let __resource_attributes =
    ({
       blob_storage_endpoint =
         Prop.computed __resource_type __resource_id
           "blob_storage_endpoint";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       log_monitoring_enabled =
         Prop.computed __resource_type __resource_id
           "log_monitoring_enabled";
       server_id =
         Prop.computed __resource_type __resource_id "server_id";
       storage_account_access_key =
         Prop.computed __resource_type __resource_id
           "storage_account_access_key";
       storage_account_subscription_id =
         Prop.computed __resource_type __resource_id
           "storage_account_subscription_id";
     }
      : t)
  in
  __resource_attributes
