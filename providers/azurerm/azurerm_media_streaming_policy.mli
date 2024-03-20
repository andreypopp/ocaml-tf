(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type common_encryption_cbcs__clear_key_encryption

val common_encryption_cbcs__clear_key_encryption :
  custom_keys_acquisition_url_template:string prop ->
  unit ->
  common_encryption_cbcs__clear_key_encryption

type common_encryption_cbcs__default_content_key

val common_encryption_cbcs__default_content_key :
  ?label:string prop ->
  ?policy_name:string prop ->
  unit ->
  common_encryption_cbcs__default_content_key

type common_encryption_cbcs__drm_fairplay

val common_encryption_cbcs__drm_fairplay :
  ?allow_persistent_license:bool prop ->
  ?custom_license_acquisition_url_template:string prop ->
  unit ->
  common_encryption_cbcs__drm_fairplay

type common_encryption_cbcs__enabled_protocols

val common_encryption_cbcs__enabled_protocols :
  ?dash:bool prop ->
  ?download:bool prop ->
  ?hls:bool prop ->
  ?smooth_streaming:bool prop ->
  unit ->
  common_encryption_cbcs__enabled_protocols

type common_encryption_cbcs

val common_encryption_cbcs :
  clear_key_encryption:
    common_encryption_cbcs__clear_key_encryption list ->
  default_content_key:
    common_encryption_cbcs__default_content_key list ->
  drm_fairplay:common_encryption_cbcs__drm_fairplay list ->
  enabled_protocols:common_encryption_cbcs__enabled_protocols list ->
  unit ->
  common_encryption_cbcs

type common_encryption_cenc__clear_key_encryption

val common_encryption_cenc__clear_key_encryption :
  custom_keys_acquisition_url_template:string prop ->
  unit ->
  common_encryption_cenc__clear_key_encryption

type common_encryption_cenc__clear_track__condition

val common_encryption_cenc__clear_track__condition :
  operation:string prop ->
  property:string prop ->
  value:string prop ->
  unit ->
  common_encryption_cenc__clear_track__condition

type common_encryption_cenc__clear_track

val common_encryption_cenc__clear_track :
  condition:common_encryption_cenc__clear_track__condition list ->
  unit ->
  common_encryption_cenc__clear_track

type common_encryption_cenc__content_key_to_track_mapping__track__condition

val common_encryption_cenc__content_key_to_track_mapping__track__condition :
  operation:string prop ->
  property:string prop ->
  value:string prop ->
  unit ->
  common_encryption_cenc__content_key_to_track_mapping__track__condition

type common_encryption_cenc__content_key_to_track_mapping__track

val common_encryption_cenc__content_key_to_track_mapping__track :
  condition:
    common_encryption_cenc__content_key_to_track_mapping__track__condition
    list ->
  unit ->
  common_encryption_cenc__content_key_to_track_mapping__track

type common_encryption_cenc__content_key_to_track_mapping

val common_encryption_cenc__content_key_to_track_mapping :
  ?label:string prop ->
  ?policy_name:string prop ->
  track:
    common_encryption_cenc__content_key_to_track_mapping__track list ->
  unit ->
  common_encryption_cenc__content_key_to_track_mapping

type common_encryption_cenc__default_content_key

val common_encryption_cenc__default_content_key :
  ?label:string prop ->
  ?policy_name:string prop ->
  unit ->
  common_encryption_cenc__default_content_key

type common_encryption_cenc__drm_playready

val common_encryption_cenc__drm_playready :
  ?custom_attributes:string prop ->
  ?custom_license_acquisition_url_template:string prop ->
  unit ->
  common_encryption_cenc__drm_playready

type common_encryption_cenc__enabled_protocols

val common_encryption_cenc__enabled_protocols :
  ?dash:bool prop ->
  ?download:bool prop ->
  ?hls:bool prop ->
  ?smooth_streaming:bool prop ->
  unit ->
  common_encryption_cenc__enabled_protocols

type common_encryption_cenc

val common_encryption_cenc :
  ?drm_widevine_custom_license_acquisition_url_template:string prop ->
  clear_key_encryption:
    common_encryption_cenc__clear_key_encryption list ->
  clear_track:common_encryption_cenc__clear_track list ->
  content_key_to_track_mapping:
    common_encryption_cenc__content_key_to_track_mapping list ->
  default_content_key:
    common_encryption_cenc__default_content_key list ->
  drm_playready:common_encryption_cenc__drm_playready list ->
  enabled_protocols:common_encryption_cenc__enabled_protocols list ->
  unit ->
  common_encryption_cenc

type envelope_encryption__default_content_key

val envelope_encryption__default_content_key :
  ?label:string prop ->
  ?policy_name:string prop ->
  unit ->
  envelope_encryption__default_content_key

type envelope_encryption__enabled_protocols

val envelope_encryption__enabled_protocols :
  ?dash:bool prop ->
  ?download:bool prop ->
  ?hls:bool prop ->
  ?smooth_streaming:bool prop ->
  unit ->
  envelope_encryption__enabled_protocols

type envelope_encryption

val envelope_encryption :
  ?custom_keys_acquisition_url_template:string prop ->
  default_content_key:envelope_encryption__default_content_key list ->
  enabled_protocols:envelope_encryption__enabled_protocols list ->
  unit ->
  envelope_encryption

type no_encryption_enabled_protocols

val no_encryption_enabled_protocols :
  ?dash:bool prop ->
  ?download:bool prop ->
  ?hls:bool prop ->
  ?smooth_streaming:bool prop ->
  unit ->
  no_encryption_enabled_protocols

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_media_streaming_policy

val azurerm_media_streaming_policy :
  ?default_content_key_policy_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  common_encryption_cbcs:common_encryption_cbcs list ->
  common_encryption_cenc:common_encryption_cenc list ->
  envelope_encryption:envelope_encryption list ->
  no_encryption_enabled_protocols:
    no_encryption_enabled_protocols list ->
  unit ->
  azurerm_media_streaming_policy

val yojson_of_azurerm_media_streaming_policy :
  azurerm_media_streaming_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  default_content_key_policy_name : string prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_content_key_policy_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  common_encryption_cbcs:common_encryption_cbcs list ->
  common_encryption_cenc:common_encryption_cenc list ->
  envelope_encryption:envelope_encryption list ->
  no_encryption_enabled_protocols:
    no_encryption_enabled_protocols list ->
  string ->
  t

val make :
  ?default_content_key_policy_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  common_encryption_cbcs:common_encryption_cbcs list ->
  common_encryption_cenc:common_encryption_cenc list ->
  envelope_encryption:envelope_encryption list ->
  no_encryption_enabled_protocols:
    no_encryption_enabled_protocols list ->
  string ->
  t Tf_core.resource
