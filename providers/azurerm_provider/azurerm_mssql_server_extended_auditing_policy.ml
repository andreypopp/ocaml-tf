(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_server_extended_auditing_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_server_extended_auditing_policy__timeouts *)

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
  timeouts :
    azurerm_mssql_server_extended_auditing_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_server_extended_auditing_policy *)

let azurerm_mssql_server_extended_auditing_policy ?enabled ?id
    ?log_monitoring_enabled ?retention_in_days
    ?storage_account_access_key
    ?storage_account_access_key_is_secondary
    ?storage_account_subscription_id ?storage_endpoint ?timeouts
    ~server_id __resource_id =
  let __resource_type =
    "azurerm_mssql_server_extended_auditing_policy"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_server_extended_auditing_policy
       __resource);
  ()
