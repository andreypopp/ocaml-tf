(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cost_anomaly_alert__timeouts
type azurerm_cost_anomaly_alert

val azurerm_cost_anomaly_alert :
  ?id:string prop ->
  ?message:string prop ->
  ?subscription_id:string prop ->
  ?timeouts:azurerm_cost_anomaly_alert__timeouts ->
  display_name:string prop ->
  email_addresses:string prop list ->
  email_subject:string prop ->
  name:string prop ->
  string ->
  unit
