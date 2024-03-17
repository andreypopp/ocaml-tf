(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_medialive_multiplex__multiplex_settings = {
  maximum_video_buffer_delay_milliseconds : float prop option;
      [@option]
      (** maximum_video_buffer_delay_milliseconds *)
  transport_stream_bitrate : float prop;
      (** transport_stream_bitrate *)
  transport_stream_id : float prop;  (** transport_stream_id *)
  transport_stream_reserved_bitrate : float prop option; [@option]
      (** transport_stream_reserved_bitrate *)
}
[@@deriving yojson_of]
(** aws_medialive_multiplex__multiplex_settings *)

type aws_medialive_multiplex__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_medialive_multiplex__timeouts *)

type aws_medialive_multiplex = {
  availability_zones : string prop list;  (** availability_zones *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  start_multiplex : bool prop option; [@option]
      (** start_multiplex *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  multiplex_settings :
    aws_medialive_multiplex__multiplex_settings list;
  timeouts : aws_medialive_multiplex__timeouts option;
}
[@@deriving yojson_of]
(** aws_medialive_multiplex *)

type t = {
  arn : string prop;
  availability_zones : string list prop;
  id : string prop;
  name : string prop;
  start_multiplex : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_medialive_multiplex ?id ?start_multiplex ?tags ?tags_all
    ?timeouts ~availability_zones ~name ~multiplex_settings
    __resource_id =
  let __resource_type = "aws_medialive_multiplex" in
  let __resource =
    ({
       availability_zones;
       id;
       name;
       start_multiplex;
       tags;
       tags_all;
       multiplex_settings;
       timeouts;
     }
      : aws_medialive_multiplex)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_medialive_multiplex __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       availability_zones =
         Prop.computed __resource_type __resource_id
           "availability_zones";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       start_multiplex =
         Prop.computed __resource_type __resource_id
           "start_multiplex";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
