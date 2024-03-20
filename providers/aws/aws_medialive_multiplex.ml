(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type multiplex_settings = {
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
(** multiplex_settings *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_medialive_multiplex = {
  availability_zones : string prop list;  (** availability_zones *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  start_multiplex : bool prop option; [@option]
      (** start_multiplex *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  multiplex_settings : multiplex_settings list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_medialive_multiplex *)

let multiplex_settings ?maximum_video_buffer_delay_milliseconds
    ?transport_stream_reserved_bitrate ~transport_stream_bitrate
    ~transport_stream_id () : multiplex_settings =
  {
    maximum_video_buffer_delay_milliseconds;
    transport_stream_bitrate;
    transport_stream_id;
    transport_stream_reserved_bitrate;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_medialive_multiplex ?id ?start_multiplex ?tags ?tags_all
    ?timeouts ~availability_zones ~name ~multiplex_settings () :
    aws_medialive_multiplex =
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

type t = {
  arn : string prop;
  availability_zones : string list prop;
  id : string prop;
  name : string prop;
  start_multiplex : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?start_multiplex ?tags ?tags_all ?timeouts
    ~availability_zones ~name ~multiplex_settings __id =
  let __type = "aws_medialive_multiplex" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       start_multiplex = Prop.computed __type __id "start_multiplex";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_medialive_multiplex
        (aws_medialive_multiplex ?id ?start_multiplex ?tags ?tags_all
           ?timeouts ~availability_zones ~name ~multiplex_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?start_multiplex ?tags ?tags_all
    ?timeouts ~availability_zones ~name ~multiplex_settings __id =
  let (r : _ Tf_core.resource) =
    make ?id ?start_multiplex ?tags ?tags_all ?timeouts
      ~availability_zones ~name ~multiplex_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
