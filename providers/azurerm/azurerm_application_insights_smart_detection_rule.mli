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

type azurerm_application_insights_smart_detection_rule

val azurerm_application_insights_smart_detection_rule :
  ?additional_email_recipients:string prop list ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?send_emails_to_subscription_owners:bool prop ->
  ?timeouts:timeouts ->
  application_insights_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_application_insights_smart_detection_rule

val yojson_of_azurerm_application_insights_smart_detection_rule :
  azurerm_application_insights_smart_detection_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  additional_email_recipients : string list prop;
  application_insights_id : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  send_emails_to_subscription_owners : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_email_recipients:string prop list ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?send_emails_to_subscription_owners:bool prop ->
  ?timeouts:timeouts ->
  application_insights_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?additional_email_recipients:string prop list ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?send_emails_to_subscription_owners:bool prop ->
  ?timeouts:timeouts ->
  application_insights_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
