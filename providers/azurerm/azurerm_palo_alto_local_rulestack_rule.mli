(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack_rule__category
type azurerm_palo_alto_local_rulestack_rule__destination
type azurerm_palo_alto_local_rulestack_rule__source
type azurerm_palo_alto_local_rulestack_rule__timeouts
type azurerm_palo_alto_local_rulestack_rule

type t = private {
  action : string prop;
  applications : string list prop;
  audit_comment : string prop;
  decryption_rule_type : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  inspection_certificate_id : string prop;
  logging_enabled : bool prop;
  name : string prop;
  negate_destination : bool prop;
  negate_source : bool prop;
  priority : float prop;
  protocol : string prop;
  protocol_ports : string list prop;
  rulestack_id : string prop;
  tags : (string * string) list prop;
}

val azurerm_palo_alto_local_rulestack_rule :
  ?audit_comment:string prop ->
  ?decryption_rule_type:string prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?inspection_certificate_id:string prop ->
  ?logging_enabled:bool prop ->
  ?negate_destination:bool prop ->
  ?negate_source:bool prop ->
  ?protocol:string prop ->
  ?protocol_ports:string prop list ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_palo_alto_local_rulestack_rule__timeouts ->
  action:string prop ->
  applications:string prop list ->
  name:string prop ->
  priority:float prop ->
  rulestack_id:string prop ->
  category:azurerm_palo_alto_local_rulestack_rule__category list ->
  destination:
    azurerm_palo_alto_local_rulestack_rule__destination list ->
  source:azurerm_palo_alto_local_rulestack_rule__source list ->
  string ->
  t
