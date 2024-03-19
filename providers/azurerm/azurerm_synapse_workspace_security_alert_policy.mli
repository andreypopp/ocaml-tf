(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_synapse_workspace_security_alert_policy

val azurerm_synapse_workspace_security_alert_policy :
  ?disabled_alerts:string prop list ->
  ?email_account_admins_enabled:bool prop ->
  ?email_addresses:string prop list ->
  ?id:string prop ->
  ?retention_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:timeouts ->
  policy_state:string prop ->
  synapse_workspace_id:string prop ->
  unit ->
  azurerm_synapse_workspace_security_alert_policy

val yojson_of_azurerm_synapse_workspace_security_alert_policy :
  azurerm_synapse_workspace_security_alert_policy -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?disabled_alerts:string prop list ->
  ?email_account_admins_enabled:bool prop ->
  ?email_addresses:string prop list ->
  ?id:string prop ->
  ?retention_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:timeouts ->
  policy_state:string prop ->
  synapse_workspace_id:string prop ->
  string ->
  t
