(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type audio = {
  audio_packing_mode : string prop option; [@option]
  bit_rate : string prop option; [@option]
  channels : string prop option; [@option]
  codec : string prop option; [@option]
  sample_rate : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : audio) -> ()

let yojson_of_audio =
  (function
   | {
       audio_packing_mode = v_audio_packing_mode;
       bit_rate = v_bit_rate;
       channels = v_channels;
       codec = v_codec;
       sample_rate = v_sample_rate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sample_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sample_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_codec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "codec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_channels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "channels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bit_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bit_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_packing_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_packing_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : audio -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_audio

[@@@deriving.end]

type audio_codec_options = {
  bit_depth : string prop option; [@option]
  bit_order : string prop option; [@option]
  profile : string prop option; [@option]
  signed : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : audio_codec_options) -> ()

let yojson_of_audio_codec_options =
  (function
   | {
       bit_depth = v_bit_depth;
       bit_order = v_bit_order;
       profile = v_profile;
       signed = v_signed;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_signed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "signed", arg in
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
         match v_bit_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bit_order", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bit_depth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bit_depth", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : audio_codec_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_audio_codec_options

[@@@deriving.end]

type thumbnails = {
  aspect_ratio : string prop option; [@option]
  format : string prop option; [@option]
  interval : string prop option; [@option]
  max_height : string prop option; [@option]
  max_width : string prop option; [@option]
  padding_policy : string prop option; [@option]
  resolution : string prop option; [@option]
  sizing_policy : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : thumbnails) -> ()

let yojson_of_thumbnails =
  (function
   | {
       aspect_ratio = v_aspect_ratio;
       format = v_format;
       interval = v_interval;
       max_height = v_max_height;
       max_width = v_max_width;
       padding_policy = v_padding_policy;
       resolution = v_resolution;
       sizing_policy = v_sizing_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sizing_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sizing_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resolution with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resolution", arg in
             bnd :: bnds
       in
       let bnds =
         match v_padding_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "padding_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_width with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_width", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_height with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_height", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aspect_ratio with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aspect_ratio", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : thumbnails -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_thumbnails

[@@@deriving.end]

type video = {
  aspect_ratio : string prop option; [@option]
  bit_rate : string prop option; [@option]
  codec : string prop option; [@option]
  display_aspect_ratio : string prop option; [@option]
  fixed_gop : string prop option; [@option]
  frame_rate : string prop option; [@option]
  keyframes_max_dist : string prop option; [@option]
  max_frame_rate : string prop option; [@option]
  max_height : string prop option; [@option]
  max_width : string prop option; [@option]
  padding_policy : string prop option; [@option]
  resolution : string prop option; [@option]
  sizing_policy : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : video) -> ()

let yojson_of_video =
  (function
   | {
       aspect_ratio = v_aspect_ratio;
       bit_rate = v_bit_rate;
       codec = v_codec;
       display_aspect_ratio = v_display_aspect_ratio;
       fixed_gop = v_fixed_gop;
       frame_rate = v_frame_rate;
       keyframes_max_dist = v_keyframes_max_dist;
       max_frame_rate = v_max_frame_rate;
       max_height = v_max_height;
       max_width = v_max_width;
       padding_policy = v_padding_policy;
       resolution = v_resolution;
       sizing_policy = v_sizing_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sizing_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sizing_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resolution with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resolution", arg in
             bnd :: bnds
       in
       let bnds =
         match v_padding_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "padding_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_width with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_width", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_height with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_height", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_frame_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_frame_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keyframes_max_dist with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "keyframes_max_dist", arg in
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
         match v_fixed_gop with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fixed_gop", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_aspect_ratio with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_aspect_ratio", arg in
             bnd :: bnds
       in
       let bnds =
         match v_codec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "codec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bit_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bit_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aspect_ratio with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aspect_ratio", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : video -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_video

[@@@deriving.end]

type video_watermarks = {
  horizontal_align : string prop option; [@option]
  horizontal_offset : string prop option; [@option]
  id : string prop option; [@option]
  max_height : string prop option; [@option]
  max_width : string prop option; [@option]
  opacity : string prop option; [@option]
  sizing_policy : string prop option; [@option]
  target : string prop option; [@option]
  vertical_align : string prop option; [@option]
  vertical_offset : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : video_watermarks) -> ()

let yojson_of_video_watermarks =
  (function
   | {
       horizontal_align = v_horizontal_align;
       horizontal_offset = v_horizontal_offset;
       id = v_id;
       max_height = v_max_height;
       max_width = v_max_width;
       opacity = v_opacity;
       sizing_policy = v_sizing_policy;
       target = v_target;
       vertical_align = v_vertical_align;
       vertical_offset = v_vertical_offset;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vertical_offset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vertical_offset", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vertical_align with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vertical_align", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sizing_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sizing_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_opacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "opacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_width with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_width", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_height with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_height", arg in
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
         match v_horizontal_offset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "horizontal_offset", arg in
             bnd :: bnds
       in
       let bnds =
         match v_horizontal_align with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "horizontal_align", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : video_watermarks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_video_watermarks

[@@@deriving.end]

type aws_elastictranscoder_preset = {
  container : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  video_codec_options : string prop Tf_core.assoc option; [@option]
  audio : audio list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  audio_codec_options : audio_codec_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  thumbnails : thumbnails list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  video : video list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  video_watermarks : video_watermarks list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elastictranscoder_preset) -> ()

let yojson_of_aws_elastictranscoder_preset =
  (function
   | {
       container = v_container;
       description = v_description;
       id = v_id;
       name = v_name;
       type_ = v_type_;
       video_codec_options = v_video_codec_options;
       audio = v_audio;
       audio_codec_options = v_audio_codec_options;
       thumbnails = v_thumbnails;
       video = v_video;
       video_watermarks = v_video_watermarks;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_video_watermarks then bnds
         else
           let arg =
             (yojson_of_list yojson_of_video_watermarks)
               v_video_watermarks
           in
           let bnd = "video_watermarks", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_video then bnds
         else
           let arg = (yojson_of_list yojson_of_video) v_video in
           let bnd = "video", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_thumbnails then bnds
         else
           let arg =
             (yojson_of_list yojson_of_thumbnails) v_thumbnails
           in
           let bnd = "thumbnails", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_audio_codec_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_audio_codec_options)
               v_audio_codec_options
           in
           let bnd = "audio_codec_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_audio then bnds
         else
           let arg = (yojson_of_list yojson_of_audio) v_audio in
           let bnd = "audio", arg in
           bnd :: bnds
       in
       let bnds =
         match v_video_codec_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "video_codec_options", arg in
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
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_container in
         ("container", arg) :: bnds
       in
       `Assoc bnds
    : aws_elastictranscoder_preset ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elastictranscoder_preset

[@@@deriving.end]

let audio ?audio_packing_mode ?bit_rate ?channels ?codec ?sample_rate
    () : audio =
  { audio_packing_mode; bit_rate; channels; codec; sample_rate }

let audio_codec_options ?bit_depth ?bit_order ?profile ?signed () :
    audio_codec_options =
  { bit_depth; bit_order; profile; signed }

let thumbnails ?aspect_ratio ?format ?interval ?max_height ?max_width
    ?padding_policy ?resolution ?sizing_policy () : thumbnails =
  {
    aspect_ratio;
    format;
    interval;
    max_height;
    max_width;
    padding_policy;
    resolution;
    sizing_policy;
  }

let video ?aspect_ratio ?bit_rate ?codec ?display_aspect_ratio
    ?fixed_gop ?frame_rate ?keyframes_max_dist ?max_frame_rate
    ?max_height ?max_width ?padding_policy ?resolution ?sizing_policy
    () : video =
  {
    aspect_ratio;
    bit_rate;
    codec;
    display_aspect_ratio;
    fixed_gop;
    frame_rate;
    keyframes_max_dist;
    max_frame_rate;
    max_height;
    max_width;
    padding_policy;
    resolution;
    sizing_policy;
  }

let video_watermarks ?horizontal_align ?horizontal_offset ?id
    ?max_height ?max_width ?opacity ?sizing_policy ?target
    ?vertical_align ?vertical_offset () : video_watermarks =
  {
    horizontal_align;
    horizontal_offset;
    id;
    max_height;
    max_width;
    opacity;
    sizing_policy;
    target;
    vertical_align;
    vertical_offset;
  }

let aws_elastictranscoder_preset ?description ?id ?name ?type_
    ?video_codec_options ?(audio = []) ?(audio_codec_options = [])
    ?(thumbnails = []) ?(video = []) ~container ~video_watermarks ()
    : aws_elastictranscoder_preset =
  {
    container;
    description;
    id;
    name;
    type_;
    video_codec_options;
    audio;
    audio_codec_options;
    thumbnails;
    video;
    video_watermarks;
  }

type t = {
  tf_name : string;
  arn : string prop;
  container : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  video_codec_options : string Tf_core.assoc prop;
}

let make ?description ?id ?name ?type_ ?video_codec_options
    ?(audio = []) ?(audio_codec_options = []) ?(thumbnails = [])
    ?(video = []) ~container ~video_watermarks __id =
  let __type = "aws_elastictranscoder_preset" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       container = Prop.computed __type __id "container";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
       video_codec_options =
         Prop.computed __type __id "video_codec_options";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elastictranscoder_preset
        (aws_elastictranscoder_preset ?description ?id ?name ?type_
           ?video_codec_options ~audio ~audio_codec_options
           ~thumbnails ~video ~container ~video_watermarks ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?name ?type_
    ?video_codec_options ?(audio = []) ?(audio_codec_options = [])
    ?(thumbnails = []) ?(video = []) ~container ~video_watermarks
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?name ?type_ ?video_codec_options ~audio
      ~audio_codec_options ~thumbnails ~video ~container
      ~video_watermarks __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
