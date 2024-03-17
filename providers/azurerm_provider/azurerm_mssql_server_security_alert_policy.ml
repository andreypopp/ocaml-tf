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

let azurerm_mssql_server_security_alert_policy ?disabled_alerts
    ?email_account_admins ?email_addresses ?id ?retention_days
    ?storage_account_access_key ?storage_endpoint ?timeouts
    ~resource_group_name ~server_name ~state __resource_id =
  let __resource_type =
    "azurerm_mssql_server_security_alert_policy"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_server_security_alert_policy __resource);
  ()
