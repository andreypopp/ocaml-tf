(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type category

val category :
  ?feeds:string prop list ->
  custom_urls:string prop list ->
  unit ->
  category

type destination

val destination :
  ?cidrs:string prop list ->
  ?countries:string prop list ->
  ?feeds:string prop list ->
  ?local_rulestack_fqdn_list_ids:string prop list ->
  ?local_rulestack_prefix_list_ids:string prop list ->
  unit ->
  destination

type source

val source :
  ?cidrs:string prop list ->
  ?countries:string prop list ->
  ?feeds:string prop list ->
  ?local_rulestack_prefix_list_ids:string prop list ->
  unit ->
  source

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_palo_alto_local_rulestack_rule

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
  ?timeouts:timeouts ->
  action:string prop ->
  applications:string prop list ->
  name:string prop ->
  priority:float prop ->
  rulestack_id:string prop ->
  category:category list ->
  destination:destination list ->
  source:source list ->
  unit ->
  azurerm_palo_alto_local_rulestack_rule

val yojson_of_azurerm_palo_alto_local_rulestack_rule :
  azurerm_palo_alto_local_rulestack_rule -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  action:string prop ->
  applications:string prop list ->
  name:string prop ->
  priority:float prop ->
  rulestack_id:string prop ->
  category:category list ->
  destination:destination list ->
  source:source list ->
  string ->
  t

val make :
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
  ?timeouts:timeouts ->
  action:string prop ->
  applications:string prop list ->
  name:string prop ->
  priority:float prop ->
  rulestack_id:string prop ->
  category:category list ->
  destination:destination list ->
  source:source list ->
  string ->
  t Tf_core.resource
