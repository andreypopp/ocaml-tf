(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cost_anomaly_alert

val azurerm_cost_anomaly_alert :
  ?id:string prop ->
  ?message:string prop ->
  ?subscription_id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  email_addresses:string prop list ->
  email_subject:string prop ->
  name:string prop ->
  unit ->
  azurerm_cost_anomaly_alert

val yojson_of_azurerm_cost_anomaly_alert :
  azurerm_cost_anomaly_alert -> json

(** RESOURCE REGISTRATION *)

type t = private {
  display_name : string prop;
  email_addresses : string list prop;
  email_subject : string prop;
  id : string prop;
  message : string prop;
  name : string prop;
  subscription_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?message:string prop ->
  ?subscription_id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  email_addresses:string prop list ->
  email_subject:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?message:string prop ->
  ?subscription_id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  email_addresses:string prop list ->
  email_subject:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
