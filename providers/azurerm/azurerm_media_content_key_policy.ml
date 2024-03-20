(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type policy_option__fairplay_configuration__offline_rental_configuration = {
  playback_duration_seconds : float prop option; [@option]
      (** playback_duration_seconds *)
  storage_duration_seconds : float prop option; [@option]
      (** storage_duration_seconds *)
}
[@@deriving yojson_of]
(** policy_option__fairplay_configuration__offline_rental_configuration *)

type policy_option__fairplay_configuration = {
  ask : string prop option; [@option]  (** ask *)
  pfx : string prop option; [@option]  (** pfx *)
  pfx_password : string prop option; [@option]  (** pfx_password *)
  rental_and_lease_key_type : string prop option; [@option]
      (** rental_and_lease_key_type *)
  rental_duration_seconds : float prop option; [@option]
      (** rental_duration_seconds *)
  offline_rental_configuration :
    policy_option__fairplay_configuration__offline_rental_configuration
    list;
}
[@@deriving yojson_of]
(** policy_option__fairplay_configuration *)

type policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction = {
  best_effort_enforced : bool prop option; [@option]
      (** best_effort_enforced *)
  control_bits : float prop;  (** control_bits *)
}
[@@deriving yojson_of]
(** policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction *)

type policy_option__playready_configuration_license__play_right = {
  agc_and_color_stripe_restriction : float prop option; [@option]
      (** agc_and_color_stripe_restriction *)
  allow_passing_video_content_to_unknown_output : string prop option;
      [@option]
      (** allow_passing_video_content_to_unknown_output *)
  analog_video_opl : float prop option; [@option]
      (** analog_video_opl *)
  compressed_digital_audio_opl : float prop option; [@option]
      (** compressed_digital_audio_opl *)
  compressed_digital_video_opl : float prop option; [@option]
      (** compressed_digital_video_opl *)
  digital_video_only_content_restriction : bool prop option;
      [@option]
      (** digital_video_only_content_restriction *)
  first_play_expiration : string prop option; [@option]
      (** first_play_expiration *)
  image_constraint_for_analog_component_video_restriction :
    bool prop option;
      [@option]
      (** image_constraint_for_analog_component_video_restriction *)
  image_constraint_for_analog_computer_monitor_restriction :
    bool prop option;
      [@option]
      (** image_constraint_for_analog_computer_monitor_restriction *)
  scms_restriction : float prop option; [@option]
      (** scms_restriction *)
  uncompressed_digital_audio_opl : float prop option; [@option]
      (** uncompressed_digital_audio_opl *)
  uncompressed_digital_video_opl : float prop option; [@option]
      (** uncompressed_digital_video_opl *)
  explicit_analog_television_output_restriction :
    policy_option__playready_configuration_license__play_right__explicit_analog_television_output_restriction
    list;
}
[@@deriving yojson_of]
(** policy_option__playready_configuration_license__play_right *)

type policy_option__playready_configuration_license = {
  allow_test_devices : bool prop option; [@option]
      (** allow_test_devices *)
  begin_date : string prop option; [@option]  (** begin_date *)
  content_key_location_from_header_enabled : bool prop option;
      [@option]
      (** content_key_location_from_header_enabled *)
  content_key_location_from_key_id : string prop option; [@option]
      (** content_key_location_from_key_id *)
  content_type : string prop option; [@option]  (** content_type *)
  expiration_date : string prop option; [@option]
      (** expiration_date *)
  grace_period : string prop option; [@option]  (** grace_period *)
  license_type : string prop option; [@option]  (** license_type *)
  relative_begin_date : string prop option; [@option]
      (** relative_begin_date *)
  relative_expiration_date : string prop option; [@option]
      (** relative_expiration_date *)
  security_level : string prop option; [@option]
      (** security_level *)
  play_right :
    policy_option__playready_configuration_license__play_right list;
}
[@@deriving yojson_of]
(** policy_option__playready_configuration_license *)

type policy_option__token_restriction__alternate_key = {
  rsa_token_key_exponent : string prop option; [@option]
      (** rsa_token_key_exponent *)
  rsa_token_key_modulus : string prop option; [@option]
      (** rsa_token_key_modulus *)
  symmetric_token_key : string prop option; [@option]
      (** symmetric_token_key *)
  x509_token_key_raw : string prop option; [@option]
      (** x509_token_key_raw *)
}
[@@deriving yojson_of]
(** policy_option__token_restriction__alternate_key *)

type policy_option__token_restriction__required_claim = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** policy_option__token_restriction__required_claim *)

type policy_option__token_restriction = {
  audience : string prop option; [@option]  (** audience *)
  issuer : string prop option; [@option]  (** issuer *)
  open_id_connect_discovery_document : string prop option; [@option]
      (** open_id_connect_discovery_document *)
  primary_rsa_token_key_exponent : string prop option; [@option]
      (** primary_rsa_token_key_exponent *)
  primary_rsa_token_key_modulus : string prop option; [@option]
      (** primary_rsa_token_key_modulus *)
  primary_symmetric_token_key : string prop option; [@option]
      (** primary_symmetric_token_key *)
  primary_x509_token_key_raw : string prop option; [@option]
      (** primary_x509_token_key_raw *)
  token_type : string prop option; [@option]  (** token_type *)
  alternate_key :
    policy_option__token_restriction__alternate_key list;
  required_claim :
    policy_option__token_restriction__required_claim list;
}
[@@deriving yojson_of]
(** policy_option__token_restriction *)

type policy_option = {
  clear_key_configuration_enabled : bool prop option; [@option]
      (** clear_key_configuration_enabled *)
  name : string prop;  (** name *)
  open_restriction_enabled : bool prop option; [@option]
      (** open_restriction_enabled *)
  playready_response_custom_data : string prop option; [@option]
      (** playready_response_custom_data *)
  widevine_configuration_template : string prop option; [@option]
      (** widevine_configuration_template *)
  fairplay_configuration :
    policy_option__fairplay_configuration list;
  playready_configuration_license :
    policy_option__playready_configuration_license list;
  token_restriction : policy_option__token_restriction list;
}
[@@deriving yojson_of]
(** policy_option *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_media_content_key_policy = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  media_services_account_name : string prop;
      (** media_services_account_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  policy_option : policy_option list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_content_key_policy *)

let policy_option__fairplay_configuration__offline_rental_configuration
    ?playback_duration_seconds ?storage_duration_seconds () :
    policy_option__fairplay_configuration__offline_rental_configuration
    =
  { playback_duration_seconds; storage_duration_seconds }

let policy_option__fairplay_configuration ?ask ?pfx ?pfx_password
    ?rental_and_lease_key_type ?rental_duration_seconds
    ~offline_rental_configuration () :
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
    ~explicit_analog_television_output_restriction () :
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
    ?relative_expiration_date ?security_level ~play_right () :
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
    ?token_type ~alternate_key ~required_claim () :
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
    ?widevine_configuration_template ~name ~fairplay_configuration
    ~playready_configuration_license ~token_restriction () :
    policy_option =
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
