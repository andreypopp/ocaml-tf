(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_media_streaming_endpoint__access_control__akamai_signature_header_authentication_key

type azurerm_media_streaming_endpoint__access_control__ip_allow
type azurerm_media_streaming_endpoint__access_control
type azurerm_media_streaming_endpoint__cross_site_access_policy
type azurerm_media_streaming_endpoint__timeouts

type azurerm_media_streaming_endpoint__sku = {
  capacity : float;  (** capacity *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type azurerm_media_streaming_endpoint

val azurerm_media_streaming_endpoint :
  ?cdn_enabled:bool ->
  ?custom_host_names:string list ->
  ?description:string ->
  ?max_cache_age_seconds:float ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_media_streaming_endpoint__timeouts ->
  location:string ->
  media_services_account_name:string ->
  name:string ->
  resource_group_name:string ->
  scale_units:float ->
  access_control:
    azurerm_media_streaming_endpoint__access_control list ->
  cross_site_access_policy:
    azurerm_media_streaming_endpoint__cross_site_access_policy list ->
  string ->
  unit
