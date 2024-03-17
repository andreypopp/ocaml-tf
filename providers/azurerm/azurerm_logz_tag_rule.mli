(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logz_tag_rule__tag_filter
type azurerm_logz_tag_rule__timeouts
type azurerm_logz_tag_rule

type t = private {
  id : string prop;
  logz_monitor_id : string prop;
  send_aad_logs : bool prop;
  send_activity_logs : bool prop;
  send_subscription_logs : bool prop;
}

val azurerm_logz_tag_rule :
  ?id:string prop ->
  ?send_aad_logs:bool prop ->
  ?send_activity_logs:bool prop ->
  ?send_subscription_logs:bool prop ->
  ?timeouts:azurerm_logz_tag_rule__timeouts ->
  logz_monitor_id:string prop ->
  tag_filter:azurerm_logz_tag_rule__tag_filter list ->
  string ->
  t
