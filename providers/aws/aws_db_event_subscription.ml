(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_db_event_subscription = {
  enabled : bool prop option; [@option]  (** enabled *)
  event_categories : string prop list option; [@option]
      (** event_categories *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  sns_topic : string prop;  (** sns_topic *)
  source_ids : string prop list option; [@option]  (** source_ids *)
  source_type : string prop option; [@option]  (** source_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_db_event_subscription *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_db_event_subscription ?enabled ?event_categories ?id ?name
    ?name_prefix ?source_ids ?source_type ?tags ?tags_all ?timeouts
    ~sns_topic () : aws_db_event_subscription =
  {
    enabled;
    event_categories;
    id;
    name;
    name_prefix;
    sns_topic;
    source_ids;
    source_type;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  arn : string prop;
  customer_aws_id : string prop;
  enabled : bool prop;
  event_categories : string list prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  sns_topic : string prop;
  source_ids : string list prop;
  source_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?enabled ?event_categories ?id ?name ?name_prefix
    ?source_ids ?source_type ?tags ?tags_all ?timeouts ~sns_topic
    __id =
  let __type = "aws_db_event_subscription" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       customer_aws_id = Prop.computed __type __id "customer_aws_id";
       enabled = Prop.computed __type __id "enabled";
       event_categories =
         Prop.computed __type __id "event_categories";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       sns_topic = Prop.computed __type __id "sns_topic";
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
      yojson_of_aws_db_event_subscription
        (aws_db_event_subscription ?enabled ?event_categories ?id
           ?name ?name_prefix ?source_ids ?source_type ?tags
           ?tags_all ?timeouts ~sns_topic ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?event_categories ?id ?name
    ?name_prefix ?source_ids ?source_type ?tags ?tags_all ?timeouts
    ~sns_topic __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?event_categories ?id ?name ?name_prefix
      ?source_ids ?source_type ?tags ?tags_all ?timeouts ~sns_topic
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
