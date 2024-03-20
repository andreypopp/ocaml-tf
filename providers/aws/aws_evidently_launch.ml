(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type groups = {
  description : string prop option; [@option]  (** description *)
  feature : string prop;  (** feature *)
  name : string prop;  (** name *)
  variation : string prop;  (** variation *)
}
[@@deriving yojson_of]
(** groups *)

type metric_monitors__metric_definition = {
  entity_id_key : string prop;  (** entity_id_key *)
  event_pattern : string prop option; [@option]  (** event_pattern *)
  name : string prop;  (** name *)
  unit_label : string prop option; [@option]  (** unit_label *)
  value_key : string prop;  (** value_key *)
}
[@@deriving yojson_of]
(** metric_monitors__metric_definition *)

type metric_monitors = {
  metric_definition : metric_monitors__metric_definition list;
}
[@@deriving yojson_of]
(** metric_monitors *)

type scheduled_splits_config__steps__segment_overrides = {
  evaluation_order : float prop;  (** evaluation_order *)
  segment : string prop;  (** segment *)
  weights : (string * float prop) list;  (** weights *)
}
[@@deriving yojson_of]
(** scheduled_splits_config__steps__segment_overrides *)

type scheduled_splits_config__steps = {
  group_weights : (string * float prop) list;  (** group_weights *)
  start_time : string prop;  (** start_time *)
  segment_overrides :
    scheduled_splits_config__steps__segment_overrides list;
}
[@@deriving yojson_of]
(** scheduled_splits_config__steps *)

type scheduled_splits_config = {
  steps : scheduled_splits_config__steps list;
}
[@@deriving yojson_of]
(** scheduled_splits_config *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type execution = {
  ended_time : string prop;  (** ended_time *)
  started_time : string prop;  (** started_time *)
}
[@@deriving yojson_of]

type aws_evidently_launch = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  project : string prop;  (** project *)
  randomization_salt : string prop option; [@option]
      (** randomization_salt *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  groups : groups list;
  metric_monitors : metric_monitors list;
  scheduled_splits_config : scheduled_splits_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_evidently_launch *)

let groups ?description ~feature ~name ~variation () : groups =
  { description; feature; name; variation }

let metric_monitors__metric_definition ?event_pattern ?unit_label
    ~entity_id_key ~name ~value_key () :
    metric_monitors__metric_definition =
  { entity_id_key; event_pattern; name; unit_label; value_key }

let metric_monitors ~metric_definition () : metric_monitors =
  { metric_definition }

let scheduled_splits_config__steps__segment_overrides
    ~evaluation_order ~segment ~weights () :
    scheduled_splits_config__steps__segment_overrides =
  { evaluation_order; segment; weights }

let scheduled_splits_config__steps ~group_weights ~start_time
    ~segment_overrides () : scheduled_splits_config__steps =
  { group_weights; start_time; segment_overrides }

let scheduled_splits_config ~steps () : scheduled_splits_config =
  { steps }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_evidently_launch ?description ?id ?randomization_salt ?tags
    ?tags_all ?timeouts ~name ~project ~groups ~metric_monitors
    ~scheduled_splits_config () : aws_evidently_launch =
  {
    description;
    id;
    name;
    project;
    randomization_salt;
    tags;
    tags_all;
    groups;
    metric_monitors;
    scheduled_splits_config;
    timeouts;
  }

type t = {
  arn : string prop;
  created_time : string prop;
  description : string prop;
  execution : execution list prop;
  id : string prop;
  last_updated_time : string prop;
  name : string prop;
  project : string prop;
  randomization_salt : string prop;
  status : string prop;
  status_reason : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?description ?id ?randomization_salt ?tags ?tags_all
    ?timeouts ~name ~project ~groups ~metric_monitors
    ~scheduled_splits_config __id =
  let __type = "aws_evidently_launch" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_time = Prop.computed __type __id "created_time";
       description = Prop.computed __type __id "description";
       execution = Prop.computed __type __id "execution";
       id = Prop.computed __type __id "id";
       last_updated_time =
         Prop.computed __type __id "last_updated_time";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       randomization_salt =
         Prop.computed __type __id "randomization_salt";
       status = Prop.computed __type __id "status";
       status_reason = Prop.computed __type __id "status_reason";
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
      yojson_of_aws_evidently_launch
        (aws_evidently_launch ?description ?id ?randomization_salt
           ?tags ?tags_all ?timeouts ~name ~project ~groups
           ~metric_monitors ~scheduled_splits_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?randomization_salt ?tags
    ?tags_all ?timeouts ~name ~project ~groups ~metric_monitors
    ~scheduled_splits_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?randomization_salt ?tags ?tags_all
      ?timeouts ~name ~project ~groups ~metric_monitors
      ~scheduled_splits_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
