(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type output__audio_analyzer_preset = {
  audio_analysis_mode : string prop option; [@option]
  audio_language : string prop option; [@option]
  experimental_options : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__audio_analyzer_preset) -> ()

let yojson_of_output__audio_analyzer_preset =
  (function
   | {
       audio_analysis_mode = v_audio_analysis_mode;
       audio_language = v_audio_language;
       experimental_options = v_experimental_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_experimental_options with
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
             let bnd = "experimental_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_language", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_analysis_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_analysis_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__audio_analyzer_preset ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__audio_analyzer_preset

[@@@deriving.end]

type output__builtin_preset__preset_configuration = {
  complexity : string prop option; [@option]
  interleave_output : string prop option; [@option]
  key_frame_interval_in_seconds : float prop option; [@option]
  max_bitrate_bps : float prop option; [@option]
  max_height : float prop option; [@option]
  max_layers : float prop option; [@option]
  min_bitrate_bps : float prop option; [@option]
  min_height : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__builtin_preset__preset_configuration) -> ()

let yojson_of_output__builtin_preset__preset_configuration =
  (function
   | {
       complexity = v_complexity;
       interleave_output = v_interleave_output;
       key_frame_interval_in_seconds =
         v_key_frame_interval_in_seconds;
       max_bitrate_bps = v_max_bitrate_bps;
       max_height = v_max_height;
       max_layers = v_max_layers;
       min_bitrate_bps = v_min_bitrate_bps;
       min_height = v_min_height;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min_height with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_height", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_bitrate_bps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_bitrate_bps", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_layers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_layers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_height with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_height", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_bitrate_bps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_bitrate_bps", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_frame_interval_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "key_frame_interval_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interleave_output with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interleave_output", arg in
             bnd :: bnds
       in
       let bnds =
         match v_complexity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "complexity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__builtin_preset__preset_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__builtin_preset__preset_configuration

[@@@deriving.end]

type output__builtin_preset = {
  preset_name : string prop;
  preset_configuration :
    output__builtin_preset__preset_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__builtin_preset) -> ()

let yojson_of_output__builtin_preset =
  (function
   | {
       preset_name = v_preset_name;
       preset_configuration = v_preset_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__builtin_preset__preset_configuration
             v_preset_configuration
         in
         ("preset_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_preset_name in
         ("preset_name", arg) :: bnds
       in
       `Assoc bnds
    : output__builtin_preset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__builtin_preset

[@@@deriving.end]

type output__custom_preset__codec__aac_audio = {
  bitrate : float prop option; [@option]
  channels : float prop option; [@option]
  label : string prop option; [@option]
  profile : string prop option; [@option]
  sampling_rate : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__codec__aac_audio) -> ()

let yojson_of_output__custom_preset__codec__aac_audio =
  (function
   | {
       bitrate = v_bitrate;
       channels = v_channels;
       label = v_label;
       profile = v_profile;
       sampling_rate = v_sampling_rate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sampling_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sampling_rate", arg in
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
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_channels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "channels", arg in
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
    : output__custom_preset__codec__aac_audio ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__codec__aac_audio

[@@@deriving.end]

type output__custom_preset__codec__copy_audio = {
  label : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__codec__copy_audio) -> ()

let yojson_of_output__custom_preset__codec__copy_audio =
  (function
   | { label = v_label } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : output__custom_preset__codec__copy_audio ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__codec__copy_audio

[@@@deriving.end]

type output__custom_preset__codec__copy_video = {
  label : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__codec__copy_video) -> ()

let yojson_of_output__custom_preset__codec__copy_video =
  (function
   | { label = v_label } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : output__custom_preset__codec__copy_video ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__codec__copy_video

[@@@deriving.end]

type output__custom_preset__codec__dd_audio = {
  bitrate : float prop option; [@option]
  channels : float prop option; [@option]
  label : string prop option; [@option]
  sampling_rate : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__codec__dd_audio) -> ()

let yojson_of_output__custom_preset__codec__dd_audio =
  (function
   | {
       bitrate = v_bitrate;
       channels = v_channels;
       label = v_label;
       sampling_rate = v_sampling_rate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sampling_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sampling_rate", arg in
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
       let bnds =
         match v_channels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "channels", arg in
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
    : output__custom_preset__codec__dd_audio ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__codec__dd_audio

[@@@deriving.end]

type output__custom_preset__codec__h264_video__layer = {
  adaptive_b_frame_enabled : bool prop option; [@option]
  b_frames : float prop option; [@option]
  bitrate : float prop;
  buffer_window : string prop option; [@option]
  crf : float prop option; [@option]
  entropy_mode : string prop option; [@option]
  frame_rate : string prop option; [@option]
  height : string prop option; [@option]
  label : string prop option; [@option]
  level : string prop option; [@option]
  max_bitrate : float prop option; [@option]
  profile : string prop option; [@option]
  reference_frames : float prop option; [@option]
  slices : float prop option; [@option]
  width : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : output__custom_preset__codec__h264_video__layer) -> ()

let yojson_of_output__custom_preset__codec__h264_video__layer =
  (function
   | {
       adaptive_b_frame_enabled = v_adaptive_b_frame_enabled;
       b_frames = v_b_frames;
       bitrate = v_bitrate;
       buffer_window = v_buffer_window;
       crf = v_crf;
       entropy_mode = v_entropy_mode;
       frame_rate = v_frame_rate;
       height = v_height;
       label = v_label;
       level = v_level;
       max_bitrate = v_max_bitrate;
       profile = v_profile;
       reference_frames = v_reference_frames;
       slices = v_slices;
       width = v_width;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_width with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "width", arg in
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
         match v_reference_frames with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "reference_frames", arg in
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
         match v_max_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_bitrate", arg in
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
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_height with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "height", arg in
             bnd :: bnds
       in
       let bnds =
         match v_frame_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "frame_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_entropy_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "entropy_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_crf with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "crf", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffer_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "buffer_window", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_bitrate in
         ("bitrate", arg) :: bnds
       in
       let bnds =
         match v_b_frames with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "b_frames", arg in
             bnd :: bnds
       in
       let bnds =
         match v_adaptive_b_frame_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "adaptive_b_frame_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__custom_preset__codec__h264_video__layer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__codec__h264_video__layer

[@@@deriving.end]

type output__custom_preset__codec__h264_video = {
  complexity : string prop option; [@option]
  key_frame_interval : string prop option; [@option]
  label : string prop option; [@option]
  rate_control_mode : string prop option; [@option]
  scene_change_detection_enabled : bool prop option; [@option]
  stretch_mode : string prop option; [@option]
  sync_mode : string prop option; [@option]
  layer : output__custom_preset__codec__h264_video__layer list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__codec__h264_video) -> ()

let yojson_of_output__custom_preset__codec__h264_video =
  (function
   | {
       complexity = v_complexity;
       key_frame_interval = v_key_frame_interval;
       label = v_label;
       rate_control_mode = v_rate_control_mode;
       scene_change_detection_enabled =
         v_scene_change_detection_enabled;
       stretch_mode = v_stretch_mode;
       sync_mode = v_sync_mode;
       layer = v_layer;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__codec__h264_video__layer
             v_layer
         in
         ("layer", arg) :: bnds
       in
       let bnds =
         match v_sync_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sync_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stretch_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stretch_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scene_change_detection_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "scene_change_detection_enabled", arg in
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
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_frame_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_frame_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_complexity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "complexity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__custom_preset__codec__h264_video ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__codec__h264_video

[@@@deriving.end]

type output__custom_preset__codec__h265_video__layer = {
  adaptive_b_frame_enabled : bool prop option; [@option]
  b_frames : float prop option; [@option]
  bitrate : float prop;
  buffer_window : string prop option; [@option]
  crf : float prop option; [@option]
  frame_rate : string prop option; [@option]
  height : string prop option; [@option]
  label : string prop option; [@option]
  level : string prop option; [@option]
  max_bitrate : float prop option; [@option]
  profile : string prop option; [@option]
  reference_frames : float prop option; [@option]
  slices : float prop option; [@option]
  width : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : output__custom_preset__codec__h265_video__layer) -> ()

let yojson_of_output__custom_preset__codec__h265_video__layer =
  (function
   | {
       adaptive_b_frame_enabled = v_adaptive_b_frame_enabled;
       b_frames = v_b_frames;
       bitrate = v_bitrate;
       buffer_window = v_buffer_window;
       crf = v_crf;
       frame_rate = v_frame_rate;
       height = v_height;
       label = v_label;
       level = v_level;
       max_bitrate = v_max_bitrate;
       profile = v_profile;
       reference_frames = v_reference_frames;
       slices = v_slices;
       width = v_width;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_width with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "width", arg in
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
         match v_reference_frames with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "reference_frames", arg in
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
         match v_max_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_bitrate", arg in
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
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_height with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "height", arg in
             bnd :: bnds
       in
       let bnds =
         match v_frame_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "frame_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_crf with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "crf", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffer_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "buffer_window", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_bitrate in
         ("bitrate", arg) :: bnds
       in
       let bnds =
         match v_b_frames with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "b_frames", arg in
             bnd :: bnds
       in
       let bnds =
         match v_adaptive_b_frame_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "adaptive_b_frame_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__custom_preset__codec__h265_video__layer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__codec__h265_video__layer

[@@@deriving.end]

type output__custom_preset__codec__h265_video = {
  complexity : string prop option; [@option]
  key_frame_interval : string prop option; [@option]
  label : string prop option; [@option]
  scene_change_detection_enabled : bool prop option; [@option]
  stretch_mode : string prop option; [@option]
  sync_mode : string prop option; [@option]
  layer : output__custom_preset__codec__h265_video__layer list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__codec__h265_video) -> ()

let yojson_of_output__custom_preset__codec__h265_video =
  (function
   | {
       complexity = v_complexity;
       key_frame_interval = v_key_frame_interval;
       label = v_label;
       scene_change_detection_enabled =
         v_scene_change_detection_enabled;
       stretch_mode = v_stretch_mode;
       sync_mode = v_sync_mode;
       layer = v_layer;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__codec__h265_video__layer
             v_layer
         in
         ("layer", arg) :: bnds
       in
       let bnds =
         match v_sync_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sync_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stretch_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stretch_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scene_change_detection_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "scene_change_detection_enabled", arg in
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
       let bnds =
         match v_key_frame_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_frame_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_complexity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "complexity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__custom_preset__codec__h265_video ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__codec__h265_video

[@@@deriving.end]

type output__custom_preset__codec__jpg_image__layer = {
  height : string prop option; [@option]
  label : string prop option; [@option]
  quality : float prop option; [@option]
  width : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : output__custom_preset__codec__jpg_image__layer) -> ()

let yojson_of_output__custom_preset__codec__jpg_image__layer =
  (function
   | {
       height = v_height;
       label = v_label;
       quality = v_quality;
       width = v_width;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_width with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "width", arg in
             bnd :: bnds
       in
       let bnds =
         match v_quality with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "quality", arg in
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
       let bnds =
         match v_height with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "height", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__custom_preset__codec__jpg_image__layer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__codec__jpg_image__layer

[@@@deriving.end]

type output__custom_preset__codec__jpg_image = {
  key_frame_interval : string prop option; [@option]
  label : string prop option; [@option]
  range : string prop option; [@option]
  sprite_column : float prop option; [@option]
  start : string prop;
  step : string prop option; [@option]
  stretch_mode : string prop option; [@option]
  sync_mode : string prop option; [@option]
  layer : output__custom_preset__codec__jpg_image__layer list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__codec__jpg_image) -> ()

let yojson_of_output__custom_preset__codec__jpg_image =
  (function
   | {
       key_frame_interval = v_key_frame_interval;
       label = v_label;
       range = v_range;
       sprite_column = v_sprite_column;
       start = v_start;
       step = v_step;
       stretch_mode = v_stretch_mode;
       sync_mode = v_sync_mode;
       layer = v_layer;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__codec__jpg_image__layer
             v_layer
         in
         ("layer", arg) :: bnds
       in
       let bnds =
         match v_sync_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sync_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stretch_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stretch_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_step with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "step", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start in
         ("start", arg) :: bnds
       in
       let bnds =
         match v_sprite_column with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sprite_column", arg in
             bnd :: bnds
       in
       let bnds =
         match v_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "range", arg in
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
       let bnds =
         match v_key_frame_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_frame_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__custom_preset__codec__jpg_image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__codec__jpg_image

[@@@deriving.end]

type output__custom_preset__codec__png_image__layer = {
  height : string prop option; [@option]
  label : string prop option; [@option]
  width : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : output__custom_preset__codec__png_image__layer) -> ()

let yojson_of_output__custom_preset__codec__png_image__layer =
  (function
   | { height = v_height; label = v_label; width = v_width } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_width with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "width", arg in
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
       let bnds =
         match v_height with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "height", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__custom_preset__codec__png_image__layer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__codec__png_image__layer

[@@@deriving.end]

type output__custom_preset__codec__png_image = {
  key_frame_interval : string prop option; [@option]
  label : string prop option; [@option]
  range : string prop option; [@option]
  start : string prop;
  step : string prop option; [@option]
  stretch_mode : string prop option; [@option]
  sync_mode : string prop option; [@option]
  layer : output__custom_preset__codec__png_image__layer list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__codec__png_image) -> ()

let yojson_of_output__custom_preset__codec__png_image =
  (function
   | {
       key_frame_interval = v_key_frame_interval;
       label = v_label;
       range = v_range;
       start = v_start;
       step = v_step;
       stretch_mode = v_stretch_mode;
       sync_mode = v_sync_mode;
       layer = v_layer;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__codec__png_image__layer
             v_layer
         in
         ("layer", arg) :: bnds
       in
       let bnds =
         match v_sync_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sync_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stretch_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stretch_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_step with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "step", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start in
         ("start", arg) :: bnds
       in
       let bnds =
         match v_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "range", arg in
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
       let bnds =
         match v_key_frame_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_frame_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__custom_preset__codec__png_image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__codec__png_image

[@@@deriving.end]

type output__custom_preset__codec = {
  aac_audio : output__custom_preset__codec__aac_audio list;
  copy_audio : output__custom_preset__codec__copy_audio list;
  copy_video : output__custom_preset__codec__copy_video list;
  dd_audio : output__custom_preset__codec__dd_audio list;
  h264_video : output__custom_preset__codec__h264_video list;
  h265_video : output__custom_preset__codec__h265_video list;
  jpg_image : output__custom_preset__codec__jpg_image list;
  png_image : output__custom_preset__codec__png_image list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__codec) -> ()

let yojson_of_output__custom_preset__codec =
  (function
   | {
       aac_audio = v_aac_audio;
       copy_audio = v_copy_audio;
       copy_video = v_copy_video;
       dd_audio = v_dd_audio;
       h264_video = v_h264_video;
       h265_video = v_h265_video;
       jpg_image = v_jpg_image;
       png_image = v_png_image;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__codec__png_image
             v_png_image
         in
         ("png_image", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__codec__jpg_image
             v_jpg_image
         in
         ("jpg_image", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__codec__h265_video
             v_h265_video
         in
         ("h265_video", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__codec__h264_video
             v_h264_video
         in
         ("h264_video", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__codec__dd_audio
             v_dd_audio
         in
         ("dd_audio", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__codec__copy_video
             v_copy_video
         in
         ("copy_video", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__codec__copy_audio
             v_copy_audio
         in
         ("copy_audio", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__codec__aac_audio
             v_aac_audio
         in
         ("aac_audio", arg) :: bnds
       in
       `Assoc bnds
    : output__custom_preset__codec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__codec

[@@@deriving.end]

type output__custom_preset__filter__crop_rectangle = {
  height : string prop option; [@option]
  left : string prop option; [@option]
  top : string prop option; [@option]
  width : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__filter__crop_rectangle) -> ()

let yojson_of_output__custom_preset__filter__crop_rectangle =
  (function
   | {
       height = v_height;
       left = v_left;
       top = v_top;
       width = v_width;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_width with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "width", arg in
             bnd :: bnds
       in
       let bnds =
         match v_top with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "top", arg in
             bnd :: bnds
       in
       let bnds =
         match v_left with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "left", arg in
             bnd :: bnds
       in
       let bnds =
         match v_height with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "height", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__custom_preset__filter__crop_rectangle ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__filter__crop_rectangle

[@@@deriving.end]

type output__custom_preset__filter__deinterlace = {
  mode : string prop option; [@option]
  parity : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__filter__deinterlace) -> ()

let yojson_of_output__custom_preset__filter__deinterlace =
  (function
   | { mode = v_mode; parity = v_parity } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parity", arg in
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
       `Assoc bnds
    : output__custom_preset__filter__deinterlace ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__filter__deinterlace

[@@@deriving.end]

type output__custom_preset__filter__fade_in = {
  duration : string prop;
  fade_color : string prop;
  start : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__filter__fade_in) -> ()

let yojson_of_output__custom_preset__filter__fade_in =
  (function
   | {
       duration = v_duration;
       fade_color = v_fade_color;
       start = v_start;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fade_color in
         ("fade_color", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
       in
       `Assoc bnds
    : output__custom_preset__filter__fade_in ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__filter__fade_in

[@@@deriving.end]

type output__custom_preset__filter__fade_out = {
  duration : string prop;
  fade_color : string prop;
  start : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__filter__fade_out) -> ()

let yojson_of_output__custom_preset__filter__fade_out =
  (function
   | {
       duration = v_duration;
       fade_color = v_fade_color;
       start = v_start;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fade_color in
         ("fade_color", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
       in
       `Assoc bnds
    : output__custom_preset__filter__fade_out ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__filter__fade_out

[@@@deriving.end]

type output__custom_preset__filter__overlay__audio = {
  audio_gain_level : float prop option; [@option]
  end_ : string prop option; [@option] [@key "end"]
  fade_in_duration : string prop option; [@option]
  fade_out_duration : string prop option; [@option]
  input_label : string prop;
  start : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__filter__overlay__audio) -> ()

let yojson_of_output__custom_preset__filter__overlay__audio =
  (function
   | {
       audio_gain_level = v_audio_gain_level;
       end_ = v_end_;
       fade_in_duration = v_fade_in_duration;
       fade_out_duration = v_fade_out_duration;
       input_label = v_input_label;
       start = v_start;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_input_label in
         ("input_label", arg) :: bnds
       in
       let bnds =
         match v_fade_out_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fade_out_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fade_in_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fade_in_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_gain_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "audio_gain_level", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__custom_preset__filter__overlay__audio ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__filter__overlay__audio

[@@@deriving.end]

type output__custom_preset__filter__overlay__video__crop_rectangle = {
  height : string prop option; [@option]
  left : string prop option; [@option]
  top : string prop option; [@option]
  width : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       output__custom_preset__filter__overlay__video__crop_rectangle) ->
  ()

let yojson_of_output__custom_preset__filter__overlay__video__crop_rectangle
    =
  (function
   | {
       height = v_height;
       left = v_left;
       top = v_top;
       width = v_width;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_width with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "width", arg in
             bnd :: bnds
       in
       let bnds =
         match v_top with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "top", arg in
             bnd :: bnds
       in
       let bnds =
         match v_left with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "left", arg in
             bnd :: bnds
       in
       let bnds =
         match v_height with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "height", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__custom_preset__filter__overlay__video__crop_rectangle ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_output__custom_preset__filter__overlay__video__crop_rectangle

[@@@deriving.end]

type output__custom_preset__filter__overlay__video__position = {
  height : string prop option; [@option]
  left : string prop option; [@option]
  top : string prop option; [@option]
  width : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : output__custom_preset__filter__overlay__video__position) ->
  ()

let yojson_of_output__custom_preset__filter__overlay__video__position
    =
  (function
   | {
       height = v_height;
       left = v_left;
       top = v_top;
       width = v_width;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_width with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "width", arg in
             bnd :: bnds
       in
       let bnds =
         match v_top with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "top", arg in
             bnd :: bnds
       in
       let bnds =
         match v_left with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "left", arg in
             bnd :: bnds
       in
       let bnds =
         match v_height with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "height", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__custom_preset__filter__overlay__video__position ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_output__custom_preset__filter__overlay__video__position

[@@@deriving.end]

type output__custom_preset__filter__overlay__video = {
  audio_gain_level : float prop option; [@option]
  end_ : string prop option; [@option] [@key "end"]
  fade_in_duration : string prop option; [@option]
  fade_out_duration : string prop option; [@option]
  input_label : string prop;
  opacity : float prop option; [@option]
  start : string prop option; [@option]
  crop_rectangle :
    output__custom_preset__filter__overlay__video__crop_rectangle
    list;
  position :
    output__custom_preset__filter__overlay__video__position list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__filter__overlay__video) -> ()

let yojson_of_output__custom_preset__filter__overlay__video =
  (function
   | {
       audio_gain_level = v_audio_gain_level;
       end_ = v_end_;
       fade_in_duration = v_fade_in_duration;
       fade_out_duration = v_fade_out_duration;
       input_label = v_input_label;
       opacity = v_opacity;
       start = v_start;
       crop_rectangle = v_crop_rectangle;
       position = v_position;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__filter__overlay__video__position
             v_position
         in
         ("position", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__filter__overlay__video__crop_rectangle
             v_crop_rectangle
         in
         ("crop_rectangle", arg) :: bnds
       in
       let bnds =
         match v_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_opacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "opacity", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_input_label in
         ("input_label", arg) :: bnds
       in
       let bnds =
         match v_fade_out_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fade_out_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fade_in_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fade_in_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_gain_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "audio_gain_level", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__custom_preset__filter__overlay__video ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__filter__overlay__video

[@@@deriving.end]

type output__custom_preset__filter__overlay = {
  audio : output__custom_preset__filter__overlay__audio list;
  video : output__custom_preset__filter__overlay__video list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__filter__overlay) -> ()

let yojson_of_output__custom_preset__filter__overlay =
  (function
   | { audio = v_audio; video = v_video } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__filter__overlay__video
             v_video
         in
         ("video", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__filter__overlay__audio
             v_audio
         in
         ("audio", arg) :: bnds
       in
       `Assoc bnds
    : output__custom_preset__filter__overlay ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__filter__overlay

[@@@deriving.end]

type output__custom_preset__filter = {
  rotation : string prop option; [@option]
  crop_rectangle :
    output__custom_preset__filter__crop_rectangle list;
  deinterlace : output__custom_preset__filter__deinterlace list;
  fade_in : output__custom_preset__filter__fade_in list;
  fade_out : output__custom_preset__filter__fade_out list;
  overlay : output__custom_preset__filter__overlay list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__filter) -> ()

let yojson_of_output__custom_preset__filter =
  (function
   | {
       rotation = v_rotation;
       crop_rectangle = v_crop_rectangle;
       deinterlace = v_deinterlace;
       fade_in = v_fade_in;
       fade_out = v_fade_out;
       overlay = v_overlay;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__filter__overlay
             v_overlay
         in
         ("overlay", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__filter__fade_out
             v_fade_out
         in
         ("fade_out", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__filter__fade_in
             v_fade_in
         in
         ("fade_in", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__filter__deinterlace
             v_deinterlace
         in
         ("deinterlace", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__filter__crop_rectangle
             v_crop_rectangle
         in
         ("crop_rectangle", arg) :: bnds
       in
       let bnds =
         match v_rotation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rotation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__custom_preset__filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__filter

[@@@deriving.end]

type output__custom_preset__format__jpg = {
  filename_pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__format__jpg) -> ()

let yojson_of_output__custom_preset__format__jpg =
  (function
   | { filename_pattern = v_filename_pattern } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_filename_pattern
         in
         ("filename_pattern", arg) :: bnds
       in
       `Assoc bnds
    : output__custom_preset__format__jpg ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__format__jpg

[@@@deriving.end]

type output__custom_preset__format__mp4__output_file = {
  labels : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : output__custom_preset__format__mp4__output_file) -> ()

let yojson_of_output__custom_preset__format__mp4__output_file =
  (function
   | { labels = v_labels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_labels
         in
         ("labels", arg) :: bnds
       in
       `Assoc bnds
    : output__custom_preset__format__mp4__output_file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__format__mp4__output_file

[@@@deriving.end]

type output__custom_preset__format__mp4 = {
  filename_pattern : string prop;
  output_file : output__custom_preset__format__mp4__output_file list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__format__mp4) -> ()

let yojson_of_output__custom_preset__format__mp4 =
  (function
   | {
       filename_pattern = v_filename_pattern;
       output_file = v_output_file;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__format__mp4__output_file
             v_output_file
         in
         ("output_file", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_filename_pattern
         in
         ("filename_pattern", arg) :: bnds
       in
       `Assoc bnds
    : output__custom_preset__format__mp4 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__format__mp4

[@@@deriving.end]

type output__custom_preset__format__png = {
  filename_pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__format__png) -> ()

let yojson_of_output__custom_preset__format__png =
  (function
   | { filename_pattern = v_filename_pattern } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_filename_pattern
         in
         ("filename_pattern", arg) :: bnds
       in
       `Assoc bnds
    : output__custom_preset__format__png ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__format__png

[@@@deriving.end]

type output__custom_preset__format__transport_stream__output_file = {
  labels : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       output__custom_preset__format__transport_stream__output_file) ->
  ()

let yojson_of_output__custom_preset__format__transport_stream__output_file
    =
  (function
   | { labels = v_labels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_labels
         in
         ("labels", arg) :: bnds
       in
       `Assoc bnds
    : output__custom_preset__format__transport_stream__output_file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_output__custom_preset__format__transport_stream__output_file

[@@@deriving.end]

type output__custom_preset__format__transport_stream = {
  filename_pattern : string prop;
  output_file :
    output__custom_preset__format__transport_stream__output_file list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : output__custom_preset__format__transport_stream) -> ()

let yojson_of_output__custom_preset__format__transport_stream =
  (function
   | {
       filename_pattern = v_filename_pattern;
       output_file = v_output_file;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__format__transport_stream__output_file
             v_output_file
         in
         ("output_file", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_filename_pattern
         in
         ("filename_pattern", arg) :: bnds
       in
       `Assoc bnds
    : output__custom_preset__format__transport_stream ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__format__transport_stream

[@@@deriving.end]

type output__custom_preset__format = {
  jpg : output__custom_preset__format__jpg list;
  mp4 : output__custom_preset__format__mp4 list;
  png : output__custom_preset__format__png list;
  transport_stream :
    output__custom_preset__format__transport_stream list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset__format) -> ()

let yojson_of_output__custom_preset__format =
  (function
   | {
       jpg = v_jpg;
       mp4 = v_mp4;
       png = v_png;
       transport_stream = v_transport_stream;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__format__transport_stream
             v_transport_stream
         in
         ("transport_stream", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__format__png v_png
         in
         ("png", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__format__mp4 v_mp4
         in
         ("mp4", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_output__custom_preset__format__jpg v_jpg
         in
         ("jpg", arg) :: bnds
       in
       `Assoc bnds
    : output__custom_preset__format ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset__format

[@@@deriving.end]

type output__custom_preset = {
  experimental_options : (string * string prop) list option;
      [@option]
  codec : output__custom_preset__codec list;
  filter : output__custom_preset__filter list;
  format : output__custom_preset__format list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__custom_preset) -> ()

let yojson_of_output__custom_preset =
  (function
   | {
       experimental_options = v_experimental_options;
       codec = v_codec;
       filter = v_filter;
       format = v_format;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_output__custom_preset__format
             v_format
         in
         ("format", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_output__custom_preset__filter
             v_filter
         in
         ("filter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_output__custom_preset__codec
             v_codec
         in
         ("codec", arg) :: bnds
       in
       let bnds =
         match v_experimental_options with
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
             let bnd = "experimental_options", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__custom_preset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__custom_preset

[@@@deriving.end]

type output__face_detector_preset = {
  analysis_resolution : string prop option; [@option]
  blur_type : string prop option; [@option]
  experimental_options : (string * string prop) list option;
      [@option]
  face_redactor_mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__face_detector_preset) -> ()

let yojson_of_output__face_detector_preset =
  (function
   | {
       analysis_resolution = v_analysis_resolution;
       blur_type = v_blur_type;
       experimental_options = v_experimental_options;
       face_redactor_mode = v_face_redactor_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_face_redactor_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "face_redactor_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_experimental_options with
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
             let bnd = "experimental_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_blur_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "blur_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_analysis_resolution with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "analysis_resolution", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__face_detector_preset ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__face_detector_preset

[@@@deriving.end]

type output__video_analyzer_preset = {
  audio_analysis_mode : string prop option; [@option]
  audio_language : string prop option; [@option]
  experimental_options : (string * string prop) list option;
      [@option]
  insights_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__video_analyzer_preset) -> ()

let yojson_of_output__video_analyzer_preset =
  (function
   | {
       audio_analysis_mode = v_audio_analysis_mode;
       audio_language = v_audio_language;
       experimental_options = v_experimental_options;
       insights_type = v_insights_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_insights_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "insights_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_experimental_options with
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
             let bnd = "experimental_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_language", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_analysis_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_analysis_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__video_analyzer_preset ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__video_analyzer_preset

[@@@deriving.end]

type output = {
  on_error_action : string prop option; [@option]
  relative_priority : string prop option; [@option]
  audio_analyzer_preset : output__audio_analyzer_preset list;
  builtin_preset : output__builtin_preset list;
  custom_preset : output__custom_preset list;
  face_detector_preset : output__face_detector_preset list;
  video_analyzer_preset : output__video_analyzer_preset list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output) -> ()

let yojson_of_output =
  (function
   | {
       on_error_action = v_on_error_action;
       relative_priority = v_relative_priority;
       audio_analyzer_preset = v_audio_analyzer_preset;
       builtin_preset = v_builtin_preset;
       custom_preset = v_custom_preset;
       face_detector_preset = v_face_detector_preset;
       video_analyzer_preset = v_video_analyzer_preset;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_output__video_analyzer_preset
             v_video_analyzer_preset
         in
         ("video_analyzer_preset", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_output__face_detector_preset
             v_face_detector_preset
         in
         ("face_detector_preset", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_output__custom_preset
             v_custom_preset
         in
         ("custom_preset", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_output__builtin_preset
             v_builtin_preset
         in
         ("builtin_preset", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_output__audio_analyzer_preset
             v_audio_analyzer_preset
         in
         ("audio_analyzer_preset", arg) :: bnds
       in
       let bnds =
         match v_relative_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "relative_priority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_error_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "on_error_action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output

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

type azurerm_media_transform = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  output : output list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_media_transform) -> ()

let yojson_of_azurerm_media_transform =
  (function
   | {
       description = v_description;
       id = v_id;
       media_services_account_name = v_media_services_account_name;
       name = v_name;
       resource_group_name = v_resource_group_name;
       output = v_output;
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
         let arg = yojson_of_list yojson_of_output v_output in
         ("output", arg) :: bnds
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
    : azurerm_media_transform -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_media_transform

[@@@deriving.end]

let output__audio_analyzer_preset ?audio_analysis_mode
    ?audio_language ?experimental_options () :
    output__audio_analyzer_preset =
  { audio_analysis_mode; audio_language; experimental_options }

let output__builtin_preset__preset_configuration ?complexity
    ?interleave_output ?key_frame_interval_in_seconds
    ?max_bitrate_bps ?max_height ?max_layers ?min_bitrate_bps
    ?min_height () : output__builtin_preset__preset_configuration =
  {
    complexity;
    interleave_output;
    key_frame_interval_in_seconds;
    max_bitrate_bps;
    max_height;
    max_layers;
    min_bitrate_bps;
    min_height;
  }

let output__builtin_preset ?(preset_configuration = []) ~preset_name
    () : output__builtin_preset =
  { preset_name; preset_configuration }

let output__custom_preset__codec__aac_audio ?bitrate ?channels ?label
    ?profile ?sampling_rate () :
    output__custom_preset__codec__aac_audio =
  { bitrate; channels; label; profile; sampling_rate }

let output__custom_preset__codec__copy_audio ?label () :
    output__custom_preset__codec__copy_audio =
  { label }

let output__custom_preset__codec__copy_video ?label () :
    output__custom_preset__codec__copy_video =
  { label }

let output__custom_preset__codec__dd_audio ?bitrate ?channels ?label
    ?sampling_rate () : output__custom_preset__codec__dd_audio =
  { bitrate; channels; label; sampling_rate }

let output__custom_preset__codec__h264_video__layer
    ?adaptive_b_frame_enabled ?b_frames ?buffer_window ?crf
    ?entropy_mode ?frame_rate ?height ?label ?level ?max_bitrate
    ?profile ?reference_frames ?slices ?width ~bitrate () :
    output__custom_preset__codec__h264_video__layer =
  {
    adaptive_b_frame_enabled;
    b_frames;
    bitrate;
    buffer_window;
    crf;
    entropy_mode;
    frame_rate;
    height;
    label;
    level;
    max_bitrate;
    profile;
    reference_frames;
    slices;
    width;
  }

let output__custom_preset__codec__h264_video ?complexity
    ?key_frame_interval ?label ?rate_control_mode
    ?scene_change_detection_enabled ?stretch_mode ?sync_mode
    ?(layer = []) () : output__custom_preset__codec__h264_video =
  {
    complexity;
    key_frame_interval;
    label;
    rate_control_mode;
    scene_change_detection_enabled;
    stretch_mode;
    sync_mode;
    layer;
  }

let output__custom_preset__codec__h265_video__layer
    ?adaptive_b_frame_enabled ?b_frames ?buffer_window ?crf
    ?frame_rate ?height ?label ?level ?max_bitrate ?profile
    ?reference_frames ?slices ?width ~bitrate () :
    output__custom_preset__codec__h265_video__layer =
  {
    adaptive_b_frame_enabled;
    b_frames;
    bitrate;
    buffer_window;
    crf;
    frame_rate;
    height;
    label;
    level;
    max_bitrate;
    profile;
    reference_frames;
    slices;
    width;
  }

let output__custom_preset__codec__h265_video ?complexity
    ?key_frame_interval ?label ?scene_change_detection_enabled
    ?stretch_mode ?sync_mode ?(layer = []) () :
    output__custom_preset__codec__h265_video =
  {
    complexity;
    key_frame_interval;
    label;
    scene_change_detection_enabled;
    stretch_mode;
    sync_mode;
    layer;
  }

let output__custom_preset__codec__jpg_image__layer ?height ?label
    ?quality ?width () :
    output__custom_preset__codec__jpg_image__layer =
  { height; label; quality; width }

let output__custom_preset__codec__jpg_image ?key_frame_interval
    ?label ?range ?sprite_column ?step ?stretch_mode ?sync_mode
    ?(layer = []) ~start () : output__custom_preset__codec__jpg_image
    =
  {
    key_frame_interval;
    label;
    range;
    sprite_column;
    start;
    step;
    stretch_mode;
    sync_mode;
    layer;
  }

let output__custom_preset__codec__png_image__layer ?height ?label
    ?width () : output__custom_preset__codec__png_image__layer =
  { height; label; width }

let output__custom_preset__codec__png_image ?key_frame_interval
    ?label ?range ?step ?stretch_mode ?sync_mode ?(layer = []) ~start
    () : output__custom_preset__codec__png_image =
  {
    key_frame_interval;
    label;
    range;
    start;
    step;
    stretch_mode;
    sync_mode;
    layer;
  }

let output__custom_preset__codec ?(aac_audio = []) ?(copy_audio = [])
    ?(copy_video = []) ?(dd_audio = []) ?(h264_video = [])
    ?(h265_video = []) ?(jpg_image = []) ?(png_image = []) () :
    output__custom_preset__codec =
  {
    aac_audio;
    copy_audio;
    copy_video;
    dd_audio;
    h264_video;
    h265_video;
    jpg_image;
    png_image;
  }

let output__custom_preset__filter__crop_rectangle ?height ?left ?top
    ?width () : output__custom_preset__filter__crop_rectangle =
  { height; left; top; width }

let output__custom_preset__filter__deinterlace ?mode ?parity () :
    output__custom_preset__filter__deinterlace =
  { mode; parity }

let output__custom_preset__filter__fade_in ?start ~duration
    ~fade_color () : output__custom_preset__filter__fade_in =
  { duration; fade_color; start }

let output__custom_preset__filter__fade_out ?start ~duration
    ~fade_color () : output__custom_preset__filter__fade_out =
  { duration; fade_color; start }

let output__custom_preset__filter__overlay__audio ?audio_gain_level
    ?end_ ?fade_in_duration ?fade_out_duration ?start ~input_label ()
    : output__custom_preset__filter__overlay__audio =
  {
    audio_gain_level;
    end_;
    fade_in_duration;
    fade_out_duration;
    input_label;
    start;
  }

let output__custom_preset__filter__overlay__video__crop_rectangle
    ?height ?left ?top ?width () :
    output__custom_preset__filter__overlay__video__crop_rectangle =
  { height; left; top; width }

let output__custom_preset__filter__overlay__video__position ?height
    ?left ?top ?width () :
    output__custom_preset__filter__overlay__video__position =
  { height; left; top; width }

let output__custom_preset__filter__overlay__video ?audio_gain_level
    ?end_ ?fade_in_duration ?fade_out_duration ?opacity ?start
    ?(crop_rectangle = []) ?(position = []) ~input_label () :
    output__custom_preset__filter__overlay__video =
  {
    audio_gain_level;
    end_;
    fade_in_duration;
    fade_out_duration;
    input_label;
    opacity;
    start;
    crop_rectangle;
    position;
  }

let output__custom_preset__filter__overlay ?(audio = [])
    ?(video = []) () : output__custom_preset__filter__overlay =
  { audio; video }

let output__custom_preset__filter ?rotation ?(crop_rectangle = [])
    ?(deinterlace = []) ?(fade_in = []) ?(fade_out = [])
    ?(overlay = []) () : output__custom_preset__filter =
  {
    rotation;
    crop_rectangle;
    deinterlace;
    fade_in;
    fade_out;
    overlay;
  }

let output__custom_preset__format__jpg ~filename_pattern () :
    output__custom_preset__format__jpg =
  { filename_pattern }

let output__custom_preset__format__mp4__output_file ~labels () :
    output__custom_preset__format__mp4__output_file =
  { labels }

let output__custom_preset__format__mp4 ?(output_file = [])
    ~filename_pattern () : output__custom_preset__format__mp4 =
  { filename_pattern; output_file }

let output__custom_preset__format__png ~filename_pattern () :
    output__custom_preset__format__png =
  { filename_pattern }

let output__custom_preset__format__transport_stream__output_file
    ~labels () :
    output__custom_preset__format__transport_stream__output_file =
  { labels }

let output__custom_preset__format__transport_stream
    ?(output_file = []) ~filename_pattern () :
    output__custom_preset__format__transport_stream =
  { filename_pattern; output_file }

let output__custom_preset__format ?(jpg = []) ?(mp4 = []) ?(png = [])
    ?(transport_stream = []) () : output__custom_preset__format =
  { jpg; mp4; png; transport_stream }

let output__custom_preset ?experimental_options ?(filter = []) ~codec
    ~format () : output__custom_preset =
  { experimental_options; codec; filter; format }

let output__face_detector_preset ?analysis_resolution ?blur_type
    ?experimental_options ?face_redactor_mode () :
    output__face_detector_preset =
  {
    analysis_resolution;
    blur_type;
    experimental_options;
    face_redactor_mode;
  }

let output__video_analyzer_preset ?audio_analysis_mode
    ?audio_language ?experimental_options ?insights_type () :
    output__video_analyzer_preset =
  {
    audio_analysis_mode;
    audio_language;
    experimental_options;
    insights_type;
  }

let output ?on_error_action ?relative_priority
    ?(audio_analyzer_preset = []) ?(builtin_preset = [])
    ?(custom_preset = []) ?(face_detector_preset = [])
    ?(video_analyzer_preset = []) () : output =
  {
    on_error_action;
    relative_priority;
    audio_analyzer_preset;
    builtin_preset;
    custom_preset;
    face_detector_preset;
    video_analyzer_preset;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_media_transform ?description ?id ?(output = []) ?timeouts
    ~media_services_account_name ~name ~resource_group_name () :
    azurerm_media_transform =
  {
    description;
    id;
    media_services_account_name;
    name;
    resource_group_name;
    output;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?description ?id ?(output = []) ?timeouts
    ~media_services_account_name ~name ~resource_group_name __id =
  let __type = "azurerm_media_transform" in
  let __attrs =
    ({
       tf_name = __id;
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
      yojson_of_azurerm_media_transform
        (azurerm_media_transform ?description ?id ~output ?timeouts
           ~media_services_account_name ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?(output = []) ?timeouts
    ~media_services_account_name ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~output ?timeouts
      ~media_services_account_name ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
