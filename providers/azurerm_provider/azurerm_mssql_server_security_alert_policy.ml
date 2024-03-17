(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_server_security_alert_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_server_security_alert_policy__timeouts *)

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
  timeouts :
    azurerm_mssql_server_security_alert_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_server_security_alert_policy *)

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

let azurerm_mssql_server_security_alert_policy ?disabled_alerts
    ?email_account_admins ?email_addresses ?id ?retention_days
    ?storage_account_access_key ?storage_endpoint ?timeouts
    ~resource_group_name ~server_name ~state __resource_id =
  let __resource_type =
    "azurerm_mssql_server_security_alert_policy"
  in
  let __resource =
    ({
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
      : azurerm_mssql_server_security_alert_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_server_security_alert_policy __resource);
  let __resource_attributes =
    ({
       disabled_alerts =
         Prop.computed __resource_type __resource_id
           "disabled_alerts";
       email_account_admins =
         Prop.computed __resource_type __resource_id
           "email_account_admins";
       email_addresses =
         Prop.computed __resource_type __resource_id
           "email_addresses";
       id = Prop.computed __resource_type __resource_id "id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       retention_days =
         Prop.computed __resource_type __resource_id "retention_days";
       server_name =
         Prop.computed __resource_type __resource_id "server_name";
       state = Prop.computed __resource_type __resource_id "state";
       storage_account_access_key =
         Prop.computed __resource_type __resource_id
           "storage_account_access_key";
       storage_endpoint =
         Prop.computed __resource_type __resource_id
           "storage_endpoint";
     }
      : t)
  in
  __resource_attributes
