(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_endpoint_application_security_group_association__timeouts

type azurerm_private_endpoint_application_security_group_association

val azurerm_private_endpoint_application_security_group_association :
  ?id:string prop ->
  ?timeouts:
    azurerm_private_endpoint_application_security_group_association__timeouts ->
  application_security_group_id:string prop ->
  private_endpoint_id:string prop ->
  string ->
  unit
