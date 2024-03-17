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
  created : string prop;  (** created *)
  enabled : bool prop;  (** enabled *)
  expires : string prop;  (** expires *)
  not_before : string prop;  (** not_before *)
  recovery_level : string prop;  (** recovery_level *)
  updated : string prop;  (** updated *)
}

type azurerm_key_vault_certificate

type t = private {
  certificate_attribute :
    azurerm_key_vault_certificate__certificate_attribute list prop;
  certificate_data : string prop;
  certificate_data_base64 : string prop;
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  resource_manager_id : string prop;
  resource_manager_versionless_id : string prop;
  secret_id : string prop;
  tags : (string * string) list prop;
  thumbprint : string prop;
  version : string prop;
  versionless_id : string prop;
  versionless_secret_id : string prop;
}

val azurerm_key_vault_certificate :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_key_vault_certificate__timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  certificate:azurerm_key_vault_certificate__certificate list ->
  certificate_policy:
    azurerm_key_vault_certificate__certificate_policy list ->
  string ->
  t
