(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_insights_smart_detection_rule__timeouts
type azurerm_application_insights_smart_detection_rule

val azurerm_application_insights_smart_detection_rule :
  ?additional_email_recipients:string list ->
  ?enabled:bool ->
  ?send_emails_to_subscription_owners:bool ->
  ?timeouts:
    azurerm_application_insights_smart_detection_rule__timeouts ->
  application_insights_id:string ->
  name:string ->
  string ->
  unit
