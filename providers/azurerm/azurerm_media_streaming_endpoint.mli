(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sku = {
  capacity : float prop;  (** capacity *)
  name : string prop;  (** name *)
}

type access_control__akamai_signature_header_authentication_key

val access_control__akamai_signature_header_authentication_key :
  ?base64_key:string prop ->
  ?expiration:string prop ->
  ?identifier:string prop ->
  unit ->
  access_control__akamai_signature_header_authentication_key

type access_control__ip_allow

val access_control__ip_allow :
  ?address:string prop ->
  ?name:string prop ->
  ?subnet_prefix_length:float prop ->
  unit ->
  access_control__ip_allow

type access_control

val access_control :
  ?akamai_signature_header_authentication_key:
    access_control__akamai_signature_header_authentication_key list ->
  ?ip_allow:access_control__ip_allow list ->
  unit ->
  access_control

type cross_site_access_policy

val cross_site_access_policy :
  ?client_access_policy:string prop ->
  ?cross_domain_policy:string prop ->
  unit ->
  cross_site_access_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_media_streaming_endpoint

val azurerm_media_streaming_endpoint :
  ?auto_start_enabled:bool prop ->
  ?cdn_enabled:bool prop ->
  ?cdn_profile:string prop ->
  ?cdn_provider:string prop ->
  ?custom_host_names:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_cache_age_seconds:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?access_control:access_control list ->
  ?cross_site_access_policy:cross_site_access_policy list ->
  ?timeouts:timeouts ->
  location:string prop ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scale_units:float prop ->
  unit ->
  azurerm_media_streaming_endpoint

val yojson_of_azurerm_media_streaming_endpoint :
  azurerm_media_streaming_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auto_start_enabled : bool prop;
  cdn_enabled : bool prop;
  cdn_profile : string prop;
  cdn_provider : string prop;
  custom_host_names : string list prop;
  description : string prop;
  host_name : string prop;
  id : string prop;
  location : string prop;
  max_cache_age_seconds : float prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  scale_units : float prop;
  sku : sku list prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_start_enabled:bool prop ->
  ?cdn_enabled:bool prop ->
  ?cdn_profile:string prop ->
  ?cdn_provider:string prop ->
  ?custom_host_names:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_cache_age_seconds:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?access_control:access_control list ->
  ?cross_site_access_policy:cross_site_access_policy list ->
  ?timeouts:timeouts ->
  location:string prop ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scale_units:float prop ->
  string ->
  t

val make :
  ?auto_start_enabled:bool prop ->
  ?cdn_enabled:bool prop ->
  ?cdn_profile:string prop ->
  ?cdn_provider:string prop ->
  ?custom_host_names:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_cache_age_seconds:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?access_control:access_control list ->
  ?cross_site_access_policy:cross_site_access_policy list ->
  ?timeouts:timeouts ->
  location:string prop ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scale_units:float prop ->
  string ->
  t Tf_core.resource
