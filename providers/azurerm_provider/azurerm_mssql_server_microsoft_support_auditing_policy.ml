(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mssql_server_microsoft_support_auditing_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_server_microsoft_support_auditing_policy__timeouts *)

type azurerm_mssql_server_microsoft_support_auditing_policy = {
  blob_storage_endpoint : string option; [@option]
      (** blob_storage_endpoint *)
  enabled : bool option; [@option]  (** enabled *)
  log_monitoring_enabled : bool option; [@option]
      (** log_monitoring_enabled *)
  server_id : string;  (** server_id *)
  storage_account_access_key : string option; [@option]
      (** storage_account_access_key *)
  storage_account_subscription_id : string option; [@option]
      (** storage_account_subscription_id *)
  timeouts :
    azurerm_mssql_server_microsoft_support_auditing_policy__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_mssql_server_microsoft_support_auditing_policy *)

let azurerm_mssql_server_microsoft_support_auditing_policy
    ?blob_storage_endpoint ?enabled ?log_monitoring_enabled
    ?storage_account_access_key ?storage_account_subscription_id
    ?timeouts ~server_id __resource_id =
  let __resource_type =
    "azurerm_mssql_server_microsoft_support_auditing_policy"
  in
  let __resource =
    {
      blob_storage_endpoint;
      enabled;
      log_monitoring_enabled;
      server_id;
      storage_account_access_key;
      storage_account_subscription_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_server_microsoft_support_auditing_policy
       __resource);
  ()
