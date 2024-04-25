(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type policy_option__fairplay_configuration__offline_rental_configuration

val policy_option__fairplay_configuration__offline_rental_configuration :
  ?playback_duration_seconds:float prop ->
  ?storage_duration_seconds:float prop ->
  unit ->
  policy_option__fairplay_configuration__offline_rental_configuration

type policy_option__fairplay_configuration

val policy_option__fairplay_configuration :
  ?ask:string prop ->
  ?pfx:string prop ->
  ?pfx_password:string prop ->
  ?rental_and_lease_key_type:string prop ->
  ?rental_duration_seconds:float prop ->
  ?offline_rental_configuration:
    policy_option__fairplay_configuration__offline_rental_configuration
    list ->
  unit ->
  policy_option__fairplay_configuration

type policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction

val policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction :
  ?best_effort_enforced:bool prop ->
  control_bits:float prop ->
  unit ->
  policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction

type policy_option__playready_configuration_license__play_right

val policy_option__playready_configuration_license__play_right :
  ?agc_and_color_stripe_restriction:float prop ->
  ?allow_passing_video_content_to_unknown_output:string prop ->
  ?analog_video_opl:float prop ->
  ?compressed_digital_audio_opl:float prop ->
  ?compressed_digital_video_opl:float prop ->
  ?digital_video_only_content_restriction:bool prop ->
  ?first_play_expiration:string prop ->
  ?image_constraint_for_analog_component_video_restriction:bool prop ->
  ?image_constraint_for_analog_computer_monitor_restriction:bool prop ->
  ?scms_restriction:float prop ->
  ?uncompressed_digital_audio_opl:float prop ->
  ?uncompressed_digital_video_opl:float prop ->
  ?explicit_analog_television_output_restriction:
    policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction
    list ->
  unit ->
  policy_option__playready_configuration_license__play_right

type policy_option__playready_configuration_license

val policy_option__playready_configuration_license :
  ?allow_test_devices:bool prop ->
  ?begin_date:string prop ->
  ?content_key_location_from_header_enabled:bool prop ->
  ?content_key_location_from_key_id:string prop ->
  ?content_type:string prop ->
  ?expiration_date:string prop ->
  ?grace_period:string prop ->
  ?license_type:string prop ->
  ?relative_begin_date:string prop ->
  ?relative_expiration_date:string prop ->
  ?security_level:string prop ->
  ?play_right:
    policy_option__playready_configuration_license__play_right list ->
  unit ->
  policy_option__playready_configuration_license

type policy_option__token_restriction__alternate_key

val policy_option__token_restriction__alternate_key :
  ?rsa_token_key_exponent:string prop ->
  ?rsa_token_key_modulus:string prop ->
  ?symmetric_token_key:string prop ->
  ?x509_token_key_raw:string prop ->
  unit ->
  policy_option__token_restriction__alternate_key

type policy_option__token_restriction__required_claim

val policy_option__token_restriction__required_claim :
  ?type_:string prop ->
  ?value:string prop ->
  unit ->
  policy_option__token_restriction__required_claim

type policy_option__token_restriction

val policy_option__token_restriction :
  ?audience:string prop ->
  ?issuer:string prop ->
  ?open_id_connect_discovery_document:string prop ->
  ?primary_rsa_token_key_exponent:string prop ->
  ?primary_rsa_token_key_modulus:string prop ->
  ?primary_symmetric_token_key:string prop ->
  ?primary_x509_token_key_raw:string prop ->
  ?token_type:string prop ->
  ?alternate_key:policy_option__token_restriction__alternate_key list ->
  ?required_claim:
    policy_option__token_restriction__required_claim list ->
  unit ->
  policy_option__token_restriction

type policy_option

val policy_option :
  ?clear_key_configuration_enabled:bool prop ->
  ?open_restriction_enabled:bool prop ->
  ?playready_response_custom_data:string prop ->
  ?widevine_configuration_template:string prop ->
  ?fairplay_configuration:policy_option__fairplay_configuration list ->
  ?playready_configuration_license:
    policy_option__playready_configuration_license list ->
  ?token_restriction:policy_option__token_restriction list ->
  name:string prop ->
  unit ->
  policy_option

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_media_content_key_policy

val azurerm_media_content_key_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  policy_option:policy_option list ->
  unit ->
  azurerm_media_content_key_policy

val yojson_of_azurerm_media_content_key_policy :
  azurerm_media_content_key_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  policy_option:policy_option list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  policy_option:policy_option list ->
  string ->
  t Tf_core.resource
