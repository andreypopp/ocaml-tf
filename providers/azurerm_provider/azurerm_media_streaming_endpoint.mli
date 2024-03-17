(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_media_streaming_endpoint__access_control__akamai_signature_header_authentication_key

type azurerm_media_streaming_endpoint__access_control__ip_allow
type azurerm_media_streaming_endpoint__access_control
type azurerm_media_streaming_endpoint__cross_site_access_policy
type azurerm_media_streaming_endpoint__timeouts

type azurerm_media_streaming_endpoint__sku = {
  capacity : float prop;  (** capacity *)
  name : string prop;  (** name *)
}

type azurerm_media_streaming_endpoint

type t = private {
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
  sku : azurerm_media_streaming_endpoint__sku list prop;
  tags : (string * string) list prop;
}

val azurerm_media_streaming_endpoint :
  ?auto_start_enabled:bool prop ->
  ?cdn_enabled:bool prop ->
  ?cdn_profile:string prop ->
  ?cdn_provider:string prop ->
  ?custom_host_names:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_cache_age_seconds:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_media_streaming_endpoint__timeouts ->
  location:string prop ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scale_units:float prop ->
  access_control:
    azurerm_media_streaming_endpoint__access_control list ->
  cross_site_access_policy:
    azurerm_media_streaming_endpoint__cross_site_access_policy list ->
  string ->
  t
