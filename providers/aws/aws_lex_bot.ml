(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type abort_statement__message = {
  content : string prop;
  content_type : string prop;
  group_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : abort_statement__message) -> ()

let yojson_of_abort_statement__message =
  (function
   | {
       content = v_content;
       content_type = v_content_type;
       group_number = v_group_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_group_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "group_number", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content_type in
         ("content_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : abort_statement__message -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_abort_statement__message

[@@@deriving.end]

type abort_statement = {
  response_card : string prop option; [@option]
  message : abort_statement__message list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : abort_statement) -> ()

let yojson_of_abort_statement =
  (function
   | { response_card = v_response_card; message = v_message } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_message then bnds
         else
           let arg =
             (yojson_of_list yojson_of_abort_statement__message)
               v_message
           in
           let bnd = "message", arg in
           bnd :: bnds
       in
       let bnds =
         match v_response_card with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "response_card", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : abort_statement -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_abort_statement

[@@@deriving.end]

type clarification_prompt__message = {
  content : string prop;
  content_type : string prop;
  group_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : clarification_prompt__message) -> ()

let yojson_of_clarification_prompt__message =
  (function
   | {
       content = v_content;
       content_type = v_content_type;
       group_number = v_group_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_group_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "group_number", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content_type in
         ("content_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : clarification_prompt__message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_clarification_prompt__message

[@@@deriving.end]

type clarification_prompt = {
  max_attempts : float prop;
  response_card : string prop option; [@option]
  message : clarification_prompt__message list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : clarification_prompt) -> ()

let yojson_of_clarification_prompt =
  (function
   | {
       max_attempts = v_max_attempts;
       response_card = v_response_card;
       message = v_message;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_message then bnds
         else
           let arg =
             (yojson_of_list yojson_of_clarification_prompt__message)
               v_message
           in
           let bnd = "message", arg in
           bnd :: bnds
       in
       let bnds =
         match v_response_card with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "response_card", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_attempts in
         ("max_attempts", arg) :: bnds
       in
       `Assoc bnds
    : clarification_prompt -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_clarification_prompt

[@@@deriving.end]

type intent = {
  intent_name : string prop;
  intent_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : intent) -> ()

let yojson_of_intent =
  (function
   | {
       intent_name = v_intent_name;
       intent_version = v_intent_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_intent_version
         in
         ("intent_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_intent_name in
         ("intent_name", arg) :: bnds
       in
       `Assoc bnds
    : intent -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_intent

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

type aws_lex_bot = {
  child_directed : bool prop;
  create_version : bool prop option; [@option]
  description : string prop option; [@option]
  detect_sentiment : bool prop option; [@option]
  enable_model_improvements : bool prop option; [@option]
  id : string prop option; [@option]
  idle_session_ttl_in_seconds : float prop option; [@option]
  locale : string prop option; [@option]
  name : string prop;
  nlu_intent_confidence_threshold : float prop option; [@option]
  process_behavior : string prop option; [@option]
  voice_id : string prop option; [@option]
  abort_statement : abort_statement list;
      [@default []] [@yojson_drop_default ( = )]
  clarification_prompt : clarification_prompt list;
      [@default []] [@yojson_drop_default ( = )]
  intent : intent list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lex_bot) -> ()

let yojson_of_aws_lex_bot =
  (function
   | {
       child_directed = v_child_directed;
       create_version = v_create_version;
       description = v_description;
       detect_sentiment = v_detect_sentiment;
       enable_model_improvements = v_enable_model_improvements;
       id = v_id;
       idle_session_ttl_in_seconds = v_idle_session_ttl_in_seconds;
       locale = v_locale;
       name = v_name;
       nlu_intent_confidence_threshold =
         v_nlu_intent_confidence_threshold;
       process_behavior = v_process_behavior;
       voice_id = v_voice_id;
       abort_statement = v_abort_statement;
       clarification_prompt = v_clarification_prompt;
       intent = v_intent;
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
         if [] = v_intent then bnds
         else
           let arg = (yojson_of_list yojson_of_intent) v_intent in
           let bnd = "intent", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_clarification_prompt then bnds
         else
           let arg =
             (yojson_of_list yojson_of_clarification_prompt)
               v_clarification_prompt
           in
           let bnd = "clarification_prompt", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_abort_statement then bnds
         else
           let arg =
             (yojson_of_list yojson_of_abort_statement)
               v_abort_statement
           in
           let bnd = "abort_statement", arg in
           bnd :: bnds
       in
       let bnds =
         match v_voice_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "voice_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_process_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "process_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nlu_intent_confidence_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nlu_intent_confidence_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_locale with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "locale", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idle_session_ttl_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "idle_session_ttl_in_seconds", arg in
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
         match v_enable_model_improvements with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_model_improvements", arg in
             bnd :: bnds
       in
       let bnds =
         match v_detect_sentiment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "detect_sentiment", arg in
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
       let bnds =
         match v_create_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "create_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_child_directed in
         ("child_directed", arg) :: bnds
       in
       `Assoc bnds
    : aws_lex_bot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lex_bot

[@@@deriving.end]

let abort_statement__message ?group_number ~content ~content_type ()
    : abort_statement__message =
  { content; content_type; group_number }

let abort_statement ?response_card ~message () : abort_statement =
  { response_card; message }

let clarification_prompt__message ?group_number ~content
    ~content_type () : clarification_prompt__message =
  { content; content_type; group_number }

let clarification_prompt ?response_card ~max_attempts ~message () :
    clarification_prompt =
  { max_attempts; response_card; message }

let intent ~intent_name ~intent_version () : intent =
  { intent_name; intent_version }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_lex_bot ?create_version ?description ?detect_sentiment
    ?enable_model_improvements ?id ?idle_session_ttl_in_seconds
    ?locale ?nlu_intent_confidence_threshold ?process_behavior
    ?voice_id ?(clarification_prompt = []) ?timeouts ~child_directed
    ~name ~abort_statement ~intent () : aws_lex_bot =
  {
    child_directed;
    create_version;
    description;
    detect_sentiment;
    enable_model_improvements;
    id;
    idle_session_ttl_in_seconds;
    locale;
    name;
    nlu_intent_confidence_threshold;
    process_behavior;
    voice_id;
    abort_statement;
    clarification_prompt;
    intent;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  checksum : string prop;
  child_directed : bool prop;
  create_version : bool prop;
  created_date : string prop;
  description : string prop;
  detect_sentiment : bool prop;
  enable_model_improvements : bool prop;
  failure_reason : string prop;
  id : string prop;
  idle_session_ttl_in_seconds : float prop;
  last_updated_date : string prop;
  locale : string prop;
  name : string prop;
  nlu_intent_confidence_threshold : float prop;
  process_behavior : string prop;
  status : string prop;
  version : string prop;
  voice_id : string prop;
}

let make ?create_version ?description ?detect_sentiment
    ?enable_model_improvements ?id ?idle_session_ttl_in_seconds
    ?locale ?nlu_intent_confidence_threshold ?process_behavior
    ?voice_id ?(clarification_prompt = []) ?timeouts ~child_directed
    ~name ~abort_statement ~intent __id =
  let __type = "aws_lex_bot" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       checksum = Prop.computed __type __id "checksum";
       child_directed = Prop.computed __type __id "child_directed";
       create_version = Prop.computed __type __id "create_version";
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       detect_sentiment =
         Prop.computed __type __id "detect_sentiment";
       enable_model_improvements =
         Prop.computed __type __id "enable_model_improvements";
       failure_reason = Prop.computed __type __id "failure_reason";
       id = Prop.computed __type __id "id";
       idle_session_ttl_in_seconds =
         Prop.computed __type __id "idle_session_ttl_in_seconds";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       locale = Prop.computed __type __id "locale";
       name = Prop.computed __type __id "name";
       nlu_intent_confidence_threshold =
         Prop.computed __type __id "nlu_intent_confidence_threshold";
       process_behavior =
         Prop.computed __type __id "process_behavior";
       status = Prop.computed __type __id "status";
       version = Prop.computed __type __id "version";
       voice_id = Prop.computed __type __id "voice_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lex_bot
        (aws_lex_bot ?create_version ?description ?detect_sentiment
           ?enable_model_improvements ?id
           ?idle_session_ttl_in_seconds ?locale
           ?nlu_intent_confidence_threshold ?process_behavior
           ?voice_id ~clarification_prompt ?timeouts ~child_directed
           ~name ~abort_statement ~intent ());
    attrs = __attrs;
  }

let register ?tf_module ?create_version ?description
    ?detect_sentiment ?enable_model_improvements ?id
    ?idle_session_ttl_in_seconds ?locale
    ?nlu_intent_confidence_threshold ?process_behavior ?voice_id
    ?(clarification_prompt = []) ?timeouts ~child_directed ~name
    ~abort_statement ~intent __id =
  let (r : _ Tf_core.resource) =
    make ?create_version ?description ?detect_sentiment
      ?enable_model_improvements ?id ?idle_session_ttl_in_seconds
      ?locale ?nlu_intent_confidence_threshold ?process_behavior
      ?voice_id ~clarification_prompt ?timeouts ~child_directed ~name
      ~abort_statement ~intent __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
