(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_media_live_event__cross_site_access_policy
type azurerm_media_live_event__encoding
type azurerm_media_live_event__input__ip_access_control_allow

type azurerm_media_live_event__input__endpoint = {
  protocol : string prop;  (** protocol *)
  url : string prop;  (** url *)
}

type azurerm_media_live_event__input
type azurerm_media_live_event__preview__ip_access_control_allow

type azurerm_media_live_event__preview__endpoint = {
  protocol : string prop;  (** protocol *)
  url : string prop;  (** url *)
}

type azurerm_media_live_event__preview
type azurerm_media_live_event__timeouts
type azurerm_media_live_event

val azurerm_media_live_event :
  ?auto_start_enabled:bool prop ->
  ?description:string prop ->
  ?hostname_prefix:string prop ->
  ?id:string prop ->
  ?stream_options:string prop list ->
  ?tags:(string * string prop) list ->
  ?transcription_languages:string prop list ->
  ?use_static_hostname:bool prop ->
  ?timeouts:azurerm_media_live_event__timeouts ->
  location:string prop ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  cross_site_access_policy:
    azurerm_media_live_event__cross_site_access_policy list ->
  encoding:azurerm_media_live_event__encoding list ->
  input:azurerm_media_live_event__input list ->
  preview:azurerm_media_live_event__preview list ->
  string ->
  unit
