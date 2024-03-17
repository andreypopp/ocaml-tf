(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack_rule__category
type azurerm_palo_alto_local_rulestack_rule__destination
type azurerm_palo_alto_local_rulestack_rule__source
type azurerm_palo_alto_local_rulestack_rule__timeouts
type azurerm_palo_alto_local_rulestack_rule

val azurerm_palo_alto_local_rulestack_rule :
  ?audit_comment:string ->
  ?decryption_rule_type:string ->
  ?description:string ->
  ?enabled:bool ->
  ?inspection_certificate_id:string ->
  ?logging_enabled:bool ->
  ?negate_destination:bool ->
  ?negate_source:bool ->
  ?protocol:string ->
  ?protocol_ports:string list ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_palo_alto_local_rulestack_rule__timeouts ->
  action:string ->
  applications:string list ->
  name:string ->
  priority:float ->
  rulestack_id:string ->
  category:azurerm_palo_alto_local_rulestack_rule__category list ->
  destination:
    azurerm_palo_alto_local_rulestack_rule__destination list ->
  source:azurerm_palo_alto_local_rulestack_rule__source list ->
  string ->
  unit
