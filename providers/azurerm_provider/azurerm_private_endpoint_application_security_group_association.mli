(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_endpoint_application_security_group_association__timeouts

type azurerm_private_endpoint_application_security_group_association

val azurerm_private_endpoint_application_security_group_association :
  ?timeouts:
    azurerm_private_endpoint_application_security_group_association__timeouts ->
  application_security_group_id:string ->
  private_endpoint_id:string ->
  string ->
  unit
