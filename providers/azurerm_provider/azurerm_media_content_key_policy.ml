(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_media_content_key_policy__policy_option__fairplay_configuration__offline_rental_configuration = {
  playback_duration_seconds : float option; [@option]
      (** playback_duration_seconds *)
  storage_duration_seconds : float option; [@option]
      (** storage_duration_seconds *)
}
[@@deriving yojson_of]
(** azurerm_media_content_key_policy__policy_option__fairplay_configuration__offline_rental_configuration *)

type azurerm_media_content_key_policy__policy_option__fairplay_configuration = {
  ask : string option; [@option]  (** ask *)
  pfx : string option; [@option]  (** pfx *)
  pfx_password : string option; [@option]  (** pfx_password *)
  rental_and_lease_key_type : string option; [@option]
      (** rental_and_lease_key_type *)
  rental_duration_seconds : float option; [@option]
      (** rental_duration_seconds *)
  offline_rental_configuration :
    azurerm_media_content_key_policy__policy_option__fairplay_configuration__offline_rental_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_media_content_key_policy__policy_option__fairplay_configuration *)

type azurerm_media_content_key_policy__policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction = {
  best_effort_enforced : bool option; [@option]
      (** best_effort_enforced *)
  control_bits : float;  (** control_bits *)
}
[@@deriving yojson_of]
(** azurerm_media_content_key_policy__policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction *)

type azurerm_media_content_key_policy__policy_option__playready_configuration_license__play_right = {
  agc_and_color_stripe_restriction : float option; [@option]
      (** agc_and_color_stripe_restriction *)
  allow_passing_video_content_to_unknown_output : string option;
      [@option]
      (** allow_passing_video_content_to_unknown_output *)
  analog_video_opl : float option; [@option]  (** analog_video_opl *)
  compressed_digital_audio_opl : float option; [@option]
      (** compressed_digital_audio_opl *)
  compressed_digital_video_opl : float option; [@option]
      (** compressed_digital_video_opl *)
  digital_video_only_content_restriction : bool option; [@option]
      (** digital_video_only_content_restriction *)
  first_play_expiration : string option; [@option]
      (** first_play_expiration *)
  image_constraint_for_analog_component_video_restriction :
    bool option;
      [@option]
      (** image_constraint_for_analog_component_video_restriction *)
  image_constraint_for_analog_computer_monitor_restriction :
    bool option;
      [@option]
      (** image_constraint_for_analog_computer_monitor_restriction *)
  scms_restriction : float option; [@option]  (** scms_restriction *)
  uncompressed_digital_audio_opl : float option; [@option]
      (** uncompressed_digital_audio_opl *)
  uncompressed_digital_video_opl : float option; [@option]
      (** uncompressed_digital_video_opl *)
  explicit_analog_television_output_restriction :
    azurerm_media_content_key_policy__policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction
    list;
}
[@@deriving yojson_of]
(** azurerm_media_content_key_policy__policy_option__playready_configuration_license__play_right *)

type azurerm_media_content_key_policy__policy_option__playready_configuration_license = {
  allow_test_devices : bool option; [@option]
      (** allow_test_devices *)
  begin_date : string option; [@option]  (** begin_date *)
  content_key_location_from_header_enabled : bool option; [@option]
      (** content_key_location_from_header_enabled *)
  content_key_location_from_key_id : string option; [@option]
      (** content_key_location_from_key_id *)
  content_type : string option; [@option]  (** content_type *)
  expiration_date : string option; [@option]  (** expiration_date *)
  grace_period : string option; [@option]  (** grace_period *)
  license_type : string option; [@option]  (** license_type *)
  relative_begin_date : string option; [@option]
      (** relative_begin_date *)
  relative_expiration_date : string option; [@option]
      (** relative_expiration_date *)
  security_level : string option; [@option]  (** security_level *)
  play_right :
    azurerm_media_content_key_policy__policy_option__playready_configuration_license__play_right
    list;
}
[@@deriving yojson_of]
(** azurerm_media_content_key_policy__policy_option__playready_configuration_license *)

type azurerm_media_content_key_policy__policy_option__token_restriction__alternate_key = {
  rsa_token_key_exponent : string option; [@option]
      (** rsa_token_key_exponent *)
  rsa_token_key_modulus : string option; [@option]
      (** rsa_token_key_modulus *)
  symmetric_token_key : string option; [@option]
      (** symmetric_token_key *)
  x509_token_key_raw : string option; [@option]
      (** x509_token_key_raw *)
}
[@@deriving yojson_of]
(** azurerm_media_content_key_policy__policy_option__token_restriction__alternate_key *)

type azurerm_media_content_key_policy__policy_option__token_restriction__required_claim = {
  type_ : string option; [@option] [@key "type"]  (** type *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_media_content_key_policy__policy_option__token_restriction__required_claim *)

type azurerm_media_content_key_policy__policy_option__token_restriction = {
  audience : string option; [@option]  (** audience *)
  issuer : string option; [@option]  (** issuer *)
  open_id_connect_discovery_document : string option; [@option]
      (** open_id_connect_discovery_document *)
  primary_rsa_token_key_exponent : string option; [@option]
      (** primary_rsa_token_key_exponent *)
  primary_rsa_token_key_modulus : string option; [@option]
      (** primary_rsa_token_key_modulus *)
  primary_symmetric_token_key : string option; [@option]
      (** primary_symmetric_token_key *)
  primary_x509_token_key_raw : string option; [@option]
      (** primary_x509_token_key_raw *)
  token_type : string option; [@option]  (** token_type *)
  alternate_key :
    azurerm_media_content_key_policy__policy_option__token_restriction__alternate_key
    list;
  required_claim :
    azurerm_media_content_key_policy__policy_option__token_restriction__required_claim
    list;
}
[@@deriving yojson_of]
(** azurerm_media_content_key_policy__policy_option__token_restriction *)

type azurerm_media_content_key_policy__policy_option = {
  clear_key_configuration_enabled : bool option; [@option]
      (** clear_key_configuration_enabled *)
  name : string;  (** name *)
  open_restriction_enabled : bool option; [@option]
      (** open_restriction_enabled *)
  playready_response_custom_data : string option; [@option]
      (** playready_response_custom_data *)
  widevine_configuration_template : string option; [@option]
      (** widevine_configuration_template *)
  fairplay_configuration :
    azurerm_media_content_key_policy__policy_option__fairplay_configuration
    list;
  playready_configuration_license :
    azurerm_media_content_key_policy__policy_option__playready_configuration_license
    list;
  token_restriction :
    azurerm_media_content_key_policy__policy_option__token_restriction
    list;
}
[@@deriving yojson_of]
(** azurerm_media_content_key_policy__policy_option *)

type azurerm_media_content_key_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_media_content_key_policy__timeouts *)

type azurerm_media_content_key_policy = {
  description : string option; [@option]  (** description *)
  media_services_account_name : string;
      (** media_services_account_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  policy_option :
    azurerm_media_content_key_policy__policy_option list;
  timeouts : azurerm_media_content_key_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_content_key_policy *)

let azurerm_media_content_key_policy ?description ?timeouts
    ~media_services_account_name ~name ~resource_group_name
    ~policy_option __resource_id =
  let __resource_type = "azurerm_media_content_key_policy" in
  let __resource =
    {
      description;
      media_services_account_name;
      name;
      resource_group_name;
      policy_option;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_media_content_key_policy __resource);
  ()
