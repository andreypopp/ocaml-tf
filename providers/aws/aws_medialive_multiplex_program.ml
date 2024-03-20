(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type multiplex_program_settings__service_descriptor = {
  provider_name : string prop;  (** provider_name *)
  service_name : string prop;  (** service_name *)
}
[@@deriving yojson_of]
(** multiplex_program_settings__service_descriptor *)

type multiplex_program_settings__video_settings__statmux_settings = {
  maximum_bitrate : float prop option; [@option]
      (** maximum_bitrate *)
  minimum_bitrate : float prop option; [@option]
      (** minimum_bitrate *)
  priority : float prop option; [@option]  (** priority *)
}
[@@deriving yojson_of]
(** multiplex_program_settings__video_settings__statmux_settings *)

type multiplex_program_settings__video_settings = {
  constant_bitrate : float prop option; [@option]
      (** constant_bitrate *)
  statmux_settings :
    multiplex_program_settings__video_settings__statmux_settings list;
}
[@@deriving yojson_of]
(** multiplex_program_settings__video_settings *)

type multiplex_program_settings = {
  preferred_channel_pipeline : string prop;
      (** preferred_channel_pipeline *)
  program_number : float prop;  (** program_number *)
  service_descriptor :
    multiplex_program_settings__service_descriptor list;
  video_settings : multiplex_program_settings__video_settings list;
}
[@@deriving yojson_of]
(** multiplex_program_settings *)

type aws_medialive_multiplex_program = {
  multiplex_id : string prop;  (** multiplex_id *)
  program_name : string prop;  (** program_name *)
  multiplex_program_settings : multiplex_program_settings list;
}
[@@deriving yojson_of]
(** aws_medialive_multiplex_program *)

let multiplex_program_settings__service_descriptor ~provider_name
    ~service_name () : multiplex_program_settings__service_descriptor
    =
  { provider_name; service_name }

let multiplex_program_settings__video_settings__statmux_settings
    ?maximum_bitrate ?minimum_bitrate ?priority () :
    multiplex_program_settings__video_settings__statmux_settings =
  { maximum_bitrate; minimum_bitrate; priority }

let multiplex_program_settings__video_settings ?constant_bitrate
    ~statmux_settings () : multiplex_program_settings__video_settings
    =
  { constant_bitrate; statmux_settings }

let multiplex_program_settings ~preferred_channel_pipeline
    ~program_number ~service_descriptor ~video_settings () :
    multiplex_program_settings =
  {
    preferred_channel_pipeline;
    program_number;
    service_descriptor;
    video_settings;
  }

let aws_medialive_multiplex_program ~multiplex_id ~program_name
    ~multiplex_program_settings () : aws_medialive_multiplex_program
    =
  { multiplex_id; program_name; multiplex_program_settings }

type t = {
  id : string prop;
  multiplex_id : string prop;
  program_name : string prop;
}

let make ~multiplex_id ~program_name ~multiplex_program_settings __id
    =
  let __type = "aws_medialive_multiplex_program" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       multiplex_id = Prop.computed __type __id "multiplex_id";
       program_name = Prop.computed __type __id "program_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_medialive_multiplex_program
        (aws_medialive_multiplex_program ~multiplex_id ~program_name
           ~multiplex_program_settings ());
    attrs = __attrs;
  }

let register ?tf_module ~multiplex_id ~program_name
    ~multiplex_program_settings __id =
  let (r : _ Tf_core.resource) =
    make ~multiplex_id ~program_name ~multiplex_program_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
