(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mssql_database_extended_auditing_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_database_extended_auditing_policy__timeouts *)

type azurerm_mssql_database_extended_auditing_policy = {
  database_id : string;  (** database_id *)
  enabled : bool option; [@option]  (** enabled *)
  log_monitoring_enabled : bool option; [@option]
      (** log_monitoring_enabled *)
  retention_in_days : float option; [@option]
      (** retention_in_days *)
  storage_account_access_key : string option; [@option]
      (** storage_account_access_key *)
  storage_account_access_key_is_secondary : bool option; [@option]
      (** storage_account_access_key_is_secondary *)
  storage_endpoint : string option; [@option]
      (** storage_endpoint *)
  timeouts :
    azurerm_mssql_database_extended_auditing_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_database_extended_auditing_policy *)

let azurerm_mssql_database_extended_auditing_policy ?enabled
    ?log_monitoring_enabled ?retention_in_days
    ?storage_account_access_key
    ?storage_account_access_key_is_secondary ?storage_endpoint
    ?timeouts ~database_id __resource_id =
  let __resource_type =
    "azurerm_mssql_database_extended_auditing_policy"
  in
  let __resource =
    {
      database_id;
      enabled;
      log_monitoring_enabled;
      retention_in_days;
      storage_account_access_key;
      storage_account_access_key_is_secondary;
      storage_endpoint;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_database_extended_auditing_policy
       __resource);
  ()