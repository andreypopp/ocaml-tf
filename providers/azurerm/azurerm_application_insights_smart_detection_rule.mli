(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_insights_smart_detection_rule__timeouts
type azurerm_application_insights_smart_detection_rule

type t = private {
  additional_email_recipients : string list prop;
  application_insights_id : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  send_emails_to_subscription_owners : bool prop;
}

val azurerm_application_insights_smart_detection_rule :
  ?additional_email_recipients:string prop list ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?send_emails_to_subscription_owners:bool prop ->
  ?timeouts:
    azurerm_application_insights_smart_detection_rule__timeouts ->
  application_insights_id:string prop ->
  name:string prop ->
  string ->
  t
