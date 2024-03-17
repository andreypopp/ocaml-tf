(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_medialive_multiplex__multiplex_settings = {
  maximum_video_buffer_delay_milliseconds : float option; [@option]
      (** maximum_video_buffer_delay_milliseconds *)
  transport_stream_bitrate : float;  (** transport_stream_bitrate *)
  transport_stream_id : float;  (** transport_stream_id *)
  transport_stream_reserved_bitrate : float option; [@option]
      (** transport_stream_reserved_bitrate *)
}
[@@deriving yojson_of]
(** aws_medialive_multiplex__multiplex_settings *)

type aws_medialive_multiplex__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_medialive_multiplex__timeouts *)

type aws_medialive_multiplex = {
  availability_zones : string list;  (** availability_zones *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  start_multiplex : bool option; [@option]  (** start_multiplex *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  multiplex_settings :
    aws_medialive_multiplex__multiplex_settings list;
  timeouts : aws_medialive_multiplex__timeouts option;
}
[@@deriving yojson_of]
(** aws_medialive_multiplex *)

let aws_medialive_multiplex ?id ?start_multiplex ?tags ?tags_all
    ?timeouts ~availability_zones ~name ~multiplex_settings
    __resource_id =
  let __resource_type = "aws_medialive_multiplex" in
  let __resource =
    {
      availability_zones;
      id;
      name;
      start_multiplex;
      tags;
      tags_all;
      multiplex_settings;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_medialive_multiplex __resource);
  ()
