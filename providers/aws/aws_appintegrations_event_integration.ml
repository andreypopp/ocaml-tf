(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type event_filter = { source : string prop  (** source *) }
[@@deriving yojson_of]
(** event_filter *)

type aws_appintegrations_event_integration = {
  description : string prop option; [@option]  (** description *)
  eventbridge_bus : string prop;  (** eventbridge_bus *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  event_filter : event_filter list;
}
[@@deriving yojson_of]
(** aws_appintegrations_event_integration *)

let event_filter ~source () : event_filter = { source }

let aws_appintegrations_event_integration ?description ?id ?tags
    ?tags_all ~eventbridge_bus ~name ~event_filter () :
    aws_appintegrations_event_integration =
  {
    description;
    eventbridge_bus;
    id;
    name;
    tags;
    tags_all;
    event_filter;
  }

type t = {
  arn : string prop;
  description : string prop;
  eventbridge_bus : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~eventbridge_bus ~name
    ~event_filter __id =
  let __type = "aws_appintegrations_event_integration" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       eventbridge_bus = Prop.computed __type __id "eventbridge_bus";
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
      yojson_of_aws_appintegrations_event_integration
        (aws_appintegrations_event_integration ?description ?id ?tags
           ?tags_all ~eventbridge_bus ~name ~event_filter ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all
    ~eventbridge_bus ~name ~event_filter __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~eventbridge_bus ~name
      ~event_filter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
