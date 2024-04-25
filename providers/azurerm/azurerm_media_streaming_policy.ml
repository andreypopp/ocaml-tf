(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type common_encryption_cbcs__clear_key_encryption = {
  custom_keys_acquisition_url_template : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : common_encryption_cbcs__clear_key_encryption) -> ()

let yojson_of_common_encryption_cbcs__clear_key_encryption =
  (function
   | {
       custom_keys_acquisition_url_template =
         v_custom_keys_acquisition_url_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_custom_keys_acquisition_url_template
         in
         ("custom_keys_acquisition_url_template", arg) :: bnds
       in
       `Assoc bnds
    : common_encryption_cbcs__clear_key_encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_common_encryption_cbcs__clear_key_encryption

[@@@deriving.end]

type common_encryption_cbcs__default_content_key = {
  label : string prop option; [@option]
  policy_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : common_encryption_cbcs__default_content_key) -> ()

let yojson_of_common_encryption_cbcs__default_content_key =
  (function
   | { label = v_label; policy_name = v_policy_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : common_encryption_cbcs__default_content_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_common_encryption_cbcs__default_content_key

[@@@deriving.end]

type common_encryption_cbcs__drm_fairplay = {
  allow_persistent_license : bool prop option; [@option]
  custom_license_acquisition_url_template : string prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : common_encryption_cbcs__drm_fairplay) -> ()

let yojson_of_common_encryption_cbcs__drm_fairplay =
  (function
   | {
       allow_persistent_license = v_allow_persistent_license;
       custom_license_acquisition_url_template =
         v_custom_license_acquisition_url_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_custom_license_acquisition_url_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "custom_license_acquisition_url_template", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_allow_persistent_license with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_persistent_license", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : common_encryption_cbcs__drm_fairplay ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_common_encryption_cbcs__drm_fairplay

[@@@deriving.end]

type common_encryption_cbcs__enabled_protocols = {
  dash : bool prop option; [@option]
  download : bool prop option; [@option]
  hls : bool prop option; [@option]
  smooth_streaming : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : common_encryption_cbcs__enabled_protocols) -> ()

let yojson_of_common_encryption_cbcs__enabled_protocols =
  (function
   | {
       dash = v_dash;
       download = v_download;
       hls = v_hls;
       smooth_streaming = v_smooth_streaming;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_smooth_streaming with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "smooth_streaming", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "hls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_download with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "download", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dash with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dash", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : common_encryption_cbcs__enabled_protocols ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_common_encryption_cbcs__enabled_protocols

[@@@deriving.end]

type common_encryption_cbcs = {
  clear_key_encryption :
    common_encryption_cbcs__clear_key_encryption list;
  default_content_key :
    common_encryption_cbcs__default_content_key list;
  drm_fairplay : common_encryption_cbcs__drm_fairplay list;
  enabled_protocols : common_encryption_cbcs__enabled_protocols list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : common_encryption_cbcs) -> ()

let yojson_of_common_encryption_cbcs =
  (function
   | {
       clear_key_encryption = v_clear_key_encryption;
       default_content_key = v_default_content_key;
       drm_fairplay = v_drm_fairplay;
       enabled_protocols = v_enabled_protocols;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_common_encryption_cbcs__enabled_protocols
             v_enabled_protocols
         in
         ("enabled_protocols", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_common_encryption_cbcs__drm_fairplay
             v_drm_fairplay
         in
         ("drm_fairplay", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_common_encryption_cbcs__default_content_key
             v_default_content_key
         in
         ("default_content_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_common_encryption_cbcs__clear_key_encryption
             v_clear_key_encryption
         in
         ("clear_key_encryption", arg) :: bnds
       in
       `Assoc bnds
    : common_encryption_cbcs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_common_encryption_cbcs

[@@@deriving.end]

type common_encryption_cenc__clear_key_encryption = {
  custom_keys_acquisition_url_template : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : common_encryption_cenc__clear_key_encryption) -> ()

let yojson_of_common_encryption_cenc__clear_key_encryption =
  (function
   | {
       custom_keys_acquisition_url_template =
         v_custom_keys_acquisition_url_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_custom_keys_acquisition_url_template
         in
         ("custom_keys_acquisition_url_template", arg) :: bnds
       in
       `Assoc bnds
    : common_encryption_cenc__clear_key_encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_common_encryption_cenc__clear_key_encryption

[@@@deriving.end]

type common_encryption_cenc__clear_track__condition = {
  operation : string prop;
  property : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : common_encryption_cenc__clear_track__condition) -> ()

let yojson_of_common_encryption_cenc__clear_track__condition =
  (function
   | {
       operation = v_operation;
       property = v_property;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_property in
         ("property", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operation in
         ("operation", arg) :: bnds
       in
       `Assoc bnds
    : common_encryption_cenc__clear_track__condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_common_encryption_cenc__clear_track__condition

[@@@deriving.end]

type common_encryption_cenc__clear_track = {
  condition : common_encryption_cenc__clear_track__condition list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : common_encryption_cenc__clear_track) -> ()

let yojson_of_common_encryption_cenc__clear_track =
  (function
   | { condition = v_condition } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_common_encryption_cenc__clear_track__condition
             v_condition
         in
         ("condition", arg) :: bnds
       in
       `Assoc bnds
    : common_encryption_cenc__clear_track ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_common_encryption_cenc__clear_track

[@@@deriving.end]

type common_encryption_cenc__content_key_to_track_mapping__track__condition = {
  operation : string prop;
  property : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       common_encryption_cenc__content_key_to_track_mapping__track__condition) ->
  ()

let yojson_of_common_encryption_cenc__content_key_to_track_mapping__track__condition
    =
  (function
   | {
       operation = v_operation;
       property = v_property;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_property in
         ("property", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operation in
         ("operation", arg) :: bnds
       in
       `Assoc bnds
    : common_encryption_cenc__content_key_to_track_mapping__track__condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_common_encryption_cenc__content_key_to_track_mapping__track__condition

[@@@deriving.end]

type common_encryption_cenc__content_key_to_track_mapping__track = {
  condition :
    common_encryption_cenc__content_key_to_track_mapping__track__condition
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       common_encryption_cenc__content_key_to_track_mapping__track) ->
  ()

let yojson_of_common_encryption_cenc__content_key_to_track_mapping__track
    =
  (function
   | { condition = v_condition } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_common_encryption_cenc__content_key_to_track_mapping__track__condition
             v_condition
         in
         ("condition", arg) :: bnds
       in
       `Assoc bnds
    : common_encryption_cenc__content_key_to_track_mapping__track ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_common_encryption_cenc__content_key_to_track_mapping__track

[@@@deriving.end]

type common_encryption_cenc__content_key_to_track_mapping = {
  label : string prop option; [@option]
  policy_name : string prop option; [@option]
  track :
    common_encryption_cenc__content_key_to_track_mapping__track list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : common_encryption_cenc__content_key_to_track_mapping) -> ()

let yojson_of_common_encryption_cenc__content_key_to_track_mapping =
  (function
   | {
       label = v_label;
       policy_name = v_policy_name;
       track = v_track;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_common_encryption_cenc__content_key_to_track_mapping__track
             v_track
         in
         ("track", arg) :: bnds
       in
       let bnds =
         match v_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : common_encryption_cenc__content_key_to_track_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_common_encryption_cenc__content_key_to_track_mapping

[@@@deriving.end]

type common_encryption_cenc__default_content_key = {
  label : string prop option; [@option]
  policy_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : common_encryption_cenc__default_content_key) -> ()

let yojson_of_common_encryption_cenc__default_content_key =
  (function
   | { label = v_label; policy_name = v_policy_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : common_encryption_cenc__default_content_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_common_encryption_cenc__default_content_key

[@@@deriving.end]

type common_encryption_cenc__drm_playready = {
  custom_attributes : string prop option; [@option]
  custom_license_acquisition_url_template : string prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : common_encryption_cenc__drm_playready) -> ()

let yojson_of_common_encryption_cenc__drm_playready =
  (function
   | {
       custom_attributes = v_custom_attributes;
       custom_license_acquisition_url_template =
         v_custom_license_acquisition_url_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_custom_license_acquisition_url_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "custom_license_acquisition_url_template", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_custom_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_attributes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : common_encryption_cenc__drm_playready ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_common_encryption_cenc__drm_playready

[@@@deriving.end]

type common_encryption_cenc__enabled_protocols = {
  dash : bool prop option; [@option]
  download : bool prop option; [@option]
  hls : bool prop option; [@option]
  smooth_streaming : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : common_encryption_cenc__enabled_protocols) -> ()

let yojson_of_common_encryption_cenc__enabled_protocols =
  (function
   | {
       dash = v_dash;
       download = v_download;
       hls = v_hls;
       smooth_streaming = v_smooth_streaming;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_smooth_streaming with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "smooth_streaming", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "hls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_download with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "download", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dash with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dash", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : common_encryption_cenc__enabled_protocols ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_common_encryption_cenc__enabled_protocols

[@@@deriving.end]

type common_encryption_cenc = {
  drm_widevine_custom_license_acquisition_url_template :
    string prop option;
      [@option]
  clear_key_encryption :
    common_encryption_cenc__clear_key_encryption list;
  clear_track : common_encryption_cenc__clear_track list;
  content_key_to_track_mapping :
    common_encryption_cenc__content_key_to_track_mapping list;
  default_content_key :
    common_encryption_cenc__default_content_key list;
  drm_playready : common_encryption_cenc__drm_playready list;
  enabled_protocols : common_encryption_cenc__enabled_protocols list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : common_encryption_cenc) -> ()

let yojson_of_common_encryption_cenc =
  (function
   | {
       drm_widevine_custom_license_acquisition_url_template =
         v_drm_widevine_custom_license_acquisition_url_template;
       clear_key_encryption = v_clear_key_encryption;
       clear_track = v_clear_track;
       content_key_to_track_mapping = v_content_key_to_track_mapping;
       default_content_key = v_default_content_key;
       drm_playready = v_drm_playready;
       enabled_protocols = v_enabled_protocols;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_common_encryption_cenc__enabled_protocols
             v_enabled_protocols
         in
         ("enabled_protocols", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_common_encryption_cenc__drm_playready
             v_drm_playready
         in
         ("drm_playready", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_common_encryption_cenc__default_content_key
             v_default_content_key
         in
         ("default_content_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_common_encryption_cenc__content_key_to_track_mapping
             v_content_key_to_track_mapping
         in
         ("content_key_to_track_mapping", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_common_encryption_cenc__clear_track
             v_clear_track
         in
         ("clear_track", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_common_encryption_cenc__clear_key_encryption
             v_clear_key_encryption
         in
         ("clear_key_encryption", arg) :: bnds
       in
       let bnds =
         match
           v_drm_widevine_custom_license_acquisition_url_template
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               ( "drm_widevine_custom_license_acquisition_url_template",
                 arg )
             in
             bnd :: bnds
       in
       `Assoc bnds
    : common_encryption_cenc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_common_encryption_cenc

[@@@deriving.end]

type envelope_encryption__default_content_key = {
  label : string prop option; [@option]
  policy_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : envelope_encryption__default_content_key) -> ()

let yojson_of_envelope_encryption__default_content_key =
  (function
   | { label = v_label; policy_name = v_policy_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : envelope_encryption__default_content_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_envelope_encryption__default_content_key

[@@@deriving.end]

type envelope_encryption__enabled_protocols = {
  dash : bool prop option; [@option]
  download : bool prop option; [@option]
  hls : bool prop option; [@option]
  smooth_streaming : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : envelope_encryption__enabled_protocols) -> ()

let yojson_of_envelope_encryption__enabled_protocols =
  (function
   | {
       dash = v_dash;
       download = v_download;
       hls = v_hls;
       smooth_streaming = v_smooth_streaming;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_smooth_streaming with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "smooth_streaming", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "hls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_download with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "download", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dash with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dash", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : envelope_encryption__enabled_protocols ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_envelope_encryption__enabled_protocols

[@@@deriving.end]

type envelope_encryption = {
  custom_keys_acquisition_url_template : string prop option;
      [@option]
  default_content_key :
    envelope_encryption__default_content_key list;
  enabled_protocols : envelope_encryption__enabled_protocols list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : envelope_encryption) -> ()

let yojson_of_envelope_encryption =
  (function
   | {
       custom_keys_acquisition_url_template =
         v_custom_keys_acquisition_url_template;
       default_content_key = v_default_content_key;
       enabled_protocols = v_enabled_protocols;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_envelope_encryption__enabled_protocols
             v_enabled_protocols
         in
         ("enabled_protocols", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_envelope_encryption__default_content_key
             v_default_content_key
         in
         ("default_content_key", arg) :: bnds
       in
       let bnds =
         match v_custom_keys_acquisition_url_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_keys_acquisition_url_template", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : envelope_encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_envelope_encryption

[@@@deriving.end]

type no_encryption_enabled_protocols = {
  dash : bool prop option; [@option]
  download : bool prop option; [@option]
  hls : bool prop option; [@option]
  smooth_streaming : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : no_encryption_enabled_protocols) -> ()

let yojson_of_no_encryption_enabled_protocols =
  (function
   | {
       dash = v_dash;
       download = v_download;
       hls = v_hls;
       smooth_streaming = v_smooth_streaming;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_smooth_streaming with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "smooth_streaming", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "hls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_download with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "download", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dash with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dash", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : no_encryption_enabled_protocols ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_no_encryption_enabled_protocols

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type azurerm_media_streaming_policy = {
  default_content_key_policy_name : string prop option; [@option]
  id : string prop option; [@option]
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  common_encryption_cbcs : common_encryption_cbcs list;
  common_encryption_cenc : common_encryption_cenc list;
  envelope_encryption : envelope_encryption list;
  no_encryption_enabled_protocols :
    no_encryption_enabled_protocols list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_media_streaming_policy) -> ()

let yojson_of_azurerm_media_streaming_policy =
  (function
   | {
       default_content_key_policy_name =
         v_default_content_key_policy_name;
       id = v_id;
       media_services_account_name = v_media_services_account_name;
       name = v_name;
       resource_group_name = v_resource_group_name;
       common_encryption_cbcs = v_common_encryption_cbcs;
       common_encryption_cenc = v_common_encryption_cenc;
       envelope_encryption = v_envelope_encryption;
       no_encryption_enabled_protocols =
         v_no_encryption_enabled_protocols;
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
           yojson_of_list yojson_of_no_encryption_enabled_protocols
             v_no_encryption_enabled_protocols
         in
         ("no_encryption_enabled_protocols", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_envelope_encryption
             v_envelope_encryption
         in
         ("envelope_encryption", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_common_encryption_cenc
             v_common_encryption_cenc
         in
         ("common_encryption_cenc", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_common_encryption_cbcs
             v_common_encryption_cbcs
         in
         ("common_encryption_cbcs", arg) :: bnds
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
         match v_default_content_key_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_content_key_policy_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_media_streaming_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_media_streaming_policy

[@@@deriving.end]

let common_encryption_cbcs__clear_key_encryption
    ~custom_keys_acquisition_url_template () :
    common_encryption_cbcs__clear_key_encryption =
  { custom_keys_acquisition_url_template }

let common_encryption_cbcs__default_content_key ?label ?policy_name
    () : common_encryption_cbcs__default_content_key =
  { label; policy_name }

let common_encryption_cbcs__drm_fairplay ?allow_persistent_license
    ?custom_license_acquisition_url_template () :
    common_encryption_cbcs__drm_fairplay =
  {
    allow_persistent_license;
    custom_license_acquisition_url_template;
  }

let common_encryption_cbcs__enabled_protocols ?dash ?download ?hls
    ?smooth_streaming () : common_encryption_cbcs__enabled_protocols
    =
  { dash; download; hls; smooth_streaming }

let common_encryption_cbcs ?(clear_key_encryption = [])
    ?(default_content_key = []) ?(drm_fairplay = [])
    ?(enabled_protocols = []) () : common_encryption_cbcs =
  {
    clear_key_encryption;
    default_content_key;
    drm_fairplay;
    enabled_protocols;
  }

let common_encryption_cenc__clear_key_encryption
    ~custom_keys_acquisition_url_template () :
    common_encryption_cenc__clear_key_encryption =
  { custom_keys_acquisition_url_template }

let common_encryption_cenc__clear_track__condition ~operation
    ~property ~value () :
    common_encryption_cenc__clear_track__condition =
  { operation; property; value }

let common_encryption_cenc__clear_track ~condition () :
    common_encryption_cenc__clear_track =
  { condition }

let common_encryption_cenc__content_key_to_track_mapping__track__condition
    ~operation ~property ~value () :
    common_encryption_cenc__content_key_to_track_mapping__track__condition
    =
  { operation; property; value }

let common_encryption_cenc__content_key_to_track_mapping__track
    ~condition () :
    common_encryption_cenc__content_key_to_track_mapping__track =
  { condition }

let common_encryption_cenc__content_key_to_track_mapping ?label
    ?policy_name ~track () :
    common_encryption_cenc__content_key_to_track_mapping =
  { label; policy_name; track }

let common_encryption_cenc__default_content_key ?label ?policy_name
    () : common_encryption_cenc__default_content_key =
  { label; policy_name }

let common_encryption_cenc__drm_playready ?custom_attributes
    ?custom_license_acquisition_url_template () :
    common_encryption_cenc__drm_playready =
  { custom_attributes; custom_license_acquisition_url_template }

let common_encryption_cenc__enabled_protocols ?dash ?download ?hls
    ?smooth_streaming () : common_encryption_cenc__enabled_protocols
    =
  { dash; download; hls; smooth_streaming }

let common_encryption_cenc
    ?drm_widevine_custom_license_acquisition_url_template
    ?(clear_key_encryption = []) ?(default_content_key = [])
    ?(drm_playready = []) ?(enabled_protocols = []) ~clear_track
    ~content_key_to_track_mapping () : common_encryption_cenc =
  {
    drm_widevine_custom_license_acquisition_url_template;
    clear_key_encryption;
    clear_track;
    content_key_to_track_mapping;
    default_content_key;
    drm_playready;
    enabled_protocols;
  }

let envelope_encryption__default_content_key ?label ?policy_name () :
    envelope_encryption__default_content_key =
  { label; policy_name }

let envelope_encryption__enabled_protocols ?dash ?download ?hls
    ?smooth_streaming () : envelope_encryption__enabled_protocols =
  { dash; download; hls; smooth_streaming }

let envelope_encryption ?custom_keys_acquisition_url_template
    ?(default_content_key = []) ?(enabled_protocols = []) () :
    envelope_encryption =
  {
    custom_keys_acquisition_url_template;
    default_content_key;
    enabled_protocols;
  }

let no_encryption_enabled_protocols ?dash ?download ?hls
    ?smooth_streaming () : no_encryption_enabled_protocols =
  { dash; download; hls; smooth_streaming }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_media_streaming_policy ?default_content_key_policy_name
    ?id ?(common_encryption_cbcs = []) ?(common_encryption_cenc = [])
    ?(envelope_encryption = [])
    ?(no_encryption_enabled_protocols = []) ?timeouts
    ~media_services_account_name ~name ~resource_group_name () :
    azurerm_media_streaming_policy =
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

type t = {
  default_content_key_policy_name : string prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?default_content_key_policy_name ?id
    ?(common_encryption_cbcs = []) ?(common_encryption_cenc = [])
    ?(envelope_encryption = [])
    ?(no_encryption_enabled_protocols = []) ?timeouts
    ~media_services_account_name ~name ~resource_group_name __id =
  let __type = "azurerm_media_streaming_policy" in
  let __attrs =
    ({
       default_content_key_policy_name =
         Prop.computed __type __id "default_content_key_policy_name";
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
      yojson_of_azurerm_media_streaming_policy
        (azurerm_media_streaming_policy
           ?default_content_key_policy_name ?id
           ~common_encryption_cbcs ~common_encryption_cenc
           ~envelope_encryption ~no_encryption_enabled_protocols
           ?timeouts ~media_services_account_name ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?default_content_key_policy_name ?id
    ?(common_encryption_cbcs = []) ?(common_encryption_cenc = [])
    ?(envelope_encryption = [])
    ?(no_encryption_enabled_protocols = []) ?timeouts
    ~media_services_account_name ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?default_content_key_policy_name ?id ~common_encryption_cbcs
      ~common_encryption_cenc ~envelope_encryption
      ~no_encryption_enabled_protocols ?timeouts
      ~media_services_account_name ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
