(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type certificate_policy__x509_certificate_properties__subject_alternative_names = {
  dns_names : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** dns_names *)
  emails : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** emails *)
  upns : string prop list; [@default []] [@yojson_drop_default ( = )]
      (** upns *)
}

type certificate_policy__x509_certificate_properties = {
  extended_key_usage : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** extended_key_usage *)
  key_usage : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** key_usage *)
  subject : string prop;  (** subject *)
  subject_alternative_names :
    certificate_policy__x509_certificate_properties__subject_alternative_names
    list;
      [@default []] [@yojson_drop_default ( = )]
      (** subject_alternative_names *)
  validity_in_months : float prop;  (** validity_in_months *)
}

type certificate_policy__secret_properties = {
  content_type : string prop;  (** content_type *)
}

type certificate_policy__lifetime_action__trigger = {
  days_before_expiry : float prop;  (** days_before_expiry *)
  lifetime_percentage : float prop;  (** lifetime_percentage *)
}

type certificate_policy__lifetime_action__action = {
  action_type : string prop;  (** action_type *)
}

type certificate_policy__lifetime_action = {
  action : certificate_policy__lifetime_action__action list;
      [@default []] [@yojson_drop_default ( = )]
      (** action *)
  trigger : certificate_policy__lifetime_action__trigger list;
      [@default []] [@yojson_drop_default ( = )]
      (** trigger *)
}

type certificate_policy__key_properties = {
  curve : string prop;  (** curve *)
  exportable : bool prop;  (** exportable *)
  key_size : float prop;  (** key_size *)
  key_type : string prop;  (** key_type *)
  reuse_key : bool prop;  (** reuse_key *)
}

type certificate_policy__issuer_parameters = {
  name : string prop;  (** name *)
}

type certificate_policy = {
  issuer_parameters : certificate_policy__issuer_parameters list;
      [@default []] [@yojson_drop_default ( = )]
      (** issuer_parameters *)
  key_properties : certificate_policy__key_properties list;
      [@default []] [@yojson_drop_default ( = )]
      (** key_properties *)
  lifetime_action : certificate_policy__lifetime_action list;
      [@default []] [@yojson_drop_default ( = )]
      (** lifetime_action *)
  secret_properties : certificate_policy__secret_properties list;
      [@default []] [@yojson_drop_default ( = )]
      (** secret_properties *)
  x509_certificate_properties :
    certificate_policy__x509_certificate_properties list;
      [@default []] [@yojson_drop_default ( = )]
      (** x509_certificate_properties *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_key_vault_certificate

val azurerm_key_vault_certificate :
  ?id:string prop ->
  ?version:string prop ->
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
  certificate_data : string prop;
  certificate_data_base64 : string prop;
  certificate_policy : certificate_policy list prop;
  expires : string prop;
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  not_before : string prop;
  resource_manager_id : string prop;
  resource_manager_versionless_id : string prop;
  secret_id : string prop;
  tags : (string * string) list prop;
  thumbprint : string prop;
  version : string prop;
  versionless_id : string prop;
  versionless_secret_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
