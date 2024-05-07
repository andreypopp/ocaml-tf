(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type parameters = {
  entity_type : string prop;
  id : string prop;
  is_list : bool prop option; [@option]
  redact : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : parameters) -> ()

let yojson_of_parameters =
  (function
   | {
       entity_type = v_entity_type;
       id = v_id;
       is_list = v_is_list;
       redact = v_redact;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_redact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "redact", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_list", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_entity_type in
         ("entity_type", arg) :: bnds
       in
       `Assoc bnds
    : parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameters

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

type training_phrases__parts = {
  parameter_id : string prop option; [@option]
  text : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : training_phrases__parts) -> ()

let yojson_of_training_phrases__parts =
  (function
   | { parameter_id = v_parameter_id; text = v_text } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text in
         ("text", arg) :: bnds
       in
       let bnds =
         match v_parameter_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameter_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : training_phrases__parts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_training_phrases__parts

[@@@deriving.end]

type training_phrases = {
  repeat_count : float prop option; [@option]
  parts : training_phrases__parts list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : training_phrases) -> ()

let yojson_of_training_phrases =
  (function
   | { repeat_count = v_repeat_count; parts = v_parts } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_training_phrases__parts v_parts
         in
         ("parts", arg) :: bnds
       in
       let bnds =
         match v_repeat_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "repeat_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : training_phrases -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_training_phrases

[@@@deriving.end]

type google_dialogflow_cx_intent = {
  description : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  is_default_negative_intent : bool prop option; [@option]
  is_default_welcome_intent : bool prop option; [@option]
  is_fallback : bool prop option; [@option]
  labels : (string * string prop) list option; [@option]
  language_code : string prop option; [@option]
  parent : string prop option; [@option]
  priority : float prop option; [@option]
  parameters : parameters list;
  timeouts : timeouts option;
  training_phrases : training_phrases list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dialogflow_cx_intent) -> ()

let yojson_of_google_dialogflow_cx_intent =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       is_default_negative_intent = v_is_default_negative_intent;
       is_default_welcome_intent = v_is_default_welcome_intent;
       is_fallback = v_is_fallback;
       labels = v_labels;
       language_code = v_language_code;
       parent = v_parent;
       priority = v_priority;
       parameters = v_parameters;
       timeouts = v_timeouts;
       training_phrases = v_training_phrases;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_training_phrases
             v_training_phrases
         in
         ("training_phrases", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_parameters v_parameters
         in
         ("parameters", arg) :: bnds
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
         match v_parent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_language_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
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
         match v_is_default_welcome_intent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_default_welcome_intent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_default_negative_intent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_default_negative_intent", arg in
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
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
    : google_dialogflow_cx_intent ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dialogflow_cx_intent

[@@@deriving.end]

let parameters ?is_list ?redact ~entity_type ~id () : parameters =
  { entity_type; id; is_list; redact }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let training_phrases__parts ?parameter_id ~text () :
    training_phrases__parts =
  { parameter_id; text }

let training_phrases ?repeat_count ~parts () : training_phrases =
  { repeat_count; parts }

let google_dialogflow_cx_intent ?description ?id
    ?is_default_negative_intent ?is_default_welcome_intent
    ?is_fallback ?labels ?language_code ?parent ?priority
    ?(parameters = []) ?timeouts ?(training_phrases = [])
    ~display_name () : google_dialogflow_cx_intent =
  {
    description;
    display_name;
    id;
    is_default_negative_intent;
    is_default_welcome_intent;
    is_fallback;
    labels;
    language_code;
    parent;
    priority;
    parameters;
    timeouts;
    training_phrases;
  }

type t = {
  tf_name : string;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  is_default_negative_intent : bool prop;
  is_default_welcome_intent : bool prop;
  is_fallback : bool prop;
  labels : (string * string) list prop;
  language_code : string prop;
  name : string prop;
  parent : string prop;
  priority : float prop;
  terraform_labels : (string * string) list prop;
}

let make ?description ?id ?is_default_negative_intent
    ?is_default_welcome_intent ?is_fallback ?labels ?language_code
    ?parent ?priority ?(parameters = []) ?timeouts
    ?(training_phrases = []) ~display_name __id =
  let __type = "google_dialogflow_cx_intent" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       is_default_negative_intent =
         Prop.computed __type __id "is_default_negative_intent";
       is_default_welcome_intent =
         Prop.computed __type __id "is_default_welcome_intent";
       is_fallback = Prop.computed __type __id "is_fallback";
       labels = Prop.computed __type __id "labels";
       language_code = Prop.computed __type __id "language_code";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       priority = Prop.computed __type __id "priority";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dialogflow_cx_intent
        (google_dialogflow_cx_intent ?description ?id
           ?is_default_negative_intent ?is_default_welcome_intent
           ?is_fallback ?labels ?language_code ?parent ?priority
           ~parameters ?timeouts ~training_phrases ~display_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?is_default_negative_intent
    ?is_default_welcome_intent ?is_fallback ?labels ?language_code
    ?parent ?priority ?(parameters = []) ?timeouts
    ?(training_phrases = []) ~display_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?is_default_negative_intent
      ?is_default_welcome_intent ?is_fallback ?labels ?language_code
      ?parent ?priority ~parameters ?timeouts ~training_phrases
      ~display_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
