(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination_configuration__s3 = {
  bucket_name : string prop;  (** bucket_name *)
}
[@@deriving yojson_of]
(** destination_configuration__s3 *)

type destination_configuration = {
  s3 : destination_configuration__s3 list;
}
[@@deriving yojson_of]
(** destination_configuration *)

type thumbnail_configuration = {
  recording_mode : string prop option; [@option]
      (** recording_mode *)
  target_interval_seconds : float prop option; [@option]
      (** target_interval_seconds *)
}
[@@deriving yojson_of]
(** thumbnail_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ivs_recording_configuration = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  recording_reconnect_window_seconds : float prop option; [@option]
      (** recording_reconnect_window_seconds *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  destination_configuration : destination_configuration list;
  thumbnail_configuration : thumbnail_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ivs_recording_configuration *)

let destination_configuration__s3 ~bucket_name () :
    destination_configuration__s3 =
  { bucket_name }

let destination_configuration ~s3 () : destination_configuration =
  { s3 }

let thumbnail_configuration ?recording_mode ?target_interval_seconds
    () : thumbnail_configuration =
  { recording_mode; target_interval_seconds }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ivs_recording_configuration ?id ?name
    ?recording_reconnect_window_seconds ?tags ?tags_all ?timeouts
    ~destination_configuration ~thumbnail_configuration () :
    aws_ivs_recording_configuration =
  {
    id;
    name;
    recording_reconnect_window_seconds;
    tags;
    tags_all;
    destination_configuration;
    thumbnail_configuration;
    timeouts;
  }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  recording_reconnect_window_seconds : float prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?name ?recording_reconnect_window_seconds ?tags
    ?tags_all ?timeouts ~destination_configuration
    ~thumbnail_configuration __id =
  let __type = "aws_ivs_recording_configuration" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recording_reconnect_window_seconds =
         Prop.computed __type __id
           "recording_reconnect_window_seconds";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ivs_recording_configuration
        (aws_ivs_recording_configuration ?id ?name
           ?recording_reconnect_window_seconds ?tags ?tags_all
           ?timeouts ~destination_configuration
           ~thumbnail_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?recording_reconnect_window_seconds
    ?tags ?tags_all ?timeouts ~destination_configuration
    ~thumbnail_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?recording_reconnect_window_seconds ?tags
      ?tags_all ?timeouts ~destination_configuration
      ~thumbnail_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
