(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type audio = {
  audio_packing_mode : string prop option; [@option]
      (** audio_packing_mode *)
  bit_rate : string prop option; [@option]  (** bit_rate *)
  channels : string prop option; [@option]  (** channels *)
  codec : string prop option; [@option]  (** codec *)
  sample_rate : string prop option; [@option]  (** sample_rate *)
}
[@@deriving yojson_of]
(** audio *)

type audio_codec_options = {
  bit_depth : string prop option; [@option]  (** bit_depth *)
  bit_order : string prop option; [@option]  (** bit_order *)
  profile : string prop option; [@option]  (** profile *)
  signed : string prop option; [@option]  (** signed *)
}
[@@deriving yojson_of]
(** audio_codec_options *)

type thumbnails = {
  aspect_ratio : string prop option; [@option]  (** aspect_ratio *)
  format : string prop option; [@option]  (** format *)
  interval : string prop option; [@option]  (** interval *)
  max_height : string prop option; [@option]  (** max_height *)
  max_width : string prop option; [@option]  (** max_width *)
  padding_policy : string prop option; [@option]
      (** padding_policy *)
  resolution : string prop option; [@option]  (** resolution *)
  sizing_policy : string prop option; [@option]  (** sizing_policy *)
}
[@@deriving yojson_of]
(** thumbnails *)

type video = {
  aspect_ratio : string prop option; [@option]  (** aspect_ratio *)
  bit_rate : string prop option; [@option]  (** bit_rate *)
  codec : string prop option; [@option]  (** codec *)
  display_aspect_ratio : string prop option; [@option]
      (** display_aspect_ratio *)
  fixed_gop : string prop option; [@option]  (** fixed_gop *)
  frame_rate : string prop option; [@option]  (** frame_rate *)
  keyframes_max_dist : string prop option; [@option]
      (** keyframes_max_dist *)
  max_frame_rate : string prop option; [@option]
      (** max_frame_rate *)
  max_height : string prop option; [@option]  (** max_height *)
  max_width : string prop option; [@option]  (** max_width *)
  padding_policy : string prop option; [@option]
      (** padding_policy *)
  resolution : string prop option; [@option]  (** resolution *)
  sizing_policy : string prop option; [@option]  (** sizing_policy *)
}
[@@deriving yojson_of]
(** video *)

type video_watermarks = {
  horizontal_align : string prop option; [@option]
      (** horizontal_align *)
  horizontal_offset : string prop option; [@option]
      (** horizontal_offset *)
  id : string prop option; [@option]  (** id *)
  max_height : string prop option; [@option]  (** max_height *)
  max_width : string prop option; [@option]  (** max_width *)
  opacity : string prop option; [@option]  (** opacity *)
  sizing_policy : string prop option; [@option]  (** sizing_policy *)
  target : string prop option; [@option]  (** target *)
  vertical_align : string prop option; [@option]
      (** vertical_align *)
  vertical_offset : string prop option; [@option]
      (** vertical_offset *)
}
[@@deriving yojson_of]
(** video_watermarks *)

type aws_elastictranscoder_preset = {
  container : string prop;  (** container *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  video_codec_options : (string * string prop) list option; [@option]
      (** video_codec_options *)
  audio : audio list;
  audio_codec_options : audio_codec_options list;
  thumbnails : thumbnails list;
  video : video list;
  video_watermarks : video_watermarks list;
}
[@@deriving yojson_of]
(** aws_elastictranscoder_preset *)

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
    ?video_codec_options ~container ~audio ~audio_codec_options
    ~thumbnails ~video ~video_watermarks () :
    aws_elastictranscoder_preset =
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
  arn : string prop;
  container : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  video_codec_options : (string * string) list prop;
}

let make ?description ?id ?name ?type_ ?video_codec_options
    ~container ~audio ~audio_codec_options ~thumbnails ~video
    ~video_watermarks __id =
  let __type = "aws_elastictranscoder_preset" in
  let __attrs =
    ({
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
           ?video_codec_options ~container ~audio
           ~audio_codec_options ~thumbnails ~video ~video_watermarks
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?name ?type_
    ?video_codec_options ~container ~audio ~audio_codec_options
    ~thumbnails ~video ~video_watermarks __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?name ?type_ ?video_codec_options
      ~container ~audio ~audio_codec_options ~thumbnails ~video
      ~video_watermarks __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
