(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type actions__notification_property = {
  notify_delay_after : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__notification_property) -> ()

let yojson_of_actions__notification_property =
  (function
   | { notify_delay_after = v_notify_delay_after } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_notify_delay_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "notify_delay_after", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : actions__notification_property ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__notification_property

[@@@deriving.end]

type actions = {
  arguments : (string * string prop) list option; [@option]
  crawler_name : string prop option; [@option]
  job_name : string prop option; [@option]
  security_configuration : string prop option; [@option]
  timeout : float prop option; [@option]
  notification_property : actions__notification_property list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions) -> ()

let yojson_of_actions =
  (function
   | {
       arguments = v_arguments;
       crawler_name = v_crawler_name;
       job_name = v_job_name;
       security_configuration = v_security_configuration;
       timeout = v_timeout;
       notification_property = v_notification_property;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_notification_property then bnds
         else
           let arg =
             (yojson_of_list yojson_of_actions__notification_property)
               v_notification_property
           in
           let bnd = "notification_property", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_configuration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_job_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "job_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_crawler_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "crawler_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_arguments with
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
             let bnd = "arguments", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : actions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions

[@@@deriving.end]

type event_batching_condition = {
  batch_size : float prop;
  batch_window : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_batching_condition) -> ()

let yojson_of_event_batching_condition =
  (function
   | { batch_size = v_batch_size; batch_window = v_batch_window } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_batch_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_window", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_batch_size in
         ("batch_size", arg) :: bnds
       in
       `Assoc bnds
    : event_batching_condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_batching_condition

[@@@deriving.end]

type predicate__conditions = {
  crawl_state : string prop option; [@option]
  crawler_name : string prop option; [@option]
  job_name : string prop option; [@option]
  logical_operator : string prop option; [@option]
  state : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : predicate__conditions) -> ()

let yojson_of_predicate__conditions =
  (function
   | {
       crawl_state = v_crawl_state;
       crawler_name = v_crawler_name;
       job_name = v_job_name;
       logical_operator = v_logical_operator;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logical_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logical_operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_job_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "job_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_crawler_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "crawler_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_crawl_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "crawl_state", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : predicate__conditions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_predicate__conditions

[@@@deriving.end]

type predicate = {
  logical : string prop option; [@option]
  conditions : predicate__conditions list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : predicate) -> ()

let yojson_of_predicate =
  (function
   | { logical = v_logical; conditions = v_conditions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_conditions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_predicate__conditions)
               v_conditions
           in
           let bnd = "conditions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_logical with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logical", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : predicate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_predicate

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

type aws_glue_trigger = {
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  schedule : string prop option; [@option]
  start_on_creation : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
  workflow_name : string prop option; [@option]
  actions : actions list; [@default []] [@yojson_drop_default ( = )]
  event_batching_condition : event_batching_condition list;
      [@default []] [@yojson_drop_default ( = )]
  predicate : predicate list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_trigger) -> ()

let yojson_of_aws_glue_trigger =
  (function
   | {
       description = v_description;
       enabled = v_enabled;
       id = v_id;
       name = v_name;
       schedule = v_schedule;
       start_on_creation = v_start_on_creation;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       workflow_name = v_workflow_name;
       actions = v_actions;
       event_batching_condition = v_event_batching_condition;
       predicate = v_predicate;
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
         if [] = v_predicate then bnds
         else
           let arg =
             (yojson_of_list yojson_of_predicate) v_predicate
           in
           let bnd = "predicate", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_event_batching_condition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_event_batching_condition)
               v_event_batching_condition
           in
           let bnd = "event_batching_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_actions then bnds
         else
           let arg = (yojson_of_list yojson_of_actions) v_actions in
           let bnd = "actions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_workflow_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workflow_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_start_on_creation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "start_on_creation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule", arg in
             bnd :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
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
    : aws_glue_trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_trigger

[@@@deriving.end]

let actions__notification_property ?notify_delay_after () :
    actions__notification_property =
  { notify_delay_after }

let actions ?arguments ?crawler_name ?job_name
    ?security_configuration ?timeout ?(notification_property = []) ()
    : actions =
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
    ?start_on_creation ?tags ?tags_all ?workflow_name
    ?(event_batching_condition = []) ?(predicate = []) ?timeouts
    ~name ~type_ ~actions () : aws_glue_trigger =
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
  tf_name : string;
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
    ?tags_all ?workflow_name ?(event_batching_condition = [])
    ?(predicate = []) ?timeouts ~name ~type_ ~actions __id =
  let __type = "aws_glue_trigger" in
  let __attrs =
    ({
       tf_name = __id;
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
           ~event_batching_condition ~predicate ?timeouts ~name
           ~type_ ~actions ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enabled ?id ?schedule
    ?start_on_creation ?tags ?tags_all ?workflow_name
    ?(event_batching_condition = []) ?(predicate = []) ?timeouts
    ~name ~type_ ~actions __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enabled ?id ?schedule ?start_on_creation ?tags
      ?tags_all ?workflow_name ~event_batching_condition ~predicate
      ?timeouts ~name ~type_ ~actions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
