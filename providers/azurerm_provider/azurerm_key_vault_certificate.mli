(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_certificate__certificate

type azurerm_key_vault_certificate__certificate_policy__issuer_parameters

type azurerm_key_vault_certificate__certificate_policy__key_properties

type azurerm_key_vault_certificate__certificate_policy__lifetime_action__action

type azurerm_key_vault_certificate__certificate_policy__lifetime_action__trigger

type azurerm_key_vault_certificate__certificate_policy__lifetime_action

type azurerm_key_vault_certificate__certificate_policy__secret_properties

type azurerm_key_vault_certificate__certificate_policy__x509_certificate_properties__subject_alternative_names

type azurerm_key_vault_certificate__certificate_policy__x509_certificate_properties

type azurerm_key_vault_certificate__certificate_policy
type azurerm_key_vault_certificate__timeouts

type azurerm_key_vault_certificate__certificate_attribute = {
  created : string;  (** created *)
  enabled : bool;  (** enabled *)
  expires : string;  (** expires *)
  not_before : string;  (** not_before *)
  recovery_level : string;  (** recovery_level *)
  updated : string;  (** updated *)
}

type azurerm_key_vault_certificate

val azurerm_key_vault_certificate :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_key_vault_certificate__timeouts ->
  key_vault_id:string ->
  name:string ->
  certificate:azurerm_key_vault_certificate__certificate list ->
  certificate_policy:
    azurerm_key_vault_certificate__certificate_policy list ->
  string ->
  unit
