(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_medialive_multiplex_program__multiplex_program_settings__service_descriptor = {
  provider_name : string;  (** provider_name *)
  service_name : string;  (** service_name *)
}
[@@deriving yojson_of]
(** aws_medialive_multiplex_program__multiplex_program_settings__service_descriptor *)

type aws_medialive_multiplex_program__multiplex_program_settings__video_settings__statmux_settings = {
  maximum_bitrate : float option; [@option]  (** maximum_bitrate *)
  minimum_bitrate : float option; [@option]  (** minimum_bitrate *)
  priority : float option; [@option]  (** priority *)
}
[@@deriving yojson_of]
(** aws_medialive_multiplex_program__multiplex_program_settings__video_settings__statmux_settings *)

type aws_medialive_multiplex_program__multiplex_program_settings__video_settings = {
  constant_bitrate : float option; [@option]  (** constant_bitrate *)
  statmux_settings :
    aws_medialive_multiplex_program__multiplex_program_settings__video_settings__statmux_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_multiplex_program__multiplex_program_settings__video_settings *)

type aws_medialive_multiplex_program__multiplex_program_settings = {
  preferred_channel_pipeline : string;
      (** preferred_channel_pipeline *)
  program_number : float;  (** program_number *)
  service_descriptor :
    aws_medialive_multiplex_program__multiplex_program_settings__service_descriptor
    list;
  video_settings :
    aws_medialive_multiplex_program__multiplex_program_settings__video_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_multiplex_program__multiplex_program_settings *)

type aws_medialive_multiplex_program = {
  multiplex_id : string;  (** multiplex_id *)
  program_name : string;  (** program_name *)
  multiplex_program_settings :
    aws_medialive_multiplex_program__multiplex_program_settings list;
}
[@@deriving yojson_of]
(** aws_medialive_multiplex_program *)

let aws_medialive_multiplex_program ~multiplex_id ~program_name
    ~multiplex_program_settings __resource_id =
  let __resource_type = "aws_medialive_multiplex_program" in
  let __resource =
    { multiplex_id; program_name; multiplex_program_settings }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_medialive_multiplex_program __resource);
  ()
