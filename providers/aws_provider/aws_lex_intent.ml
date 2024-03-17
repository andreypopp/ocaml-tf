(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lex_intent__conclusion_statement__message = {
  content : string;  (** content *)
  content_type : string;  (** content_type *)
  group_number : float option; [@option]  (** group_number *)
}
[@@deriving yojson_of]
(** aws_lex_intent__conclusion_statement__message *)

type aws_lex_intent__conclusion_statement = {
  response_card : string option; [@option]  (** response_card *)
  message : aws_lex_intent__conclusion_statement__message list;
}
[@@deriving yojson_of]
(** aws_lex_intent__conclusion_statement *)

type aws_lex_intent__confirmation_prompt__message = {
  content : string;  (** content *)
  content_type : string;  (** content_type *)
  group_number : float option; [@option]  (** group_number *)
}
[@@deriving yojson_of]
(** aws_lex_intent__confirmation_prompt__message *)

type aws_lex_intent__confirmation_prompt = {
  max_attempts : float;  (** max_attempts *)
  response_card : string option; [@option]  (** response_card *)
  message : aws_lex_intent__confirmation_prompt__message list;
}
[@@deriving yojson_of]
(** aws_lex_intent__confirmation_prompt *)

type aws_lex_intent__dialog_code_hook = {
  message_version : string;  (** message_version *)
  uri : string;  (** uri *)
}
[@@deriving yojson_of]
(** aws_lex_intent__dialog_code_hook *)

type aws_lex_intent__follow_up_prompt__prompt__message = {
  content : string;  (** content *)
  content_type : string;  (** content_type *)
  group_number : float option; [@option]  (** group_number *)
}
[@@deriving yojson_of]
(** aws_lex_intent__follow_up_prompt__prompt__message *)

type aws_lex_intent__follow_up_prompt__prompt = {
  max_attempts : float;  (** max_attempts *)
  response_card : string option; [@option]  (** response_card *)
  message : aws_lex_intent__follow_up_prompt__prompt__message list;
}
[@@deriving yojson_of]
(** aws_lex_intent__follow_up_prompt__prompt *)

type aws_lex_intent__follow_up_prompt__rejection_statement__message = {
  content : string;  (** content *)
  content_type : string;  (** content_type *)
  group_number : float option; [@option]  (** group_number *)
}
[@@deriving yojson_of]
(** aws_lex_intent__follow_up_prompt__rejection_statement__message *)

type aws_lex_intent__follow_up_prompt__rejection_statement = {
  response_card : string option; [@option]  (** response_card *)
  message :
    aws_lex_intent__follow_up_prompt__rejection_statement__message
    list;
}
[@@deriving yojson_of]
(** aws_lex_intent__follow_up_prompt__rejection_statement *)

type aws_lex_intent__follow_up_prompt = {
  prompt : aws_lex_intent__follow_up_prompt__prompt list;
  rejection_statement :
    aws_lex_intent__follow_up_prompt__rejection_statement list;
}
[@@deriving yojson_of]
(** aws_lex_intent__follow_up_prompt *)

type aws_lex_intent__fulfillment_activity__code_hook = {
  message_version : string;  (** message_version *)
  uri : string;  (** uri *)
}
[@@deriving yojson_of]
(** aws_lex_intent__fulfillment_activity__code_hook *)

type aws_lex_intent__fulfillment_activity = {
  type_ : string; [@key "type"]  (** type *)
  code_hook : aws_lex_intent__fulfillment_activity__code_hook list;
}
[@@deriving yojson_of]
(** aws_lex_intent__fulfillment_activity *)

type aws_lex_intent__rejection_statement__message = {
  content : string;  (** content *)
  content_type : string;  (** content_type *)
  group_number : float option; [@option]  (** group_number *)
}
[@@deriving yojson_of]
(** aws_lex_intent__rejection_statement__message *)

type aws_lex_intent__rejection_statement = {
  response_card : string option; [@option]  (** response_card *)
  message : aws_lex_intent__rejection_statement__message list;
}
[@@deriving yojson_of]
(** aws_lex_intent__rejection_statement *)

type aws_lex_intent__slot__value_elicitation_prompt__message = {
  content : string;  (** content *)
  content_type : string;  (** content_type *)
  group_number : float option; [@option]  (** group_number *)
}
[@@deriving yojson_of]
(** aws_lex_intent__slot__value_elicitation_prompt__message *)

type aws_lex_intent__slot__value_elicitation_prompt = {
  max_attempts : float;  (** max_attempts *)
  response_card : string option; [@option]  (** response_card *)
  message :
    aws_lex_intent__slot__value_elicitation_prompt__message list;
}
[@@deriving yojson_of]
(** aws_lex_intent__slot__value_elicitation_prompt *)

type aws_lex_intent__slot = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  priority : float option; [@option]  (** priority *)
  response_card : string option; [@option]  (** response_card *)
  sample_utterances : string list option; [@option]
      (** sample_utterances *)
  slot_constraint : string;  (** slot_constraint *)
  slot_type : string;  (** slot_type *)
  slot_type_version : string option; [@option]
      (** slot_type_version *)
  value_elicitation_prompt :
    aws_lex_intent__slot__value_elicitation_prompt list;
}
[@@deriving yojson_of]
(** aws_lex_intent__slot *)

type aws_lex_intent__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_lex_intent__timeouts *)

type aws_lex_intent = {
  create_version : bool option; [@option]  (** create_version *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  parent_intent_signature : string option; [@option]
      (** parent_intent_signature *)
  sample_utterances : string list option; [@option]
      (** sample_utterances *)
  conclusion_statement : aws_lex_intent__conclusion_statement list;
  confirmation_prompt : aws_lex_intent__confirmation_prompt list;
  dialog_code_hook : aws_lex_intent__dialog_code_hook list;
  follow_up_prompt : aws_lex_intent__follow_up_prompt list;
  fulfillment_activity : aws_lex_intent__fulfillment_activity list;
  rejection_statement : aws_lex_intent__rejection_statement list;
  slot : aws_lex_intent__slot list;
  timeouts : aws_lex_intent__timeouts option;
}
[@@deriving yojson_of]
(** aws_lex_intent *)

let aws_lex_intent ?create_version ?description
    ?parent_intent_signature ?sample_utterances ?timeouts ~name
    ~conclusion_statement ~confirmation_prompt ~dialog_code_hook
    ~follow_up_prompt ~fulfillment_activity ~rejection_statement
    ~slot __resource_id =
  let __resource_type = "aws_lex_intent" in
  let __resource =
    {
      create_version;
      description;
      name;
      parent_intent_signature;
      sample_utterances;
      conclusion_statement;
      confirmation_prompt;
      dialog_code_hook;
      follow_up_prompt;
      fulfillment_activity;
      rejection_statement;
      slot;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lex_intent __resource);
  ()
