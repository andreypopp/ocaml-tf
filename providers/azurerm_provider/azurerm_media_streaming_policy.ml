(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_media_streaming_policy__common_encryption_cbcs__clear_key_encryption = {
  custom_keys_acquisition_url_template : string prop;
      (** custom_keys_acquisition_url_template *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__common_encryption_cbcs__clear_key_encryption *)

type azurerm_media_streaming_policy__common_encryption_cbcs__default_content_key = {
  label : string prop option; [@option]  (** label *)
  policy_name : string prop option; [@option]  (** policy_name *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__common_encryption_cbcs__default_content_key *)

type azurerm_media_streaming_policy__common_encryption_cbcs__drm_fairplay = {
  allow_persistent_license : bool prop option; [@option]
      (** allow_persistent_license *)
  custom_license_acquisition_url_template : string prop option;
      [@option]
      (** custom_license_acquisition_url_template *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__common_encryption_cbcs__drm_fairplay *)

type azurerm_media_streaming_policy__common_encryption_cbcs__enabled_protocols = {
  dash : bool prop option; [@option]  (** dash *)
  download : bool prop option; [@option]  (** download *)
  hls : bool prop option; [@option]  (** hls *)
  smooth_streaming : bool prop option; [@option]
      (** smooth_streaming *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__common_encryption_cbcs__enabled_protocols *)

type azurerm_media_streaming_policy__common_encryption_cbcs = {
  clear_key_encryption :
    azurerm_media_streaming_policy__common_encryption_cbcs__clear_key_encryption
    list;
  default_content_key :
    azurerm_media_streaming_policy__common_encryption_cbcs__default_content_key
    list;
  drm_fairplay :
    azurerm_media_streaming_policy__common_encryption_cbcs__drm_fairplay
    list;
  enabled_protocols :
    azurerm_media_streaming_policy__common_encryption_cbcs__enabled_protocols
    list;
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__common_encryption_cbcs *)

type azurerm_media_streaming_policy__common_encryption_cenc__clear_key_encryption = {
  custom_keys_acquisition_url_template : string prop;
      (** custom_keys_acquisition_url_template *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__common_encryption_cenc__clear_key_encryption *)

type azurerm_media_streaming_policy__common_encryption_cenc__clear_track__condition = {
  operation : string prop;  (** operation *)
  property : string prop;  (** property *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__common_encryption_cenc__clear_track__condition *)

type azurerm_media_streaming_policy__common_encryption_cenc__clear_track = {
  condition :
    azurerm_media_streaming_policy__common_encryption_cenc__clear_track__condition
    list;
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__common_encryption_cenc__clear_track *)

type azurerm_media_streaming_policy__common_encryption_cenc__content_key_to_track_mapping__track__condition = {
  operation : string prop;  (** operation *)
  property : string prop;  (** property *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__common_encryption_cenc__content_key_to_track_mapping__track__condition *)

type azurerm_media_streaming_policy__common_encryption_cenc__content_key_to_track_mapping__track = {
  condition :
    azurerm_media_streaming_policy__common_encryption_cenc__content_key_to_track_mapping__track__condition
    list;
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__common_encryption_cenc__content_key_to_track_mapping__track *)

type azurerm_media_streaming_policy__common_encryption_cenc__content_key_to_track_mapping = {
  label : string prop option; [@option]  (** label *)
  policy_name : string prop option; [@option]  (** policy_name *)
  track :
    azurerm_media_streaming_policy__common_encryption_cenc__content_key_to_track_mapping__track
    list;
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__common_encryption_cenc__content_key_to_track_mapping *)

type azurerm_media_streaming_policy__common_encryption_cenc__default_content_key = {
  label : string prop option; [@option]  (** label *)
  policy_name : string prop option; [@option]  (** policy_name *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__common_encryption_cenc__default_content_key *)

type azurerm_media_streaming_policy__common_encryption_cenc__drm_playready = {
  custom_attributes : string prop option; [@option]
      (** custom_attributes *)
  custom_license_acquisition_url_template : string prop option;
      [@option]
      (** custom_license_acquisition_url_template *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__common_encryption_cenc__drm_playready *)

type azurerm_media_streaming_policy__common_encryption_cenc__enabled_protocols = {
  dash : bool prop option; [@option]  (** dash *)
  download : bool prop option; [@option]  (** download *)
  hls : bool prop option; [@option]  (** hls *)
  smooth_streaming : bool prop option; [@option]
      (** smooth_streaming *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__common_encryption_cenc__enabled_protocols *)

type azurerm_media_streaming_policy__common_encryption_cenc = {
  drm_widevine_custom_license_acquisition_url_template :
    string prop option;
      [@option]
      (** drm_widevine_custom_license_acquisition_url_template *)
  clear_key_encryption :
    azurerm_media_streaming_policy__common_encryption_cenc__clear_key_encryption
    list;
  clear_track :
    azurerm_media_streaming_policy__common_encryption_cenc__clear_track
    list;
  content_key_to_track_mapping :
    azurerm_media_streaming_policy__common_encryption_cenc__content_key_to_track_mapping
    list;
  default_content_key :
    azurerm_media_streaming_policy__common_encryption_cenc__default_content_key
    list;
  drm_playready :
    azurerm_media_streaming_policy__common_encryption_cenc__drm_playready
    list;
  enabled_protocols :
    azurerm_media_streaming_policy__common_encryption_cenc__enabled_protocols
    list;
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__common_encryption_cenc *)

type azurerm_media_streaming_policy__envelope_encryption__default_content_key = {
  label : string prop option; [@option]  (** label *)
  policy_name : string prop option; [@option]  (** policy_name *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__envelope_encryption__default_content_key *)

type azurerm_media_streaming_policy__envelope_encryption__enabled_protocols = {
  dash : bool prop option; [@option]  (** dash *)
  download : bool prop option; [@option]  (** download *)
  hls : bool prop option; [@option]  (** hls *)
  smooth_streaming : bool prop option; [@option]
      (** smooth_streaming *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__envelope_encryption__enabled_protocols *)

type azurerm_media_streaming_policy__envelope_encryption = {
  custom_keys_acquisition_url_template : string prop option;
      [@option]
      (** custom_keys_acquisition_url_template *)
  default_content_key :
    azurerm_media_streaming_policy__envelope_encryption__default_content_key
    list;
  enabled_protocols :
    azurerm_media_streaming_policy__envelope_encryption__enabled_protocols
    list;
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__envelope_encryption *)

type azurerm_media_streaming_policy__no_encryption_enabled_protocols = {
  dash : bool prop option; [@option]  (** dash *)
  download : bool prop option; [@option]  (** download *)
  hls : bool prop option; [@option]  (** hls *)
  smooth_streaming : bool prop option; [@option]
      (** smooth_streaming *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__no_encryption_enabled_protocols *)

type azurerm_media_streaming_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy__timeouts *)

type azurerm_media_streaming_policy = {
  default_content_key_policy_name : string prop option; [@option]
      (** default_content_key_policy_name *)
  id : string prop option; [@option]  (** id *)
  media_services_account_name : string prop;
      (** media_services_account_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  common_encryption_cbcs :
    azurerm_media_streaming_policy__common_encryption_cbcs list;
  common_encryption_cenc :
    azurerm_media_streaming_policy__common_encryption_cenc list;
  envelope_encryption :
    azurerm_media_streaming_policy__envelope_encryption list;
  no_encryption_enabled_protocols :
    azurerm_media_streaming_policy__no_encryption_enabled_protocols
    list;
  timeouts : azurerm_media_streaming_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy *)

let azurerm_media_streaming_policy ?default_content_key_policy_name
    ?id ?timeouts ~media_services_account_name ~name
    ~resource_group_name ~common_encryption_cbcs
    ~common_encryption_cenc ~envelope_encryption
    ~no_encryption_enabled_protocols __resource_id =
  let __resource_type = "azurerm_media_streaming_policy" in
  let __resource =
    {
      default_content_key_policy_name;
      id;
      media_services_account_name;
      name;
      resource_group_name;
      common_encryption_cbcs;
      common_encryption_cenc;
      envelope_encryption;
      no_encryption_enabled_protocols;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_media_streaming_policy __resource);
  ()
