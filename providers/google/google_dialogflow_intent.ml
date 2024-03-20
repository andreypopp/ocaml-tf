(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type followup_intent_info = {
  followup_intent_name : string prop;
  parent_followup_intent_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : followup_intent_info) -> ()

let yojson_of_followup_intent_info =
  (function
   | {
       followup_intent_name = v_followup_intent_name;
       parent_followup_intent_name = v_parent_followup_intent_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_parent_followup_intent_name
         in
         ("parent_followup_intent_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_followup_intent_name
         in
         ("followup_intent_name", arg) :: bnds
       in
       `Assoc bnds
    : followup_intent_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_followup_intent_info

[@@@deriving.end]

type google_dialogflow_intent = {
  action : string prop option; [@option]
  default_response_platforms : string prop list option; [@option]
  display_name : string prop;
  events : string prop list option; [@option]
  id : string prop option; [@option]
  input_context_names : string prop list option; [@option]
  is_fallback : bool prop option; [@option]
  ml_disabled : bool prop option; [@option]
  parent_followup_intent_name : string prop option; [@option]
  priority : float prop option; [@option]
  project : string prop option; [@option]
  reset_contexts : bool prop option; [@option]
  webhook_state : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dialogflow_intent) -> ()

let yojson_of_google_dialogflow_intent =
  (function
   | {
       action = v_action;
       default_response_platforms = v_default_response_platforms;
       display_name = v_display_name;
       events = v_events;
       id = v_id;
       input_context_names = v_input_context_names;
       is_fallback = v_is_fallback;
       ml_disabled = v_ml_disabled;
       parent_followup_intent_name = v_parent_followup_intent_name;
       priority = v_priority;
       project = v_project;
       reset_contexts = v_reset_contexts;
       webhook_state = v_webhook_state;
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
         match v_webhook_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "webhook_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reset_contexts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "reset_contexts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parent_followup_intent_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent_followup_intent_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ml_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ml_disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_fallback with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_fallback", arg in
             bnd :: bnds
       in
       let bnds =
         match v_input_context_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "input_context_names", arg in
             bnd :: bnds
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
         match v_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "events", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_default_response_platforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "default_response_platforms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_dialogflow_intent -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dialogflow_intent

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dialogflow_intent ?action ?default_response_platforms
    ?events ?id ?input_context_names ?is_fallback ?ml_disabled
    ?parent_followup_intent_name ?priority ?project ?reset_contexts
    ?webhook_state ?timeouts ~display_name () :
    google_dialogflow_intent =
  {
    action;
    default_response_platforms;
    display_name;
    events;
    id;
    input_context_names;
    is_fallback;
    ml_disabled;
    parent_followup_intent_name;
    priority;
    project;
    reset_contexts;
    webhook_state;
    timeouts;
  }

type t = {
  action : string prop;
  default_response_platforms : string list prop;
  display_name : string prop;
  events : string list prop;
  followup_intent_info : followup_intent_info list prop;
  id : string prop;
  input_context_names : string list prop;
  is_fallback : bool prop;
  ml_disabled : bool prop;
  name : string prop;
  parent_followup_intent_name : string prop;
  priority : float prop;
  project : string prop;
  reset_contexts : bool prop;
  root_followup_intent_name : string prop;
  webhook_state : string prop;
}

let make ?action ?default_response_platforms ?events ?id
    ?input_context_names ?is_fallback ?ml_disabled
    ?parent_followup_intent_name ?priority ?project ?reset_contexts
    ?webhook_state ?timeouts ~display_name __id =
  let __type = "google_dialogflow_intent" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       default_response_platforms =
         Prop.computed __type __id "default_response_platforms";
       display_name = Prop.computed __type __id "display_name";
       events = Prop.computed __type __id "events";
       followup_intent_info =
         Prop.computed __type __id "followup_intent_info";
       id = Prop.computed __type __id "id";
       input_context_names =
         Prop.computed __type __id "input_context_names";
       is_fallback = Prop.computed __type __id "is_fallback";
       ml_disabled = Prop.computed __type __id "ml_disabled";
       name = Prop.computed __type __id "name";
       parent_followup_intent_name =
         Prop.computed __type __id "parent_followup_intent_name";
       priority = Prop.computed __type __id "priority";
       project = Prop.computed __type __id "project";
       reset_contexts = Prop.computed __type __id "reset_contexts";
       root_followup_intent_name =
         Prop.computed __type __id "root_followup_intent_name";
       webhook_state = Prop.computed __type __id "webhook_state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dialogflow_intent
        (google_dialogflow_intent ?action ?default_response_platforms
           ?events ?id ?input_context_names ?is_fallback ?ml_disabled
           ?parent_followup_intent_name ?priority ?project
           ?reset_contexts ?webhook_state ?timeouts ~display_name ());
    attrs = __attrs;
  }

let register ?tf_module ?action ?default_response_platforms ?events
    ?id ?input_context_names ?is_fallback ?ml_disabled
    ?parent_followup_intent_name ?priority ?project ?reset_contexts
    ?webhook_state ?timeouts ~display_name __id =
  let (r : _ Tf_core.resource) =
    make ?action ?default_response_platforms ?events ?id
      ?input_context_names ?is_fallback ?ml_disabled
      ?parent_followup_intent_name ?priority ?project ?reset_contexts
      ?webhook_state ?timeouts ~display_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
