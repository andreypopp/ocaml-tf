(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_synapse_workspace_security_alert_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace_security_alert_policy__timeouts *)

type azurerm_synapse_workspace_security_alert_policy = {
  disabled_alerts : string list option; [@option]
      (** disabled_alerts *)
  email_account_admins_enabled : bool option; [@option]
      (** email_account_admins_enabled *)
  email_addresses : string list option; [@option]
      (** email_addresses *)
  id : string option; [@option]  (** id *)
  policy_state : string;  (** policy_state *)
  retention_days : float option; [@option]  (** retention_days *)
  storage_account_access_key : string option; [@option]
      (** storage_account_access_key *)
  storage_endpoint : string option; [@option]
      (** storage_endpoint *)
  synapse_workspace_id : string;  (** synapse_workspace_id *)
  timeouts :
    azurerm_synapse_workspace_security_alert_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace_security_alert_policy *)

let azurerm_synapse_workspace_security_alert_policy ?disabled_alerts
    ?email_account_admins_enabled ?email_addresses ?id
    ?retention_days ?storage_account_access_key ?storage_endpoint
    ?timeouts ~policy_state ~synapse_workspace_id __resource_id =
  let __resource_type =
    "azurerm_synapse_workspace_security_alert_policy"
  in
  let __resource =
    {
      disabled_alerts;
      email_account_admins_enabled;
      email_addresses;
      id;
      policy_state;
      retention_days;
      storage_account_access_key;
      storage_endpoint;
      synapse_workspace_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_workspace_security_alert_policy
       __resource);
  ()
