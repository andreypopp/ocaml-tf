(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cdi_input_specification = { resolution : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : cdi_input_specification) -> ()

let yojson_of_cdi_input_specification =
  (function
   | { resolution = v_resolution } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resolution in
         ("resolution", arg) :: bnds
       in
       `Assoc bnds
    : cdi_input_specification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cdi_input_specification

[@@@deriving.end]

type destinations__media_package_settings = {
  channel_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destinations__media_package_settings) -> ()

let yojson_of_destinations__media_package_settings =
  (function
   | { channel_id = v_channel_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_channel_id in
         ("channel_id", arg) :: bnds
       in
       `Assoc bnds
    : destinations__media_package_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destinations__media_package_settings

[@@@deriving.end]

type destinations__multiplex_settings = {
  multiplex_id : string prop;
  program_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destinations__multiplex_settings) -> ()

let yojson_of_destinations__multiplex_settings =
  (function
   | { multiplex_id = v_multiplex_id; program_name = v_program_name }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_program_name in
         ("program_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_multiplex_id in
         ("multiplex_id", arg) :: bnds
       in
       `Assoc bnds
    : destinations__multiplex_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destinations__multiplex_settings

[@@@deriving.end]

type destinations__settings = {
  password_param : string prop option; [@option]
  stream_name : string prop option; [@option]
  url : string prop option; [@option]
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destinations__settings) -> ()

let yojson_of_destinations__settings =
  (function
   | {
       password_param = v_password_param;
       stream_name = v_stream_name;
       url = v_url;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stream_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_param with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_param", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destinations__settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destinations__settings

[@@@deriving.end]

type destinations = {
  id : string prop;
  media_package_settings : destinations__media_package_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  multiplex_settings : destinations__multiplex_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  settings : destinations__settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destinations) -> ()

let yojson_of_destinations =
  (function
   | {
       id = v_id;
       media_package_settings = v_media_package_settings;
       multiplex_settings = v_multiplex_settings;
       settings = v_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destinations__settings)
               v_settings
           in
           let bnd = "settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_multiplex_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destinations__multiplex_settings)
               v_multiplex_settings
           in
           let bnd = "multiplex_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_media_package_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destinations__media_package_settings)
               v_media_package_settings
           in
           let bnd = "media_package_settings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : destinations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destinations

[@@@deriving.end]

type encoder_settings__audio_descriptions__audio_normalization_settings = {
  algorithm : string prop option; [@option]
  algorithm_control : string prop option; [@option]
  target_lkfs : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__audio_descriptions__audio_normalization_settings) ->
  ()

let yojson_of_encoder_settings__audio_descriptions__audio_normalization_settings
    =
  (function
   | {
       algorithm = v_algorithm;
       algorithm_control = v_algorithm_control;
       target_lkfs = v_target_lkfs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_lkfs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_lkfs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_algorithm_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "algorithm_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "algorithm", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__audio_descriptions__audio_normalization_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__audio_descriptions__audio_normalization_settings

[@@@deriving.end]

type encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings = {
  cbet_check_digit_string : string prop;
  cbet_stepaside : string prop;
  csid : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings) ->
  ()

let yojson_of_encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings
    =
  (function
   | {
       cbet_check_digit_string = v_cbet_check_digit_string;
       cbet_stepaside = v_cbet_stepaside;
       csid = v_csid;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_csid in
         ("csid", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cbet_stepaside
         in
         ("cbet_stepaside", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cbet_check_digit_string
         in
         ("cbet_check_digit_string", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings

[@@@deriving.end]

type encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings = {
  check_digit_string : string prop;
  sid : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings) ->
  ()

let yojson_of_encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings
    =
  (function
   | { check_digit_string = v_check_digit_string; sid = v_sid } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_sid in
         ("sid", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_check_digit_string
         in
         ("check_digit_string", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings

[@@@deriving.end]

type encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings = {
  nielsen_distribution_type : string prop option; [@option]
  nielsen_cbet_settings :
    encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  nielsen_naes_ii_nw_settings :
    encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings) ->
  ()

let yojson_of_encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings
    =
  (function
   | {
       nielsen_distribution_type = v_nielsen_distribution_type;
       nielsen_cbet_settings = v_nielsen_cbet_settings;
       nielsen_naes_ii_nw_settings = v_nielsen_naes_ii_nw_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_nielsen_naes_ii_nw_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings)
               v_nielsen_naes_ii_nw_settings
           in
           let bnd = "nielsen_naes_ii_nw_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_nielsen_cbet_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings)
               v_nielsen_cbet_settings
           in
           let bnd = "nielsen_cbet_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_nielsen_distribution_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nielsen_distribution_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings

[@@@deriving.end]

type encoder_settings__audio_descriptions__audio_watermark_settings = {
  nielsen_watermarks_settings :
    encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__audio_descriptions__audio_watermark_settings) ->
  ()

let yojson_of_encoder_settings__audio_descriptions__audio_watermark_settings
    =
  (function
   | { nielsen_watermarks_settings = v_nielsen_watermarks_settings }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_nielsen_watermarks_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings)
               v_nielsen_watermarks_settings
           in
           let bnd = "nielsen_watermarks_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__audio_descriptions__audio_watermark_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__audio_descriptions__audio_watermark_settings

[@@@deriving.end]

type encoder_settings__audio_descriptions__codec_settings__aac_settings = {
  bitrate : float prop option; [@option]
  coding_mode : string prop option; [@option]
  input_type : string prop option; [@option]
  profile : string prop option; [@option]
  rate_control_mode : string prop option; [@option]
  raw_format : string prop option; [@option]
  sample_rate : float prop option; [@option]
  spec : string prop option; [@option]
  vbr_quality : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__audio_descriptions__codec_settings__aac_settings) ->
  ()

let yojson_of_encoder_settings__audio_descriptions__codec_settings__aac_settings
    =
  (function
   | {
       bitrate = v_bitrate;
       coding_mode = v_coding_mode;
       input_type = v_input_type;
       profile = v_profile;
       rate_control_mode = v_rate_control_mode;
       raw_format = v_raw_format;
       sample_rate = v_sample_rate;
       spec = v_spec;
       vbr_quality = v_vbr_quality;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vbr_quality with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vbr_quality", arg in
             bnd :: bnds
       in
       let bnds =
         match v_spec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sample_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sample_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_raw_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "raw_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rate_control_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rate_control_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "profile", arg in
             bnd :: bnds
       in
       let bnds =
         match v_input_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_coding_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "coding_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bitrate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__audio_descriptions__codec_settings__aac_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__audio_descriptions__codec_settings__aac_settings

[@@@deriving.end]

type encoder_settings__audio_descriptions__codec_settings__ac3_settings = {
  bitrate : float prop option; [@option]
  bitstream_mode : string prop option; [@option]
  coding_mode : string prop option; [@option]
  dialnorm : float prop option; [@option]
  drc_profile : string prop option; [@option]
  lfe_filter : string prop option; [@option]
  metadata_control : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__audio_descriptions__codec_settings__ac3_settings) ->
  ()

let yojson_of_encoder_settings__audio_descriptions__codec_settings__ac3_settings
    =
  (function
   | {
       bitrate = v_bitrate;
       bitstream_mode = v_bitstream_mode;
       coding_mode = v_coding_mode;
       dialnorm = v_dialnorm;
       drc_profile = v_drc_profile;
       lfe_filter = v_lfe_filter;
       metadata_control = v_metadata_control;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_metadata_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lfe_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lfe_filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_drc_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "drc_profile", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dialnorm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "dialnorm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_coding_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "coding_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bitstream_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bitstream_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bitrate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__audio_descriptions__codec_settings__ac3_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__audio_descriptions__codec_settings__ac3_settings

[@@@deriving.end]

type encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings = {
  bitrate : float prop option; [@option]
  coding_mode : string prop option; [@option]
  dialnorm : float prop option; [@option]
  drc_line : string prop option; [@option]
  drc_rf : string prop option; [@option]
  height_trim : float prop option; [@option]
  surround_trim : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings) ->
  ()

let yojson_of_encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings
    =
  (function
   | {
       bitrate = v_bitrate;
       coding_mode = v_coding_mode;
       dialnorm = v_dialnorm;
       drc_line = v_drc_line;
       drc_rf = v_drc_rf;
       height_trim = v_height_trim;
       surround_trim = v_surround_trim;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_surround_trim with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "surround_trim", arg in
             bnd :: bnds
       in
       let bnds =
         match v_height_trim with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "height_trim", arg in
             bnd :: bnds
       in
       let bnds =
         match v_drc_rf with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "drc_rf", arg in
             bnd :: bnds
       in
       let bnds =
         match v_drc_line with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "drc_line", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dialnorm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "dialnorm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_coding_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "coding_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bitrate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings

[@@@deriving.end]

type encoder_settings__audio_descriptions__codec_settings__eac3_settings = {
  attenuation_control : string prop option; [@option]
  bitrate : float prop option; [@option]
  bitstream_mode : string prop option; [@option]
  coding_mode : string prop option; [@option]
  dc_filter : string prop option; [@option]
  dialnorm : float prop option; [@option]
  drc_line : string prop option; [@option]
  drc_rf : string prop option; [@option]
  lfe_control : string prop option; [@option]
  lfe_filter : string prop option; [@option]
  lo_ro_center_mix_level : float prop option; [@option]
  lo_ro_surround_mix_level : float prop option; [@option]
  lt_rt_center_mix_level : float prop option; [@option]
  lt_rt_surround_mix_level : float prop option; [@option]
  metadata_control : string prop option; [@option]
  passthrough_control : string prop option; [@option]
  phase_control : string prop option; [@option]
  stereo_downmix : string prop option; [@option]
  surround_ex_mode : string prop option; [@option]
  surround_mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__audio_descriptions__codec_settings__eac3_settings) ->
  ()

let yojson_of_encoder_settings__audio_descriptions__codec_settings__eac3_settings
    =
  (function
   | {
       attenuation_control = v_attenuation_control;
       bitrate = v_bitrate;
       bitstream_mode = v_bitstream_mode;
       coding_mode = v_coding_mode;
       dc_filter = v_dc_filter;
       dialnorm = v_dialnorm;
       drc_line = v_drc_line;
       drc_rf = v_drc_rf;
       lfe_control = v_lfe_control;
       lfe_filter = v_lfe_filter;
       lo_ro_center_mix_level = v_lo_ro_center_mix_level;
       lo_ro_surround_mix_level = v_lo_ro_surround_mix_level;
       lt_rt_center_mix_level = v_lt_rt_center_mix_level;
       lt_rt_surround_mix_level = v_lt_rt_surround_mix_level;
       metadata_control = v_metadata_control;
       passthrough_control = v_passthrough_control;
       phase_control = v_phase_control;
       stereo_downmix = v_stereo_downmix;
       surround_ex_mode = v_surround_ex_mode;
       surround_mode = v_surround_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_surround_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "surround_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_surround_ex_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "surround_ex_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stereo_downmix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stereo_downmix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_phase_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "phase_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_passthrough_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "passthrough_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metadata_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lt_rt_surround_mix_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lt_rt_surround_mix_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lt_rt_center_mix_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lt_rt_center_mix_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lo_ro_surround_mix_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lo_ro_surround_mix_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lo_ro_center_mix_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lo_ro_center_mix_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lfe_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lfe_filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lfe_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lfe_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_drc_rf with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "drc_rf", arg in
             bnd :: bnds
       in
       let bnds =
         match v_drc_line with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "drc_line", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dialnorm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "dialnorm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dc_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dc_filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_coding_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "coding_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bitstream_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bitstream_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bitrate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_attenuation_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "attenuation_control", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__audio_descriptions__codec_settings__eac3_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__audio_descriptions__codec_settings__eac3_settings

[@@@deriving.end]

type encoder_settings__audio_descriptions__codec_settings__mp2_settings = {
  bitrate : float prop option; [@option]
  coding_mode : string prop option; [@option]
  sample_rate : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__audio_descriptions__codec_settings__mp2_settings) ->
  ()

let yojson_of_encoder_settings__audio_descriptions__codec_settings__mp2_settings
    =
  (function
   | {
       bitrate = v_bitrate;
       coding_mode = v_coding_mode;
       sample_rate = v_sample_rate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sample_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sample_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_coding_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "coding_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bitrate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__audio_descriptions__codec_settings__mp2_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__audio_descriptions__codec_settings__mp2_settings

[@@@deriving.end]

type encoder_settings__audio_descriptions__codec_settings__pass_through_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__audio_descriptions__codec_settings__pass_through_settings) ->
  ()

let yojson_of_encoder_settings__audio_descriptions__codec_settings__pass_through_settings
    =
  (yojson_of_unit
    : encoder_settings__audio_descriptions__codec_settings__pass_through_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__audio_descriptions__codec_settings__pass_through_settings

[@@@deriving.end]

type encoder_settings__audio_descriptions__codec_settings__wav_settings = {
  bit_depth : float prop option; [@option]
  coding_mode : string prop option; [@option]
  sample_rate : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__audio_descriptions__codec_settings__wav_settings) ->
  ()

let yojson_of_encoder_settings__audio_descriptions__codec_settings__wav_settings
    =
  (function
   | {
       bit_depth = v_bit_depth;
       coding_mode = v_coding_mode;
       sample_rate = v_sample_rate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sample_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sample_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_coding_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "coding_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bit_depth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bit_depth", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__audio_descriptions__codec_settings__wav_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__audio_descriptions__codec_settings__wav_settings

[@@@deriving.end]

type encoder_settings__audio_descriptions__codec_settings = {
  aac_settings :
    encoder_settings__audio_descriptions__codec_settings__aac_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ac3_settings :
    encoder_settings__audio_descriptions__codec_settings__ac3_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  eac3_atmos_settings :
    encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  eac3_settings :
    encoder_settings__audio_descriptions__codec_settings__eac3_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  mp2_settings :
    encoder_settings__audio_descriptions__codec_settings__mp2_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pass_through_settings :
    encoder_settings__audio_descriptions__codec_settings__pass_through_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  wav_settings :
    encoder_settings__audio_descriptions__codec_settings__wav_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : encoder_settings__audio_descriptions__codec_settings) -> ()

let yojson_of_encoder_settings__audio_descriptions__codec_settings =
  (function
   | {
       aac_settings = v_aac_settings;
       ac3_settings = v_ac3_settings;
       eac3_atmos_settings = v_eac3_atmos_settings;
       eac3_settings = v_eac3_settings;
       mp2_settings = v_mp2_settings;
       pass_through_settings = v_pass_through_settings;
       wav_settings = v_wav_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_wav_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__audio_descriptions__codec_settings__wav_settings)
               v_wav_settings
           in
           let bnd = "wav_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_pass_through_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__audio_descriptions__codec_settings__pass_through_settings)
               v_pass_through_settings
           in
           let bnd = "pass_through_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_mp2_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__audio_descriptions__codec_settings__mp2_settings)
               v_mp2_settings
           in
           let bnd = "mp2_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_eac3_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__audio_descriptions__codec_settings__eac3_settings)
               v_eac3_settings
           in
           let bnd = "eac3_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_eac3_atmos_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings)
               v_eac3_atmos_settings
           in
           let bnd = "eac3_atmos_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ac3_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__audio_descriptions__codec_settings__ac3_settings)
               v_ac3_settings
           in
           let bnd = "ac3_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_aac_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__audio_descriptions__codec_settings__aac_settings)
               v_aac_settings
           in
           let bnd = "aac_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__audio_descriptions__codec_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__audio_descriptions__codec_settings

[@@@deriving.end]

type encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels = {
  gain : float prop;
  input_channel : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels) ->
  ()

let yojson_of_encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels
    =
  (function
   | { gain = v_gain; input_channel = v_input_channel } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_input_channel in
         ("input_channel", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_gain in
         ("gain", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels

[@@@deriving.end]

type encoder_settings__audio_descriptions__remix_settings__channel_mappings = {
  output_channel : float prop;
  input_channel_levels :
    encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__audio_descriptions__remix_settings__channel_mappings) ->
  ()

let yojson_of_encoder_settings__audio_descriptions__remix_settings__channel_mappings
    =
  (function
   | {
       output_channel = v_output_channel;
       input_channel_levels = v_input_channel_levels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_input_channel_levels then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels)
               v_input_channel_levels
           in
           let bnd = "input_channel_levels", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_output_channel in
         ("output_channel", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__audio_descriptions__remix_settings__channel_mappings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__audio_descriptions__remix_settings__channel_mappings

[@@@deriving.end]

type encoder_settings__audio_descriptions__remix_settings = {
  channels_in : float prop option; [@option]
  channels_out : float prop option; [@option]
  channel_mappings :
    encoder_settings__audio_descriptions__remix_settings__channel_mappings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : encoder_settings__audio_descriptions__remix_settings) -> ()

let yojson_of_encoder_settings__audio_descriptions__remix_settings =
  (function
   | {
       channels_in = v_channels_in;
       channels_out = v_channels_out;
       channel_mappings = v_channel_mappings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_channel_mappings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__audio_descriptions__remix_settings__channel_mappings)
               v_channel_mappings
           in
           let bnd = "channel_mappings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_channels_out with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "channels_out", arg in
             bnd :: bnds
       in
       let bnds =
         match v_channels_in with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "channels_in", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__audio_descriptions__remix_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__audio_descriptions__remix_settings

[@@@deriving.end]

type encoder_settings__audio_descriptions = {
  audio_selector_name : string prop;
  audio_type : string prop option; [@option]
  audio_type_control : string prop option; [@option]
  language_code : string prop option; [@option]
  language_code_control : string prop option; [@option]
  name : string prop;
  stream_name : string prop option; [@option]
  audio_normalization_settings :
    encoder_settings__audio_descriptions__audio_normalization_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  audio_watermark_settings :
    encoder_settings__audio_descriptions__audio_watermark_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  codec_settings :
    encoder_settings__audio_descriptions__codec_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  remix_settings :
    encoder_settings__audio_descriptions__remix_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encoder_settings__audio_descriptions) -> ()

let yojson_of_encoder_settings__audio_descriptions =
  (function
   | {
       audio_selector_name = v_audio_selector_name;
       audio_type = v_audio_type;
       audio_type_control = v_audio_type_control;
       language_code = v_language_code;
       language_code_control = v_language_code_control;
       name = v_name;
       stream_name = v_stream_name;
       audio_normalization_settings = v_audio_normalization_settings;
       audio_watermark_settings = v_audio_watermark_settings;
       codec_settings = v_codec_settings;
       remix_settings = v_remix_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_remix_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__audio_descriptions__remix_settings)
               v_remix_settings
           in
           let bnd = "remix_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_codec_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__audio_descriptions__codec_settings)
               v_codec_settings
           in
           let bnd = "codec_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_audio_watermark_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__audio_descriptions__audio_watermark_settings)
               v_audio_watermark_settings
           in
           let bnd = "audio_watermark_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_audio_normalization_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__audio_descriptions__audio_normalization_settings)
               v_audio_normalization_settings
           in
           let bnd = "audio_normalization_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stream_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_language_code_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language_code_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_language_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_type_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_type_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_audio_selector_name
         in
         ("audio_selector_name", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__audio_descriptions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encoder_settings__audio_descriptions

[@@@deriving.end]

type encoder_settings__avail_blanking__avail_blanking_image = {
  password_param : string prop option; [@option]
  uri : string prop;
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : encoder_settings__avail_blanking__avail_blanking_image) ->
  ()

let yojson_of_encoder_settings__avail_blanking__avail_blanking_image
    =
  (function
   | {
       password_param = v_password_param;
       uri = v_uri;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_password_param with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_param", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__avail_blanking__avail_blanking_image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__avail_blanking__avail_blanking_image

[@@@deriving.end]

type encoder_settings__avail_blanking = {
  state : string prop option; [@option]
  avail_blanking_image :
    encoder_settings__avail_blanking__avail_blanking_image list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encoder_settings__avail_blanking) -> ()

let yojson_of_encoder_settings__avail_blanking =
  (function
   | {
       state = v_state;
       avail_blanking_image = v_avail_blanking_image;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_avail_blanking_image then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__avail_blanking__avail_blanking_image)
               v_avail_blanking_image
           in
           let bnd = "avail_blanking_image", arg in
           bnd :: bnds
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__avail_blanking ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encoder_settings__avail_blanking

[@@@deriving.end]

type encoder_settings__caption_descriptions__destination_settings__arib_destination_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__caption_descriptions__destination_settings__arib_destination_settings) ->
  ()

let yojson_of_encoder_settings__caption_descriptions__destination_settings__arib_destination_settings
    =
  (yojson_of_unit
    : encoder_settings__caption_descriptions__destination_settings__arib_destination_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__caption_descriptions__destination_settings__arib_destination_settings

[@@@deriving.end]

type encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font = {
  password_param : string prop option; [@option]
  uri : string prop;
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font) ->
  ()

let yojson_of_encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font
    =
  (function
   | {
       password_param = v_password_param;
       uri = v_uri;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_password_param with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_param", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font

[@@@deriving.end]

type encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings = {
  alignment : string prop option; [@option]
  background_color : string prop option; [@option]
  background_opacity : float prop option; [@option]
  font_color : string prop option; [@option]
  font_opacity : float prop option; [@option]
  font_resolution : float prop option; [@option]
  font_size : string prop option; [@option]
  outline_color : string prop;
  outline_size : float prop option; [@option]
  shadow_color : string prop option; [@option]
  shadow_opacity : float prop option; [@option]
  shadow_x_offset : float prop option; [@option]
  shadow_y_offset : float prop option; [@option]
  teletext_grid_control : string prop;
  x_position : float prop option; [@option]
  y_position : float prop option; [@option]
  font :
    encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings) ->
  ()

let yojson_of_encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings
    =
  (function
   | {
       alignment = v_alignment;
       background_color = v_background_color;
       background_opacity = v_background_opacity;
       font_color = v_font_color;
       font_opacity = v_font_opacity;
       font_resolution = v_font_resolution;
       font_size = v_font_size;
       outline_color = v_outline_color;
       outline_size = v_outline_size;
       shadow_color = v_shadow_color;
       shadow_opacity = v_shadow_opacity;
       shadow_x_offset = v_shadow_x_offset;
       shadow_y_offset = v_shadow_y_offset;
       teletext_grid_control = v_teletext_grid_control;
       x_position = v_x_position;
       y_position = v_y_position;
       font = v_font;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_font then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font)
               v_font
           in
           let bnd = "font", arg in
           bnd :: bnds
       in
       let bnds =
         match v_y_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "y_position", arg in
             bnd :: bnds
       in
       let bnds =
         match v_x_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "x_position", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_teletext_grid_control
         in
         ("teletext_grid_control", arg) :: bnds
       in
       let bnds =
         match v_shadow_y_offset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "shadow_y_offset", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shadow_x_offset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "shadow_x_offset", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shadow_opacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "shadow_opacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shadow_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "shadow_color", arg in
             bnd :: bnds
       in
       let bnds =
         match v_outline_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "outline_size", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_outline_color in
         ("outline_color", arg) :: bnds
       in
       let bnds =
         match v_font_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "font_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_font_resolution with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "font_resolution", arg in
             bnd :: bnds
       in
       let bnds =
         match v_font_opacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "font_opacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_font_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "font_color", arg in
             bnd :: bnds
       in
       let bnds =
         match v_background_opacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "background_opacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_background_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "background_color", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alignment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alignment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings

[@@@deriving.end]

type encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font = {
  password_param : string prop option; [@option]
  uri : string prop;
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font) ->
  ()

let yojson_of_encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font
    =
  (function
   | {
       password_param = v_password_param;
       uri = v_uri;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_password_param with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_param", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font

[@@@deriving.end]

type encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings = {
  alignment : string prop option; [@option]
  background_color : string prop option; [@option]
  background_opacity : float prop option; [@option]
  font_color : string prop option; [@option]
  font_opacity : float prop option; [@option]
  font_resolution : float prop option; [@option]
  font_size : string prop option; [@option]
  outline_color : string prop option; [@option]
  outline_size : float prop option; [@option]
  shadow_color : string prop option; [@option]
  shadow_opacity : float prop option; [@option]
  shadow_x_offset : float prop option; [@option]
  shadow_y_offset : float prop option; [@option]
  teletext_grid_control : string prop option; [@option]
  x_position : float prop option; [@option]
  y_position : float prop option; [@option]
  font :
    encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings) ->
  ()

let yojson_of_encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings
    =
  (function
   | {
       alignment = v_alignment;
       background_color = v_background_color;
       background_opacity = v_background_opacity;
       font_color = v_font_color;
       font_opacity = v_font_opacity;
       font_resolution = v_font_resolution;
       font_size = v_font_size;
       outline_color = v_outline_color;
       outline_size = v_outline_size;
       shadow_color = v_shadow_color;
       shadow_opacity = v_shadow_opacity;
       shadow_x_offset = v_shadow_x_offset;
       shadow_y_offset = v_shadow_y_offset;
       teletext_grid_control = v_teletext_grid_control;
       x_position = v_x_position;
       y_position = v_y_position;
       font = v_font;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_font then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font)
               v_font
           in
           let bnd = "font", arg in
           bnd :: bnds
       in
       let bnds =
         match v_y_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "y_position", arg in
             bnd :: bnds
       in
       let bnds =
         match v_x_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "x_position", arg in
             bnd :: bnds
       in
       let bnds =
         match v_teletext_grid_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "teletext_grid_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shadow_y_offset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "shadow_y_offset", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shadow_x_offset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "shadow_x_offset", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shadow_opacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "shadow_opacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shadow_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "shadow_color", arg in
             bnd :: bnds
       in
       let bnds =
         match v_outline_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "outline_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_outline_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "outline_color", arg in
             bnd :: bnds
       in
       let bnds =
         match v_font_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "font_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_font_resolution with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "font_resolution", arg in
             bnd :: bnds
       in
       let bnds =
         match v_font_opacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "font_opacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_font_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "font_color", arg in
             bnd :: bnds
       in
       let bnds =
         match v_background_opacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "background_opacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_background_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "background_color", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alignment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alignment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings

[@@@deriving.end]

type encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings = {
  copyright_holder : string prop option; [@option]
  fill_line_gap : string prop option; [@option]
  font_family : string prop option; [@option]
  style_control : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings) ->
  ()

let yojson_of_encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings
    =
  (function
   | {
       copyright_holder = v_copyright_holder;
       fill_line_gap = v_fill_line_gap;
       font_family = v_font_family;
       style_control = v_style_control;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_style_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "style_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_font_family with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "font_family", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fill_line_gap with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fill_line_gap", arg in
             bnd :: bnds
       in
       let bnds =
         match v_copyright_holder with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "copyright_holder", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings

[@@@deriving.end]

type encoder_settings__caption_descriptions__destination_settings__embedded_destination_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__caption_descriptions__destination_settings__embedded_destination_settings) ->
  ()

let yojson_of_encoder_settings__caption_descriptions__destination_settings__embedded_destination_settings
    =
  (yojson_of_unit
    : encoder_settings__caption_descriptions__destination_settings__embedded_destination_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__caption_descriptions__destination_settings__embedded_destination_settings

[@@@deriving.end]

type encoder_settings__caption_descriptions__destination_settings__embedded_plus_scte20_destination_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__caption_descriptions__destination_settings__embedded_plus_scte20_destination_settings) ->
  ()

let yojson_of_encoder_settings__caption_descriptions__destination_settings__embedded_plus_scte20_destination_settings
    =
  (yojson_of_unit
    : encoder_settings__caption_descriptions__destination_settings__embedded_plus_scte20_destination_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__caption_descriptions__destination_settings__embedded_plus_scte20_destination_settings

[@@@deriving.end]

type encoder_settings__caption_descriptions__destination_settings__rtmp_caption_info_destination_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__caption_descriptions__destination_settings__rtmp_caption_info_destination_settings) ->
  ()

let yojson_of_encoder_settings__caption_descriptions__destination_settings__rtmp_caption_info_destination_settings
    =
  (yojson_of_unit
    : encoder_settings__caption_descriptions__destination_settings__rtmp_caption_info_destination_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__caption_descriptions__destination_settings__rtmp_caption_info_destination_settings

[@@@deriving.end]

type encoder_settings__caption_descriptions__destination_settings__scte20_plus_embedded_destination_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__caption_descriptions__destination_settings__scte20_plus_embedded_destination_settings) ->
  ()

let yojson_of_encoder_settings__caption_descriptions__destination_settings__scte20_plus_embedded_destination_settings
    =
  (yojson_of_unit
    : encoder_settings__caption_descriptions__destination_settings__scte20_plus_embedded_destination_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__caption_descriptions__destination_settings__scte20_plus_embedded_destination_settings

[@@@deriving.end]

type encoder_settings__caption_descriptions__destination_settings__scte27_destination_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__caption_descriptions__destination_settings__scte27_destination_settings) ->
  ()

let yojson_of_encoder_settings__caption_descriptions__destination_settings__scte27_destination_settings
    =
  (yojson_of_unit
    : encoder_settings__caption_descriptions__destination_settings__scte27_destination_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__caption_descriptions__destination_settings__scte27_destination_settings

[@@@deriving.end]

type encoder_settings__caption_descriptions__destination_settings__smpte_tt_destination_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__caption_descriptions__destination_settings__smpte_tt_destination_settings) ->
  ()

let yojson_of_encoder_settings__caption_descriptions__destination_settings__smpte_tt_destination_settings
    =
  (yojson_of_unit
    : encoder_settings__caption_descriptions__destination_settings__smpte_tt_destination_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__caption_descriptions__destination_settings__smpte_tt_destination_settings

[@@@deriving.end]

type encoder_settings__caption_descriptions__destination_settings__teletext_destination_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__caption_descriptions__destination_settings__teletext_destination_settings) ->
  ()

let yojson_of_encoder_settings__caption_descriptions__destination_settings__teletext_destination_settings
    =
  (yojson_of_unit
    : encoder_settings__caption_descriptions__destination_settings__teletext_destination_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__caption_descriptions__destination_settings__teletext_destination_settings

[@@@deriving.end]

type encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings = {
  style_control : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings) ->
  ()

let yojson_of_encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings
    =
  (function
   | { style_control = v_style_control } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_style_control in
         ("style_control", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings

[@@@deriving.end]

type encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings = {
  style_control : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings) ->
  ()

let yojson_of_encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings
    =
  (function
   | { style_control = v_style_control } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_style_control in
         ("style_control", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings

[@@@deriving.end]

type encoder_settings__caption_descriptions__destination_settings = {
  arib_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__arib_destination_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  burn_in_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dvb_sub_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ebu_tt_d_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  embedded_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__embedded_destination_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  embedded_plus_scte20_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__embedded_plus_scte20_destination_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rtmp_caption_info_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__rtmp_caption_info_destination_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scte20_plus_embedded_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__scte20_plus_embedded_destination_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scte27_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__scte27_destination_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  smpte_tt_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__smpte_tt_destination_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  teletext_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__teletext_destination_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ttml_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  webvtt_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__caption_descriptions__destination_settings) ->
  ()

let yojson_of_encoder_settings__caption_descriptions__destination_settings
    =
  (function
   | {
       arib_destination_settings = v_arib_destination_settings;
       burn_in_destination_settings = v_burn_in_destination_settings;
       dvb_sub_destination_settings = v_dvb_sub_destination_settings;
       ebu_tt_d_destination_settings =
         v_ebu_tt_d_destination_settings;
       embedded_destination_settings =
         v_embedded_destination_settings;
       embedded_plus_scte20_destination_settings =
         v_embedded_plus_scte20_destination_settings;
       rtmp_caption_info_destination_settings =
         v_rtmp_caption_info_destination_settings;
       scte20_plus_embedded_destination_settings =
         v_scte20_plus_embedded_destination_settings;
       scte27_destination_settings = v_scte27_destination_settings;
       smpte_tt_destination_settings =
         v_smpte_tt_destination_settings;
       teletext_destination_settings =
         v_teletext_destination_settings;
       ttml_destination_settings = v_ttml_destination_settings;
       webvtt_destination_settings = v_webvtt_destination_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_webvtt_destination_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings)
               v_webvtt_destination_settings
           in
           let bnd = "webvtt_destination_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ttml_destination_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings)
               v_ttml_destination_settings
           in
           let bnd = "ttml_destination_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_teletext_destination_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__caption_descriptions__destination_settings__teletext_destination_settings)
               v_teletext_destination_settings
           in
           let bnd = "teletext_destination_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_smpte_tt_destination_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__caption_descriptions__destination_settings__smpte_tt_destination_settings)
               v_smpte_tt_destination_settings
           in
           let bnd = "smpte_tt_destination_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scte27_destination_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__caption_descriptions__destination_settings__scte27_destination_settings)
               v_scte27_destination_settings
           in
           let bnd = "scte27_destination_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if
           Stdlib.( = ) []
             v_scte20_plus_embedded_destination_settings
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__caption_descriptions__destination_settings__scte20_plus_embedded_destination_settings)
               v_scte20_plus_embedded_destination_settings
           in
           let bnd =
             "scte20_plus_embedded_destination_settings", arg
           in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rtmp_caption_info_destination_settings
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__caption_descriptions__destination_settings__rtmp_caption_info_destination_settings)
               v_rtmp_caption_info_destination_settings
           in
           let bnd = "rtmp_caption_info_destination_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if
           Stdlib.( = ) []
             v_embedded_plus_scte20_destination_settings
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__caption_descriptions__destination_settings__embedded_plus_scte20_destination_settings)
               v_embedded_plus_scte20_destination_settings
           in
           let bnd =
             "embedded_plus_scte20_destination_settings", arg
           in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_embedded_destination_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__caption_descriptions__destination_settings__embedded_destination_settings)
               v_embedded_destination_settings
           in
           let bnd = "embedded_destination_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ebu_tt_d_destination_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings)
               v_ebu_tt_d_destination_settings
           in
           let bnd = "ebu_tt_d_destination_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dvb_sub_destination_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings)
               v_dvb_sub_destination_settings
           in
           let bnd = "dvb_sub_destination_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_burn_in_destination_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings)
               v_burn_in_destination_settings
           in
           let bnd = "burn_in_destination_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_arib_destination_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__caption_descriptions__destination_settings__arib_destination_settings)
               v_arib_destination_settings
           in
           let bnd = "arib_destination_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__caption_descriptions__destination_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__caption_descriptions__destination_settings

[@@@deriving.end]

type encoder_settings__caption_descriptions = {
  accessibility : string prop option; [@option]
  caption_selector_name : string prop;
  language_code : string prop option; [@option]
  language_description : string prop option; [@option]
  name : string prop;
  destination_settings :
    encoder_settings__caption_descriptions__destination_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encoder_settings__caption_descriptions) -> ()

let yojson_of_encoder_settings__caption_descriptions =
  (function
   | {
       accessibility = v_accessibility;
       caption_selector_name = v_caption_selector_name;
       language_code = v_language_code;
       language_description = v_language_description;
       name = v_name;
       destination_settings = v_destination_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__caption_descriptions__destination_settings)
               v_destination_settings
           in
           let bnd = "destination_settings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_language_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language_description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_language_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language_code", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_caption_selector_name
         in
         ("caption_selector_name", arg) :: bnds
       in
       let bnds =
         match v_accessibility with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accessibility", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__caption_descriptions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encoder_settings__caption_descriptions

[@@@deriving.end]

type encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate = {
  password_param : string prop option; [@option]
  uri : string prop;
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate) ->
  ()

let yojson_of_encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate
    =
  (function
   | {
       password_param = v_password_param;
       uri = v_uri;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_password_param with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_param", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate

[@@@deriving.end]

type encoder_settings__global_configuration__input_loss_behavior = {
  black_frame_msec : float prop option; [@option]
  input_loss_image_color : string prop option; [@option]
  input_loss_image_type : string prop option; [@option]
  repeat_frame_msec : float prop option; [@option]
  input_loss_image_slate :
    encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__global_configuration__input_loss_behavior) ->
  ()

let yojson_of_encoder_settings__global_configuration__input_loss_behavior
    =
  (function
   | {
       black_frame_msec = v_black_frame_msec;
       input_loss_image_color = v_input_loss_image_color;
       input_loss_image_type = v_input_loss_image_type;
       repeat_frame_msec = v_repeat_frame_msec;
       input_loss_image_slate = v_input_loss_image_slate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_input_loss_image_slate then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate)
               v_input_loss_image_slate
           in
           let bnd = "input_loss_image_slate", arg in
           bnd :: bnds
       in
       let bnds =
         match v_repeat_frame_msec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "repeat_frame_msec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_input_loss_image_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_loss_image_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_input_loss_image_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_loss_image_color", arg in
             bnd :: bnds
       in
       let bnds =
         match v_black_frame_msec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "black_frame_msec", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__global_configuration__input_loss_behavior ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__global_configuration__input_loss_behavior

[@@@deriving.end]

type encoder_settings__global_configuration = {
  initial_audio_gain : float prop option; [@option]
  input_end_action : string prop option; [@option]
  output_locking_mode : string prop option; [@option]
  output_timing_source : string prop option; [@option]
  support_low_framerate_inputs : string prop option; [@option]
  input_loss_behavior :
    encoder_settings__global_configuration__input_loss_behavior list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encoder_settings__global_configuration) -> ()

let yojson_of_encoder_settings__global_configuration =
  (function
   | {
       initial_audio_gain = v_initial_audio_gain;
       input_end_action = v_input_end_action;
       output_locking_mode = v_output_locking_mode;
       output_timing_source = v_output_timing_source;
       support_low_framerate_inputs = v_support_low_framerate_inputs;
       input_loss_behavior = v_input_loss_behavior;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_input_loss_behavior then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__global_configuration__input_loss_behavior)
               v_input_loss_behavior
           in
           let bnd = "input_loss_behavior", arg in
           bnd :: bnds
       in
       let bnds =
         match v_support_low_framerate_inputs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "support_low_framerate_inputs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_output_timing_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_timing_source", arg in
             bnd :: bnds
       in
       let bnds =
         match v_output_locking_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_locking_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_input_end_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_end_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_audio_gain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_audio_gain", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__global_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encoder_settings__global_configuration

[@@@deriving.end]

type encoder_settings__motion_graphics_configuration__motion_graphics_settings__html_motion_graphics_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__motion_graphics_configuration__motion_graphics_settings__html_motion_graphics_settings) ->
  ()

let yojson_of_encoder_settings__motion_graphics_configuration__motion_graphics_settings__html_motion_graphics_settings
    =
  (yojson_of_unit
    : encoder_settings__motion_graphics_configuration__motion_graphics_settings__html_motion_graphics_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__motion_graphics_configuration__motion_graphics_settings__html_motion_graphics_settings

[@@@deriving.end]

type encoder_settings__motion_graphics_configuration__motion_graphics_settings = {
  html_motion_graphics_settings :
    encoder_settings__motion_graphics_configuration__motion_graphics_settings__html_motion_graphics_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__motion_graphics_configuration__motion_graphics_settings) ->
  ()

let yojson_of_encoder_settings__motion_graphics_configuration__motion_graphics_settings
    =
  (function
   | {
       html_motion_graphics_settings =
         v_html_motion_graphics_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_html_motion_graphics_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__motion_graphics_configuration__motion_graphics_settings__html_motion_graphics_settings)
               v_html_motion_graphics_settings
           in
           let bnd = "html_motion_graphics_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__motion_graphics_configuration__motion_graphics_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__motion_graphics_configuration__motion_graphics_settings

[@@@deriving.end]

type encoder_settings__motion_graphics_configuration = {
  motion_graphics_insertion : string prop option; [@option]
  motion_graphics_settings :
    encoder_settings__motion_graphics_configuration__motion_graphics_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : encoder_settings__motion_graphics_configuration) -> ()

let yojson_of_encoder_settings__motion_graphics_configuration =
  (function
   | {
       motion_graphics_insertion = v_motion_graphics_insertion;
       motion_graphics_settings = v_motion_graphics_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_motion_graphics_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__motion_graphics_configuration__motion_graphics_settings)
               v_motion_graphics_settings
           in
           let bnd = "motion_graphics_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_motion_graphics_insertion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "motion_graphics_insertion", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__motion_graphics_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encoder_settings__motion_graphics_configuration

[@@@deriving.end]

type encoder_settings__nielsen_configuration = {
  distributor_id : string prop option; [@option]
  nielsen_pcm_to_id3_tagging : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encoder_settings__nielsen_configuration) -> ()

let yojson_of_encoder_settings__nielsen_configuration =
  (function
   | {
       distributor_id = v_distributor_id;
       nielsen_pcm_to_id3_tagging = v_nielsen_pcm_to_id3_tagging;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_nielsen_pcm_to_id3_tagging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nielsen_pcm_to_id3_tagging", arg in
             bnd :: bnds
       in
       let bnds =
         match v_distributor_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "distributor_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__nielsen_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encoder_settings__nielsen_configuration

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings = {
  canned_acl : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings
    =
  (function
   | { canned_acl = v_canned_acl } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_canned_acl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "canned_acl", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings = {
  archive_s3_settings :
    encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings
    =
  (function
   | { archive_s3_settings = v_archive_s3_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_archive_s3_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings)
               v_archive_s3_settings
           in
           let bnd = "archive_s3_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__archive_group_settings__destination = {
  destination_ref_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__archive_group_settings__destination) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__archive_group_settings__destination
    =
  (function
   | { destination_ref_id = v_destination_ref_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_ref_id
         in
         ("destination_ref_id", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__archive_group_settings__destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__archive_group_settings__destination

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__archive_group_settings = {
  rollover_interval : float prop option; [@option]
  archive_cdn_settings :
    encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination :
    encoder_settings__output_groups__output_group_settings__archive_group_settings__destination
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__archive_group_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__archive_group_settings
    =
  (function
   | {
       rollover_interval = v_rollover_interval;
       archive_cdn_settings = v_archive_cdn_settings;
       destination = v_destination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__archive_group_settings__destination)
               v_destination
           in
           let bnd = "destination", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_archive_cdn_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings)
               v_archive_cdn_settings
           in
           let bnd = "archive_cdn_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_rollover_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rollover_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__archive_group_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__archive_group_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination = {
  destination_ref_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination
    =
  (function
   | { destination_ref_id = v_destination_ref_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_ref_id
         in
         ("destination_ref_id", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings = {
  canned_acl : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings
    =
  (function
   | { canned_acl = v_canned_acl } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_canned_acl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "canned_acl", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings = {
  frame_capture_s3_settings :
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings
    =
  (function
   | { frame_capture_s3_settings = v_frame_capture_s3_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_frame_capture_s3_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings)
               v_frame_capture_s3_settings
           in
           let bnd = "frame_capture_s3_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__frame_capture_group_settings = {
  destination :
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  frame_capture_cdn_settings :
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__frame_capture_group_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__frame_capture_group_settings
    =
  (function
   | {
       destination = v_destination;
       frame_capture_cdn_settings = v_frame_capture_cdn_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_frame_capture_cdn_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings)
               v_frame_capture_cdn_settings
           in
           let bnd = "frame_capture_cdn_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination)
               v_destination
           in
           let bnd = "destination", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__frame_capture_group_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__frame_capture_group_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings = {
  caption_channel : float prop;
  language_code : string prop;
  language_description : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings
    =
  (function
   | {
       caption_channel = v_caption_channel;
       language_code = v_language_code;
       language_description = v_language_description;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_language_description
         in
         ("language_description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_language_code in
         ("language_code", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_caption_channel
         in
         ("caption_channel", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__hls_group_settings__destination = {
  destination_ref_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__hls_group_settings__destination) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__destination
    =
  (function
   | { destination_ref_id = v_destination_ref_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_ref_id
         in
         ("destination_ref_id", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__hls_group_settings__destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__destination

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings = {
  connection_retry_interval : float prop option; [@option]
  filecache_duration : float prop option; [@option]
  http_transfer_mode : string prop option; [@option]
  num_retries : float prop option; [@option]
  restart_delay : float prop option; [@option]
  salt : string prop option; [@option]
  token : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings
    =
  (function
   | {
       connection_retry_interval = v_connection_retry_interval;
       filecache_duration = v_filecache_duration;
       http_transfer_mode = v_http_transfer_mode;
       num_retries = v_num_retries;
       restart_delay = v_restart_delay;
       salt = v_salt;
       token = v_token;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_salt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "salt", arg in
             bnd :: bnds
       in
       let bnds =
         match v_restart_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "restart_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_retries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_retries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_transfer_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_transfer_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filecache_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "filecache_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_retry_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "connection_retry_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings = {
  connection_retry_interval : float prop option; [@option]
  filecache_duration : float prop option; [@option]
  num_retries : float prop option; [@option]
  restart_delay : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings
    =
  (function
   | {
       connection_retry_interval = v_connection_retry_interval;
       filecache_duration = v_filecache_duration;
       num_retries = v_num_retries;
       restart_delay = v_restart_delay;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_restart_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "restart_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_retries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_retries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filecache_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "filecache_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_retry_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "connection_retry_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings = {
  connection_retry_interval : float prop option; [@option]
  filecache_duration : float prop option; [@option]
  media_store_storage_class : string prop option; [@option]
  num_retries : float prop option; [@option]
  restart_delay : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings
    =
  (function
   | {
       connection_retry_interval = v_connection_retry_interval;
       filecache_duration = v_filecache_duration;
       media_store_storage_class = v_media_store_storage_class;
       num_retries = v_num_retries;
       restart_delay = v_restart_delay;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_restart_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "restart_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_retries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_retries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_media_store_storage_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "media_store_storage_class", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filecache_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "filecache_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_retry_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "connection_retry_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings = {
  canned_acl : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings
    =
  (function
   | { canned_acl = v_canned_acl } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_canned_acl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "canned_acl", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings = {
  connection_retry_interval : float prop option; [@option]
  filecache_duration : float prop option; [@option]
  http_transfer_mode : string prop option; [@option]
  num_retries : float prop option; [@option]
  restart_delay : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings
    =
  (function
   | {
       connection_retry_interval = v_connection_retry_interval;
       filecache_duration = v_filecache_duration;
       http_transfer_mode = v_http_transfer_mode;
       num_retries = v_num_retries;
       restart_delay = v_restart_delay;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_restart_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "restart_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_retries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_retries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_transfer_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_transfer_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filecache_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "filecache_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_retry_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "connection_retry_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings = {
  hls_akamai_settings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hls_basic_put_settings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hls_media_store_settings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hls_s3_settings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hls_webdav_settings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings
    =
  (function
   | {
       hls_akamai_settings = v_hls_akamai_settings;
       hls_basic_put_settings = v_hls_basic_put_settings;
       hls_media_store_settings = v_hls_media_store_settings;
       hls_s3_settings = v_hls_s3_settings;
       hls_webdav_settings = v_hls_webdav_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_hls_webdav_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings)
               v_hls_webdav_settings
           in
           let bnd = "hls_webdav_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hls_s3_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings)
               v_hls_s3_settings
           in
           let bnd = "hls_s3_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hls_media_store_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings)
               v_hls_media_store_settings
           in
           let bnd = "hls_media_store_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hls_basic_put_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings)
               v_hls_basic_put_settings
           in
           let bnd = "hls_basic_put_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hls_akamai_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings)
               v_hls_akamai_settings
           in
           let bnd = "hls_akamai_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server = {
  password_param : string prop option; [@option]
  uri : string prop;
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server
    =
  (function
   | {
       password_param = v_password_param;
       uri = v_uri;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_password_param with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_param", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings = {
  static_key_value : string prop;
  key_provider_server :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings
    =
  (function
   | {
       static_key_value = v_static_key_value;
       key_provider_server = v_key_provider_server;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_key_provider_server then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server)
               v_key_provider_server
           in
           let bnd = "key_provider_server", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_static_key_value
         in
         ("static_key_value", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings = {
  static_key_settings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings
    =
  (function
   | { static_key_settings = v_static_key_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_static_key_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings)
               v_static_key_settings
           in
           let bnd = "static_key_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__hls_group_settings = {
  ad_markers : string prop list option; [@option]
  base_url_content : string prop option; [@option]
  base_url_content1 : string prop option; [@option]
  base_url_manifest : string prop option; [@option]
  base_url_manifest1 : string prop option; [@option]
  caption_language_setting : string prop option; [@option]
  client_cache : string prop option; [@option]
  codec_specification : string prop option; [@option]
  constant_iv : string prop option; [@option]
  directory_structure : string prop option; [@option]
  discontinuity_tags : string prop option; [@option]
  encryption_type : string prop option; [@option]
  hls_id3_segment_tagging : string prop option; [@option]
  iframe_only_playlists : string prop option; [@option]
  incomplete_segment_behavior : string prop option; [@option]
  index_n_segments : float prop option; [@option]
  input_loss_action : string prop option; [@option]
  iv_in_manifest : string prop option; [@option]
  iv_source : string prop option; [@option]
  keep_segments : float prop option; [@option]
  key_format : string prop option; [@option]
  key_format_versions : string prop option; [@option]
  manifest_compression : string prop option; [@option]
  manifest_duration_format : string prop option; [@option]
  min_segment_length : float prop option; [@option]
  mode : string prop option; [@option]
  output_selection : string prop option; [@option]
  program_date_time : string prop option; [@option]
  program_date_time_clock : string prop option; [@option]
  program_date_time_period : float prop option; [@option]
  redundant_manifest : string prop option; [@option]
  segment_length : float prop option; [@option]
  segments_per_subdirectory : float prop option; [@option]
  stream_inf_resolution : string prop option; [@option]
  timed_metadata_id3_frame : string prop option; [@option]
  timed_metadata_id3_period : float prop option; [@option]
  timestamp_delta_milliseconds : float prop option; [@option]
  ts_file_mode : string prop option; [@option]
  caption_language_mappings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__destination
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hls_cdn_settings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  key_provider_settings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__hls_group_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings
    =
  (function
   | {
       ad_markers = v_ad_markers;
       base_url_content = v_base_url_content;
       base_url_content1 = v_base_url_content1;
       base_url_manifest = v_base_url_manifest;
       base_url_manifest1 = v_base_url_manifest1;
       caption_language_setting = v_caption_language_setting;
       client_cache = v_client_cache;
       codec_specification = v_codec_specification;
       constant_iv = v_constant_iv;
       directory_structure = v_directory_structure;
       discontinuity_tags = v_discontinuity_tags;
       encryption_type = v_encryption_type;
       hls_id3_segment_tagging = v_hls_id3_segment_tagging;
       iframe_only_playlists = v_iframe_only_playlists;
       incomplete_segment_behavior = v_incomplete_segment_behavior;
       index_n_segments = v_index_n_segments;
       input_loss_action = v_input_loss_action;
       iv_in_manifest = v_iv_in_manifest;
       iv_source = v_iv_source;
       keep_segments = v_keep_segments;
       key_format = v_key_format;
       key_format_versions = v_key_format_versions;
       manifest_compression = v_manifest_compression;
       manifest_duration_format = v_manifest_duration_format;
       min_segment_length = v_min_segment_length;
       mode = v_mode;
       output_selection = v_output_selection;
       program_date_time = v_program_date_time;
       program_date_time_clock = v_program_date_time_clock;
       program_date_time_period = v_program_date_time_period;
       redundant_manifest = v_redundant_manifest;
       segment_length = v_segment_length;
       segments_per_subdirectory = v_segments_per_subdirectory;
       stream_inf_resolution = v_stream_inf_resolution;
       timed_metadata_id3_frame = v_timed_metadata_id3_frame;
       timed_metadata_id3_period = v_timed_metadata_id3_period;
       timestamp_delta_milliseconds = v_timestamp_delta_milliseconds;
       ts_file_mode = v_ts_file_mode;
       caption_language_mappings = v_caption_language_mappings;
       destination = v_destination;
       hls_cdn_settings = v_hls_cdn_settings;
       key_provider_settings = v_key_provider_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_key_provider_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings)
               v_key_provider_settings
           in
           let bnd = "key_provider_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hls_cdn_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings)
               v_hls_cdn_settings
           in
           let bnd = "hls_cdn_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__destination)
               v_destination
           in
           let bnd = "destination", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_caption_language_mappings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings)
               v_caption_language_mappings
           in
           let bnd = "caption_language_mappings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_ts_file_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ts_file_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timestamp_delta_milliseconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timestamp_delta_milliseconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timed_metadata_id3_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timed_metadata_id3_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timed_metadata_id3_frame with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timed_metadata_id3_frame", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stream_inf_resolution with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stream_inf_resolution", arg in
             bnd :: bnds
       in
       let bnds =
         match v_segments_per_subdirectory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "segments_per_subdirectory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_segment_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "segment_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redundant_manifest with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redundant_manifest", arg in
             bnd :: bnds
       in
       let bnds =
         match v_program_date_time_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "program_date_time_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_program_date_time_clock with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "program_date_time_clock", arg in
             bnd :: bnds
       in
       let bnds =
         match v_program_date_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "program_date_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_output_selection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_selection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_segment_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_segment_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_manifest_duration_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "manifest_duration_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_manifest_compression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "manifest_compression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_format_versions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_format_versions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keep_segments with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "keep_segments", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iv_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iv_source", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iv_in_manifest with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iv_in_manifest", arg in
             bnd :: bnds
       in
       let bnds =
         match v_input_loss_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_loss_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_index_n_segments with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "index_n_segments", arg in
             bnd :: bnds
       in
       let bnds =
         match v_incomplete_segment_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "incomplete_segment_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iframe_only_playlists with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iframe_only_playlists", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hls_id3_segment_tagging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hls_id3_segment_tagging", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encryption_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_discontinuity_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "discontinuity_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_directory_structure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "directory_structure", arg in
             bnd :: bnds
       in
       let bnds =
         match v_constant_iv with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "constant_iv", arg in
             bnd :: bnds
       in
       let bnds =
         match v_codec_specification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "codec_specification", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_cache with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_cache", arg in
             bnd :: bnds
       in
       let bnds =
         match v_caption_language_setting with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "caption_language_setting", arg in
             bnd :: bnds
       in
       let bnds =
         match v_base_url_manifest1 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "base_url_manifest1", arg in
             bnd :: bnds
       in
       let bnds =
         match v_base_url_manifest with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "base_url_manifest", arg in
             bnd :: bnds
       in
       let bnds =
         match v_base_url_content1 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "base_url_content1", arg in
             bnd :: bnds
       in
       let bnds =
         match v_base_url_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "base_url_content", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ad_markers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ad_markers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__hls_group_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination = {
  destination_ref_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination
    =
  (function
   | { destination_ref_id = v_destination_ref_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_ref_id
         in
         ("destination_ref_id", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__media_package_group_settings = {
  destination :
    encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__media_package_group_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__media_package_group_settings
    =
  (function
   | { destination = v_destination } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination)
               v_destination
           in
           let bnd = "destination", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__media_package_group_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__media_package_group_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination = {
  destination_ref_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination
    =
  (function
   | { destination_ref_id = v_destination_ref_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_ref_id
         in
         ("destination_ref_id", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings = {
  acquisition_point_id : string prop option; [@option]
  audio_only_timecode_control : string prop option; [@option]
  certificate_mode : string prop option; [@option]
  connection_retry_interval : float prop option; [@option]
  event_id : string prop option; [@option]
  event_id_mode : string prop option; [@option]
  event_stop_behavior : string prop option; [@option]
  filecache_duration : float prop option; [@option]
  fragment_length : float prop option; [@option]
  input_loss_action : string prop option; [@option]
  num_retries : float prop option; [@option]
  restart_delay : float prop option; [@option]
  segmentation_mode : string prop option; [@option]
  send_delay_ms : float prop option; [@option]
  sparse_track_type : string prop option; [@option]
  stream_manifest_behavior : string prop option; [@option]
  timestamp_offset : string prop option; [@option]
  timestamp_offset_mode : string prop option; [@option]
  destination :
    encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings
    =
  (function
   | {
       acquisition_point_id = v_acquisition_point_id;
       audio_only_timecode_control = v_audio_only_timecode_control;
       certificate_mode = v_certificate_mode;
       connection_retry_interval = v_connection_retry_interval;
       event_id = v_event_id;
       event_id_mode = v_event_id_mode;
       event_stop_behavior = v_event_stop_behavior;
       filecache_duration = v_filecache_duration;
       fragment_length = v_fragment_length;
       input_loss_action = v_input_loss_action;
       num_retries = v_num_retries;
       restart_delay = v_restart_delay;
       segmentation_mode = v_segmentation_mode;
       send_delay_ms = v_send_delay_ms;
       sparse_track_type = v_sparse_track_type;
       stream_manifest_behavior = v_stream_manifest_behavior;
       timestamp_offset = v_timestamp_offset;
       timestamp_offset_mode = v_timestamp_offset_mode;
       destination = v_destination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination)
               v_destination
           in
           let bnd = "destination", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timestamp_offset_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_offset_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timestamp_offset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_offset", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stream_manifest_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stream_manifest_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sparse_track_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sparse_track_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_send_delay_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "send_delay_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_segmentation_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "segmentation_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_restart_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "restart_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_retries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_retries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_input_loss_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_loss_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fragment_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "fragment_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filecache_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "filecache_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_stop_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_stop_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_id_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_id_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_retry_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "connection_retry_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_only_timecode_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_only_timecode_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_acquisition_point_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "acquisition_point_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__multiplex_group_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__multiplex_group_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__multiplex_group_settings
    =
  (yojson_of_unit
    : encoder_settings__output_groups__output_group_settings__multiplex_group_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__multiplex_group_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__rtmp_group_settings = {
  ad_markers : string prop list option; [@option]
  authentication_scheme : string prop option; [@option]
  cache_full_behavior : string prop option; [@option]
  cache_length : float prop option; [@option]
  caption_data : string prop option; [@option]
  input_loss_action : string prop option; [@option]
  restart_delay : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__rtmp_group_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__rtmp_group_settings
    =
  (function
   | {
       ad_markers = v_ad_markers;
       authentication_scheme = v_authentication_scheme;
       cache_full_behavior = v_cache_full_behavior;
       cache_length = v_cache_length;
       caption_data = v_caption_data;
       input_loss_action = v_input_loss_action;
       restart_delay = v_restart_delay;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_restart_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "restart_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_input_loss_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_loss_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_caption_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "caption_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cache_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_full_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_full_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authentication_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authentication_scheme", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ad_markers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ad_markers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__rtmp_group_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__rtmp_group_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings__udp_group_settings = {
  input_loss_action : string prop option; [@option]
  timed_metadata_id3_frame : string prop option; [@option]
  timed_metadata_id3_period : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__output_group_settings__udp_group_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings__udp_group_settings
    =
  (function
   | {
       input_loss_action = v_input_loss_action;
       timed_metadata_id3_frame = v_timed_metadata_id3_frame;
       timed_metadata_id3_period = v_timed_metadata_id3_period;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timed_metadata_id3_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timed_metadata_id3_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timed_metadata_id3_frame with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timed_metadata_id3_frame", arg in
             bnd :: bnds
       in
       let bnds =
         match v_input_loss_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_loss_action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings__udp_group_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings__udp_group_settings

[@@@deriving.end]

type encoder_settings__output_groups__output_group_settings = {
  archive_group_settings :
    encoder_settings__output_groups__output_group_settings__archive_group_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  frame_capture_group_settings :
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hls_group_settings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  media_package_group_settings :
    encoder_settings__output_groups__output_group_settings__media_package_group_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ms_smooth_group_settings :
    encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  multiplex_group_settings :
    encoder_settings__output_groups__output_group_settings__multiplex_group_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rtmp_group_settings :
    encoder_settings__output_groups__output_group_settings__rtmp_group_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  udp_group_settings :
    encoder_settings__output_groups__output_group_settings__udp_group_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : encoder_settings__output_groups__output_group_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__output_group_settings
    =
  (function
   | {
       archive_group_settings = v_archive_group_settings;
       frame_capture_group_settings = v_frame_capture_group_settings;
       hls_group_settings = v_hls_group_settings;
       media_package_group_settings = v_media_package_group_settings;
       ms_smooth_group_settings = v_ms_smooth_group_settings;
       multiplex_group_settings = v_multiplex_group_settings;
       rtmp_group_settings = v_rtmp_group_settings;
       udp_group_settings = v_udp_group_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_udp_group_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__udp_group_settings)
               v_udp_group_settings
           in
           let bnd = "udp_group_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rtmp_group_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__rtmp_group_settings)
               v_rtmp_group_settings
           in
           let bnd = "rtmp_group_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_multiplex_group_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__multiplex_group_settings)
               v_multiplex_group_settings
           in
           let bnd = "multiplex_group_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ms_smooth_group_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings)
               v_ms_smooth_group_settings
           in
           let bnd = "ms_smooth_group_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_media_package_group_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__media_package_group_settings)
               v_media_package_group_settings
           in
           let bnd = "media_package_group_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hls_group_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__hls_group_settings)
               v_hls_group_settings
           in
           let bnd = "hls_group_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_frame_capture_group_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__frame_capture_group_settings)
               v_frame_capture_group_settings
           in
           let bnd = "frame_capture_group_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_archive_group_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings__archive_group_settings)
               v_archive_group_settings
           in
           let bnd = "archive_group_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__output_group_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__output_group_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings = {
  network_id : float prop;
  network_name : string prop;
  rep_interval : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings
    =
  (function
   | {
       network_id = v_network_id;
       network_name = v_network_name;
       rep_interval = v_rep_interval;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rep_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rep_interval", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_name in
         ("network_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_network_id in
         ("network_id", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings = {
  output_sdt : string prop option; [@option]
  rep_interval : float prop option; [@option]
  service_name : string prop option; [@option]
  service_provider_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings
    =
  (function
   | {
       output_sdt = v_output_sdt;
       rep_interval = v_rep_interval;
       service_name = v_service_name;
       service_provider_name = v_service_provider_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service_provider_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_provider_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rep_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rep_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_output_sdt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_sdt", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings = {
  rep_interval : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings
    =
  (function
   | { rep_interval = v_rep_interval } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rep_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rep_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings = {
  absent_input_audio_behavior : string prop option; [@option]
  arib : string prop option; [@option]
  arib_captions_pid : string prop option; [@option]
  arib_captions_pid_control : string prop option; [@option]
  audio_buffer_model : string prop option; [@option]
  audio_frames_per_pes : float prop option; [@option]
  audio_pids : string prop option; [@option]
  audio_stream_type : string prop option; [@option]
  bitrate : float prop option; [@option]
  buffer_model : string prop option; [@option]
  cc_descriptor : string prop option; [@option]
  dvb_sub_pids : string prop option; [@option]
  dvb_teletext_pid : string prop option; [@option]
  ebif : string prop option; [@option]
  ebp_audio_interval : string prop option; [@option]
  ebp_lookahead_ms : float prop option; [@option]
  ebp_placement : string prop option; [@option]
  ecm_pid : string prop option; [@option]
  es_rate_in_pes : string prop option; [@option]
  etv_platform_pid : string prop option; [@option]
  etv_signal_pid : string prop option; [@option]
  fragment_time : float prop option; [@option]
  klv : string prop option; [@option]
  klv_data_pids : string prop option; [@option]
  nielsen_id3_behavior : string prop option; [@option]
  null_packet_bitrate : float prop option; [@option]
  pat_interval : float prop option; [@option]
  pcr_control : string prop option; [@option]
  pcr_period : float prop option; [@option]
  pcr_pid : string prop option; [@option]
  pmt_interval : float prop option; [@option]
  pmt_pid : string prop option; [@option]
  program_num : float prop option; [@option]
  rate_mode : string prop option; [@option]
  scte27_pids : string prop option; [@option]
  scte35_control : string prop option; [@option]
  scte35_pid : string prop option; [@option]
  segmentation_markers : string prop option; [@option]
  segmentation_style : string prop option; [@option]
  segmentation_time : float prop option; [@option]
  timed_metadata_behavior : string prop option; [@option]
  timed_metadata_pid : string prop option; [@option]
  transport_stream_id : float prop option; [@option]
  video_pid : string prop option; [@option]
  dvb_nit_settings :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dvb_sdt_settings :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dvb_tdt_settings :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings
    =
  (function
   | {
       absent_input_audio_behavior = v_absent_input_audio_behavior;
       arib = v_arib;
       arib_captions_pid = v_arib_captions_pid;
       arib_captions_pid_control = v_arib_captions_pid_control;
       audio_buffer_model = v_audio_buffer_model;
       audio_frames_per_pes = v_audio_frames_per_pes;
       audio_pids = v_audio_pids;
       audio_stream_type = v_audio_stream_type;
       bitrate = v_bitrate;
       buffer_model = v_buffer_model;
       cc_descriptor = v_cc_descriptor;
       dvb_sub_pids = v_dvb_sub_pids;
       dvb_teletext_pid = v_dvb_teletext_pid;
       ebif = v_ebif;
       ebp_audio_interval = v_ebp_audio_interval;
       ebp_lookahead_ms = v_ebp_lookahead_ms;
       ebp_placement = v_ebp_placement;
       ecm_pid = v_ecm_pid;
       es_rate_in_pes = v_es_rate_in_pes;
       etv_platform_pid = v_etv_platform_pid;
       etv_signal_pid = v_etv_signal_pid;
       fragment_time = v_fragment_time;
       klv = v_klv;
       klv_data_pids = v_klv_data_pids;
       nielsen_id3_behavior = v_nielsen_id3_behavior;
       null_packet_bitrate = v_null_packet_bitrate;
       pat_interval = v_pat_interval;
       pcr_control = v_pcr_control;
       pcr_period = v_pcr_period;
       pcr_pid = v_pcr_pid;
       pmt_interval = v_pmt_interval;
       pmt_pid = v_pmt_pid;
       program_num = v_program_num;
       rate_mode = v_rate_mode;
       scte27_pids = v_scte27_pids;
       scte35_control = v_scte35_control;
       scte35_pid = v_scte35_pid;
       segmentation_markers = v_segmentation_markers;
       segmentation_style = v_segmentation_style;
       segmentation_time = v_segmentation_time;
       timed_metadata_behavior = v_timed_metadata_behavior;
       timed_metadata_pid = v_timed_metadata_pid;
       transport_stream_id = v_transport_stream_id;
       video_pid = v_video_pid;
       dvb_nit_settings = v_dvb_nit_settings;
       dvb_sdt_settings = v_dvb_sdt_settings;
       dvb_tdt_settings = v_dvb_tdt_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_dvb_tdt_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings)
               v_dvb_tdt_settings
           in
           let bnd = "dvb_tdt_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dvb_sdt_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings)
               v_dvb_sdt_settings
           in
           let bnd = "dvb_sdt_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dvb_nit_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings)
               v_dvb_nit_settings
           in
           let bnd = "dvb_nit_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_video_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "video_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transport_stream_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "transport_stream_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timed_metadata_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timed_metadata_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timed_metadata_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timed_metadata_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_segmentation_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "segmentation_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_segmentation_style with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "segmentation_style", arg in
             bnd :: bnds
       in
       let bnds =
         match v_segmentation_markers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "segmentation_markers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scte35_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scte35_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scte35_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scte35_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scte27_pids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scte27_pids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rate_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rate_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_program_num with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "program_num", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pmt_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pmt_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pmt_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pmt_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pcr_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pcr_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pcr_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pcr_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pcr_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pcr_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pat_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pat_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_null_packet_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "null_packet_bitrate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nielsen_id3_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nielsen_id3_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_klv_data_pids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "klv_data_pids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_klv with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "klv", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fragment_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "fragment_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_etv_signal_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "etv_signal_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_etv_platform_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "etv_platform_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_es_rate_in_pes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "es_rate_in_pes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ecm_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ecm_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ebp_placement with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ebp_placement", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ebp_lookahead_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ebp_lookahead_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ebp_audio_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ebp_audio_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ebif with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ebif", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dvb_teletext_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dvb_teletext_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dvb_sub_pids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dvb_sub_pids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cc_descriptor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cc_descriptor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffer_model with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "buffer_model", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bitrate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_stream_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_stream_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_pids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_pids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_frames_per_pes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "audio_frames_per_pes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_buffer_model with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_buffer_model", arg in
             bnd :: bnds
       in
       let bnds =
         match v_arib_captions_pid_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arib_captions_pid_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_arib_captions_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arib_captions_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_arib with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arib", arg in
             bnd :: bnds
       in
       let bnds =
         match v_absent_input_audio_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "absent_input_audio_behavior", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__raw_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__raw_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__raw_settings
    =
  (yojson_of_unit
    : encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__raw_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__raw_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings = {
  m2ts_settings :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  raw_settings :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__raw_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings
    =
  (function
   | {
       m2ts_settings = v_m2ts_settings;
       raw_settings = v_raw_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_raw_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__raw_settings)
               v_raw_settings
           in
           let bnd = "raw_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_m2ts_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings)
               v_m2ts_settings
           in
           let bnd = "m2ts_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings = {
  extension : string prop option; [@option]
  name_modifier : string prop option; [@option]
  container_settings :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__archive_output_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings
    =
  (function
   | {
       extension = v_extension;
       name_modifier = v_name_modifier;
       container_settings = v_container_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_container_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings)
               v_container_settings
           in
           let bnd = "container_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_name_modifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_modifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_extension with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "extension", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__archive_output_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings = {
  name_modifier : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings
    =
  (function
   | { name_modifier = v_name_modifier } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name_modifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_modifier", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image = {
  password_param : string prop option; [@option]
  uri : string prop;
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image
    =
  (function
   | {
       password_param = v_password_param;
       uri = v_uri;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_password_param with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_param", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings = {
  audio_group_id : string prop option; [@option]
  audio_track_type : string prop option; [@option]
  segment_type : string prop option; [@option]
  audio_only_image :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings
    =
  (function
   | {
       audio_group_id = v_audio_group_id;
       audio_track_type = v_audio_track_type;
       segment_type = v_segment_type;
       audio_only_image = v_audio_only_image;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_audio_only_image then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image)
               v_audio_only_image
           in
           let bnd = "audio_only_image", arg in
           bnd :: bnds
       in
       let bnds =
         match v_segment_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "segment_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_track_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_track_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_group_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings = {
  audio_rendition_sets : string prop option; [@option]
  nielsen_id3_behavior : string prop option; [@option]
  timed_metadata_behavior : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings
    =
  (function
   | {
       audio_rendition_sets = v_audio_rendition_sets;
       nielsen_id3_behavior = v_nielsen_id3_behavior;
       timed_metadata_behavior = v_timed_metadata_behavior;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timed_metadata_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timed_metadata_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nielsen_id3_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nielsen_id3_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_rendition_sets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_rendition_sets", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__frame_capture_hls_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__frame_capture_hls_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__frame_capture_hls_settings
    =
  (yojson_of_unit
    : encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__frame_capture_hls_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__frame_capture_hls_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings = {
  audio_frames_per_pes : float prop option; [@option]
  audio_pids : string prop option; [@option]
  ecm_pid : string prop option; [@option]
  nielsen_id3_behavior : string prop option; [@option]
  pat_interval : float prop option; [@option]
  pcr_control : string prop option; [@option]
  pcr_period : float prop option; [@option]
  pcr_pid : string prop option; [@option]
  pmt_interval : float prop option; [@option]
  pmt_pid : string prop option; [@option]
  program_num : float prop option; [@option]
  scte35_behavior : string prop option; [@option]
  scte35_pid : string prop option; [@option]
  timed_metadata_behavior : string prop option; [@option]
  timed_metadata_pid : string prop option; [@option]
  transport_stream_id : float prop option; [@option]
  video_pid : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings
    =
  (function
   | {
       audio_frames_per_pes = v_audio_frames_per_pes;
       audio_pids = v_audio_pids;
       ecm_pid = v_ecm_pid;
       nielsen_id3_behavior = v_nielsen_id3_behavior;
       pat_interval = v_pat_interval;
       pcr_control = v_pcr_control;
       pcr_period = v_pcr_period;
       pcr_pid = v_pcr_pid;
       pmt_interval = v_pmt_interval;
       pmt_pid = v_pmt_pid;
       program_num = v_program_num;
       scte35_behavior = v_scte35_behavior;
       scte35_pid = v_scte35_pid;
       timed_metadata_behavior = v_timed_metadata_behavior;
       timed_metadata_pid = v_timed_metadata_pid;
       transport_stream_id = v_transport_stream_id;
       video_pid = v_video_pid;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_video_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "video_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transport_stream_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "transport_stream_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timed_metadata_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timed_metadata_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timed_metadata_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timed_metadata_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scte35_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scte35_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scte35_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scte35_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_program_num with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "program_num", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pmt_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pmt_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pmt_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pmt_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pcr_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pcr_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pcr_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pcr_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pcr_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pcr_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pat_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pat_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nielsen_id3_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nielsen_id3_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ecm_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ecm_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_pids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_pids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_frames_per_pes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "audio_frames_per_pes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings = {
  audio_rendition_sets : string prop option; [@option]
  m3u8_settings :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings
    =
  (function
   | {
       audio_rendition_sets = v_audio_rendition_sets;
       m3u8_settings = v_m3u8_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_m3u8_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings)
               v_m3u8_settings
           in
           let bnd = "m3u8_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_audio_rendition_sets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_rendition_sets", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings = {
  audio_only_hls_settings :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  fmp4_hls_settings :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  frame_capture_hls_settings :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__frame_capture_hls_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  standard_hls_settings :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings
    =
  (function
   | {
       audio_only_hls_settings = v_audio_only_hls_settings;
       fmp4_hls_settings = v_fmp4_hls_settings;
       frame_capture_hls_settings = v_frame_capture_hls_settings;
       standard_hls_settings = v_standard_hls_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_standard_hls_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings)
               v_standard_hls_settings
           in
           let bnd = "standard_hls_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_frame_capture_hls_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__frame_capture_hls_settings)
               v_frame_capture_hls_settings
           in
           let bnd = "frame_capture_hls_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_fmp4_hls_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings)
               v_fmp4_hls_settings
           in
           let bnd = "fmp4_hls_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_audio_only_hls_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings)
               v_audio_only_hls_settings
           in
           let bnd = "audio_only_hls_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings = {
  h265_packaging_type : string prop option; [@option]
  name_modifier : string prop option; [@option]
  segment_modifier : string prop option; [@option]
  hls_settings :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__hls_output_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings
    =
  (function
   | {
       h265_packaging_type = v_h265_packaging_type;
       name_modifier = v_name_modifier;
       segment_modifier = v_segment_modifier;
       hls_settings = v_hls_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_hls_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings)
               v_hls_settings
           in
           let bnd = "hls_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_segment_modifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "segment_modifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_modifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_modifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_h265_packaging_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "h265_packaging_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__hls_output_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__media_package_output_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__media_package_output_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__media_package_output_settings
    =
  (yojson_of_unit
    : encoder_settings__output_groups__outputs__output_settings__media_package_output_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__media_package_output_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings = {
  h265_packaging_type : string prop option; [@option]
  name_modifier : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings
    =
  (function
   | {
       h265_packaging_type = v_h265_packaging_type;
       name_modifier = v_name_modifier;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name_modifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_modifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_h265_packaging_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "h265_packaging_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination = {
  destination_ref_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination
    =
  (function
   | { destination_ref_id = v_destination_ref_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_ref_id
         in
         ("destination_ref_id", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings = {
  destination :
    encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings
    =
  (function
   | { destination = v_destination } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination)
               v_destination
           in
           let bnd = "destination", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination = {
  destination_ref_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination
    =
  (function
   | { destination_ref_id = v_destination_ref_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_ref_id
         in
         ("destination_ref_id", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings = {
  certificate_mode : string prop option; [@option]
  connection_retry_interval : float prop option; [@option]
  num_retries : float prop option; [@option]
  destination :
    encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings
    =
  (function
   | {
       certificate_mode = v_certificate_mode;
       connection_retry_interval = v_connection_retry_interval;
       num_retries = v_num_retries;
       destination = v_destination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination)
               v_destination
           in
           let bnd = "destination", arg in
           bnd :: bnds
       in
       let bnds =
         match v_num_retries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_retries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_retry_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "connection_retry_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings = {
  network_id : float prop;
  network_name : string prop;
  rep_interval : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings
    =
  (function
   | {
       network_id = v_network_id;
       network_name = v_network_name;
       rep_interval = v_rep_interval;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rep_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rep_interval", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_name in
         ("network_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_network_id in
         ("network_id", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings = {
  output_sdt : string prop option; [@option]
  rep_interval : float prop option; [@option]
  service_name : string prop option; [@option]
  service_provider_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings
    =
  (function
   | {
       output_sdt = v_output_sdt;
       rep_interval = v_rep_interval;
       service_name = v_service_name;
       service_provider_name = v_service_provider_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service_provider_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_provider_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rep_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rep_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_output_sdt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_sdt", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings = {
  rep_interval : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings
    =
  (function
   | { rep_interval = v_rep_interval } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rep_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rep_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings = {
  absent_input_audio_behavior : string prop option; [@option]
  arib : string prop option; [@option]
  arib_captions_pid : string prop option; [@option]
  arib_captions_pid_control : string prop option; [@option]
  audio_buffer_model : string prop option; [@option]
  audio_frames_per_pes : float prop option; [@option]
  audio_pids : string prop option; [@option]
  audio_stream_type : string prop option; [@option]
  bitrate : float prop option; [@option]
  buffer_model : string prop option; [@option]
  cc_descriptor : string prop option; [@option]
  dvb_sub_pids : string prop option; [@option]
  dvb_teletext_pid : string prop option; [@option]
  ebif : string prop option; [@option]
  ebp_audio_interval : string prop option; [@option]
  ebp_lookahead_ms : float prop option; [@option]
  ebp_placement : string prop option; [@option]
  ecm_pid : string prop option; [@option]
  es_rate_in_pes : string prop option; [@option]
  etv_platform_pid : string prop option; [@option]
  etv_signal_pid : string prop option; [@option]
  fragment_time : float prop option; [@option]
  klv : string prop option; [@option]
  klv_data_pids : string prop option; [@option]
  nielsen_id3_behavior : string prop option; [@option]
  null_packet_bitrate : float prop option; [@option]
  pat_interval : float prop option; [@option]
  pcr_control : string prop option; [@option]
  pcr_period : float prop option; [@option]
  pcr_pid : string prop option; [@option]
  pmt_interval : float prop option; [@option]
  pmt_pid : string prop option; [@option]
  program_num : float prop option; [@option]
  rate_mode : string prop option; [@option]
  scte27_pids : string prop option; [@option]
  scte35_control : string prop option; [@option]
  scte35_pid : string prop option; [@option]
  segmentation_markers : string prop option; [@option]
  segmentation_style : string prop option; [@option]
  segmentation_time : float prop option; [@option]
  timed_metadata_behavior : string prop option; [@option]
  timed_metadata_pid : string prop option; [@option]
  transport_stream_id : float prop option; [@option]
  video_pid : string prop option; [@option]
  dvb_nit_settings :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dvb_sdt_settings :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dvb_tdt_settings :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings
    =
  (function
   | {
       absent_input_audio_behavior = v_absent_input_audio_behavior;
       arib = v_arib;
       arib_captions_pid = v_arib_captions_pid;
       arib_captions_pid_control = v_arib_captions_pid_control;
       audio_buffer_model = v_audio_buffer_model;
       audio_frames_per_pes = v_audio_frames_per_pes;
       audio_pids = v_audio_pids;
       audio_stream_type = v_audio_stream_type;
       bitrate = v_bitrate;
       buffer_model = v_buffer_model;
       cc_descriptor = v_cc_descriptor;
       dvb_sub_pids = v_dvb_sub_pids;
       dvb_teletext_pid = v_dvb_teletext_pid;
       ebif = v_ebif;
       ebp_audio_interval = v_ebp_audio_interval;
       ebp_lookahead_ms = v_ebp_lookahead_ms;
       ebp_placement = v_ebp_placement;
       ecm_pid = v_ecm_pid;
       es_rate_in_pes = v_es_rate_in_pes;
       etv_platform_pid = v_etv_platform_pid;
       etv_signal_pid = v_etv_signal_pid;
       fragment_time = v_fragment_time;
       klv = v_klv;
       klv_data_pids = v_klv_data_pids;
       nielsen_id3_behavior = v_nielsen_id3_behavior;
       null_packet_bitrate = v_null_packet_bitrate;
       pat_interval = v_pat_interval;
       pcr_control = v_pcr_control;
       pcr_period = v_pcr_period;
       pcr_pid = v_pcr_pid;
       pmt_interval = v_pmt_interval;
       pmt_pid = v_pmt_pid;
       program_num = v_program_num;
       rate_mode = v_rate_mode;
       scte27_pids = v_scte27_pids;
       scte35_control = v_scte35_control;
       scte35_pid = v_scte35_pid;
       segmentation_markers = v_segmentation_markers;
       segmentation_style = v_segmentation_style;
       segmentation_time = v_segmentation_time;
       timed_metadata_behavior = v_timed_metadata_behavior;
       timed_metadata_pid = v_timed_metadata_pid;
       transport_stream_id = v_transport_stream_id;
       video_pid = v_video_pid;
       dvb_nit_settings = v_dvb_nit_settings;
       dvb_sdt_settings = v_dvb_sdt_settings;
       dvb_tdt_settings = v_dvb_tdt_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_dvb_tdt_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings)
               v_dvb_tdt_settings
           in
           let bnd = "dvb_tdt_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dvb_sdt_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings)
               v_dvb_sdt_settings
           in
           let bnd = "dvb_sdt_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dvb_nit_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings)
               v_dvb_nit_settings
           in
           let bnd = "dvb_nit_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_video_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "video_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transport_stream_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "transport_stream_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timed_metadata_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timed_metadata_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timed_metadata_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timed_metadata_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_segmentation_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "segmentation_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_segmentation_style with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "segmentation_style", arg in
             bnd :: bnds
       in
       let bnds =
         match v_segmentation_markers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "segmentation_markers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scte35_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scte35_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scte35_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scte35_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scte27_pids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scte27_pids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rate_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rate_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_program_num with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "program_num", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pmt_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pmt_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pmt_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pmt_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pcr_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pcr_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pcr_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pcr_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pcr_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pcr_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pat_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pat_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_null_packet_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "null_packet_bitrate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nielsen_id3_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nielsen_id3_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_klv_data_pids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "klv_data_pids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_klv with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "klv", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fragment_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "fragment_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_etv_signal_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "etv_signal_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_etv_platform_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "etv_platform_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_es_rate_in_pes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "es_rate_in_pes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ecm_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ecm_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ebp_placement with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ebp_placement", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ebp_lookahead_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ebp_lookahead_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ebp_audio_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ebp_audio_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ebif with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ebif", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dvb_teletext_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dvb_teletext_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dvb_sub_pids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dvb_sub_pids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cc_descriptor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cc_descriptor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffer_model with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "buffer_model", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bitrate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_stream_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_stream_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_pids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_pids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_frames_per_pes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "audio_frames_per_pes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_buffer_model with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_buffer_model", arg in
             bnd :: bnds
       in
       let bnds =
         match v_arib_captions_pid_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arib_captions_pid_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_arib_captions_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arib_captions_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_arib with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arib", arg in
             bnd :: bnds
       in
       let bnds =
         match v_absent_input_audio_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "absent_input_audio_behavior", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings = {
  m2ts_settings :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings
    =
  (function
   | { m2ts_settings = v_m2ts_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_m2ts_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings)
               v_m2ts_settings
           in
           let bnd = "m2ts_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination = {
  destination_ref_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination
    =
  (function
   | { destination_ref_id = v_destination_ref_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_ref_id
         in
         ("destination_ref_id", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings = {
  column_depth : float prop option; [@option]
  include_fec : string prop option; [@option]
  row_length : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings
    =
  (function
   | {
       column_depth = v_column_depth;
       include_fec = v_include_fec;
       row_length = v_row_length;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_row_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "row_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_fec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "include_fec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_column_depth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "column_depth", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings = {
  buffer_msec : float prop option; [@option]
  container_settings :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  fec_output_settings :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__output_groups__outputs__output_settings__udp_output_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings
    =
  (function
   | {
       buffer_msec = v_buffer_msec;
       container_settings = v_container_settings;
       destination = v_destination;
       fec_output_settings = v_fec_output_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_fec_output_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings)
               v_fec_output_settings
           in
           let bnd = "fec_output_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination)
               v_destination
           in
           let bnd = "destination", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_container_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings)
               v_container_settings
           in
           let bnd = "container_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_buffer_msec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffer_msec", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings__udp_output_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs__output_settings = {
  archive_output_settings :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  frame_capture_output_settings :
    encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hls_output_settings :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  media_package_output_settings :
    encoder_settings__output_groups__outputs__output_settings__media_package_output_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ms_smooth_output_settings :
    encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  multiplex_output_settings :
    encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rtmp_output_settings :
    encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  udp_output_settings :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : encoder_settings__output_groups__outputs__output_settings) ->
  ()

let yojson_of_encoder_settings__output_groups__outputs__output_settings
    =
  (function
   | {
       archive_output_settings = v_archive_output_settings;
       frame_capture_output_settings =
         v_frame_capture_output_settings;
       hls_output_settings = v_hls_output_settings;
       media_package_output_settings =
         v_media_package_output_settings;
       ms_smooth_output_settings = v_ms_smooth_output_settings;
       multiplex_output_settings = v_multiplex_output_settings;
       rtmp_output_settings = v_rtmp_output_settings;
       udp_output_settings = v_udp_output_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_udp_output_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__udp_output_settings)
               v_udp_output_settings
           in
           let bnd = "udp_output_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rtmp_output_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings)
               v_rtmp_output_settings
           in
           let bnd = "rtmp_output_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_multiplex_output_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings)
               v_multiplex_output_settings
           in
           let bnd = "multiplex_output_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ms_smooth_output_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings)
               v_ms_smooth_output_settings
           in
           let bnd = "ms_smooth_output_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_media_package_output_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__media_package_output_settings)
               v_media_package_output_settings
           in
           let bnd = "media_package_output_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hls_output_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__hls_output_settings)
               v_hls_output_settings
           in
           let bnd = "hls_output_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_frame_capture_output_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings)
               v_frame_capture_output_settings
           in
           let bnd = "frame_capture_output_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_archive_output_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings__archive_output_settings)
               v_archive_output_settings
           in
           let bnd = "archive_output_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs__output_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__output_groups__outputs__output_settings

[@@@deriving.end]

type encoder_settings__output_groups__outputs = {
  audio_description_names : string prop list option; [@option]
  caption_description_names : string prop list option; [@option]
  output_name : string prop option; [@option]
  video_description_name : string prop option; [@option]
  output_settings :
    encoder_settings__output_groups__outputs__output_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encoder_settings__output_groups__outputs) -> ()

let yojson_of_encoder_settings__output_groups__outputs =
  (function
   | {
       audio_description_names = v_audio_description_names;
       caption_description_names = v_caption_description_names;
       output_name = v_output_name;
       video_description_name = v_video_description_name;
       output_settings = v_output_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_output_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs__output_settings)
               v_output_settings
           in
           let bnd = "output_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_video_description_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "video_description_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_output_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_caption_description_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "caption_description_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_description_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "audio_description_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups__outputs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encoder_settings__output_groups__outputs

[@@@deriving.end]

type encoder_settings__output_groups = {
  name : string prop option; [@option]
  output_group_settings :
    encoder_settings__output_groups__output_group_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  outputs : encoder_settings__output_groups__outputs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encoder_settings__output_groups) -> ()

let yojson_of_encoder_settings__output_groups =
  (function
   | {
       name = v_name;
       output_group_settings = v_output_group_settings;
       outputs = v_outputs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_outputs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__outputs)
               v_outputs
           in
           let bnd = "outputs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_output_group_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups__output_group_settings)
               v_output_group_settings
           in
           let bnd = "output_group_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__output_groups ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encoder_settings__output_groups

[@@@deriving.end]

type encoder_settings__timecode_config = {
  source : string prop;
  sync_threshold : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encoder_settings__timecode_config) -> ()

let yojson_of_encoder_settings__timecode_config =
  (function
   | { source = v_source; sync_threshold = v_sync_threshold } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sync_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sync_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       `Assoc bnds
    : encoder_settings__timecode_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encoder_settings__timecode_config

[@@@deriving.end]

type encoder_settings__video_descriptions__codec_settings__frame_capture_settings = {
  capture_interval : float prop option; [@option]
  capture_interval_units : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__video_descriptions__codec_settings__frame_capture_settings) ->
  ()

let yojson_of_encoder_settings__video_descriptions__codec_settings__frame_capture_settings
    =
  (function
   | {
       capture_interval = v_capture_interval;
       capture_interval_units = v_capture_interval_units;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_capture_interval_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "capture_interval_units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_capture_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "capture_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__video_descriptions__codec_settings__frame_capture_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__video_descriptions__codec_settings__frame_capture_settings

[@@@deriving.end]

type encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings = {
  post_filter_sharpening : string prop option; [@option]
  strength : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings) ->
  ()

let yojson_of_encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings
    =
  (function
   | {
       post_filter_sharpening = v_post_filter_sharpening;
       strength = v_strength;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_strength with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "strength", arg in
             bnd :: bnds
       in
       let bnds =
         match v_post_filter_sharpening with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "post_filter_sharpening", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings

[@@@deriving.end]

type encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings = {
  temporal_filter_settings :
    encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings) ->
  ()

let yojson_of_encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings
    =
  (function
   | { temporal_filter_settings = v_temporal_filter_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_temporal_filter_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings)
               v_temporal_filter_settings
           in
           let bnd = "temporal_filter_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings

[@@@deriving.end]

type encoder_settings__video_descriptions__codec_settings__h264_settings = {
  adaptive_quantization : string prop option; [@option]
  afd_signaling : string prop option; [@option]
  bitrate : float prop option; [@option]
  buf_fill_pct : float prop option; [@option]
  buf_size : float prop option; [@option]
  color_metadata : string prop option; [@option]
  entropy_encoding : string prop option; [@option]
  fixed_afd : string prop option; [@option]
  flicker_aq : string prop option; [@option]
  force_field_pictures : string prop option; [@option]
  framerate_control : string prop option; [@option]
  framerate_denominator : float prop option; [@option]
  framerate_numerator : float prop option; [@option]
  gop_b_reference : string prop option; [@option]
  gop_closed_cadence : float prop option; [@option]
  gop_num_b_frames : float prop option; [@option]
  gop_size : float prop option; [@option]
  gop_size_units : string prop option; [@option]
  level : string prop option; [@option]
  look_ahead_rate_control : string prop option; [@option]
  max_bitrate : float prop option; [@option]
  min_i_interval : float prop option; [@option]
  num_ref_frames : float prop option; [@option]
  par_control : string prop option; [@option]
  par_denominator : float prop option; [@option]
  par_numerator : float prop option; [@option]
  profile : string prop option; [@option]
  quality_level : string prop option; [@option]
  qvbr_quality_level : float prop option; [@option]
  rate_control_mode : string prop option; [@option]
  scan_type : string prop option; [@option]
  scene_change_detect : string prop option; [@option]
  slices : float prop option; [@option]
  softness : float prop option; [@option]
  spatial_aq : string prop option; [@option]
  subgop_length : string prop option; [@option]
  syntax : string prop option; [@option]
  temporal_aq : string prop option; [@option]
  timecode_insertion : string prop option; [@option]
  filter_settings :
    encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__video_descriptions__codec_settings__h264_settings) ->
  ()

let yojson_of_encoder_settings__video_descriptions__codec_settings__h264_settings
    =
  (function
   | {
       adaptive_quantization = v_adaptive_quantization;
       afd_signaling = v_afd_signaling;
       bitrate = v_bitrate;
       buf_fill_pct = v_buf_fill_pct;
       buf_size = v_buf_size;
       color_metadata = v_color_metadata;
       entropy_encoding = v_entropy_encoding;
       fixed_afd = v_fixed_afd;
       flicker_aq = v_flicker_aq;
       force_field_pictures = v_force_field_pictures;
       framerate_control = v_framerate_control;
       framerate_denominator = v_framerate_denominator;
       framerate_numerator = v_framerate_numerator;
       gop_b_reference = v_gop_b_reference;
       gop_closed_cadence = v_gop_closed_cadence;
       gop_num_b_frames = v_gop_num_b_frames;
       gop_size = v_gop_size;
       gop_size_units = v_gop_size_units;
       level = v_level;
       look_ahead_rate_control = v_look_ahead_rate_control;
       max_bitrate = v_max_bitrate;
       min_i_interval = v_min_i_interval;
       num_ref_frames = v_num_ref_frames;
       par_control = v_par_control;
       par_denominator = v_par_denominator;
       par_numerator = v_par_numerator;
       profile = v_profile;
       quality_level = v_quality_level;
       qvbr_quality_level = v_qvbr_quality_level;
       rate_control_mode = v_rate_control_mode;
       scan_type = v_scan_type;
       scene_change_detect = v_scene_change_detect;
       slices = v_slices;
       softness = v_softness;
       spatial_aq = v_spatial_aq;
       subgop_length = v_subgop_length;
       syntax = v_syntax;
       temporal_aq = v_temporal_aq;
       timecode_insertion = v_timecode_insertion;
       filter_settings = v_filter_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_filter_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings)
               v_filter_settings
           in
           let bnd = "filter_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timecode_insertion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timecode_insertion", arg in
             bnd :: bnds
       in
       let bnds =
         match v_temporal_aq with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "temporal_aq", arg in
             bnd :: bnds
       in
       let bnds =
         match v_syntax with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "syntax", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subgop_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subgop_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_spatial_aq with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spatial_aq", arg in
             bnd :: bnds
       in
       let bnds =
         match v_softness with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "softness", arg in
             bnd :: bnds
       in
       let bnds =
         match v_slices with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "slices", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scene_change_detect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scene_change_detect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scan_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scan_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rate_control_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rate_control_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_qvbr_quality_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "qvbr_quality_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_quality_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "quality_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "profile", arg in
             bnd :: bnds
       in
       let bnds =
         match v_par_numerator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "par_numerator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_par_denominator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "par_denominator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_par_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "par_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_ref_frames with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_ref_frames", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_i_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_i_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_bitrate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_look_ahead_rate_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "look_ahead_rate_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gop_size_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gop_size_units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gop_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "gop_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gop_num_b_frames with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "gop_num_b_frames", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gop_closed_cadence with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "gop_closed_cadence", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gop_b_reference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gop_b_reference", arg in
             bnd :: bnds
       in
       let bnds =
         match v_framerate_numerator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "framerate_numerator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_framerate_denominator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "framerate_denominator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_framerate_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "framerate_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_field_pictures with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "force_field_pictures", arg in
             bnd :: bnds
       in
       let bnds =
         match v_flicker_aq with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "flicker_aq", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fixed_afd with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fixed_afd", arg in
             bnd :: bnds
       in
       let bnds =
         match v_entropy_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "entropy_encoding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_color_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "color_metadata", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buf_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buf_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buf_fill_pct with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buf_fill_pct", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bitrate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_afd_signaling with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "afd_signaling", arg in
             bnd :: bnds
       in
       let bnds =
         match v_adaptive_quantization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "adaptive_quantization", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__video_descriptions__codec_settings__h264_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__video_descriptions__codec_settings__h264_settings

[@@@deriving.end]

type encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__color_space_passthrough_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__color_space_passthrough_settings) ->
  ()

let yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__color_space_passthrough_settings
    =
  (yojson_of_unit
    : encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__color_space_passthrough_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__color_space_passthrough_settings

[@@@deriving.end]

type encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__dolby_vision81_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__dolby_vision81_settings) ->
  ()

let yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__dolby_vision81_settings
    =
  (yojson_of_unit
    : encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__dolby_vision81_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__dolby_vision81_settings

[@@@deriving.end]

type encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings = {
  max_cll : float prop option; [@option]
  max_fall : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings) ->
  ()

let yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings
    =
  (function
   | { max_cll = v_max_cll; max_fall = v_max_fall } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_fall with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_fall", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_cll with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_cll", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings

[@@@deriving.end]

type encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec601_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec601_settings) ->
  ()

let yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec601_settings
    =
  (yojson_of_unit
    : encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec601_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec601_settings

[@@@deriving.end]

type encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec709_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec709_settings) ->
  ()

let yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec709_settings
    =
  (yojson_of_unit
    : encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec709_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec709_settings

[@@@deriving.end]

type encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings = {
  color_space_passthrough_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__color_space_passthrough_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dolby_vision81_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__dolby_vision81_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hdr10_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rec601_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec601_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rec709_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec709_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings) ->
  ()

let yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings
    =
  (function
   | {
       color_space_passthrough_settings =
         v_color_space_passthrough_settings;
       dolby_vision81_settings = v_dolby_vision81_settings;
       hdr10_settings = v_hdr10_settings;
       rec601_settings = v_rec601_settings;
       rec709_settings = v_rec709_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rec709_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec709_settings)
               v_rec709_settings
           in
           let bnd = "rec709_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rec601_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec601_settings)
               v_rec601_settings
           in
           let bnd = "rec601_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hdr10_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings)
               v_hdr10_settings
           in
           let bnd = "hdr10_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dolby_vision81_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__dolby_vision81_settings)
               v_dolby_vision81_settings
           in
           let bnd = "dolby_vision81_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_color_space_passthrough_settings then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__color_space_passthrough_settings)
               v_color_space_passthrough_settings
           in
           let bnd = "color_space_passthrough_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings

[@@@deriving.end]

type encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings = {
  post_filter_sharpening : string prop option; [@option]
  strength : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings) ->
  ()

let yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings
    =
  (function
   | {
       post_filter_sharpening = v_post_filter_sharpening;
       strength = v_strength;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_strength with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "strength", arg in
             bnd :: bnds
       in
       let bnds =
         match v_post_filter_sharpening with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "post_filter_sharpening", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings

[@@@deriving.end]

type encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings = {
  temporal_filter_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings) ->
  ()

let yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings
    =
  (function
   | { temporal_filter_settings = v_temporal_filter_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_temporal_filter_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings)
               v_temporal_filter_settings
           in
           let bnd = "temporal_filter_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings

[@@@deriving.end]

type encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings = {
  prefix : string prop option; [@option]
  timecode_burnin_font_size : string prop option; [@option]
  timecode_burnin_position : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings) ->
  ()

let yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings
    =
  (function
   | {
       prefix = v_prefix;
       timecode_burnin_font_size = v_timecode_burnin_font_size;
       timecode_burnin_position = v_timecode_burnin_position;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timecode_burnin_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timecode_burnin_position", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timecode_burnin_font_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timecode_burnin_font_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings

[@@@deriving.end]

type encoder_settings__video_descriptions__codec_settings__h265_settings = {
  adaptive_quantization : string prop option; [@option]
  afd_signaling : string prop option; [@option]
  alternative_transfer_function : string prop option; [@option]
  bitrate : float prop;
  buf_size : float prop option; [@option]
  color_metadata : string prop option; [@option]
  fixed_afd : string prop option; [@option]
  flicker_aq : string prop option; [@option]
  framerate_denominator : float prop;
  framerate_numerator : float prop;
  gop_closed_cadence : float prop option; [@option]
  gop_size : float prop option; [@option]
  gop_size_units : string prop option; [@option]
  level : string prop option; [@option]
  look_ahead_rate_control : string prop option; [@option]
  max_bitrate : float prop option; [@option]
  min_i_interval : float prop option; [@option]
  par_denominator : float prop option; [@option]
  par_numerator : float prop option; [@option]
  profile : string prop option; [@option]
  qvbr_quality_level : float prop option; [@option]
  rate_control_mode : string prop option; [@option]
  scan_type : string prop option; [@option]
  scene_change_detect : string prop option; [@option]
  slices : float prop option; [@option]
  tier : string prop option; [@option]
  timecode_insertion : string prop option; [@option]
  color_space_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  filter_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timecode_burnin_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       encoder_settings__video_descriptions__codec_settings__h265_settings) ->
  ()

let yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings
    =
  (function
   | {
       adaptive_quantization = v_adaptive_quantization;
       afd_signaling = v_afd_signaling;
       alternative_transfer_function =
         v_alternative_transfer_function;
       bitrate = v_bitrate;
       buf_size = v_buf_size;
       color_metadata = v_color_metadata;
       fixed_afd = v_fixed_afd;
       flicker_aq = v_flicker_aq;
       framerate_denominator = v_framerate_denominator;
       framerate_numerator = v_framerate_numerator;
       gop_closed_cadence = v_gop_closed_cadence;
       gop_size = v_gop_size;
       gop_size_units = v_gop_size_units;
       level = v_level;
       look_ahead_rate_control = v_look_ahead_rate_control;
       max_bitrate = v_max_bitrate;
       min_i_interval = v_min_i_interval;
       par_denominator = v_par_denominator;
       par_numerator = v_par_numerator;
       profile = v_profile;
       qvbr_quality_level = v_qvbr_quality_level;
       rate_control_mode = v_rate_control_mode;
       scan_type = v_scan_type;
       scene_change_detect = v_scene_change_detect;
       slices = v_slices;
       tier = v_tier;
       timecode_insertion = v_timecode_insertion;
       color_space_settings = v_color_space_settings;
       filter_settings = v_filter_settings;
       timecode_burnin_settings = v_timecode_burnin_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_timecode_burnin_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings)
               v_timecode_burnin_settings
           in
           let bnd = "timecode_burnin_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_filter_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings)
               v_filter_settings
           in
           let bnd = "filter_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_color_space_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings)
               v_color_space_settings
           in
           let bnd = "color_space_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timecode_insertion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timecode_insertion", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_slices with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "slices", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scene_change_detect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scene_change_detect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scan_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scan_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rate_control_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rate_control_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_qvbr_quality_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "qvbr_quality_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "profile", arg in
             bnd :: bnds
       in
       let bnds =
         match v_par_numerator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "par_numerator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_par_denominator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "par_denominator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_i_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_i_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_bitrate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_look_ahead_rate_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "look_ahead_rate_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gop_size_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gop_size_units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gop_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "gop_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gop_closed_cadence with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "gop_closed_cadence", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_framerate_numerator
         in
         ("framerate_numerator", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_framerate_denominator
         in
         ("framerate_denominator", arg) :: bnds
       in
       let bnds =
         match v_flicker_aq with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "flicker_aq", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fixed_afd with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fixed_afd", arg in
             bnd :: bnds
       in
       let bnds =
         match v_color_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "color_metadata", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buf_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buf_size", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_bitrate in
         ("bitrate", arg) :: bnds
       in
       let bnds =
         match v_alternative_transfer_function with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alternative_transfer_function", arg in
             bnd :: bnds
       in
       let bnds =
         match v_afd_signaling with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "afd_signaling", arg in
             bnd :: bnds
       in
       let bnds =
         match v_adaptive_quantization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "adaptive_quantization", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__video_descriptions__codec_settings__h265_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings

[@@@deriving.end]

type encoder_settings__video_descriptions__codec_settings = {
  frame_capture_settings :
    encoder_settings__video_descriptions__codec_settings__frame_capture_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  h264_settings :
    encoder_settings__video_descriptions__codec_settings__h264_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  h265_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : encoder_settings__video_descriptions__codec_settings) -> ()

let yojson_of_encoder_settings__video_descriptions__codec_settings =
  (function
   | {
       frame_capture_settings = v_frame_capture_settings;
       h264_settings = v_h264_settings;
       h265_settings = v_h265_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_h265_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__video_descriptions__codec_settings__h265_settings)
               v_h265_settings
           in
           let bnd = "h265_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_h264_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__video_descriptions__codec_settings__h264_settings)
               v_h264_settings
           in
           let bnd = "h264_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_frame_capture_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__video_descriptions__codec_settings__frame_capture_settings)
               v_frame_capture_settings
           in
           let bnd = "frame_capture_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__video_descriptions__codec_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_encoder_settings__video_descriptions__codec_settings

[@@@deriving.end]

type encoder_settings__video_descriptions = {
  height : float prop option; [@option]
  name : string prop;
  respond_to_afd : string prop option; [@option]
  scaling_behavior : string prop option; [@option]
  sharpness : float prop option; [@option]
  width : float prop option; [@option]
  codec_settings :
    encoder_settings__video_descriptions__codec_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encoder_settings__video_descriptions) -> ()

let yojson_of_encoder_settings__video_descriptions =
  (function
   | {
       height = v_height;
       name = v_name;
       respond_to_afd = v_respond_to_afd;
       scaling_behavior = v_scaling_behavior;
       sharpness = v_sharpness;
       width = v_width;
       codec_settings = v_codec_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_codec_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__video_descriptions__codec_settings)
               v_codec_settings
           in
           let bnd = "codec_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_width with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "width", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sharpness with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sharpness", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scaling_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scaling_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_respond_to_afd with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "respond_to_afd", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_height with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "height", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings__video_descriptions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encoder_settings__video_descriptions

[@@@deriving.end]

type encoder_settings = {
  audio_descriptions : encoder_settings__audio_descriptions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  avail_blanking : encoder_settings__avail_blanking list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  caption_descriptions : encoder_settings__caption_descriptions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  global_configuration : encoder_settings__global_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  motion_graphics_configuration :
    encoder_settings__motion_graphics_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  nielsen_configuration :
    encoder_settings__nielsen_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  output_groups : encoder_settings__output_groups list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timecode_config : encoder_settings__timecode_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  video_descriptions : encoder_settings__video_descriptions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encoder_settings) -> ()

let yojson_of_encoder_settings =
  (function
   | {
       audio_descriptions = v_audio_descriptions;
       avail_blanking = v_avail_blanking;
       caption_descriptions = v_caption_descriptions;
       global_configuration = v_global_configuration;
       motion_graphics_configuration =
         v_motion_graphics_configuration;
       nielsen_configuration = v_nielsen_configuration;
       output_groups = v_output_groups;
       timecode_config = v_timecode_config;
       video_descriptions = v_video_descriptions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_video_descriptions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__video_descriptions)
               v_video_descriptions
           in
           let bnd = "video_descriptions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_timecode_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__timecode_config)
               v_timecode_config
           in
           let bnd = "timecode_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_output_groups then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__output_groups)
               v_output_groups
           in
           let bnd = "output_groups", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_nielsen_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__nielsen_configuration)
               v_nielsen_configuration
           in
           let bnd = "nielsen_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_motion_graphics_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__motion_graphics_configuration)
               v_motion_graphics_configuration
           in
           let bnd = "motion_graphics_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_global_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__global_configuration)
               v_global_configuration
           in
           let bnd = "global_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_caption_descriptions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__caption_descriptions)
               v_caption_descriptions
           in
           let bnd = "caption_descriptions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_avail_blanking then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__avail_blanking)
               v_avail_blanking
           in
           let bnd = "avail_blanking", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_audio_descriptions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_encoder_settings__audio_descriptions)
               v_audio_descriptions
           in
           let bnd = "audio_descriptions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encoder_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encoder_settings

[@@@deriving.end]

type input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings = {
  audio_selector_name : string prop;
  audio_silence_threshold_msec : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings) ->
  ()

let yojson_of_input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings
    =
  (function
   | {
       audio_selector_name = v_audio_selector_name;
       audio_silence_threshold_msec = v_audio_silence_threshold_msec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_audio_silence_threshold_msec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "audio_silence_threshold_msec", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_audio_selector_name
         in
         ("audio_selector_name", arg) :: bnds
       in
       `Assoc bnds
    : input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings

[@@@deriving.end]

type input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings = {
  input_loss_threshold_msec : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings) ->
  ()

let yojson_of_input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings
    =
  (function
   | { input_loss_threshold_msec = v_input_loss_threshold_msec } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_input_loss_threshold_msec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "input_loss_threshold_msec", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings

[@@@deriving.end]

type input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings = {
  black_detect_threshold : float prop option; [@option]
  video_black_threshold_msec : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings) ->
  ()

let yojson_of_input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings
    =
  (function
   | {
       black_detect_threshold = v_black_detect_threshold;
       video_black_threshold_msec = v_video_black_threshold_msec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_video_black_threshold_msec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "video_black_threshold_msec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_black_detect_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "black_detect_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings

[@@@deriving.end]

type input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings = {
  audio_silence_settings :
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  input_loss_settings :
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  video_black_settings :
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings) ->
  ()

let yojson_of_input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings
    =
  (function
   | {
       audio_silence_settings = v_audio_silence_settings;
       input_loss_settings = v_input_loss_settings;
       video_black_settings = v_video_black_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_video_black_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings)
               v_video_black_settings
           in
           let bnd = "video_black_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_input_loss_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings)
               v_input_loss_settings
           in
           let bnd = "input_loss_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_audio_silence_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings)
               v_audio_silence_settings
           in
           let bnd = "audio_silence_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings

[@@@deriving.end]

type input_attachments__automatic_input_failover_settings__failover_condition = {
  failover_condition_settings :
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__automatic_input_failover_settings__failover_condition) ->
  ()

let yojson_of_input_attachments__automatic_input_failover_settings__failover_condition
    =
  (function
   | { failover_condition_settings = v_failover_condition_settings }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_failover_condition_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings)
               v_failover_condition_settings
           in
           let bnd = "failover_condition_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__automatic_input_failover_settings__failover_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__automatic_input_failover_settings__failover_condition

[@@@deriving.end]

type input_attachments__automatic_input_failover_settings = {
  error_clear_time_msec : float prop option; [@option]
  input_preference : string prop option; [@option]
  secondary_input_id : string prop;
  failover_condition :
    input_attachments__automatic_input_failover_settings__failover_condition
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : input_attachments__automatic_input_failover_settings) -> ()

let yojson_of_input_attachments__automatic_input_failover_settings =
  (function
   | {
       error_clear_time_msec = v_error_clear_time_msec;
       input_preference = v_input_preference;
       secondary_input_id = v_secondary_input_id;
       failover_condition = v_failover_condition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_failover_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__automatic_input_failover_settings__failover_condition)
               v_failover_condition
           in
           let bnd = "failover_condition", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secondary_input_id
         in
         ("secondary_input_id", arg) :: bnds
       in
       let bnds =
         match v_input_preference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_preference", arg in
             bnd :: bnds
       in
       let bnds =
         match v_error_clear_time_msec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "error_clear_time_msec", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__automatic_input_failover_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__automatic_input_failover_settings

[@@@deriving.end]

type input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection = {
  group_id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection) ->
  ()

let yojson_of_input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection
    =
  (function
   | { group_id = v_group_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group_id in
         ("group_id", arg) :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection

[@@@deriving.end]

type input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection = {
  language_code : string prop;
  language_selection_policy : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection) ->
  ()

let yojson_of_input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection
    =
  (function
   | {
       language_code = v_language_code;
       language_selection_policy = v_language_selection_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_language_selection_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language_selection_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_language_code in
         ("language_code", arg) :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection

[@@@deriving.end]

type input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection = {
  pid : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection) ->
  ()

let yojson_of_input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection
    =
  (function
   | { pid = v_pid } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_pid in
         ("pid", arg) :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection

[@@@deriving.end]

type input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode = {
  program_selection : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode) ->
  ()

let yojson_of_input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode
    =
  (function
   | { program_selection = v_program_selection } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_program_selection
         in
         ("program_selection", arg) :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode

[@@@deriving.end]

type input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks = {
  track : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks) ->
  ()

let yojson_of_input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks
    =
  (function
   | { track = v_track } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_track in
         ("track", arg) :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks

[@@@deriving.end]

type input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection = {
  dolby_e_decode :
    input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tracks :
    input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection) ->
  ()

let yojson_of_input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection
    =
  (function
   | { dolby_e_decode = v_dolby_e_decode; tracks = v_tracks } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tracks then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks)
               v_tracks
           in
           let bnd = "tracks", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dolby_e_decode then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode)
               v_dolby_e_decode
           in
           let bnd = "dolby_e_decode", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection

[@@@deriving.end]

type input_attachments__input_settings__audio_selector__selector_settings = {
  audio_hls_rendition_selection :
    input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  audio_language_selection :
    input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  audio_pid_selection :
    input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  audio_track_selection :
    input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__input_settings__audio_selector__selector_settings) ->
  ()

let yojson_of_input_attachments__input_settings__audio_selector__selector_settings
    =
  (function
   | {
       audio_hls_rendition_selection =
         v_audio_hls_rendition_selection;
       audio_language_selection = v_audio_language_selection;
       audio_pid_selection = v_audio_pid_selection;
       audio_track_selection = v_audio_track_selection;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_audio_track_selection then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection)
               v_audio_track_selection
           in
           let bnd = "audio_track_selection", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_audio_pid_selection then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection)
               v_audio_pid_selection
           in
           let bnd = "audio_pid_selection", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_audio_language_selection then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection)
               v_audio_language_selection
           in
           let bnd = "audio_language_selection", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_audio_hls_rendition_selection then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection)
               v_audio_hls_rendition_selection
           in
           let bnd = "audio_hls_rendition_selection", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__audio_selector__selector_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__input_settings__audio_selector__selector_settings

[@@@deriving.end]

type input_attachments__input_settings__audio_selector = {
  name : string prop;
  selector_settings :
    input_attachments__input_settings__audio_selector__selector_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : input_attachments__input_settings__audio_selector) -> ()

let yojson_of_input_attachments__input_settings__audio_selector =
  (function
   | { name = v_name; selector_settings = v_selector_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_selector_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__audio_selector__selector_settings)
               v_selector_settings
           in
           let bnd = "selector_settings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__audio_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_attachments__input_settings__audio_selector

[@@@deriving.end]

type input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings = {
  source_ancillary_channel_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings) ->
  ()

let yojson_of_input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings
    =
  (function
   | {
       source_ancillary_channel_number =
         v_source_ancillary_channel_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_ancillary_channel_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "source_ancillary_channel_number", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings

[@@@deriving.end]

type input_attachments__input_settings__caption_selector__selector_settings__arib_source_settings =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__input_settings__caption_selector__selector_settings__arib_source_settings) ->
  ()

let yojson_of_input_attachments__input_settings__caption_selector__selector_settings__arib_source_settings
    =
  (yojson_of_unit
    : input_attachments__input_settings__caption_selector__selector_settings__arib_source_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__input_settings__caption_selector__selector_settings__arib_source_settings

[@@@deriving.end]

type input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings = {
  ocr_language : string prop option; [@option]
  pid : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings) ->
  ()

let yojson_of_input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings
    =
  (function
   | { ocr_language = v_ocr_language; pid = v_pid } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ocr_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ocr_language", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings

[@@@deriving.end]

type input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings = {
  convert_608_to_708 : string prop option; [@option]
  scte20_detection : string prop option; [@option]
  source_608_channel_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings) ->
  ()

let yojson_of_input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings
    =
  (function
   | {
       convert_608_to_708 = v_convert_608_to_708;
       scte20_detection = v_scte20_detection;
       source_608_channel_number = v_source_608_channel_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_608_channel_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "source_608_channel_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scte20_detection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scte20_detection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_convert_608_to_708 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "convert_608_to_708", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings

[@@@deriving.end]

type input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings = {
  convert_608_to_708 : string prop option; [@option]
  source_608_channel_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings) ->
  ()

let yojson_of_input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings
    =
  (function
   | {
       convert_608_to_708 = v_convert_608_to_708;
       source_608_channel_number = v_source_608_channel_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_608_channel_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "source_608_channel_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_convert_608_to_708 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "convert_608_to_708", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings

[@@@deriving.end]

type input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings = {
  ocr_language : string prop option; [@option]
  pid : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings) ->
  ()

let yojson_of_input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings
    =
  (function
   | { ocr_language = v_ocr_language; pid = v_pid } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ocr_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ocr_language", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings

[@@@deriving.end]

type input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle = {
  height : float prop;
  left_offset : float prop;
  top_offset : float prop;
  width : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle) ->
  ()

let yojson_of_input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle
    =
  (function
   | {
       height = v_height;
       left_offset = v_left_offset;
       top_offset = v_top_offset;
       width = v_width;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_width in
         ("width", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_top_offset in
         ("top_offset", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_left_offset in
         ("left_offset", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_height in
         ("height", arg) :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle

[@@@deriving.end]

type input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings = {
  page_number : string prop option; [@option]
  output_rectangle :
    input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings) ->
  ()

let yojson_of_input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings
    =
  (function
   | {
       page_number = v_page_number;
       output_rectangle = v_output_rectangle;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_output_rectangle then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle)
               v_output_rectangle
           in
           let bnd = "output_rectangle", arg in
           bnd :: bnds
       in
       let bnds =
         match v_page_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "page_number", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings

[@@@deriving.end]

type input_attachments__input_settings__caption_selector__selector_settings = {
  ancillary_source_settings :
    input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  arib_source_settings :
    input_attachments__input_settings__caption_selector__selector_settings__arib_source_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dvb_sub_source_settings :
    input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  embedded_source_settings :
    input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scte20_source_settings :
    input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scte27_source_settings :
    input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  teletext_source_settings :
    input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__input_settings__caption_selector__selector_settings) ->
  ()

let yojson_of_input_attachments__input_settings__caption_selector__selector_settings
    =
  (function
   | {
       ancillary_source_settings = v_ancillary_source_settings;
       arib_source_settings = v_arib_source_settings;
       dvb_sub_source_settings = v_dvb_sub_source_settings;
       embedded_source_settings = v_embedded_source_settings;
       scte20_source_settings = v_scte20_source_settings;
       scte27_source_settings = v_scte27_source_settings;
       teletext_source_settings = v_teletext_source_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_teletext_source_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings)
               v_teletext_source_settings
           in
           let bnd = "teletext_source_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scte27_source_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings)
               v_scte27_source_settings
           in
           let bnd = "scte27_source_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scte20_source_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings)
               v_scte20_source_settings
           in
           let bnd = "scte20_source_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_embedded_source_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings)
               v_embedded_source_settings
           in
           let bnd = "embedded_source_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dvb_sub_source_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings)
               v_dvb_sub_source_settings
           in
           let bnd = "dvb_sub_source_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_arib_source_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__caption_selector__selector_settings__arib_source_settings)
               v_arib_source_settings
           in
           let bnd = "arib_source_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ancillary_source_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings)
               v_ancillary_source_settings
           in
           let bnd = "ancillary_source_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__caption_selector__selector_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__input_settings__caption_selector__selector_settings

[@@@deriving.end]

type input_attachments__input_settings__caption_selector = {
  language_code : string prop option; [@option]
  name : string prop;
  selector_settings :
    input_attachments__input_settings__caption_selector__selector_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : input_attachments__input_settings__caption_selector) -> ()

let yojson_of_input_attachments__input_settings__caption_selector =
  (function
   | {
       language_code = v_language_code;
       name = v_name;
       selector_settings = v_selector_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_selector_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__caption_selector__selector_settings)
               v_selector_settings
           in
           let bnd = "selector_settings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_language_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language_code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__caption_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_attachments__input_settings__caption_selector

[@@@deriving.end]

type input_attachments__input_settings__network_input_settings__hls_input_settings = {
  bandwidth : float prop option; [@option]
  buffer_segments : float prop option; [@option]
  retries : float prop option; [@option]
  retry_interval : float prop option; [@option]
  scte35_source : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       input_attachments__input_settings__network_input_settings__hls_input_settings) ->
  ()

let yojson_of_input_attachments__input_settings__network_input_settings__hls_input_settings
    =
  (function
   | {
       bandwidth = v_bandwidth;
       buffer_segments = v_buffer_segments;
       retries = v_retries;
       retry_interval = v_retry_interval;
       scte35_source = v_scte35_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_scte35_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scte35_source", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retry_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retry_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffer_segments with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "buffer_segments", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bandwidth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bandwidth", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__network_input_settings__hls_input_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__input_settings__network_input_settings__hls_input_settings

[@@@deriving.end]

type input_attachments__input_settings__network_input_settings = {
  server_validation : string prop option; [@option]
  hls_input_settings :
    input_attachments__input_settings__network_input_settings__hls_input_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : input_attachments__input_settings__network_input_settings) ->
  ()

let yojson_of_input_attachments__input_settings__network_input_settings
    =
  (function
   | {
       server_validation = v_server_validation;
       hls_input_settings = v_hls_input_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_hls_input_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__network_input_settings__hls_input_settings)
               v_hls_input_settings
           in
           let bnd = "hls_input_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_server_validation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "server_validation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__network_input_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_input_attachments__input_settings__network_input_settings

[@@@deriving.end]

type input_attachments__input_settings__video_selector = {
  color_space : string prop option; [@option]
  color_space_usage : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : input_attachments__input_settings__video_selector) -> ()

let yojson_of_input_attachments__input_settings__video_selector =
  (function
   | {
       color_space = v_color_space;
       color_space_usage = v_color_space_usage;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_color_space_usage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "color_space_usage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_color_space with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "color_space", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings__video_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_attachments__input_settings__video_selector

[@@@deriving.end]

type input_attachments__input_settings = {
  deblock_filter : string prop option; [@option]
  denoise_filter : string prop option; [@option]
  filter_strength : float prop option; [@option]
  input_filter : string prop option; [@option]
  scte35_pid : float prop option; [@option]
  smpte2038_data_preference : string prop option; [@option]
  source_end_behavior : string prop option; [@option]
  audio_selector :
    input_attachments__input_settings__audio_selector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  caption_selector :
    input_attachments__input_settings__caption_selector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_input_settings :
    input_attachments__input_settings__network_input_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  video_selector :
    input_attachments__input_settings__video_selector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input_attachments__input_settings) -> ()

let yojson_of_input_attachments__input_settings =
  (function
   | {
       deblock_filter = v_deblock_filter;
       denoise_filter = v_denoise_filter;
       filter_strength = v_filter_strength;
       input_filter = v_input_filter;
       scte35_pid = v_scte35_pid;
       smpte2038_data_preference = v_smpte2038_data_preference;
       source_end_behavior = v_source_end_behavior;
       audio_selector = v_audio_selector;
       caption_selector = v_caption_selector;
       network_input_settings = v_network_input_settings;
       video_selector = v_video_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_video_selector then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__video_selector)
               v_video_selector
           in
           let bnd = "video_selector", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_input_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__network_input_settings)
               v_network_input_settings
           in
           let bnd = "network_input_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_caption_selector then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__caption_selector)
               v_caption_selector
           in
           let bnd = "caption_selector", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_audio_selector then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings__audio_selector)
               v_audio_selector
           in
           let bnd = "audio_selector", arg in
           bnd :: bnds
       in
       let bnds =
         match v_source_end_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_end_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_smpte2038_data_preference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "smpte2038_data_preference", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scte35_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scte35_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_input_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter_strength with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "filter_strength", arg in
             bnd :: bnds
       in
       let bnds =
         match v_denoise_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "denoise_filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deblock_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deblock_filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_attachments__input_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_attachments__input_settings

[@@@deriving.end]

type input_attachments = {
  input_attachment_name : string prop;
  input_id : string prop;
  automatic_input_failover_settings :
    input_attachments__automatic_input_failover_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  input_settings : input_attachments__input_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input_attachments) -> ()

let yojson_of_input_attachments =
  (function
   | {
       input_attachment_name = v_input_attachment_name;
       input_id = v_input_id;
       automatic_input_failover_settings =
         v_automatic_input_failover_settings;
       input_settings = v_input_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_input_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__input_settings)
               v_input_settings
           in
           let bnd = "input_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_automatic_input_failover_settings then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_input_attachments__automatic_input_failover_settings)
               v_automatic_input_failover_settings
           in
           let bnd = "automatic_input_failover_settings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_input_id in
         ("input_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_input_attachment_name
         in
         ("input_attachment_name", arg) :: bnds
       in
       `Assoc bnds
    : input_attachments -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_attachments

[@@@deriving.end]

type input_specification = {
  codec : string prop;
  input_resolution : string prop;
  maximum_bitrate : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input_specification) -> ()

let yojson_of_input_specification =
  (function
   | {
       codec = v_codec;
       input_resolution = v_input_resolution;
       maximum_bitrate = v_maximum_bitrate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_maximum_bitrate
         in
         ("maximum_bitrate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_input_resolution
         in
         ("input_resolution", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_codec in
         ("codec", arg) :: bnds
       in
       `Assoc bnds
    : input_specification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_specification

[@@@deriving.end]

type maintenance = {
  maintenance_day : string prop;
  maintenance_start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance) -> ()

let yojson_of_maintenance =
  (function
   | {
       maintenance_day = v_maintenance_day;
       maintenance_start_time = v_maintenance_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_maintenance_start_time
         in
         ("maintenance_start_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_maintenance_day
         in
         ("maintenance_day", arg) :: bnds
       in
       `Assoc bnds
    : maintenance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type vpc = {
  public_address_allocation_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  security_group_ids : string prop list option; [@option]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc) -> ()

let yojson_of_vpc =
  (function
   | {
       public_address_allocation_ids =
         v_public_address_allocation_ids;
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_public_address_allocation_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_public_address_allocation_ids
           in
           let bnd = "public_address_allocation_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : vpc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc

[@@@deriving.end]

type aws_medialive_channel = {
  channel_class : string prop;
  id : string prop option; [@option]
  log_level : string prop option; [@option]
  name : string prop;
  role_arn : string prop option; [@option]
  start_channel : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  cdi_input_specification : cdi_input_specification list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destinations : destinations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  encoder_settings : encoder_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  input_attachments : input_attachments list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  input_specification : input_specification list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  maintenance : maintenance list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  vpc : vpc list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_medialive_channel) -> ()

let yojson_of_aws_medialive_channel =
  (function
   | {
       channel_class = v_channel_class;
       id = v_id;
       log_level = v_log_level;
       name = v_name;
       role_arn = v_role_arn;
       start_channel = v_start_channel;
       tags = v_tags;
       tags_all = v_tags_all;
       cdi_input_specification = v_cdi_input_specification;
       destinations = v_destinations;
       encoder_settings = v_encoder_settings;
       input_attachments = v_input_attachments;
       input_specification = v_input_specification;
       maintenance = v_maintenance;
       timeouts = v_timeouts;
       vpc = v_vpc;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc then bnds
         else
           let arg = (yojson_of_list yojson_of_vpc) v_vpc in
           let bnd = "vpc", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_maintenance then bnds
         else
           let arg =
             (yojson_of_list yojson_of_maintenance) v_maintenance
           in
           let bnd = "maintenance", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_input_specification then bnds
         else
           let arg =
             (yojson_of_list yojson_of_input_specification)
               v_input_specification
           in
           let bnd = "input_specification", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_input_attachments then bnds
         else
           let arg =
             (yojson_of_list yojson_of_input_attachments)
               v_input_attachments
           in
           let bnd = "input_attachments", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encoder_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encoder_settings)
               v_encoder_settings
           in
           let bnd = "encoder_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destinations then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destinations) v_destinations
           in
           let bnd = "destinations", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cdi_input_specification then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cdi_input_specification)
               v_cdi_input_specification
           in
           let bnd = "cdi_input_specification", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_channel with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "start_channel", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_log_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_level", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_channel_class in
         ("channel_class", arg) :: bnds
       in
       `Assoc bnds
    : aws_medialive_channel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_medialive_channel

[@@@deriving.end]

let cdi_input_specification ~resolution () : cdi_input_specification
    =
  { resolution }

let destinations__media_package_settings ~channel_id () :
    destinations__media_package_settings =
  { channel_id }

let destinations__multiplex_settings ~multiplex_id ~program_name () :
    destinations__multiplex_settings =
  { multiplex_id; program_name }

let destinations__settings ?password_param ?stream_name ?url
    ?username () : destinations__settings =
  { password_param; stream_name; url; username }

let destinations ?(multiplex_settings = []) ~id
    ~media_package_settings ~settings () : destinations =
  { id; media_package_settings; multiplex_settings; settings }

let encoder_settings__audio_descriptions__audio_normalization_settings
    ?algorithm ?algorithm_control ?target_lkfs () :
    encoder_settings__audio_descriptions__audio_normalization_settings
    =
  { algorithm; algorithm_control; target_lkfs }

let encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings
    ~cbet_check_digit_string ~cbet_stepaside ~csid () :
    encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings
    =
  { cbet_check_digit_string; cbet_stepaside; csid }

let encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings
    ~check_digit_string ~sid () :
    encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings
    =
  { check_digit_string; sid }

let encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings
    ?nielsen_distribution_type ?(nielsen_cbet_settings = [])
    ?(nielsen_naes_ii_nw_settings = []) () :
    encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings
    =
  {
    nielsen_distribution_type;
    nielsen_cbet_settings;
    nielsen_naes_ii_nw_settings;
  }

let encoder_settings__audio_descriptions__audio_watermark_settings
    ?(nielsen_watermarks_settings = []) () :
    encoder_settings__audio_descriptions__audio_watermark_settings =
  { nielsen_watermarks_settings }

let encoder_settings__audio_descriptions__codec_settings__aac_settings
    ?bitrate ?coding_mode ?input_type ?profile ?rate_control_mode
    ?raw_format ?sample_rate ?spec ?vbr_quality () :
    encoder_settings__audio_descriptions__codec_settings__aac_settings
    =
  {
    bitrate;
    coding_mode;
    input_type;
    profile;
    rate_control_mode;
    raw_format;
    sample_rate;
    spec;
    vbr_quality;
  }

let encoder_settings__audio_descriptions__codec_settings__ac3_settings
    ?bitrate ?bitstream_mode ?coding_mode ?dialnorm ?drc_profile
    ?lfe_filter ?metadata_control () :
    encoder_settings__audio_descriptions__codec_settings__ac3_settings
    =
  {
    bitrate;
    bitstream_mode;
    coding_mode;
    dialnorm;
    drc_profile;
    lfe_filter;
    metadata_control;
  }

let encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings
    ?bitrate ?coding_mode ?dialnorm ?drc_line ?drc_rf ?height_trim
    ?surround_trim () :
    encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings
    =
  {
    bitrate;
    coding_mode;
    dialnorm;
    drc_line;
    drc_rf;
    height_trim;
    surround_trim;
  }

let encoder_settings__audio_descriptions__codec_settings__eac3_settings
    ?attenuation_control ?bitrate ?bitstream_mode ?coding_mode
    ?dc_filter ?dialnorm ?drc_line ?drc_rf ?lfe_control ?lfe_filter
    ?lo_ro_center_mix_level ?lo_ro_surround_mix_level
    ?lt_rt_center_mix_level ?lt_rt_surround_mix_level
    ?metadata_control ?passthrough_control ?phase_control
    ?stereo_downmix ?surround_ex_mode ?surround_mode () :
    encoder_settings__audio_descriptions__codec_settings__eac3_settings
    =
  {
    attenuation_control;
    bitrate;
    bitstream_mode;
    coding_mode;
    dc_filter;
    dialnorm;
    drc_line;
    drc_rf;
    lfe_control;
    lfe_filter;
    lo_ro_center_mix_level;
    lo_ro_surround_mix_level;
    lt_rt_center_mix_level;
    lt_rt_surround_mix_level;
    metadata_control;
    passthrough_control;
    phase_control;
    stereo_downmix;
    surround_ex_mode;
    surround_mode;
  }

let encoder_settings__audio_descriptions__codec_settings__mp2_settings
    ?bitrate ?coding_mode ?sample_rate () :
    encoder_settings__audio_descriptions__codec_settings__mp2_settings
    =
  { bitrate; coding_mode; sample_rate }

let encoder_settings__audio_descriptions__codec_settings__pass_through_settings
    () =
  ()

let encoder_settings__audio_descriptions__codec_settings__wav_settings
    ?bit_depth ?coding_mode ?sample_rate () :
    encoder_settings__audio_descriptions__codec_settings__wav_settings
    =
  { bit_depth; coding_mode; sample_rate }

let encoder_settings__audio_descriptions__codec_settings
    ?(aac_settings = []) ?(ac3_settings = [])
    ?(eac3_atmos_settings = []) ?(eac3_settings = [])
    ?(mp2_settings = []) ?(pass_through_settings = [])
    ?(wav_settings = []) () :
    encoder_settings__audio_descriptions__codec_settings =
  {
    aac_settings;
    ac3_settings;
    eac3_atmos_settings;
    eac3_settings;
    mp2_settings;
    pass_through_settings;
    wav_settings;
  }

let encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels
    ~gain ~input_channel () :
    encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels
    =
  { gain; input_channel }

let encoder_settings__audio_descriptions__remix_settings__channel_mappings
    ~output_channel ~input_channel_levels () :
    encoder_settings__audio_descriptions__remix_settings__channel_mappings
    =
  { output_channel; input_channel_levels }

let encoder_settings__audio_descriptions__remix_settings ?channels_in
    ?channels_out ~channel_mappings () :
    encoder_settings__audio_descriptions__remix_settings =
  { channels_in; channels_out; channel_mappings }

let encoder_settings__audio_descriptions ?audio_type
    ?audio_type_control ?language_code ?language_code_control
    ?stream_name ?(audio_normalization_settings = [])
    ?(audio_watermark_settings = []) ?(codec_settings = [])
    ?(remix_settings = []) ~audio_selector_name ~name () :
    encoder_settings__audio_descriptions =
  {
    audio_selector_name;
    audio_type;
    audio_type_control;
    language_code;
    language_code_control;
    name;
    stream_name;
    audio_normalization_settings;
    audio_watermark_settings;
    codec_settings;
    remix_settings;
  }

let encoder_settings__avail_blanking__avail_blanking_image
    ?password_param ?username ~uri () :
    encoder_settings__avail_blanking__avail_blanking_image =
  { password_param; uri; username }

let encoder_settings__avail_blanking ?state
    ?(avail_blanking_image = []) () :
    encoder_settings__avail_blanking =
  { state; avail_blanking_image }

let encoder_settings__caption_descriptions__destination_settings__arib_destination_settings
    () =
  ()

let encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font
    ?password_param ?username ~uri () :
    encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font
    =
  { password_param; uri; username }

let encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings
    ?alignment ?background_color ?background_opacity ?font_color
    ?font_opacity ?font_resolution ?font_size ?outline_size
    ?shadow_color ?shadow_opacity ?shadow_x_offset ?shadow_y_offset
    ?x_position ?y_position ?(font = []) ~outline_color
    ~teletext_grid_control () :
    encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings
    =
  {
    alignment;
    background_color;
    background_opacity;
    font_color;
    font_opacity;
    font_resolution;
    font_size;
    outline_color;
    outline_size;
    shadow_color;
    shadow_opacity;
    shadow_x_offset;
    shadow_y_offset;
    teletext_grid_control;
    x_position;
    y_position;
    font;
  }

let encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font
    ?password_param ?username ~uri () :
    encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font
    =
  { password_param; uri; username }

let encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings
    ?alignment ?background_color ?background_opacity ?font_color
    ?font_opacity ?font_resolution ?font_size ?outline_color
    ?outline_size ?shadow_color ?shadow_opacity ?shadow_x_offset
    ?shadow_y_offset ?teletext_grid_control ?x_position ?y_position
    ?(font = []) () :
    encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings
    =
  {
    alignment;
    background_color;
    background_opacity;
    font_color;
    font_opacity;
    font_resolution;
    font_size;
    outline_color;
    outline_size;
    shadow_color;
    shadow_opacity;
    shadow_x_offset;
    shadow_y_offset;
    teletext_grid_control;
    x_position;
    y_position;
    font;
  }

let encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings
    ?copyright_holder ?fill_line_gap ?font_family ?style_control () :
    encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings
    =
  { copyright_holder; fill_line_gap; font_family; style_control }

let encoder_settings__caption_descriptions__destination_settings__embedded_destination_settings
    () =
  ()

let encoder_settings__caption_descriptions__destination_settings__embedded_plus_scte20_destination_settings
    () =
  ()

let encoder_settings__caption_descriptions__destination_settings__rtmp_caption_info_destination_settings
    () =
  ()

let encoder_settings__caption_descriptions__destination_settings__scte20_plus_embedded_destination_settings
    () =
  ()

let encoder_settings__caption_descriptions__destination_settings__scte27_destination_settings
    () =
  ()

let encoder_settings__caption_descriptions__destination_settings__smpte_tt_destination_settings
    () =
  ()

let encoder_settings__caption_descriptions__destination_settings__teletext_destination_settings
    () =
  ()

let encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings
    ~style_control () :
    encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings
    =
  { style_control }

let encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings
    ~style_control () :
    encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings
    =
  { style_control }

let encoder_settings__caption_descriptions__destination_settings
    ?(arib_destination_settings = [])
    ?(burn_in_destination_settings = [])
    ?(dvb_sub_destination_settings = [])
    ?(ebu_tt_d_destination_settings = [])
    ?(embedded_destination_settings = [])
    ?(embedded_plus_scte20_destination_settings = [])
    ?(rtmp_caption_info_destination_settings = [])
    ?(scte20_plus_embedded_destination_settings = [])
    ?(scte27_destination_settings = [])
    ?(smpte_tt_destination_settings = [])
    ?(teletext_destination_settings = [])
    ?(ttml_destination_settings = [])
    ?(webvtt_destination_settings = []) () :
    encoder_settings__caption_descriptions__destination_settings =
  {
    arib_destination_settings;
    burn_in_destination_settings;
    dvb_sub_destination_settings;
    ebu_tt_d_destination_settings;
    embedded_destination_settings;
    embedded_plus_scte20_destination_settings;
    rtmp_caption_info_destination_settings;
    scte20_plus_embedded_destination_settings;
    scte27_destination_settings;
    smpte_tt_destination_settings;
    teletext_destination_settings;
    ttml_destination_settings;
    webvtt_destination_settings;
  }

let encoder_settings__caption_descriptions ?accessibility
    ?language_code ?language_description ?(destination_settings = [])
    ~caption_selector_name ~name () :
    encoder_settings__caption_descriptions =
  {
    accessibility;
    caption_selector_name;
    language_code;
    language_description;
    name;
    destination_settings;
  }

let encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate
    ?password_param ?username ~uri () :
    encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate
    =
  { password_param; uri; username }

let encoder_settings__global_configuration__input_loss_behavior
    ?black_frame_msec ?input_loss_image_color ?input_loss_image_type
    ?repeat_frame_msec ?(input_loss_image_slate = []) () :
    encoder_settings__global_configuration__input_loss_behavior =
  {
    black_frame_msec;
    input_loss_image_color;
    input_loss_image_type;
    repeat_frame_msec;
    input_loss_image_slate;
  }

let encoder_settings__global_configuration ?initial_audio_gain
    ?input_end_action ?output_locking_mode ?output_timing_source
    ?support_low_framerate_inputs ?(input_loss_behavior = []) () :
    encoder_settings__global_configuration =
  {
    initial_audio_gain;
    input_end_action;
    output_locking_mode;
    output_timing_source;
    support_low_framerate_inputs;
    input_loss_behavior;
  }

let encoder_settings__motion_graphics_configuration__motion_graphics_settings__html_motion_graphics_settings
    () =
  ()

let encoder_settings__motion_graphics_configuration__motion_graphics_settings
    ?(html_motion_graphics_settings = []) () :
    encoder_settings__motion_graphics_configuration__motion_graphics_settings
    =
  { html_motion_graphics_settings }

let encoder_settings__motion_graphics_configuration
    ?motion_graphics_insertion ~motion_graphics_settings () :
    encoder_settings__motion_graphics_configuration =
  { motion_graphics_insertion; motion_graphics_settings }

let encoder_settings__nielsen_configuration ?distributor_id
    ?nielsen_pcm_to_id3_tagging () :
    encoder_settings__nielsen_configuration =
  { distributor_id; nielsen_pcm_to_id3_tagging }

let encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings
    ?canned_acl () :
    encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings
    =
  { canned_acl }

let encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings
    ?(archive_s3_settings = []) () :
    encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings
    =
  { archive_s3_settings }

let encoder_settings__output_groups__output_group_settings__archive_group_settings__destination
    ~destination_ref_id () :
    encoder_settings__output_groups__output_group_settings__archive_group_settings__destination
    =
  { destination_ref_id }

let encoder_settings__output_groups__output_group_settings__archive_group_settings
    ?rollover_interval ?(archive_cdn_settings = []) ~destination () :
    encoder_settings__output_groups__output_group_settings__archive_group_settings
    =
  { rollover_interval; archive_cdn_settings; destination }

let encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination
    ~destination_ref_id () :
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination
    =
  { destination_ref_id }

let encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings
    ?canned_acl () :
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings
    =
  { canned_acl }

let encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings
    ?(frame_capture_s3_settings = []) () :
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings
    =
  { frame_capture_s3_settings }

let encoder_settings__output_groups__output_group_settings__frame_capture_group_settings
    ?(frame_capture_cdn_settings = []) ~destination () :
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings
    =
  { destination; frame_capture_cdn_settings }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings
    ~caption_channel ~language_code ~language_description () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings
    =
  { caption_channel; language_code; language_description }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__destination
    ~destination_ref_id () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__destination
    =
  { destination_ref_id }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings
    ?connection_retry_interval ?filecache_duration
    ?http_transfer_mode ?num_retries ?restart_delay ?salt ?token () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings
    =
  {
    connection_retry_interval;
    filecache_duration;
    http_transfer_mode;
    num_retries;
    restart_delay;
    salt;
    token;
  }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings
    ?connection_retry_interval ?filecache_duration ?num_retries
    ?restart_delay () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings
    =
  {
    connection_retry_interval;
    filecache_duration;
    num_retries;
    restart_delay;
  }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings
    ?connection_retry_interval ?filecache_duration
    ?media_store_storage_class ?num_retries ?restart_delay () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings
    =
  {
    connection_retry_interval;
    filecache_duration;
    media_store_storage_class;
    num_retries;
    restart_delay;
  }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings
    ?canned_acl () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings
    =
  { canned_acl }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings
    ?connection_retry_interval ?filecache_duration
    ?http_transfer_mode ?num_retries ?restart_delay () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings
    =
  {
    connection_retry_interval;
    filecache_duration;
    http_transfer_mode;
    num_retries;
    restart_delay;
  }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings
    ?(hls_akamai_settings = []) ?(hls_basic_put_settings = [])
    ?(hls_media_store_settings = []) ?(hls_s3_settings = [])
    ?(hls_webdav_settings = []) () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings
    =
  {
    hls_akamai_settings;
    hls_basic_put_settings;
    hls_media_store_settings;
    hls_s3_settings;
    hls_webdav_settings;
  }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server
    ?password_param ?username ~uri () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server
    =
  { password_param; uri; username }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings
    ?(key_provider_server = []) ~static_key_value () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings
    =
  { static_key_value; key_provider_server }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings
    ?(static_key_settings = []) () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings
    =
  { static_key_settings }

let encoder_settings__output_groups__output_group_settings__hls_group_settings
    ?ad_markers ?base_url_content ?base_url_content1
    ?base_url_manifest ?base_url_manifest1 ?caption_language_setting
    ?client_cache ?codec_specification ?constant_iv
    ?directory_structure ?discontinuity_tags ?encryption_type
    ?hls_id3_segment_tagging ?iframe_only_playlists
    ?incomplete_segment_behavior ?index_n_segments ?input_loss_action
    ?iv_in_manifest ?iv_source ?keep_segments ?key_format
    ?key_format_versions ?manifest_compression
    ?manifest_duration_format ?min_segment_length ?mode
    ?output_selection ?program_date_time ?program_date_time_clock
    ?program_date_time_period ?redundant_manifest ?segment_length
    ?segments_per_subdirectory ?stream_inf_resolution
    ?timed_metadata_id3_frame ?timed_metadata_id3_period
    ?timestamp_delta_milliseconds ?ts_file_mode
    ?(hls_cdn_settings = []) ?(key_provider_settings = [])
    ~caption_language_mappings ~destination () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings
    =
  {
    ad_markers;
    base_url_content;
    base_url_content1;
    base_url_manifest;
    base_url_manifest1;
    caption_language_setting;
    client_cache;
    codec_specification;
    constant_iv;
    directory_structure;
    discontinuity_tags;
    encryption_type;
    hls_id3_segment_tagging;
    iframe_only_playlists;
    incomplete_segment_behavior;
    index_n_segments;
    input_loss_action;
    iv_in_manifest;
    iv_source;
    keep_segments;
    key_format;
    key_format_versions;
    manifest_compression;
    manifest_duration_format;
    min_segment_length;
    mode;
    output_selection;
    program_date_time;
    program_date_time_clock;
    program_date_time_period;
    redundant_manifest;
    segment_length;
    segments_per_subdirectory;
    stream_inf_resolution;
    timed_metadata_id3_frame;
    timed_metadata_id3_period;
    timestamp_delta_milliseconds;
    ts_file_mode;
    caption_language_mappings;
    destination;
    hls_cdn_settings;
    key_provider_settings;
  }

let encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination
    ~destination_ref_id () :
    encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination
    =
  { destination_ref_id }

let encoder_settings__output_groups__output_group_settings__media_package_group_settings
    ~destination () :
    encoder_settings__output_groups__output_group_settings__media_package_group_settings
    =
  { destination }

let encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination
    ~destination_ref_id () :
    encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination
    =
  { destination_ref_id }

let encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings
    ?acquisition_point_id ?audio_only_timecode_control
    ?certificate_mode ?connection_retry_interval ?event_id
    ?event_id_mode ?event_stop_behavior ?filecache_duration
    ?fragment_length ?input_loss_action ?num_retries ?restart_delay
    ?segmentation_mode ?send_delay_ms ?sparse_track_type
    ?stream_manifest_behavior ?timestamp_offset
    ?timestamp_offset_mode ~destination () :
    encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings
    =
  {
    acquisition_point_id;
    audio_only_timecode_control;
    certificate_mode;
    connection_retry_interval;
    event_id;
    event_id_mode;
    event_stop_behavior;
    filecache_duration;
    fragment_length;
    input_loss_action;
    num_retries;
    restart_delay;
    segmentation_mode;
    send_delay_ms;
    sparse_track_type;
    stream_manifest_behavior;
    timestamp_offset;
    timestamp_offset_mode;
    destination;
  }

let encoder_settings__output_groups__output_group_settings__multiplex_group_settings
    () =
  ()

let encoder_settings__output_groups__output_group_settings__rtmp_group_settings
    ?ad_markers ?authentication_scheme ?cache_full_behavior
    ?cache_length ?caption_data ?input_loss_action ?restart_delay ()
    :
    encoder_settings__output_groups__output_group_settings__rtmp_group_settings
    =
  {
    ad_markers;
    authentication_scheme;
    cache_full_behavior;
    cache_length;
    caption_data;
    input_loss_action;
    restart_delay;
  }

let encoder_settings__output_groups__output_group_settings__udp_group_settings
    ?input_loss_action ?timed_metadata_id3_frame
    ?timed_metadata_id3_period () :
    encoder_settings__output_groups__output_group_settings__udp_group_settings
    =
  {
    input_loss_action;
    timed_metadata_id3_frame;
    timed_metadata_id3_period;
  }

let encoder_settings__output_groups__output_group_settings
    ?(archive_group_settings = [])
    ?(frame_capture_group_settings = []) ?(hls_group_settings = [])
    ?(media_package_group_settings = [])
    ?(ms_smooth_group_settings = []) ?(multiplex_group_settings = [])
    ?(rtmp_group_settings = []) ?(udp_group_settings = []) () :
    encoder_settings__output_groups__output_group_settings =
  {
    archive_group_settings;
    frame_capture_group_settings;
    hls_group_settings;
    media_package_group_settings;
    ms_smooth_group_settings;
    multiplex_group_settings;
    rtmp_group_settings;
    udp_group_settings;
  }

let encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings
    ?rep_interval ~network_id ~network_name () :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings
    =
  { network_id; network_name; rep_interval }

let encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings
    ?output_sdt ?rep_interval ?service_name ?service_provider_name ()
    :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings
    =
  { output_sdt; rep_interval; service_name; service_provider_name }

let encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings
    ?rep_interval () :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings
    =
  { rep_interval }

let encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings
    ?absent_input_audio_behavior ?arib ?arib_captions_pid
    ?arib_captions_pid_control ?audio_buffer_model
    ?audio_frames_per_pes ?audio_pids ?audio_stream_type ?bitrate
    ?buffer_model ?cc_descriptor ?dvb_sub_pids ?dvb_teletext_pid
    ?ebif ?ebp_audio_interval ?ebp_lookahead_ms ?ebp_placement
    ?ecm_pid ?es_rate_in_pes ?etv_platform_pid ?etv_signal_pid
    ?fragment_time ?klv ?klv_data_pids ?nielsen_id3_behavior
    ?null_packet_bitrate ?pat_interval ?pcr_control ?pcr_period
    ?pcr_pid ?pmt_interval ?pmt_pid ?program_num ?rate_mode
    ?scte27_pids ?scte35_control ?scte35_pid ?segmentation_markers
    ?segmentation_style ?segmentation_time ?timed_metadata_behavior
    ?timed_metadata_pid ?transport_stream_id ?video_pid
    ?(dvb_nit_settings = []) ?(dvb_sdt_settings = [])
    ?(dvb_tdt_settings = []) () :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings
    =
  {
    absent_input_audio_behavior;
    arib;
    arib_captions_pid;
    arib_captions_pid_control;
    audio_buffer_model;
    audio_frames_per_pes;
    audio_pids;
    audio_stream_type;
    bitrate;
    buffer_model;
    cc_descriptor;
    dvb_sub_pids;
    dvb_teletext_pid;
    ebif;
    ebp_audio_interval;
    ebp_lookahead_ms;
    ebp_placement;
    ecm_pid;
    es_rate_in_pes;
    etv_platform_pid;
    etv_signal_pid;
    fragment_time;
    klv;
    klv_data_pids;
    nielsen_id3_behavior;
    null_packet_bitrate;
    pat_interval;
    pcr_control;
    pcr_period;
    pcr_pid;
    pmt_interval;
    pmt_pid;
    program_num;
    rate_mode;
    scte27_pids;
    scte35_control;
    scte35_pid;
    segmentation_markers;
    segmentation_style;
    segmentation_time;
    timed_metadata_behavior;
    timed_metadata_pid;
    transport_stream_id;
    video_pid;
    dvb_nit_settings;
    dvb_sdt_settings;
    dvb_tdt_settings;
  }

let encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__raw_settings
    () =
  ()

let encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings
    ?(m2ts_settings = []) ?(raw_settings = []) () :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings
    =
  { m2ts_settings; raw_settings }

let encoder_settings__output_groups__outputs__output_settings__archive_output_settings
    ?extension ?name_modifier ?(container_settings = []) () :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings
    =
  { extension; name_modifier; container_settings }

let encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings
    ?name_modifier () :
    encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings
    =
  { name_modifier }

let encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image
    ?password_param ?username ~uri () :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image
    =
  { password_param; uri; username }

let encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings
    ?audio_group_id ?audio_track_type ?segment_type
    ?(audio_only_image = []) () :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings
    =
  {
    audio_group_id;
    audio_track_type;
    segment_type;
    audio_only_image;
  }

let encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings
    ?audio_rendition_sets ?nielsen_id3_behavior
    ?timed_metadata_behavior () :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings
    =
  {
    audio_rendition_sets;
    nielsen_id3_behavior;
    timed_metadata_behavior;
  }

let encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__frame_capture_hls_settings
    () =
  ()

let encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings
    ?audio_frames_per_pes ?audio_pids ?ecm_pid ?nielsen_id3_behavior
    ?pat_interval ?pcr_control ?pcr_period ?pcr_pid ?pmt_interval
    ?pmt_pid ?program_num ?scte35_behavior ?scte35_pid
    ?timed_metadata_behavior ?timed_metadata_pid ?transport_stream_id
    ?video_pid () :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings
    =
  {
    audio_frames_per_pes;
    audio_pids;
    ecm_pid;
    nielsen_id3_behavior;
    pat_interval;
    pcr_control;
    pcr_period;
    pcr_pid;
    pmt_interval;
    pmt_pid;
    program_num;
    scte35_behavior;
    scte35_pid;
    timed_metadata_behavior;
    timed_metadata_pid;
    transport_stream_id;
    video_pid;
  }

let encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings
    ?audio_rendition_sets ~m3u8_settings () :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings
    =
  { audio_rendition_sets; m3u8_settings }

let encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings
    ?(audio_only_hls_settings = []) ?(fmp4_hls_settings = [])
    ?(frame_capture_hls_settings = []) ?(standard_hls_settings = [])
    () :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings
    =
  {
    audio_only_hls_settings;
    fmp4_hls_settings;
    frame_capture_hls_settings;
    standard_hls_settings;
  }

let encoder_settings__output_groups__outputs__output_settings__hls_output_settings
    ?h265_packaging_type ?name_modifier ?segment_modifier
    ~hls_settings () :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings
    =
  {
    h265_packaging_type;
    name_modifier;
    segment_modifier;
    hls_settings;
  }

let encoder_settings__output_groups__outputs__output_settings__media_package_output_settings
    () =
  ()

let encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings
    ?h265_packaging_type ?name_modifier () :
    encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings
    =
  { h265_packaging_type; name_modifier }

let encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination
    ~destination_ref_id () :
    encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination
    =
  { destination_ref_id }

let encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings
    ~destination () :
    encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings
    =
  { destination }

let encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination
    ~destination_ref_id () :
    encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination
    =
  { destination_ref_id }

let encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings
    ?certificate_mode ?connection_retry_interval ?num_retries
    ~destination () :
    encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings
    =
  {
    certificate_mode;
    connection_retry_interval;
    num_retries;
    destination;
  }

let encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings
    ?rep_interval ~network_id ~network_name () :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings
    =
  { network_id; network_name; rep_interval }

let encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings
    ?output_sdt ?rep_interval ?service_name ?service_provider_name ()
    :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings
    =
  { output_sdt; rep_interval; service_name; service_provider_name }

let encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings
    ?rep_interval () :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings
    =
  { rep_interval }

let encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings
    ?absent_input_audio_behavior ?arib ?arib_captions_pid
    ?arib_captions_pid_control ?audio_buffer_model
    ?audio_frames_per_pes ?audio_pids ?audio_stream_type ?bitrate
    ?buffer_model ?cc_descriptor ?dvb_sub_pids ?dvb_teletext_pid
    ?ebif ?ebp_audio_interval ?ebp_lookahead_ms ?ebp_placement
    ?ecm_pid ?es_rate_in_pes ?etv_platform_pid ?etv_signal_pid
    ?fragment_time ?klv ?klv_data_pids ?nielsen_id3_behavior
    ?null_packet_bitrate ?pat_interval ?pcr_control ?pcr_period
    ?pcr_pid ?pmt_interval ?pmt_pid ?program_num ?rate_mode
    ?scte27_pids ?scte35_control ?scte35_pid ?segmentation_markers
    ?segmentation_style ?segmentation_time ?timed_metadata_behavior
    ?timed_metadata_pid ?transport_stream_id ?video_pid
    ?(dvb_nit_settings = []) ?(dvb_sdt_settings = [])
    ?(dvb_tdt_settings = []) () :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings
    =
  {
    absent_input_audio_behavior;
    arib;
    arib_captions_pid;
    arib_captions_pid_control;
    audio_buffer_model;
    audio_frames_per_pes;
    audio_pids;
    audio_stream_type;
    bitrate;
    buffer_model;
    cc_descriptor;
    dvb_sub_pids;
    dvb_teletext_pid;
    ebif;
    ebp_audio_interval;
    ebp_lookahead_ms;
    ebp_placement;
    ecm_pid;
    es_rate_in_pes;
    etv_platform_pid;
    etv_signal_pid;
    fragment_time;
    klv;
    klv_data_pids;
    nielsen_id3_behavior;
    null_packet_bitrate;
    pat_interval;
    pcr_control;
    pcr_period;
    pcr_pid;
    pmt_interval;
    pmt_pid;
    program_num;
    rate_mode;
    scte27_pids;
    scte35_control;
    scte35_pid;
    segmentation_markers;
    segmentation_style;
    segmentation_time;
    timed_metadata_behavior;
    timed_metadata_pid;
    transport_stream_id;
    video_pid;
    dvb_nit_settings;
    dvb_sdt_settings;
    dvb_tdt_settings;
  }

let encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings
    ?(m2ts_settings = []) () :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings
    =
  { m2ts_settings }

let encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination
    ~destination_ref_id () :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination
    =
  { destination_ref_id }

let encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings
    ?column_depth ?include_fec ?row_length () :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings
    =
  { column_depth; include_fec; row_length }

let encoder_settings__output_groups__outputs__output_settings__udp_output_settings
    ?buffer_msec ?(fec_output_settings = []) ~container_settings
    ~destination () :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings
    =
  {
    buffer_msec;
    container_settings;
    destination;
    fec_output_settings;
  }

let encoder_settings__output_groups__outputs__output_settings
    ?(archive_output_settings = [])
    ?(frame_capture_output_settings = []) ?(hls_output_settings = [])
    ?(media_package_output_settings = [])
    ?(ms_smooth_output_settings = [])
    ?(multiplex_output_settings = []) ?(rtmp_output_settings = [])
    ?(udp_output_settings = []) () :
    encoder_settings__output_groups__outputs__output_settings =
  {
    archive_output_settings;
    frame_capture_output_settings;
    hls_output_settings;
    media_package_output_settings;
    ms_smooth_output_settings;
    multiplex_output_settings;
    rtmp_output_settings;
    udp_output_settings;
  }

let encoder_settings__output_groups__outputs ?audio_description_names
    ?caption_description_names ?output_name ?video_description_name
    ~output_settings () : encoder_settings__output_groups__outputs =
  {
    audio_description_names;
    caption_description_names;
    output_name;
    video_description_name;
    output_settings;
  }

let encoder_settings__output_groups ?name ~output_group_settings
    ~outputs () : encoder_settings__output_groups =
  { name; output_group_settings; outputs }

let encoder_settings__timecode_config ?sync_threshold ~source () :
    encoder_settings__timecode_config =
  { source; sync_threshold }

let encoder_settings__video_descriptions__codec_settings__frame_capture_settings
    ?capture_interval ?capture_interval_units () :
    encoder_settings__video_descriptions__codec_settings__frame_capture_settings
    =
  { capture_interval; capture_interval_units }

let encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings
    ?post_filter_sharpening ?strength () :
    encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings
    =
  { post_filter_sharpening; strength }

let encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings
    ?(temporal_filter_settings = []) () :
    encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings
    =
  { temporal_filter_settings }

let encoder_settings__video_descriptions__codec_settings__h264_settings
    ?adaptive_quantization ?afd_signaling ?bitrate ?buf_fill_pct
    ?buf_size ?color_metadata ?entropy_encoding ?fixed_afd
    ?flicker_aq ?force_field_pictures ?framerate_control
    ?framerate_denominator ?framerate_numerator ?gop_b_reference
    ?gop_closed_cadence ?gop_num_b_frames ?gop_size ?gop_size_units
    ?level ?look_ahead_rate_control ?max_bitrate ?min_i_interval
    ?num_ref_frames ?par_control ?par_denominator ?par_numerator
    ?profile ?quality_level ?qvbr_quality_level ?rate_control_mode
    ?scan_type ?scene_change_detect ?slices ?softness ?spatial_aq
    ?subgop_length ?syntax ?temporal_aq ?timecode_insertion
    ?(filter_settings = []) () :
    encoder_settings__video_descriptions__codec_settings__h264_settings
    =
  {
    adaptive_quantization;
    afd_signaling;
    bitrate;
    buf_fill_pct;
    buf_size;
    color_metadata;
    entropy_encoding;
    fixed_afd;
    flicker_aq;
    force_field_pictures;
    framerate_control;
    framerate_denominator;
    framerate_numerator;
    gop_b_reference;
    gop_closed_cadence;
    gop_num_b_frames;
    gop_size;
    gop_size_units;
    level;
    look_ahead_rate_control;
    max_bitrate;
    min_i_interval;
    num_ref_frames;
    par_control;
    par_denominator;
    par_numerator;
    profile;
    quality_level;
    qvbr_quality_level;
    rate_control_mode;
    scan_type;
    scene_change_detect;
    slices;
    softness;
    spatial_aq;
    subgop_length;
    syntax;
    temporal_aq;
    timecode_insertion;
    filter_settings;
  }

let encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__color_space_passthrough_settings
    () =
  ()

let encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__dolby_vision81_settings
    () =
  ()

let encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings
    ?max_cll ?max_fall () :
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings
    =
  { max_cll; max_fall }

let encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec601_settings
    () =
  ()

let encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec709_settings
    () =
  ()

let encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings
    ?(color_space_passthrough_settings = [])
    ?(dolby_vision81_settings = []) ?(hdr10_settings = [])
    ?(rec601_settings = []) ?(rec709_settings = []) () :
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings
    =
  {
    color_space_passthrough_settings;
    dolby_vision81_settings;
    hdr10_settings;
    rec601_settings;
    rec709_settings;
  }

let encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings
    ?post_filter_sharpening ?strength () :
    encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings
    =
  { post_filter_sharpening; strength }

let encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings
    ?(temporal_filter_settings = []) () :
    encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings
    =
  { temporal_filter_settings }

let encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings
    ?prefix ?timecode_burnin_font_size ?timecode_burnin_position () :
    encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings
    =
  { prefix; timecode_burnin_font_size; timecode_burnin_position }

let encoder_settings__video_descriptions__codec_settings__h265_settings
    ?adaptive_quantization ?afd_signaling
    ?alternative_transfer_function ?buf_size ?color_metadata
    ?fixed_afd ?flicker_aq ?gop_closed_cadence ?gop_size
    ?gop_size_units ?level ?look_ahead_rate_control ?max_bitrate
    ?min_i_interval ?par_denominator ?par_numerator ?profile
    ?qvbr_quality_level ?rate_control_mode ?scan_type
    ?scene_change_detect ?slices ?tier ?timecode_insertion
    ?(color_space_settings = []) ?(filter_settings = [])
    ?(timecode_burnin_settings = []) ~bitrate ~framerate_denominator
    ~framerate_numerator () :
    encoder_settings__video_descriptions__codec_settings__h265_settings
    =
  {
    adaptive_quantization;
    afd_signaling;
    alternative_transfer_function;
    bitrate;
    buf_size;
    color_metadata;
    fixed_afd;
    flicker_aq;
    framerate_denominator;
    framerate_numerator;
    gop_closed_cadence;
    gop_size;
    gop_size_units;
    level;
    look_ahead_rate_control;
    max_bitrate;
    min_i_interval;
    par_denominator;
    par_numerator;
    profile;
    qvbr_quality_level;
    rate_control_mode;
    scan_type;
    scene_change_detect;
    slices;
    tier;
    timecode_insertion;
    color_space_settings;
    filter_settings;
    timecode_burnin_settings;
  }

let encoder_settings__video_descriptions__codec_settings
    ?(frame_capture_settings = []) ?(h264_settings = [])
    ?(h265_settings = []) () :
    encoder_settings__video_descriptions__codec_settings =
  { frame_capture_settings; h264_settings; h265_settings }

let encoder_settings__video_descriptions ?height ?respond_to_afd
    ?scaling_behavior ?sharpness ?width ?(codec_settings = []) ~name
    () : encoder_settings__video_descriptions =
  {
    height;
    name;
    respond_to_afd;
    scaling_behavior;
    sharpness;
    width;
    codec_settings;
  }

let encoder_settings ?(avail_blanking = [])
    ?(caption_descriptions = []) ?(global_configuration = [])
    ?(motion_graphics_configuration = [])
    ?(nielsen_configuration = []) ?(video_descriptions = [])
    ~audio_descriptions ~output_groups ~timecode_config () :
    encoder_settings =
  {
    audio_descriptions;
    avail_blanking;
    caption_descriptions;
    global_configuration;
    motion_graphics_configuration;
    nielsen_configuration;
    output_groups;
    timecode_config;
    video_descriptions;
  }

let input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings
    ?audio_silence_threshold_msec ~audio_selector_name () :
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings
    =
  { audio_selector_name; audio_silence_threshold_msec }

let input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings
    ?input_loss_threshold_msec () :
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings
    =
  { input_loss_threshold_msec }

let input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings
    ?black_detect_threshold ?video_black_threshold_msec () :
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings
    =
  { black_detect_threshold; video_black_threshold_msec }

let input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings
    ?(audio_silence_settings = []) ?(input_loss_settings = [])
    ?(video_black_settings = []) () :
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings
    =
  {
    audio_silence_settings;
    input_loss_settings;
    video_black_settings;
  }

let input_attachments__automatic_input_failover_settings__failover_condition
    ?(failover_condition_settings = []) () :
    input_attachments__automatic_input_failover_settings__failover_condition
    =
  { failover_condition_settings }

let input_attachments__automatic_input_failover_settings
    ?error_clear_time_msec ?input_preference ~secondary_input_id
    ~failover_condition () :
    input_attachments__automatic_input_failover_settings =
  {
    error_clear_time_msec;
    input_preference;
    secondary_input_id;
    failover_condition;
  }

let input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection
    ~group_id ~name () :
    input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection
    =
  { group_id; name }

let input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection
    ?language_selection_policy ~language_code () :
    input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection
    =
  { language_code; language_selection_policy }

let input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection
    ~pid () :
    input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection
    =
  { pid }

let input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode
    ~program_selection () :
    input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode
    =
  { program_selection }

let input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks
    ~track () :
    input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks
    =
  { track }

let input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection
    ?(dolby_e_decode = []) ~tracks () :
    input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection
    =
  { dolby_e_decode; tracks }

let input_attachments__input_settings__audio_selector__selector_settings
    ?(audio_hls_rendition_selection = [])
    ?(audio_language_selection = []) ?(audio_pid_selection = [])
    ?(audio_track_selection = []) () :
    input_attachments__input_settings__audio_selector__selector_settings
    =
  {
    audio_hls_rendition_selection;
    audio_language_selection;
    audio_pid_selection;
    audio_track_selection;
  }

let input_attachments__input_settings__audio_selector
    ?(selector_settings = []) ~name () :
    input_attachments__input_settings__audio_selector =
  { name; selector_settings }

let input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings
    ?source_ancillary_channel_number () :
    input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings
    =
  { source_ancillary_channel_number }

let input_attachments__input_settings__caption_selector__selector_settings__arib_source_settings
    () =
  ()

let input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings
    ?ocr_language ?pid () :
    input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings
    =
  { ocr_language; pid }

let input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings
    ?convert_608_to_708 ?scte20_detection ?source_608_channel_number
    () :
    input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings
    =
  { convert_608_to_708; scte20_detection; source_608_channel_number }

let input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings
    ?convert_608_to_708 ?source_608_channel_number () :
    input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings
    =
  { convert_608_to_708; source_608_channel_number }

let input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings
    ?ocr_language ?pid () :
    input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings
    =
  { ocr_language; pid }

let input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle
    ~height ~left_offset ~top_offset ~width () :
    input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle
    =
  { height; left_offset; top_offset; width }

let input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings
    ?page_number ?(output_rectangle = []) () :
    input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings
    =
  { page_number; output_rectangle }

let input_attachments__input_settings__caption_selector__selector_settings
    ?(ancillary_source_settings = []) ?(arib_source_settings = [])
    ?(dvb_sub_source_settings = []) ?(embedded_source_settings = [])
    ?(scte20_source_settings = []) ?(scte27_source_settings = [])
    ?(teletext_source_settings = []) () :
    input_attachments__input_settings__caption_selector__selector_settings
    =
  {
    ancillary_source_settings;
    arib_source_settings;
    dvb_sub_source_settings;
    embedded_source_settings;
    scte20_source_settings;
    scte27_source_settings;
    teletext_source_settings;
  }

let input_attachments__input_settings__caption_selector
    ?language_code ?(selector_settings = []) ~name () :
    input_attachments__input_settings__caption_selector =
  { language_code; name; selector_settings }

let input_attachments__input_settings__network_input_settings__hls_input_settings
    ?bandwidth ?buffer_segments ?retries ?retry_interval
    ?scte35_source () :
    input_attachments__input_settings__network_input_settings__hls_input_settings
    =
  {
    bandwidth;
    buffer_segments;
    retries;
    retry_interval;
    scte35_source;
  }

let input_attachments__input_settings__network_input_settings
    ?server_validation ?(hls_input_settings = []) () :
    input_attachments__input_settings__network_input_settings =
  { server_validation; hls_input_settings }

let input_attachments__input_settings__video_selector ?color_space
    ?color_space_usage () :
    input_attachments__input_settings__video_selector =
  { color_space; color_space_usage }

let input_attachments__input_settings ?deblock_filter ?denoise_filter
    ?filter_strength ?input_filter ?scte35_pid
    ?smpte2038_data_preference ?source_end_behavior
    ?(audio_selector = []) ?(caption_selector = [])
    ?(network_input_settings = []) ?(video_selector = []) () :
    input_attachments__input_settings =
  {
    deblock_filter;
    denoise_filter;
    filter_strength;
    input_filter;
    scte35_pid;
    smpte2038_data_preference;
    source_end_behavior;
    audio_selector;
    caption_selector;
    network_input_settings;
    video_selector;
  }

let input_attachments ?(automatic_input_failover_settings = [])
    ?(input_settings = []) ~input_attachment_name ~input_id () :
    input_attachments =
  {
    input_attachment_name;
    input_id;
    automatic_input_failover_settings;
    input_settings;
  }

let input_specification ~codec ~input_resolution ~maximum_bitrate ()
    : input_specification =
  { codec; input_resolution; maximum_bitrate }

let maintenance ~maintenance_day ~maintenance_start_time () :
    maintenance =
  { maintenance_day; maintenance_start_time }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc ?security_group_ids ~public_address_allocation_ids
    ~subnet_ids () : vpc =
  { public_address_allocation_ids; security_group_ids; subnet_ids }

let aws_medialive_channel ?id ?log_level ?role_arn ?start_channel
    ?tags ?tags_all ?(cdi_input_specification = [])
    ?(maintenance = []) ?timeouts ?(vpc = []) ~channel_class ~name
    ~destinations ~encoder_settings ~input_attachments
    ~input_specification () : aws_medialive_channel =
  {
    channel_class;
    id;
    log_level;
    name;
    role_arn;
    start_channel;
    tags;
    tags_all;
    cdi_input_specification;
    destinations;
    encoder_settings;
    input_attachments;
    input_specification;
    maintenance;
    timeouts;
    vpc;
  }

type t = {
  tf_name : string;
  arn : string prop;
  channel_class : string prop;
  channel_id : string prop;
  id : string prop;
  log_level : string prop;
  name : string prop;
  role_arn : string prop;
  start_channel : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?log_level ?role_arn ?start_channel ?tags ?tags_all
    ?(cdi_input_specification = []) ?(maintenance = []) ?timeouts
    ?(vpc = []) ~channel_class ~name ~destinations ~encoder_settings
    ~input_attachments ~input_specification __id =
  let __type = "aws_medialive_channel" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       channel_class = Prop.computed __type __id "channel_class";
       channel_id = Prop.computed __type __id "channel_id";
       id = Prop.computed __type __id "id";
       log_level = Prop.computed __type __id "log_level";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       start_channel = Prop.computed __type __id "start_channel";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_medialive_channel
        (aws_medialive_channel ?id ?log_level ?role_arn
           ?start_channel ?tags ?tags_all ~cdi_input_specification
           ~maintenance ?timeouts ~vpc ~channel_class ~name
           ~destinations ~encoder_settings ~input_attachments
           ~input_specification ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?log_level ?role_arn ?start_channel ?tags
    ?tags_all ?(cdi_input_specification = []) ?(maintenance = [])
    ?timeouts ?(vpc = []) ~channel_class ~name ~destinations
    ~encoder_settings ~input_attachments ~input_specification __id =
  let (r : _ Tf_core.resource) =
    make ?id ?log_level ?role_arn ?start_channel ?tags ?tags_all
      ~cdi_input_specification ~maintenance ?timeouts ~vpc
      ~channel_class ~name ~destinations ~encoder_settings
      ~input_attachments ~input_specification __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
