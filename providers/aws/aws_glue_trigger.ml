(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type actions__notification_property = {
  notify_delay_after : float prop option; [@option]
      (** notify_delay_after *)
}
[@@deriving yojson_of]
(** actions__notification_property *)

type actions = {
  arguments : (string * string prop) list option; [@option]
      (** arguments *)
  crawler_name : string prop option; [@option]  (** crawler_name *)
  job_name : string prop option; [@option]  (** job_name *)
  security_configuration : string prop option; [@option]
      (** security_configuration *)
  timeout : float prop option; [@option]  (** timeout *)
  notification_property : actions__notification_property list;
}
[@@deriving yojson_of]
(** actions *)

type event_batching_condition = {
  batch_size : float prop;  (** batch_size *)
  batch_window : float prop option; [@option]  (** batch_window *)
}
[@@deriving yojson_of]
(** event_batching_condition *)

type predicate__conditions = {
  crawl_state : string prop option; [@option]  (** crawl_state *)
  crawler_name : string prop option; [@option]  (** crawler_name *)
  job_name : string prop option; [@option]  (** job_name *)
  logical_operator : string prop option; [@option]
      (** logical_operator *)
  state : string prop option; [@option]  (** state *)
}
[@@deriving yojson_of]
(** predicate__conditions *)

type predicate = {
  logical : string prop option; [@option]  (** logical *)
  conditions : predicate__conditions list;
}
[@@deriving yojson_of]
(** predicate *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_glue_trigger = {
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  schedule : string prop option; [@option]  (** schedule *)
  start_on_creation : bool prop option; [@option]
      (** start_on_creation *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
  workflow_name : string prop option; [@option]  (** workflow_name *)
  actions : actions list;
  event_batching_condition : event_batching_condition list;
  predicate : predicate list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_glue_trigger *)

let actions__notification_property ?notify_delay_after () :
    actions__notification_property =
  { notify_delay_after }

let actions ?arguments ?crawler_name ?job_name
    ?security_configuration ?timeout ~notification_property () :
    actions =
  {
    arguments;
    crawler_name;
    job_name;
    security_configuration;
    timeout;
    notification_property;
  }

let event_batching_condition ?batch_window ~batch_size () :
    event_batching_condition =
  { batch_size; batch_window }

let predicate__conditions ?crawl_state ?crawler_name ?job_name
    ?logical_operator ?state () : predicate__conditions =
  { crawl_state; crawler_name; job_name; logical_operator; state }

let predicate ?logical ~conditions () : predicate =
  { logical; conditions }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_glue_trigger ?description ?enabled ?id ?schedule
    ?start_on_creation ?tags ?tags_all ?workflow_name ?timeouts ~name
    ~type_ ~actions ~event_batching_condition ~predicate () :
    aws_glue_trigger =
  {
    description;
    enabled;
    id;
    name;
    schedule;
    start_on_creation;
    tags;
    tags_all;
    type_;
    workflow_name;
    actions;
    event_batching_condition;
    predicate;
    timeouts;
  }

type t = {
  arn : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  schedule : string prop;
  start_on_creation : bool prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  workflow_name : string prop;
}

let make ?description ?enabled ?id ?schedule ?start_on_creation ?tags
    ?tags_all ?workflow_name ?timeouts ~name ~type_ ~actions
    ~event_batching_condition ~predicate __id =
  let __type = "aws_glue_trigger" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       schedule = Prop.computed __type __id "schedule";
       start_on_creation =
         Prop.computed __type __id "start_on_creation";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
       workflow_name = Prop.computed __type __id "workflow_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_trigger
        (aws_glue_trigger ?description ?enabled ?id ?schedule
           ?start_on_creation ?tags ?tags_all ?workflow_name
           ?timeouts ~name ~type_ ~actions ~event_batching_condition
           ~predicate ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enabled ?id ?schedule
    ?start_on_creation ?tags ?tags_all ?workflow_name ?timeouts ~name
    ~type_ ~actions ~event_batching_condition ~predicate __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enabled ?id ?schedule ?start_on_creation ?tags
      ?tags_all ?workflow_name ?timeouts ~name ~type_ ~actions
      ~event_batching_condition ~predicate __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
