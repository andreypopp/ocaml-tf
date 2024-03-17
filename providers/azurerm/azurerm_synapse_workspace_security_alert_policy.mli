(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_workspace_security_alert_policy__timeouts
type azurerm_synapse_workspace_security_alert_policy

type t = private {
  disabled_alerts : string list prop;
  email_account_admins_enabled : bool prop;
  email_addresses : string list prop;
  id : string prop;
  policy_state : string prop;
  retention_days : float prop;
  storage_account_access_key : string prop;
  storage_endpoint : string prop;
  synapse_workspace_id : string prop;
}

val azurerm_synapse_workspace_security_alert_policy :
  ?disabled_alerts:string prop list ->
  ?email_account_admins_enabled:bool prop ->
  ?email_addresses:string prop list ->
  ?id:string prop ->
  ?retention_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:azurerm_synapse_workspace_security_alert_policy__timeouts ->
  policy_state:string prop ->
  synapse_workspace_id:string prop ->
  string ->
  t
