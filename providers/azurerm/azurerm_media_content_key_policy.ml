(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type policy_option__fairplay_configuration__offline_rental_configuration = {
  playback_duration_seconds : float prop option; [@option]
  storage_duration_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_option__fairplay_configuration__offline_rental_configuration) ->
  ()

let yojson_of_policy_option__fairplay_configuration__offline_rental_configuration
    =
  (function
   | {
       playback_duration_seconds = v_playback_duration_seconds;
       storage_duration_seconds = v_storage_duration_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_duration_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "storage_duration_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_playback_duration_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "playback_duration_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_option__fairplay_configuration__offline_rental_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_option__fairplay_configuration__offline_rental_configuration

[@@@deriving.end]

type policy_option__fairplay_configuration = {
  ask : string prop option; [@option]
  pfx : string prop option; [@option]
  pfx_password : string prop option; [@option]
  rental_and_lease_key_type : string prop option; [@option]
  rental_duration_seconds : float prop option; [@option]
  offline_rental_configuration :
    policy_option__fairplay_configuration__offline_rental_configuration
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_option__fairplay_configuration) -> ()

let yojson_of_policy_option__fairplay_configuration =
  (function
   | {
       ask = v_ask;
       pfx = v_pfx;
       pfx_password = v_pfx_password;
       rental_and_lease_key_type = v_rental_and_lease_key_type;
       rental_duration_seconds = v_rental_duration_seconds;
       offline_rental_configuration = v_offline_rental_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_option__fairplay_configuration__offline_rental_configuration
             v_offline_rental_configuration
         in
         ("offline_rental_configuration", arg) :: bnds
       in
       let bnds =
         match v_rental_duration_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rental_duration_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rental_and_lease_key_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rental_and_lease_key_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pfx_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pfx_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pfx with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pfx", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ask with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ask", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_option__fairplay_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_option__fairplay_configuration

[@@@deriving.end]

type policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction = {
  best_effort_enforced : bool prop option; [@option]
  control_bits : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction) ->
  ()

let yojson_of_policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction
    =
  (function
   | {
       best_effort_enforced = v_best_effort_enforced;
       control_bits = v_control_bits;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_control_bits in
         ("control_bits", arg) :: bnds
       in
       let bnds =
         match v_best_effort_enforced with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "best_effort_enforced", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction

[@@@deriving.end]

type policy_option__playready_configuration_license__play_right = {
  agc_and_color_stripe_restriction : float prop option; [@option]
  allow_passing_video_content_to_unknown_output : string prop option;
      [@option]
  analog_video_opl : float prop option; [@option]
  compressed_digital_audio_opl : float prop option; [@option]
  compressed_digital_video_opl : float prop option; [@option]
  digital_video_only_content_restriction : bool prop option;
      [@option]
  first_play_expiration : string prop option; [@option]
  image_constraint_for_analog_component_video_restriction :
    bool prop option;
      [@option]
  image_constraint_for_analog_computer_monitor_restriction :
    bool prop option;
      [@option]
  scms_restriction : float prop option; [@option]
  uncompressed_digital_audio_opl : float prop option; [@option]
  uncompressed_digital_video_opl : float prop option; [@option]
  explicit_analog_television_output_restriction :
    policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : policy_option__playready_configuration_license__play_right) ->
  ()

let yojson_of_policy_option__playready_configuration_license__play_right
    =
  (function
   | {
       agc_and_color_stripe_restriction =
         v_agc_and_color_stripe_restriction;
       allow_passing_video_content_to_unknown_output =
         v_allow_passing_video_content_to_unknown_output;
       analog_video_opl = v_analog_video_opl;
       compressed_digital_audio_opl = v_compressed_digital_audio_opl;
       compressed_digital_video_opl = v_compressed_digital_video_opl;
       digital_video_only_content_restriction =
         v_digital_video_only_content_restriction;
       first_play_expiration = v_first_play_expiration;
       image_constraint_for_analog_component_video_restriction =
         v_image_constraint_for_analog_component_video_restriction;
       image_constraint_for_analog_computer_monitor_restriction =
         v_image_constraint_for_analog_computer_monitor_restriction;
       scms_restriction = v_scms_restriction;
       uncompressed_digital_audio_opl =
         v_uncompressed_digital_audio_opl;
       uncompressed_digital_video_opl =
         v_uncompressed_digital_video_opl;
       explicit_analog_television_output_restriction =
         v_explicit_analog_television_output_restriction;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction
             v_explicit_analog_television_output_restriction
         in
         ("explicit_analog_television_output_restriction", arg)
         :: bnds
       in
       let bnds =
         match v_uncompressed_digital_video_opl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "uncompressed_digital_video_opl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_uncompressed_digital_audio_opl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "uncompressed_digital_audio_opl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scms_restriction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scms_restriction", arg in
             bnd :: bnds
       in
       let bnds =
         match
           v_image_constraint_for_analog_computer_monitor_restriction
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               ( "image_constraint_for_analog_computer_monitor_restriction",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_image_constraint_for_analog_component_video_restriction
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               ( "image_constraint_for_analog_component_video_restriction",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_first_play_expiration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "first_play_expiration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_digital_video_only_content_restriction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "digital_video_only_content_restriction", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_compressed_digital_video_opl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "compressed_digital_video_opl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compressed_digital_audio_opl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "compressed_digital_audio_opl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_analog_video_opl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "analog_video_opl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_passing_video_content_to_unknown_output with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "allow_passing_video_content_to_unknown_output", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_agc_and_color_stripe_restriction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "agc_and_color_stripe_restriction", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_option__playready_configuration_license__play_right ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_option__playready_configuration_license__play_right

[@@@deriving.end]

type policy_option__playready_configuration_license = {
  allow_test_devices : bool prop option; [@option]
  begin_date : string prop option; [@option]
  content_key_location_from_header_enabled : bool prop option;
      [@option]
  content_key_location_from_key_id : string prop option; [@option]
  content_type : string prop option; [@option]
  expiration_date : string prop option; [@option]
  grace_period : string prop option; [@option]
  license_type : string prop option; [@option]
  relative_begin_date : string prop option; [@option]
  relative_expiration_date : string prop option; [@option]
  security_level : string prop option; [@option]
  play_right :
    policy_option__playready_configuration_license__play_right list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : policy_option__playready_configuration_license) -> ()

let yojson_of_policy_option__playready_configuration_license =
  (function
   | {
       allow_test_devices = v_allow_test_devices;
       begin_date = v_begin_date;
       content_key_location_from_header_enabled =
         v_content_key_location_from_header_enabled;
       content_key_location_from_key_id =
         v_content_key_location_from_key_id;
       content_type = v_content_type;
       expiration_date = v_expiration_date;
       grace_period = v_grace_period;
       license_type = v_license_type;
       relative_begin_date = v_relative_begin_date;
       relative_expiration_date = v_relative_expiration_date;
       security_level = v_security_level;
       play_right = v_play_right;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_option__playready_configuration_license__play_right
             v_play_right
         in
         ("play_right", arg) :: bnds
       in
       let bnds =
         match v_security_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_relative_expiration_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "relative_expiration_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_relative_begin_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "relative_begin_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_license_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "license_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_grace_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "grace_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expiration_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiration_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_key_location_from_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_key_location_from_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_key_location_from_header_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "content_key_location_from_header_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_begin_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "begin_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_test_devices with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_test_devices", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_option__playready_configuration_license ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_option__playready_configuration_license

[@@@deriving.end]

type policy_option__token_restriction__alternate_key = {
  rsa_token_key_exponent : string prop option; [@option]
  rsa_token_key_modulus : string prop option; [@option]
  symmetric_token_key : string prop option; [@option]
  x509_token_key_raw : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : policy_option__token_restriction__alternate_key) -> ()

let yojson_of_policy_option__token_restriction__alternate_key =
  (function
   | {
       rsa_token_key_exponent = v_rsa_token_key_exponent;
       rsa_token_key_modulus = v_rsa_token_key_modulus;
       symmetric_token_key = v_symmetric_token_key;
       x509_token_key_raw = v_x509_token_key_raw;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_x509_token_key_raw with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "x509_token_key_raw", arg in
             bnd :: bnds
       in
       let bnds =
         match v_symmetric_token_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "symmetric_token_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rsa_token_key_modulus with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rsa_token_key_modulus", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rsa_token_key_exponent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rsa_token_key_exponent", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_option__token_restriction__alternate_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_option__token_restriction__alternate_key

[@@@deriving.end]

type policy_option__token_restriction__required_claim = {
  type_ : string prop option; [@option] [@key "type"]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : policy_option__token_restriction__required_claim) -> ()

let yojson_of_policy_option__token_restriction__required_claim =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_option__token_restriction__required_claim ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_option__token_restriction__required_claim

[@@@deriving.end]

type policy_option__token_restriction = {
  audience : string prop option; [@option]
  issuer : string prop option; [@option]
  open_id_connect_discovery_document : string prop option; [@option]
  primary_rsa_token_key_exponent : string prop option; [@option]
  primary_rsa_token_key_modulus : string prop option; [@option]
  primary_symmetric_token_key : string prop option; [@option]
  primary_x509_token_key_raw : string prop option; [@option]
  token_type : string prop option; [@option]
  alternate_key :
    policy_option__token_restriction__alternate_key list;
  required_claim :
    policy_option__token_restriction__required_claim list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_option__token_restriction) -> ()

let yojson_of_policy_option__token_restriction =
  (function
   | {
       audience = v_audience;
       issuer = v_issuer;
       open_id_connect_discovery_document =
         v_open_id_connect_discovery_document;
       primary_rsa_token_key_exponent =
         v_primary_rsa_token_key_exponent;
       primary_rsa_token_key_modulus =
         v_primary_rsa_token_key_modulus;
       primary_symmetric_token_key = v_primary_symmetric_token_key;
       primary_x509_token_key_raw = v_primary_x509_token_key_raw;
       token_type = v_token_type;
       alternate_key = v_alternate_key;
       required_claim = v_required_claim;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_option__token_restriction__required_claim
             v_required_claim
         in
         ("required_claim", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_option__token_restriction__alternate_key
             v_alternate_key
         in
         ("alternate_key", arg) :: bnds
       in
       let bnds =
         match v_token_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_primary_x509_token_key_raw with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_x509_token_key_raw", arg in
             bnd :: bnds
       in
       let bnds =
         match v_primary_symmetric_token_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_symmetric_token_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_primary_rsa_token_key_modulus with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_rsa_token_key_modulus", arg in
             bnd :: bnds
       in
       let bnds =
         match v_primary_rsa_token_key_exponent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_rsa_token_key_exponent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_open_id_connect_discovery_document with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "open_id_connect_discovery_document", arg in
             bnd :: bnds
       in
       let bnds =
         match v_issuer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "issuer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audience with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audience", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_option__token_restriction ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_option__token_restriction

[@@@deriving.end]

type policy_option = {
  clear_key_configuration_enabled : bool prop option; [@option]
  name : string prop;
  open_restriction_enabled : bool prop option; [@option]
  playready_response_custom_data : string prop option; [@option]
  widevine_configuration_template : string prop option; [@option]
  fairplay_configuration :
    policy_option__fairplay_configuration list;
  playready_configuration_license :
    policy_option__playready_configuration_license list;
  token_restriction : policy_option__token_restriction list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_option) -> ()

let yojson_of_policy_option =
  (function
   | {
       clear_key_configuration_enabled =
         v_clear_key_configuration_enabled;
       name = v_name;
       open_restriction_enabled = v_open_restriction_enabled;
       playready_response_custom_data =
         v_playready_response_custom_data;
       widevine_configuration_template =
         v_widevine_configuration_template;
       fairplay_configuration = v_fairplay_configuration;
       playready_configuration_license =
         v_playready_configuration_license;
       token_restriction = v_token_restriction;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_policy_option__token_restriction
             v_token_restriction
         in
         ("token_restriction", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_option__playready_configuration_license
             v_playready_configuration_license
         in
         ("playready_configuration_license", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_option__fairplay_configuration
             v_fairplay_configuration
         in
         ("fairplay_configuration", arg) :: bnds
       in
       let bnds =
         match v_widevine_configuration_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "widevine_configuration_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_playready_response_custom_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "playready_response_custom_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_open_restriction_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "open_restriction_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_clear_key_configuration_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "clear_key_configuration_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_option -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_option

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_media_content_key_policy = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  policy_option : policy_option list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_media_content_key_policy) -> ()

let yojson_of_azurerm_media_content_key_policy =
  (function
   | {
       description = v_description;
       id = v_id;
       media_services_account_name = v_media_services_account_name;
       name = v_name;
       resource_group_name = v_resource_group_name;
       policy_option = v_policy_option;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_policy_option v_policy_option
         in
         ("policy_option", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_media_services_account_name
         in
         ("media_services_account_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_media_content_key_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_media_content_key_policy

[@@@deriving.end]

let policy_option__fairplay_configuration__offline_rental_configuration
    ?playback_duration_seconds ?storage_duration_seconds () :
    policy_option__fairplay_configuration__offline_rental_configuration
    =
  { playback_duration_seconds; storage_duration_seconds }

let policy_option__fairplay_configuration ?ask ?pfx ?pfx_password
    ?rental_and_lease_key_type ?rental_duration_seconds
    ?(offline_rental_configuration = []) () :
    policy_option__fairplay_configuration =
  {
    ask;
    pfx;
    pfx_password;
    rental_and_lease_key_type;
    rental_duration_seconds;
    offline_rental_configuration;
  }

let policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction
    ?best_effort_enforced ~control_bits () :
    policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction
    =
  { best_effort_enforced; control_bits }

let policy_option__playready_configuration_license__play_right
    ?agc_and_color_stripe_restriction
    ?allow_passing_video_content_to_unknown_output ?analog_video_opl
    ?compressed_digital_audio_opl ?compressed_digital_video_opl
    ?digital_video_only_content_restriction ?first_play_expiration
    ?image_constraint_for_analog_component_video_restriction
    ?image_constraint_for_analog_computer_monitor_restriction
    ?scms_restriction ?uncompressed_digital_audio_opl
    ?uncompressed_digital_video_opl
    ?(explicit_analog_television_output_restriction = []) () :
    policy_option__playready_configuration_license__play_right =
  {
    agc_and_color_stripe_restriction;
    allow_passing_video_content_to_unknown_output;
    analog_video_opl;
    compressed_digital_audio_opl;
    compressed_digital_video_opl;
    digital_video_only_content_restriction;
    first_play_expiration;
    image_constraint_for_analog_component_video_restriction;
    image_constraint_for_analog_computer_monitor_restriction;
    scms_restriction;
    uncompressed_digital_audio_opl;
    uncompressed_digital_video_opl;
    explicit_analog_television_output_restriction;
  }

let policy_option__playready_configuration_license
    ?allow_test_devices ?begin_date
    ?content_key_location_from_header_enabled
    ?content_key_location_from_key_id ?content_type ?expiration_date
    ?grace_period ?license_type ?relative_begin_date
    ?relative_expiration_date ?security_level ?(play_right = []) () :
    policy_option__playready_configuration_license =
  {
    allow_test_devices;
    begin_date;
    content_key_location_from_header_enabled;
    content_key_location_from_key_id;
    content_type;
    expiration_date;
    grace_period;
    license_type;
    relative_begin_date;
    relative_expiration_date;
    security_level;
    play_right;
  }

let policy_option__token_restriction__alternate_key
    ?rsa_token_key_exponent ?rsa_token_key_modulus
    ?symmetric_token_key ?x509_token_key_raw () :
    policy_option__token_restriction__alternate_key =
  {
    rsa_token_key_exponent;
    rsa_token_key_modulus;
    symmetric_token_key;
    x509_token_key_raw;
  }

let policy_option__token_restriction__required_claim ?type_ ?value ()
    : policy_option__token_restriction__required_claim =
  { type_; value }

let policy_option__token_restriction ?audience ?issuer
    ?open_id_connect_discovery_document
    ?primary_rsa_token_key_exponent ?primary_rsa_token_key_modulus
    ?primary_symmetric_token_key ?primary_x509_token_key_raw
    ?token_type ?(alternate_key = []) ?(required_claim = []) () :
    policy_option__token_restriction =
  {
    audience;
    issuer;
    open_id_connect_discovery_document;
    primary_rsa_token_key_exponent;
    primary_rsa_token_key_modulus;
    primary_symmetric_token_key;
    primary_x509_token_key_raw;
    token_type;
    alternate_key;
    required_claim;
  }

let policy_option ?clear_key_configuration_enabled
    ?open_restriction_enabled ?playready_response_custom_data
    ?widevine_configuration_template ?(fairplay_configuration = [])
    ?(playready_configuration_license = []) ?(token_restriction = [])
    ~name () : policy_option =
  {
    clear_key_configuration_enabled;
    name;
    open_restriction_enabled;
    playready_response_custom_data;
    widevine_configuration_template;
    fairplay_configuration;
    playready_configuration_license;
    token_restriction;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_media_content_key_policy ?description ?id ?timeouts
    ~media_services_account_name ~name ~resource_group_name
    ~policy_option () : azurerm_media_content_key_policy =
  {
    description;
    id;
    media_services_account_name;
    name;
    resource_group_name;
    policy_option;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?description ?id ?timeouts ~media_services_account_name
    ~name ~resource_group_name ~policy_option __id =
  let __type = "azurerm_media_content_key_policy" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       media_services_account_name =
         Prop.computed __type __id "media_services_account_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_media_content_key_policy
        (azurerm_media_content_key_policy ?description ?id ?timeouts
           ~media_services_account_name ~name ~resource_group_name
           ~policy_option ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts
    ~media_services_account_name ~name ~resource_group_name
    ~policy_option __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~media_services_account_name
      ~name ~resource_group_name ~policy_option __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
