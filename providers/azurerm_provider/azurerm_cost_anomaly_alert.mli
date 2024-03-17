(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cost_anomaly_alert__timeouts
type azurerm_cost_anomaly_alert

val azurerm_cost_anomaly_alert :
  ?id:string ->
  ?message:string ->
  ?subscription_id:string ->
  ?timeouts:azurerm_cost_anomaly_alert__timeouts ->
  display_name:string ->
  email_addresses:string list ->
  email_subject:string ->
  name:string ->
  string ->
  unit
