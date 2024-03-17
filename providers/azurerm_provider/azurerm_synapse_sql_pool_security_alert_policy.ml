(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_synapse_sql_pool_security_alert_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_synapse_sql_pool_security_alert_policy__timeouts *)

type azurerm_synapse_sql_pool_security_alert_policy = {
  disabled_alerts : string prop list option; [@option]
      (** disabled_alerts *)
  email_account_admins_enabled : bool prop option; [@option]
      (** email_account_admins_enabled *)
  email_addresses : string prop list option; [@option]
      (** email_addresses *)
  id : string prop option; [@option]  (** id *)
  policy_state : string prop;  (** policy_state *)
  retention_days : float prop option; [@option]
      (** retention_days *)
  sql_pool_id : string prop;  (** sql_pool_id *)
  storage_account_access_key : string prop option; [@option]
      (** storage_account_access_key *)
  storage_endpoint : string prop option; [@option]
      (** storage_endpoint *)
  timeouts :
    azurerm_synapse_sql_pool_security_alert_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_sql_pool_security_alert_policy *)

let azurerm_synapse_sql_pool_security_alert_policy ?disabled_alerts
    ?email_account_admins_enabled ?email_addresses ?id
    ?retention_days ?storage_account_access_key ?storage_endpoint
    ?timeouts ~policy_state ~sql_pool_id __resource_id =
  let __resource_type =
    "azurerm_synapse_sql_pool_security_alert_policy"
  in
  let __resource =
    {
      disabled_alerts;
      email_account_admins_enabled;
      email_addresses;
      id;
      policy_state;
      retention_days;
      sql_pool_id;
      storage_account_access_key;
      storage_endpoint;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_sql_pool_security_alert_policy
       __resource);
  ()
