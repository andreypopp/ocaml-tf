(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_palo_alto_local_rulestack_outbound_trust_certificate_association__timeouts

type azurerm_palo_alto_local_rulestack_outbound_trust_certificate_association

type t = private { certificate_id : string prop; id : string prop }

val azurerm_palo_alto_local_rulestack_outbound_trust_certificate_association :
  ?id:string prop ->
  ?timeouts:
    azurerm_palo_alto_local_rulestack_outbound_trust_certificate_association__timeouts ->
  certificate_id:string prop ->
  string ->
  t
