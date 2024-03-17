(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_elastictranscoder_preset__audio = {
  audio_packing_mode : string option; [@option]
      (** audio_packing_mode *)
  bit_rate : string option; [@option]  (** bit_rate *)
  channels : string option; [@option]  (** channels *)
  codec : string option; [@option]  (** codec *)
  sample_rate : string option; [@option]  (** sample_rate *)
}
[@@deriving yojson_of]
(** aws_elastictranscoder_preset__audio *)

type aws_elastictranscoder_preset__audio_codec_options = {
  bit_depth : string option; [@option]  (** bit_depth *)
  bit_order : string option; [@option]  (** bit_order *)
  profile : string option; [@option]  (** profile *)
  signed : string option; [@option]  (** signed *)
}
[@@deriving yojson_of]
(** aws_elastictranscoder_preset__audio_codec_options *)

type aws_elastictranscoder_preset__thumbnails = {
  aspect_ratio : string option; [@option]  (** aspect_ratio *)
  format : string option; [@option]  (** format *)
  interval : string option; [@option]  (** interval *)
  max_height : string option; [@option]  (** max_height *)
  max_width : string option; [@option]  (** max_width *)
  padding_policy : string option; [@option]  (** padding_policy *)
  resolution : string option; [@option]  (** resolution *)
  sizing_policy : string option; [@option]  (** sizing_policy *)
}
[@@deriving yojson_of]
(** aws_elastictranscoder_preset__thumbnails *)

type aws_elastictranscoder_preset__video = {
  aspect_ratio : string option; [@option]  (** aspect_ratio *)
  bit_rate : string option; [@option]  (** bit_rate *)
  codec : string option; [@option]  (** codec *)
  display_aspect_ratio : string option; [@option]
      (** display_aspect_ratio *)
  fixed_gop : string option; [@option]  (** fixed_gop *)
  frame_rate : string option; [@option]  (** frame_rate *)
  keyframes_max_dist : string option; [@option]
      (** keyframes_max_dist *)
  max_frame_rate : string option; [@option]  (** max_frame_rate *)
  max_height : string option; [@option]  (** max_height *)
  max_width : string option; [@option]  (** max_width *)
  padding_policy : string option; [@option]  (** padding_policy *)
  resolution : string option; [@option]  (** resolution *)
  sizing_policy : string option; [@option]  (** sizing_policy *)
}
[@@deriving yojson_of]
(** aws_elastictranscoder_preset__video *)

type aws_elastictranscoder_preset__video_watermarks = {
  horizontal_align : string option; [@option]
      (** horizontal_align *)
  horizontal_offset : string option; [@option]
      (** horizontal_offset *)
  id : string option; [@option]  (** id *)
  max_height : string option; [@option]  (** max_height *)
  max_width : string option; [@option]  (** max_width *)
  opacity : string option; [@option]  (** opacity *)
  sizing_policy : string option; [@option]  (** sizing_policy *)
  target : string option; [@option]  (** target *)
  vertical_align : string option; [@option]  (** vertical_align *)
  vertical_offset : string option; [@option]  (** vertical_offset *)
}
[@@deriving yojson_of]
(** aws_elastictranscoder_preset__video_watermarks *)

type aws_elastictranscoder_preset = {
  container : string;  (** container *)
  description : string option; [@option]  (** description *)
  video_codec_options : (string * string) list option; [@option]
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

let aws_elastictranscoder_preset ?description ?video_codec_options
    ~container ~audio ~audio_codec_options ~thumbnails ~video
    ~video_watermarks __resource_id =
  let __resource_type = "aws_elastictranscoder_preset" in
  let __resource =
    {
      container;
      description;
      video_codec_options;
      audio;
      audio_codec_options;
      thumbnails;
      video;
      video_watermarks;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elastictranscoder_preset __resource);
  ()
