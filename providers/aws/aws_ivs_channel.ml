(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ivs_channel = {
  authorized : bool prop option; [@option]  (** authorized *)
  id : string prop option; [@option]  (** id *)
  latency_mode : string prop option; [@option]  (** latency_mode *)
  name : string prop option; [@option]  (** name *)
  recording_configuration_arn : string prop option; [@option]
      (** recording_configuration_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ivs_channel *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ivs_channel ?authorized ?id ?latency_mode ?name
    ?recording_configuration_arn ?tags ?tags_all ?type_ ?timeouts ()
    : aws_ivs_channel =
  {
    authorized;
    id;
    latency_mode;
    name;
    recording_configuration_arn;
    tags;
    tags_all;
    type_;
    timeouts;
  }

type t = {
  arn : string prop;
  authorized : bool prop;
  id : string prop;
  ingest_endpoint : string prop;
  latency_mode : string prop;
  name : string prop;
  playback_url : string prop;
  recording_configuration_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?authorized ?id ?latency_mode ?name
    ?recording_configuration_arn ?tags ?tags_all ?type_ ?timeouts
    __id =
  let __type = "aws_ivs_channel" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       authorized = Prop.computed __type __id "authorized";
       id = Prop.computed __type __id "id";
       ingest_endpoint = Prop.computed __type __id "ingest_endpoint";
       latency_mode = Prop.computed __type __id "latency_mode";
       name = Prop.computed __type __id "name";
       playback_url = Prop.computed __type __id "playback_url";
       recording_configuration_arn =
         Prop.computed __type __id "recording_configuration_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ivs_channel
        (aws_ivs_channel ?authorized ?id ?latency_mode ?name
           ?recording_configuration_arn ?tags ?tags_all ?type_
           ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?authorized ?id ?latency_mode ?name
    ?recording_configuration_arn ?tags ?tags_all ?type_ ?timeouts
    __id =
  let (r : _ Tf_core.resource) =
    make ?authorized ?id ?latency_mode ?name
      ?recording_configuration_arn ?tags ?tags_all ?type_ ?timeouts
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
