(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_event_bus = {
  event_source_name : string prop option; [@option]
      (** event_source_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_bus *)

let aws_cloudwatch_event_bus ?event_source_name ?id ?tags ?tags_all
    ~name () : aws_cloudwatch_event_bus =
  { event_source_name; id; name; tags; tags_all }

type t = {
  arn : string prop;
  event_source_name : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?event_source_name ?id ?tags ?tags_all ~name __id =
  let __type = "aws_cloudwatch_event_bus" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       event_source_name =
         Prop.computed __type __id "event_source_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_event_bus
        (aws_cloudwatch_event_bus ?event_source_name ?id ?tags
           ?tags_all ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?event_source_name ?id ?tags ?tags_all ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?event_source_name ?id ?tags ?tags_all ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
