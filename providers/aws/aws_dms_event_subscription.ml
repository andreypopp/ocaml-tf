(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_dms_event_subscription = {
  enabled : bool prop option; [@option]  (** enabled *)
  event_categories : string prop list;  (** event_categories *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  sns_topic_arn : string prop;  (** sns_topic_arn *)
  source_ids : string prop list option; [@option]  (** source_ids *)
  source_type : string prop;  (** source_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_dms_event_subscription *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_dms_event_subscription ?enabled ?id ?source_ids ?tags
    ?tags_all ?timeouts ~event_categories ~name ~sns_topic_arn
    ~source_type () : aws_dms_event_subscription =
  {
    enabled;
    event_categories;
    id;
    name;
    sns_topic_arn;
    source_ids;
    source_type;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  arn : string prop;
  enabled : bool prop;
  event_categories : string list prop;
  id : string prop;
  name : string prop;
  sns_topic_arn : string prop;
  source_ids : string list prop;
  source_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?enabled ?id ?source_ids ?tags ?tags_all ?timeouts
    ~event_categories ~name ~sns_topic_arn ~source_type __id =
  let __type = "aws_dms_event_subscription" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       enabled = Prop.computed __type __id "enabled";
       event_categories =
         Prop.computed __type __id "event_categories";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       sns_topic_arn = Prop.computed __type __id "sns_topic_arn";
       source_ids = Prop.computed __type __id "source_ids";
       source_type = Prop.computed __type __id "source_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dms_event_subscription
        (aws_dms_event_subscription ?enabled ?id ?source_ids ?tags
           ?tags_all ?timeouts ~event_categories ~name ~sns_topic_arn
           ~source_type ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?source_ids ?tags ?tags_all
    ?timeouts ~event_categories ~name ~sns_topic_arn ~source_type
    __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?source_ids ?tags ?tags_all ?timeouts
      ~event_categories ~name ~sns_topic_arn ~source_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
