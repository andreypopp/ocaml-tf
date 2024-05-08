(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type groups = {
  description : string prop option; [@option]
  feature : string prop;
  name : string prop;
  variation : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : groups) -> ()

let yojson_of_groups =
  (function
   | {
       description = v_description;
       feature = v_feature;
       name = v_name;
       variation = v_variation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_variation in
         ("variation", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_feature in
         ("feature", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_groups

[@@@deriving.end]

type metric_monitors__metric_definition = {
  entity_id_key : string prop;
  event_pattern : string prop option; [@option]
  name : string prop;
  unit_label : string prop option; [@option]
  value_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metric_monitors__metric_definition) -> ()

let yojson_of_metric_monitors__metric_definition =
  (function
   | {
       entity_id_key = v_entity_id_key;
       event_pattern = v_event_pattern;
       name = v_name;
       unit_label = v_unit_label;
       value_key = v_value_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value_key in
         ("value_key", arg) :: bnds
       in
       let bnds =
         match v_unit_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unit_label", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_event_pattern with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_pattern", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_entity_id_key in
         ("entity_id_key", arg) :: bnds
       in
       `Assoc bnds
    : metric_monitors__metric_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metric_monitors__metric_definition

[@@@deriving.end]

type metric_monitors = {
  metric_definition : metric_monitors__metric_definition list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metric_monitors) -> ()

let yojson_of_metric_monitors =
  (function
   | { metric_definition = v_metric_definition } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metric_definition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_metric_monitors__metric_definition)
               v_metric_definition
           in
           let bnd = "metric_definition", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : metric_monitors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metric_monitors

[@@@deriving.end]

type scheduled_splits_config__steps__segment_overrides = {
  evaluation_order : float prop;
  segment : string prop;
  weights : (string * float prop) list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : scheduled_splits_config__steps__segment_overrides) -> ()

let yojson_of_scheduled_splits_config__steps__segment_overrides =
  (function
   | {
       evaluation_order = v_evaluation_order;
       segment = v_segment;
       weights = v_weights;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_float v1 in
                   `List [ v0; v1 ])
             v_weights
         in
         ("weights", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_segment in
         ("segment", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_evaluation_order
         in
         ("evaluation_order", arg) :: bnds
       in
       `Assoc bnds
    : scheduled_splits_config__steps__segment_overrides ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scheduled_splits_config__steps__segment_overrides

[@@@deriving.end]

type scheduled_splits_config__steps = {
  group_weights : (string * float prop) list;
  start_time : string prop;
  segment_overrides :
    scheduled_splits_config__steps__segment_overrides list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scheduled_splits_config__steps) -> ()

let yojson_of_scheduled_splits_config__steps =
  (function
   | {
       group_weights = v_group_weights;
       start_time = v_start_time;
       segment_overrides = v_segment_overrides;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_segment_overrides then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_scheduled_splits_config__steps__segment_overrides)
               v_segment_overrides
           in
           let bnd = "segment_overrides", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_float v1 in
                   `List [ v0; v1 ])
             v_group_weights
         in
         ("group_weights", arg) :: bnds
       in
       `Assoc bnds
    : scheduled_splits_config__steps ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scheduled_splits_config__steps

[@@@deriving.end]

type scheduled_splits_config = {
  steps : scheduled_splits_config__steps list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scheduled_splits_config) -> ()

let yojson_of_scheduled_splits_config =
  (function
   | { steps = v_steps } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_steps then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scheduled_splits_config__steps)
               v_steps
           in
           let bnd = "steps", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : scheduled_splits_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scheduled_splits_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type execution = {
  ended_time : string prop;
  started_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : execution) -> ()

let yojson_of_execution =
  (function
   | { ended_time = v_ended_time; started_time = v_started_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_started_time in
         ("started_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ended_time in
         ("ended_time", arg) :: bnds
       in
       `Assoc bnds
    : execution -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_execution

[@@@deriving.end]

type aws_evidently_launch = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop;
  randomization_salt : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  groups : groups list; [@default []] [@yojson_drop_default ( = )]
  metric_monitors : metric_monitors list;
      [@default []] [@yojson_drop_default ( = )]
  scheduled_splits_config : scheduled_splits_config list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_evidently_launch) -> ()

let yojson_of_aws_evidently_launch =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       project = v_project;
       randomization_salt = v_randomization_salt;
       tags = v_tags;
       tags_all = v_tags_all;
       groups = v_groups;
       metric_monitors = v_metric_monitors;
       scheduled_splits_config = v_scheduled_splits_config;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_scheduled_splits_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scheduled_splits_config)
               v_scheduled_splits_config
           in
           let bnd = "scheduled_splits_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_metric_monitors then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metric_monitors)
               v_metric_monitors
           in
           let bnd = "metric_monitors", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_groups then bnds
         else
           let arg = (yojson_of_list yojson_of_groups) v_groups in
           let bnd = "groups", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_randomization_salt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "randomization_salt", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_evidently_launch -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_evidently_launch

[@@@deriving.end]

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

let scheduled_splits_config__steps ?(segment_overrides = [])
    ~group_weights ~start_time () : scheduled_splits_config__steps =
  { group_weights; start_time; segment_overrides }

let scheduled_splits_config ~steps () : scheduled_splits_config =
  { steps }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_evidently_launch ?description ?id ?randomization_salt ?tags
    ?tags_all ?(metric_monitors = []) ?(scheduled_splits_config = [])
    ?timeouts ~name ~project ~groups () : aws_evidently_launch =
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
  tf_name : string;
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
    ?(metric_monitors = []) ?(scheduled_splits_config = []) ?timeouts
    ~name ~project ~groups __id =
  let __type = "aws_evidently_launch" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?tags ?tags_all ~metric_monitors ~scheduled_splits_config
           ?timeouts ~name ~project ~groups ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?randomization_salt ?tags
    ?tags_all ?(metric_monitors = []) ?(scheduled_splits_config = [])
    ?timeouts ~name ~project ~groups __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?randomization_salt ?tags ?tags_all
      ~metric_monitors ~scheduled_splits_config ?timeouts ~name
      ~project ~groups __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
