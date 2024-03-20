(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type abort_statement__message = {
  content : string prop;  (** content *)
  content_type : string prop;  (** content_type *)
  group_number : float prop option; [@option]  (** group_number *)
}
[@@deriving yojson_of]
(** abort_statement__message *)

type abort_statement = {
  response_card : string prop option; [@option]  (** response_card *)
  message : abort_statement__message list;
}
[@@deriving yojson_of]
(** abort_statement *)

type clarification_prompt__message = {
  content : string prop;  (** content *)
  content_type : string prop;  (** content_type *)
  group_number : float prop option; [@option]  (** group_number *)
}
[@@deriving yojson_of]
(** clarification_prompt__message *)

type clarification_prompt = {
  max_attempts : float prop;  (** max_attempts *)
  response_card : string prop option; [@option]  (** response_card *)
  message : clarification_prompt__message list;
}
[@@deriving yojson_of]
(** clarification_prompt *)

type intent = {
  intent_name : string prop;  (** intent_name *)
  intent_version : string prop;  (** intent_version *)
}
[@@deriving yojson_of]
(** intent *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_lex_bot = {
  child_directed : bool prop;  (** child_directed *)
  create_version : bool prop option; [@option]  (** create_version *)
  description : string prop option; [@option]  (** description *)
  detect_sentiment : bool prop option; [@option]
      (** detect_sentiment *)
  enable_model_improvements : bool prop option; [@option]
      (** enable_model_improvements *)
  id : string prop option; [@option]  (** id *)
  idle_session_ttl_in_seconds : float prop option; [@option]
      (** idle_session_ttl_in_seconds *)
  locale : string prop option; [@option]  (** locale *)
  name : string prop;  (** name *)
  nlu_intent_confidence_threshold : float prop option; [@option]
      (** nlu_intent_confidence_threshold *)
  process_behavior : string prop option; [@option]
      (** process_behavior *)
  voice_id : string prop option; [@option]  (** voice_id *)
  abort_statement : abort_statement list;
  clarification_prompt : clarification_prompt list;
  intent : intent list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_lex_bot *)

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
    ?voice_id ?timeouts ~child_directed ~name ~abort_statement
    ~clarification_prompt ~intent () : aws_lex_bot =
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
    ?voice_id ?timeouts ~child_directed ~name ~abort_statement
    ~clarification_prompt ~intent __id =
  let __type = "aws_lex_bot" in
  let __attrs =
    ({
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
           ?voice_id ?timeouts ~child_directed ~name ~abort_statement
           ~clarification_prompt ~intent ());
    attrs = __attrs;
  }

let register ?tf_module ?create_version ?description
    ?detect_sentiment ?enable_model_improvements ?id
    ?idle_session_ttl_in_seconds ?locale
    ?nlu_intent_confidence_threshold ?process_behavior ?voice_id
    ?timeouts ~child_directed ~name ~abort_statement
    ~clarification_prompt ~intent __id =
  let (r : _ Tf_core.resource) =
    make ?create_version ?description ?detect_sentiment
      ?enable_model_improvements ?id ?idle_session_ttl_in_seconds
      ?locale ?nlu_intent_confidence_threshold ?process_behavior
      ?voice_id ?timeouts ~child_directed ~name ~abort_statement
      ~clarification_prompt ~intent __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
