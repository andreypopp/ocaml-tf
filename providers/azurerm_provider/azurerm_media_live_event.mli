(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_media_live_event__cross_site_access_policy
type azurerm_media_live_event__encoding
type azurerm_media_live_event__input__ip_access_control_allow

type azurerm_media_live_event__input__endpoint = {
  protocol : string;  (** protocol *)
  url : string;  (** url *)
}
[@@deriving yojson_of]

type azurerm_media_live_event__input
type azurerm_media_live_event__preview__ip_access_control_allow

type azurerm_media_live_event__preview__endpoint = {
  protocol : string;  (** protocol *)
  url : string;  (** url *)
}
[@@deriving yojson_of]

type azurerm_media_live_event__preview
type azurerm_media_live_event__timeouts
type azurerm_media_live_event

val azurerm_media_live_event :
  ?auto_start_enabled:bool ->
  ?description:string ->
  ?hostname_prefix:string ->
  ?stream_options:string list ->
  ?tags:(string * string) list ->
  ?transcription_languages:string list ->
  ?use_static_hostname:bool ->
  ?timeouts:azurerm_media_live_event__timeouts ->
  location:string ->
  media_services_account_name:string ->
  name:string ->
  resource_group_name:string ->
  cross_site_access_policy:
    azurerm_media_live_event__cross_site_access_policy list ->
  encoding:azurerm_media_live_event__encoding list ->
  input:azurerm_media_live_event__input list ->
  preview:azurerm_media_live_event__preview list ->
  string ->
  unit
