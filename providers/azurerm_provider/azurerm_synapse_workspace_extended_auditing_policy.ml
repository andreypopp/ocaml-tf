(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_synapse_workspace_extended_auditing_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace_extended_auditing_policy__timeouts *)

type azurerm_synapse_workspace_extended_auditing_policy = {
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
  synapse_workspace_id : string;  (** synapse_workspace_id *)
  timeouts :
    azurerm_synapse_workspace_extended_auditing_policy__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace_extended_auditing_policy *)

let azurerm_synapse_workspace_extended_auditing_policy
    ?log_monitoring_enabled ?retention_in_days
    ?storage_account_access_key
    ?storage_account_access_key_is_secondary ?storage_endpoint
    ?timeouts ~synapse_workspace_id __resource_id =
  let __resource_type =
    "azurerm_synapse_workspace_extended_auditing_policy"
  in
  let __resource =
    {
      log_monitoring_enabled;
      retention_in_days;
      storage_account_access_key;
      storage_account_access_key_is_secondary;
      storage_endpoint;
      synapse_workspace_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_workspace_extended_auditing_policy
       __resource);
  ()
