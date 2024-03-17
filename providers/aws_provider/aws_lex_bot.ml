(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lex_bot__abort_statement__message = {
  content : string;  (** content *)
  content_type : string;  (** content_type *)
  group_number : float option; [@option]  (** group_number *)
}
[@@deriving yojson_of]
(** aws_lex_bot__abort_statement__message *)

type aws_lex_bot__abort_statement = {
  response_card : string option; [@option]  (** response_card *)
  message : aws_lex_bot__abort_statement__message list;
}
[@@deriving yojson_of]
(** aws_lex_bot__abort_statement *)

type aws_lex_bot__clarification_prompt__message = {
  content : string;  (** content *)
  content_type : string;  (** content_type *)
  group_number : float option; [@option]  (** group_number *)
}
[@@deriving yojson_of]
(** aws_lex_bot__clarification_prompt__message *)

type aws_lex_bot__clarification_prompt = {
  max_attempts : float;  (** max_attempts *)
  response_card : string option; [@option]  (** response_card *)
  message : aws_lex_bot__clarification_prompt__message list;
}
[@@deriving yojson_of]
(** aws_lex_bot__clarification_prompt *)

type aws_lex_bot__intent = {
  intent_name : string;  (** intent_name *)
  intent_version : string;  (** intent_version *)
}
[@@deriving yojson_of]
(** aws_lex_bot__intent *)

type aws_lex_bot__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_lex_bot__timeouts *)

type aws_lex_bot = {
  child_directed : bool;  (** child_directed *)
  create_version : bool option; [@option]  (** create_version *)
  description : string option; [@option]  (** description *)
  detect_sentiment : bool option; [@option]  (** detect_sentiment *)
  enable_model_improvements : bool option; [@option]
      (** enable_model_improvements *)
  idle_session_ttl_in_seconds : float option; [@option]
      (** idle_session_ttl_in_seconds *)
  locale : string option; [@option]  (** locale *)
  name : string;  (** name *)
  nlu_intent_confidence_threshold : float option; [@option]
      (** nlu_intent_confidence_threshold *)
  process_behavior : string option; [@option]
      (** process_behavior *)
  abort_statement : aws_lex_bot__abort_statement list;
  clarification_prompt : aws_lex_bot__clarification_prompt list;
  intent : aws_lex_bot__intent list;
  timeouts : aws_lex_bot__timeouts option;
}
[@@deriving yojson_of]
(** aws_lex_bot *)

let aws_lex_bot ?create_version ?description ?detect_sentiment
    ?enable_model_improvements ?idle_session_ttl_in_seconds ?locale
    ?nlu_intent_confidence_threshold ?process_behavior ?timeouts
    ~child_directed ~name ~abort_statement ~clarification_prompt
    ~intent __resource_id =
  let __resource_type = "aws_lex_bot" in
  let __resource =
    {
      child_directed;
      create_version;
      description;
      detect_sentiment;
      enable_model_improvements;
      idle_session_ttl_in_seconds;
      locale;
      name;
      nlu_intent_confidence_threshold;
      process_behavior;
      abort_statement;
      clarification_prompt;
      intent;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lex_bot __resource);
  ()
