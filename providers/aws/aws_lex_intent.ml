(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type conclusion_statement__message = {
  content : string prop;  (** content *)
  content_type : string prop;  (** content_type *)
  group_number : float prop option; [@option]  (** group_number *)
}
[@@deriving yojson_of]
(** conclusion_statement__message *)

type conclusion_statement = {
  response_card : string prop option; [@option]  (** response_card *)
  message : conclusion_statement__message list;
}
[@@deriving yojson_of]
(** conclusion_statement *)

type confirmation_prompt__message = {
  content : string prop;  (** content *)
  content_type : string prop;  (** content_type *)
  group_number : float prop option; [@option]  (** group_number *)
}
[@@deriving yojson_of]
(** confirmation_prompt__message *)

type confirmation_prompt = {
  max_attempts : float prop;  (** max_attempts *)
  response_card : string prop option; [@option]  (** response_card *)
  message : confirmation_prompt__message list;
}
[@@deriving yojson_of]
(** confirmation_prompt *)

type dialog_code_hook = {
  message_version : string prop;  (** message_version *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** dialog_code_hook *)

type follow_up_prompt__prompt__message = {
  content : string prop;  (** content *)
  content_type : string prop;  (** content_type *)
  group_number : float prop option; [@option]  (** group_number *)
}
[@@deriving yojson_of]
(** follow_up_prompt__prompt__message *)

type follow_up_prompt__prompt = {
  max_attempts : float prop;  (** max_attempts *)
  response_card : string prop option; [@option]  (** response_card *)
  message : follow_up_prompt__prompt__message list;
}
[@@deriving yojson_of]
(** follow_up_prompt__prompt *)

type follow_up_prompt__rejection_statement__message = {
  content : string prop;  (** content *)
  content_type : string prop;  (** content_type *)
  group_number : float prop option; [@option]  (** group_number *)
}
[@@deriving yojson_of]
(** follow_up_prompt__rejection_statement__message *)

type follow_up_prompt__rejection_statement = {
  response_card : string prop option; [@option]  (** response_card *)
  message : follow_up_prompt__rejection_statement__message list;
}
[@@deriving yojson_of]
(** follow_up_prompt__rejection_statement *)

type follow_up_prompt = {
  prompt : follow_up_prompt__prompt list;
  rejection_statement : follow_up_prompt__rejection_statement list;
}
[@@deriving yojson_of]
(** follow_up_prompt *)

type fulfillment_activity__code_hook = {
  message_version : string prop;  (** message_version *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** fulfillment_activity__code_hook *)

type fulfillment_activity = {
  type_ : string prop; [@key "type"]  (** type *)
  code_hook : fulfillment_activity__code_hook list;
}
[@@deriving yojson_of]
(** fulfillment_activity *)

type rejection_statement__message = {
  content : string prop;  (** content *)
  content_type : string prop;  (** content_type *)
  group_number : float prop option; [@option]  (** group_number *)
}
[@@deriving yojson_of]
(** rejection_statement__message *)

type rejection_statement = {
  response_card : string prop option; [@option]  (** response_card *)
  message : rejection_statement__message list;
}
[@@deriving yojson_of]
(** rejection_statement *)

type slot__value_elicitation_prompt__message = {
  content : string prop;  (** content *)
  content_type : string prop;  (** content_type *)
  group_number : float prop option; [@option]  (** group_number *)
}
[@@deriving yojson_of]
(** slot__value_elicitation_prompt__message *)

type slot__value_elicitation_prompt = {
  max_attempts : float prop;  (** max_attempts *)
  response_card : string prop option; [@option]  (** response_card *)
  message : slot__value_elicitation_prompt__message list;
}
[@@deriving yojson_of]
(** slot__value_elicitation_prompt *)

type slot = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  priority : float prop option; [@option]  (** priority *)
  response_card : string prop option; [@option]  (** response_card *)
  sample_utterances : string prop list option; [@option]
      (** sample_utterances *)
  slot_constraint : string prop;  (** slot_constraint *)
  slot_type : string prop;  (** slot_type *)
  slot_type_version : string prop option; [@option]
      (** slot_type_version *)
  value_elicitation_prompt : slot__value_elicitation_prompt list;
}
[@@deriving yojson_of]
(** slot *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_lex_intent = {
  create_version : bool prop option; [@option]  (** create_version *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parent_intent_signature : string prop option; [@option]
      (** parent_intent_signature *)
  sample_utterances : string prop list option; [@option]
      (** sample_utterances *)
  conclusion_statement : conclusion_statement list;
  confirmation_prompt : confirmation_prompt list;
  dialog_code_hook : dialog_code_hook list;
  follow_up_prompt : follow_up_prompt list;
  fulfillment_activity : fulfillment_activity list;
  rejection_statement : rejection_statement list;
  slot : slot list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_lex_intent *)

let conclusion_statement__message ?group_number ~content
    ~content_type () : conclusion_statement__message =
  { content; content_type; group_number }

let conclusion_statement ?response_card ~message () :
    conclusion_statement =
  { response_card; message }

let confirmation_prompt__message ?group_number ~content ~content_type
    () : confirmation_prompt__message =
  { content; content_type; group_number }

let confirmation_prompt ?response_card ~max_attempts ~message () :
    confirmation_prompt =
  { max_attempts; response_card; message }

let dialog_code_hook ~message_version ~uri () : dialog_code_hook =
  { message_version; uri }

let follow_up_prompt__prompt__message ?group_number ~content
    ~content_type () : follow_up_prompt__prompt__message =
  { content; content_type; group_number }

let follow_up_prompt__prompt ?response_card ~max_attempts ~message ()
    : follow_up_prompt__prompt =
  { max_attempts; response_card; message }

let follow_up_prompt__rejection_statement__message ?group_number
    ~content ~content_type () :
    follow_up_prompt__rejection_statement__message =
  { content; content_type; group_number }

let follow_up_prompt__rejection_statement ?response_card ~message ()
    : follow_up_prompt__rejection_statement =
  { response_card; message }

let follow_up_prompt ~prompt ~rejection_statement () :
    follow_up_prompt =
  { prompt; rejection_statement }

let fulfillment_activity__code_hook ~message_version ~uri () :
    fulfillment_activity__code_hook =
  { message_version; uri }

let fulfillment_activity ~type_ ~code_hook () : fulfillment_activity
    =
  { type_; code_hook }

let rejection_statement__message ?group_number ~content ~content_type
    () : rejection_statement__message =
  { content; content_type; group_number }

let rejection_statement ?response_card ~message () :
    rejection_statement =
  { response_card; message }

let slot__value_elicitation_prompt__message ?group_number ~content
    ~content_type () : slot__value_elicitation_prompt__message =
  { content; content_type; group_number }

let slot__value_elicitation_prompt ?response_card ~max_attempts
    ~message () : slot__value_elicitation_prompt =
  { max_attempts; response_card; message }

let slot ?description ?priority ?response_card ?sample_utterances
    ?slot_type_version ~name ~slot_constraint ~slot_type
    ~value_elicitation_prompt () : slot =
  {
    description;
    name;
    priority;
    response_card;
    sample_utterances;
    slot_constraint;
    slot_type;
    slot_type_version;
    value_elicitation_prompt;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_lex_intent ?create_version ?description ?id
    ?parent_intent_signature ?sample_utterances ?timeouts ~name
    ~conclusion_statement ~confirmation_prompt ~dialog_code_hook
    ~follow_up_prompt ~fulfillment_activity ~rejection_statement
    ~slot () : aws_lex_intent =
  {
    create_version;
    description;
    id;
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

type t = {
  arn : string prop;
  checksum : string prop;
  create_version : bool prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
  parent_intent_signature : string prop;
  sample_utterances : string list prop;
  version : string prop;
}

let make ?create_version ?description ?id ?parent_intent_signature
    ?sample_utterances ?timeouts ~name ~conclusion_statement
    ~confirmation_prompt ~dialog_code_hook ~follow_up_prompt
    ~fulfillment_activity ~rejection_statement ~slot __id =
  let __type = "aws_lex_intent" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       checksum = Prop.computed __type __id "checksum";
       create_version = Prop.computed __type __id "create_version";
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       name = Prop.computed __type __id "name";
       parent_intent_signature =
         Prop.computed __type __id "parent_intent_signature";
       sample_utterances =
         Prop.computed __type __id "sample_utterances";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lex_intent
        (aws_lex_intent ?create_version ?description ?id
           ?parent_intent_signature ?sample_utterances ?timeouts
           ~name ~conclusion_statement ~confirmation_prompt
           ~dialog_code_hook ~follow_up_prompt ~fulfillment_activity
           ~rejection_statement ~slot ());
    attrs = __attrs;
  }

let register ?tf_module ?create_version ?description ?id
    ?parent_intent_signature ?sample_utterances ?timeouts ~name
    ~conclusion_statement ~confirmation_prompt ~dialog_code_hook
    ~follow_up_prompt ~fulfillment_activity ~rejection_statement
    ~slot __id =
  let (r : _ Tf_core.resource) =
    make ?create_version ?description ?id ?parent_intent_signature
      ?sample_utterances ?timeouts ~name ~conclusion_statement
      ~confirmation_prompt ~dialog_code_hook ~follow_up_prompt
      ~fulfillment_activity ~rejection_statement ~slot __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
