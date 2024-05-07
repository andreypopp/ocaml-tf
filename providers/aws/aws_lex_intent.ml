(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type conclusion_statement__message = {
  content : string prop;
  content_type : string prop;
  group_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conclusion_statement__message) -> ()

let yojson_of_conclusion_statement__message =
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
    : conclusion_statement__message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conclusion_statement__message

[@@@deriving.end]

type conclusion_statement = {
  response_card : string prop option; [@option]
  message : conclusion_statement__message list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conclusion_statement) -> ()

let yojson_of_conclusion_statement =
  (function
   | { response_card = v_response_card; message = v_message } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_conclusion_statement__message
             v_message
         in
         ("message", arg) :: bnds
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
    : conclusion_statement -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conclusion_statement

[@@@deriving.end]

type confirmation_prompt__message = {
  content : string prop;
  content_type : string prop;
  group_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : confirmation_prompt__message) -> ()

let yojson_of_confirmation_prompt__message =
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
    : confirmation_prompt__message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_confirmation_prompt__message

[@@@deriving.end]

type confirmation_prompt = {
  max_attempts : float prop;
  response_card : string prop option; [@option]
  message : confirmation_prompt__message list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : confirmation_prompt) -> ()

let yojson_of_confirmation_prompt =
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
         let arg =
           yojson_of_list yojson_of_confirmation_prompt__message
             v_message
         in
         ("message", arg) :: bnds
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
    : confirmation_prompt -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_confirmation_prompt

[@@@deriving.end]

type dialog_code_hook = {
  message_version : string prop;
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dialog_code_hook) -> ()

let yojson_of_dialog_code_hook =
  (function
   | { message_version = v_message_version; uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_message_version
         in
         ("message_version", arg) :: bnds
       in
       `Assoc bnds
    : dialog_code_hook -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dialog_code_hook

[@@@deriving.end]

type follow_up_prompt__prompt__message = {
  content : string prop;
  content_type : string prop;
  group_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : follow_up_prompt__prompt__message) -> ()

let yojson_of_follow_up_prompt__prompt__message =
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
    : follow_up_prompt__prompt__message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_follow_up_prompt__prompt__message

[@@@deriving.end]

type follow_up_prompt__prompt = {
  max_attempts : float prop;
  response_card : string prop option; [@option]
  message : follow_up_prompt__prompt__message list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : follow_up_prompt__prompt) -> ()

let yojson_of_follow_up_prompt__prompt =
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
         let arg =
           yojson_of_list yojson_of_follow_up_prompt__prompt__message
             v_message
         in
         ("message", arg) :: bnds
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
    : follow_up_prompt__prompt -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_follow_up_prompt__prompt

[@@@deriving.end]

type follow_up_prompt__rejection_statement__message = {
  content : string prop;
  content_type : string prop;
  group_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : follow_up_prompt__rejection_statement__message) -> ()

let yojson_of_follow_up_prompt__rejection_statement__message =
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
    : follow_up_prompt__rejection_statement__message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_follow_up_prompt__rejection_statement__message

[@@@deriving.end]

type follow_up_prompt__rejection_statement = {
  response_card : string prop option; [@option]
  message : follow_up_prompt__rejection_statement__message list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : follow_up_prompt__rejection_statement) -> ()

let yojson_of_follow_up_prompt__rejection_statement =
  (function
   | { response_card = v_response_card; message = v_message } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_follow_up_prompt__rejection_statement__message
             v_message
         in
         ("message", arg) :: bnds
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
    : follow_up_prompt__rejection_statement ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_follow_up_prompt__rejection_statement

[@@@deriving.end]

type follow_up_prompt = {
  prompt : follow_up_prompt__prompt list;
  rejection_statement : follow_up_prompt__rejection_statement list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : follow_up_prompt) -> ()

let yojson_of_follow_up_prompt =
  (function
   | {
       prompt = v_prompt;
       rejection_statement = v_rejection_statement;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_follow_up_prompt__rejection_statement
             v_rejection_statement
         in
         ("rejection_statement", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_follow_up_prompt__prompt v_prompt
         in
         ("prompt", arg) :: bnds
       in
       `Assoc bnds
    : follow_up_prompt -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_follow_up_prompt

[@@@deriving.end]

type fulfillment_activity__code_hook = {
  message_version : string prop;
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fulfillment_activity__code_hook) -> ()

let yojson_of_fulfillment_activity__code_hook =
  (function
   | { message_version = v_message_version; uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_message_version
         in
         ("message_version", arg) :: bnds
       in
       `Assoc bnds
    : fulfillment_activity__code_hook ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fulfillment_activity__code_hook

[@@@deriving.end]

type fulfillment_activity = {
  type_ : string prop; [@key "type"]
  code_hook : fulfillment_activity__code_hook list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fulfillment_activity) -> ()

let yojson_of_fulfillment_activity =
  (function
   | { type_ = v_type_; code_hook = v_code_hook } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_fulfillment_activity__code_hook
             v_code_hook
         in
         ("code_hook", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : fulfillment_activity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fulfillment_activity

[@@@deriving.end]

type rejection_statement__message = {
  content : string prop;
  content_type : string prop;
  group_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rejection_statement__message) -> ()

let yojson_of_rejection_statement__message =
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
    : rejection_statement__message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rejection_statement__message

[@@@deriving.end]

type rejection_statement = {
  response_card : string prop option; [@option]
  message : rejection_statement__message list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rejection_statement) -> ()

let yojson_of_rejection_statement =
  (function
   | { response_card = v_response_card; message = v_message } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rejection_statement__message
             v_message
         in
         ("message", arg) :: bnds
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
    : rejection_statement -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rejection_statement

[@@@deriving.end]

type slot__value_elicitation_prompt__message = {
  content : string prop;
  content_type : string prop;
  group_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : slot__value_elicitation_prompt__message) -> ()

let yojson_of_slot__value_elicitation_prompt__message =
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
    : slot__value_elicitation_prompt__message ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_slot__value_elicitation_prompt__message

[@@@deriving.end]

type slot__value_elicitation_prompt = {
  max_attempts : float prop;
  response_card : string prop option; [@option]
  message : slot__value_elicitation_prompt__message list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : slot__value_elicitation_prompt) -> ()

let yojson_of_slot__value_elicitation_prompt =
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
         let arg =
           yojson_of_list
             yojson_of_slot__value_elicitation_prompt__message
             v_message
         in
         ("message", arg) :: bnds
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
    : slot__value_elicitation_prompt ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_slot__value_elicitation_prompt

[@@@deriving.end]

type slot = {
  description : string prop option; [@option]
  name : string prop;
  priority : float prop option; [@option]
  response_card : string prop option; [@option]
  sample_utterances : string prop list option; [@option]
  slot_constraint : string prop;
  slot_type : string prop;
  slot_type_version : string prop option; [@option]
  value_elicitation_prompt : slot__value_elicitation_prompt list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : slot) -> ()

let yojson_of_slot =
  (function
   | {
       description = v_description;
       name = v_name;
       priority = v_priority;
       response_card = v_response_card;
       sample_utterances = v_sample_utterances;
       slot_constraint = v_slot_constraint;
       slot_type = v_slot_type;
       slot_type_version = v_slot_type_version;
       value_elicitation_prompt = v_value_elicitation_prompt;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_slot__value_elicitation_prompt
             v_value_elicitation_prompt
         in
         ("value_elicitation_prompt", arg) :: bnds
       in
       let bnds =
         match v_slot_type_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "slot_type_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_slot_type in
         ("slot_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_slot_constraint
         in
         ("slot_constraint", arg) :: bnds
       in
       let bnds =
         match v_sample_utterances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "sample_utterances", arg in
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
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : slot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_slot

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

type aws_lex_intent = {
  create_version : bool prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  parent_intent_signature : string prop option; [@option]
  sample_utterances : string prop list option; [@option]
  conclusion_statement : conclusion_statement list;
  confirmation_prompt : confirmation_prompt list;
  dialog_code_hook : dialog_code_hook list;
  follow_up_prompt : follow_up_prompt list;
  fulfillment_activity : fulfillment_activity list;
  rejection_statement : rejection_statement list;
  slot : slot list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lex_intent) -> ()

let yojson_of_aws_lex_intent =
  (function
   | {
       create_version = v_create_version;
       description = v_description;
       id = v_id;
       name = v_name;
       parent_intent_signature = v_parent_intent_signature;
       sample_utterances = v_sample_utterances;
       conclusion_statement = v_conclusion_statement;
       confirmation_prompt = v_confirmation_prompt;
       dialog_code_hook = v_dialog_code_hook;
       follow_up_prompt = v_follow_up_prompt;
       fulfillment_activity = v_fulfillment_activity;
       rejection_statement = v_rejection_statement;
       slot = v_slot;
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
         let arg = yojson_of_list yojson_of_slot v_slot in
         ("slot", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rejection_statement
             v_rejection_statement
         in
         ("rejection_statement", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_fulfillment_activity
             v_fulfillment_activity
         in
         ("fulfillment_activity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_follow_up_prompt
             v_follow_up_prompt
         in
         ("follow_up_prompt", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dialog_code_hook
             v_dialog_code_hook
         in
         ("dialog_code_hook", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_confirmation_prompt
             v_confirmation_prompt
         in
         ("confirmation_prompt", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_conclusion_statement
             v_conclusion_statement
         in
         ("conclusion_statement", arg) :: bnds
       in
       let bnds =
         match v_sample_utterances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "sample_utterances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parent_intent_signature with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent_intent_signature", arg in
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
       `Assoc bnds
    : aws_lex_intent -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lex_intent

[@@@deriving.end]

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

let fulfillment_activity ?(code_hook = []) ~type_ () :
    fulfillment_activity =
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
    ?slot_type_version ?(value_elicitation_prompt = []) ~name
    ~slot_constraint ~slot_type () : slot =
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
    ?parent_intent_signature ?sample_utterances
    ?(conclusion_statement = []) ?(confirmation_prompt = [])
    ?(dialog_code_hook = []) ?(follow_up_prompt = [])
    ?(rejection_statement = []) ?timeouts ~name ~fulfillment_activity
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
  tf_name : string;
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
    ?sample_utterances ?(conclusion_statement = [])
    ?(confirmation_prompt = []) ?(dialog_code_hook = [])
    ?(follow_up_prompt = []) ?(rejection_statement = []) ?timeouts
    ~name ~fulfillment_activity ~slot __id =
  let __type = "aws_lex_intent" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?parent_intent_signature ?sample_utterances
           ~conclusion_statement ~confirmation_prompt
           ~dialog_code_hook ~follow_up_prompt ~rejection_statement
           ?timeouts ~name ~fulfillment_activity ~slot ());
    attrs = __attrs;
  }

let register ?tf_module ?create_version ?description ?id
    ?parent_intent_signature ?sample_utterances
    ?(conclusion_statement = []) ?(confirmation_prompt = [])
    ?(dialog_code_hook = []) ?(follow_up_prompt = [])
    ?(rejection_statement = []) ?timeouts ~name ~fulfillment_activity
    ~slot __id =
  let (r : _ Tf_core.resource) =
    make ?create_version ?description ?id ?parent_intent_signature
      ?sample_utterances ~conclusion_statement ~confirmation_prompt
      ~dialog_code_hook ~follow_up_prompt ~rejection_statement
      ?timeouts ~name ~fulfillment_activity ~slot __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
