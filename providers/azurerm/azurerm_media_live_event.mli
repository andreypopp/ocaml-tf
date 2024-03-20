(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cross_site_access_policy

val cross_site_access_policy :
  ?client_access_policy:string prop ->
  ?cross_domain_policy:string prop ->
  unit ->
  cross_site_access_policy

type encoding

val encoding :
  ?key_frame_interval:string prop ->
  ?preset_name:string prop ->
  ?stretch_mode:string prop ->
  ?type_:string prop ->
  unit ->
  encoding

type input__endpoint = {
  protocol : string prop;  (** protocol *)
  url : string prop;  (** url *)
}

[@@@deriving.end]

type input__ip_access_control_allow

val input__ip_access_control_allow :
  ?address:string prop ->
  ?name:string prop ->
  ?subnet_prefix_length:float prop ->
  unit ->
  input__ip_access_control_allow

type input

val input :
  ?access_token:string prop ->
  ?key_frame_interval_duration:string prop ->
  ?streaming_protocol:string prop ->
  ip_access_control_allow:input__ip_access_control_allow list ->
  unit ->
  input

type preview__endpoint = {
  protocol : string prop;  (** protocol *)
  url : string prop;  (** url *)
}

[@@@deriving.end]

type preview__ip_access_control_allow

val preview__ip_access_control_allow :
  ?address:string prop ->
  ?name:string prop ->
  ?subnet_prefix_length:float prop ->
  unit ->
  preview__ip_access_control_allow

type preview

val preview :
  ?alternative_media_id:string prop ->
  ?preview_locator:string prop ->
  ?streaming_policy_name:string prop ->
  ip_access_control_allow:preview__ip_access_control_allow list ->
  unit ->
  preview

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  location:string prop ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  cross_site_access_policy:cross_site_access_policy list ->
  encoding:encoding list ->
  input:input list ->
  preview:preview list ->
  unit ->
  azurerm_media_live_event

val yojson_of_azurerm_media_live_event :
  azurerm_media_live_event -> json

(** RESOURCE REGISTRATION *)

type t = private {
  auto_start_enabled : bool prop;
  description : string prop;
  hostname_prefix : string prop;
  id : string prop;
  location : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  stream_options : string list prop;
  tags : (string * string) list prop;
  transcription_languages : string list prop;
  use_static_hostname : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_start_enabled:bool prop ->
  ?description:string prop ->
  ?hostname_prefix:string prop ->
  ?id:string prop ->
  ?stream_options:string prop list ->
  ?tags:(string * string prop) list ->
  ?transcription_languages:string prop list ->
  ?use_static_hostname:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  cross_site_access_policy:cross_site_access_policy list ->
  encoding:encoding list ->
  input:input list ->
  preview:preview list ->
  string ->
  t

val make :
  ?auto_start_enabled:bool prop ->
  ?description:string prop ->
  ?hostname_prefix:string prop ->
  ?id:string prop ->
  ?stream_options:string prop list ->
  ?tags:(string * string prop) list ->
  ?transcription_languages:string prop list ->
  ?use_static_hostname:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  cross_site_access_policy:cross_site_access_policy list ->
  encoding:encoding list ->
  input:input list ->
  preview:preview list ->
  string ->
  t Tf_core.resource
