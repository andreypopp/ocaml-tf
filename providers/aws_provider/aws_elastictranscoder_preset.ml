(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elastictranscoder_preset__audio = {
  audio_packing_mode : string prop option; [@option]
      (** audio_packing_mode *)
  bit_rate : string prop option; [@option]  (** bit_rate *)
  channels : string prop option; [@option]  (** channels *)
  codec : string prop option; [@option]  (** codec *)
  sample_rate : string prop option; [@option]  (** sample_rate *)
}
[@@deriving yojson_of]
(** aws_elastictranscoder_preset__audio *)

type aws_elastictranscoder_preset__audio_codec_options = {
  bit_depth : string prop option; [@option]  (** bit_depth *)
  bit_order : string prop option; [@option]  (** bit_order *)
  profile : string prop option; [@option]  (** profile *)
  signed : string prop option; [@option]  (** signed *)
}
[@@deriving yojson_of]
(** aws_elastictranscoder_preset__audio_codec_options *)

type aws_elastictranscoder_preset__thumbnails = {
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
(** aws_elastictranscoder_preset__thumbnails *)

type aws_elastictranscoder_preset__video = {
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
(** aws_elastictranscoder_preset__video *)

type aws_elastictranscoder_preset__video_watermarks = {
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
(** aws_elastictranscoder_preset__video_watermarks *)

type aws_elastictranscoder_preset = {
  container : string prop;  (** container *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  video_codec_options : (string * string prop) list option; [@option]
      (** video_codec_options *)
  audio : aws_elastictranscoder_preset__audio list;
  audio_codec_options :
    aws_elastictranscoder_preset__audio_codec_options list;
  thumbnails : aws_elastictranscoder_preset__thumbnails list;
  video : aws_elastictranscoder_preset__video list;
  video_watermarks :
    aws_elastictranscoder_preset__video_watermarks list;
}
[@@deriving yojson_of]
(** aws_elastictranscoder_preset *)

type t = {
  arn : string prop;
  container : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  video_codec_options : (string * string) list prop;
}

let aws_elastictranscoder_preset ?description ?id ?name ?type_
    ?video_codec_options ~container ~audio ~audio_codec_options
    ~thumbnails ~video ~video_watermarks __resource_id =
  let __resource_type = "aws_elastictranscoder_preset" in
  let __resource =
    ({
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
      : aws_elastictranscoder_preset)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elastictranscoder_preset __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       container =
         Prop.computed __resource_type __resource_id "container";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       type_ = Prop.computed __resource_type __resource_id "type";
       video_codec_options =
         Prop.computed __resource_type __resource_id
           "video_codec_options";
     }
      : t)
  in
  __resource_attributes
