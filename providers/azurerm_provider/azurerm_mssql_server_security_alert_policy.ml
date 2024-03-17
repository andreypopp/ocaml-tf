(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_server_security_alert_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_server_security_alert_policy__timeouts *)

type azurerm_mssql_server_security_alert_policy = {
  disabled_alerts : string list option; [@option]
      (** disabled_alerts *)
  email_account_admins : bool option; [@option]
      (** email_account_admins *)
  email_addresses : string list option; [@option]
      (** email_addresses *)
  resource_group_name : string;  (** resource_group_name *)
  retention_days : float option; [@option]  (** retention_days *)
  server_name : string;  (** server_name *)
  state : string;  (** state *)
  storage_account_access_key : string option; [@option]
      (** storage_account_access_key *)
  storage_endpoint : string option; [@option]
      (** storage_endpoint *)
  timeouts :
    azurerm_mssql_server_security_alert_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_server_security_alert_policy *)

let azurerm_mssql_server_security_alert_policy ?disabled_alerts
    ?email_account_admins ?email_addresses ?retention_days
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
