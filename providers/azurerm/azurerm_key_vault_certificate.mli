(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type certificate_attribute = {
  created : string prop;  (** created *)
  enabled : bool prop;  (** enabled *)
  expires : string prop;  (** expires *)
  not_before : string prop;  (** not_before *)
  recovery_level : string prop;  (** recovery_level *)
  updated : string prop;  (** updated *)
}

type certificate

val certificate :
  ?password:string prop ->
  contents:string prop ->
  unit ->
  certificate

type certificate_policy__issuer_parameters

val certificate_policy__issuer_parameters :
  name:string prop -> unit -> certificate_policy__issuer_parameters

type certificate_policy__key_properties

val certificate_policy__key_properties :
  ?curve:string prop ->
  ?key_size:float prop ->
  exportable:bool prop ->
  key_type:string prop ->
  reuse_key:bool prop ->
  unit ->
  certificate_policy__key_properties

type certificate_policy__lifetime_action__action

val certificate_policy__lifetime_action__action :
  action_type:string prop ->
  unit ->
  certificate_policy__lifetime_action__action

type certificate_policy__lifetime_action__trigger

val certificate_policy__lifetime_action__trigger :
  ?days_before_expiry:float prop ->
  ?lifetime_percentage:float prop ->
  unit ->
  certificate_policy__lifetime_action__trigger

type certificate_policy__lifetime_action

val certificate_policy__lifetime_action :
  action:certificate_policy__lifetime_action__action list ->
  trigger:certificate_policy__lifetime_action__trigger list ->
  unit ->
  certificate_policy__lifetime_action

type certificate_policy__secret_properties

val certificate_policy__secret_properties :
  content_type:string prop ->
  unit ->
  certificate_policy__secret_properties

type certificate_policy__x509_certificate_properties__subject_alternative_names

val certificate_policy__x509_certificate_properties__subject_alternative_names :
  ?dns_names:string prop list ->
  ?emails:string prop list ->
  ?upns:string prop list ->
  unit ->
  certificate_policy__x509_certificate_properties__subject_alternative_names

type certificate_policy__x509_certificate_properties

val certificate_policy__x509_certificate_properties :
  ?extended_key_usage:string prop list ->
  ?subject_alternative_names:
    certificate_policy__x509_certificate_properties__subject_alternative_names
    list ->
  key_usage:string prop list ->
  subject:string prop ->
  validity_in_months:float prop ->
  unit ->
  certificate_policy__x509_certificate_properties

type certificate_policy

val certificate_policy :
  ?lifetime_action:certificate_policy__lifetime_action list ->
  ?x509_certificate_properties:
    certificate_policy__x509_certificate_properties list ->
  issuer_parameters:certificate_policy__issuer_parameters list ->
  key_properties:certificate_policy__key_properties list ->
  secret_properties:certificate_policy__secret_properties list ->
  unit ->
  certificate_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_key_vault_certificate

val azurerm_key_vault_certificate :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?certificate:certificate list ->
  ?certificate_policy:certificate_policy list ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_key_vault_certificate

val yojson_of_azurerm_key_vault_certificate :
  azurerm_key_vault_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate_attribute : certificate_attribute list prop;
  certificate_data : string prop;
  certificate_data_base64 : string prop;
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  resource_manager_id : string prop;
  resource_manager_versionless_id : string prop;
  secret_id : string prop;
  tags : string Tf_core.assoc prop;
  thumbprint : string prop;
  version : string prop;
  versionless_id : string prop;
  versionless_secret_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?certificate:certificate list ->
  ?certificate_policy:certificate_policy list ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?certificate:certificate list ->
  ?certificate_policy:certificate_policy list ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
