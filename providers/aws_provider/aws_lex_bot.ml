(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lex_bot__abort_statement__message = {
  content : string prop;  (** content *)
  content_type : string prop;  (** content_type *)
  group_number : float prop option; [@option]  (** group_number *)
}
[@@deriving yojson_of]
(** aws_lex_bot__abort_statement__message *)

type aws_lex_bot__abort_statement = {
  response_card : string prop option; [@option]  (** response_card *)
  message : aws_lex_bot__abort_statement__message list;
}
[@@deriving yojson_of]
(** aws_lex_bot__abort_statement *)

type aws_lex_bot__clarification_prompt__message = {
  content : string prop;  (** content *)
  content_type : string prop;  (** content_type *)
  group_number : float prop option; [@option]  (** group_number *)
}
[@@deriving yojson_of]
(** aws_lex_bot__clarification_prompt__message *)

type aws_lex_bot__clarification_prompt = {
  max_attempts : float prop;  (** max_attempts *)
  response_card : string prop option; [@option]  (** response_card *)
  message : aws_lex_bot__clarification_prompt__message list;
}
[@@deriving yojson_of]
(** aws_lex_bot__clarification_prompt *)

type aws_lex_bot__intent = {
  intent_name : string prop;  (** intent_name *)
  intent_version : string prop;  (** intent_version *)
}
[@@deriving yojson_of]
(** aws_lex_bot__intent *)

type aws_lex_bot__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_lex_bot__timeouts *)

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
  abort_statement : aws_lex_bot__abort_statement list;
  clarification_prompt : aws_lex_bot__clarification_prompt list;
  intent : aws_lex_bot__intent list;
  timeouts : aws_lex_bot__timeouts option;
}
[@@deriving yojson_of]
(** aws_lex_bot *)

let aws_lex_bot ?create_version ?description ?detect_sentiment
    ?enable_model_improvements ?id ?idle_session_ttl_in_seconds
    ?locale ?nlu_intent_confidence_threshold ?process_behavior
    ?voice_id ?timeouts ~child_directed ~name ~abort_statement
    ~clarification_prompt ~intent __resource_id =
  let __resource_type = "aws_lex_bot" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lex_bot __resource);
  ()
