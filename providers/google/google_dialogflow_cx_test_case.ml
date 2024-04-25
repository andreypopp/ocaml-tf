(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type test_case_conversation_turns__user_input__input__dtmf = {
  digits : string prop option; [@option]
  finish_digit : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : test_case_conversation_turns__user_input__input__dtmf) ->
  ()

let yojson_of_test_case_conversation_turns__user_input__input__dtmf =
  (function
   | { digits = v_digits; finish_digit = v_finish_digit } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_finish_digit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "finish_digit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_digits with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "digits", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : test_case_conversation_turns__user_input__input__dtmf ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_test_case_conversation_turns__user_input__input__dtmf

[@@@deriving.end]

type test_case_conversation_turns__user_input__input__event = {
  event : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : test_case_conversation_turns__user_input__input__event) ->
  ()

let yojson_of_test_case_conversation_turns__user_input__input__event
    =
  (function
   | { event = v_event } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event in
         ("event", arg) :: bnds
       in
       `Assoc bnds
    : test_case_conversation_turns__user_input__input__event ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_test_case_conversation_turns__user_input__input__event

[@@@deriving.end]

type test_case_conversation_turns__user_input__input__text = {
  text : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : test_case_conversation_turns__user_input__input__text) ->
  ()

let yojson_of_test_case_conversation_turns__user_input__input__text =
  (function
   | { text = v_text } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text in
         ("text", arg) :: bnds
       in
       `Assoc bnds
    : test_case_conversation_turns__user_input__input__text ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_test_case_conversation_turns__user_input__input__text

[@@@deriving.end]

type test_case_conversation_turns__user_input__input = {
  language_code : string prop option; [@option]
  dtmf : test_case_conversation_turns__user_input__input__dtmf list;
  event :
    test_case_conversation_turns__user_input__input__event list;
  text : test_case_conversation_turns__user_input__input__text list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : test_case_conversation_turns__user_input__input) -> ()

let yojson_of_test_case_conversation_turns__user_input__input =
  (function
   | {
       language_code = v_language_code;
       dtmf = v_dtmf;
       event = v_event;
       text = v_text;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_test_case_conversation_turns__user_input__input__text
             v_text
         in
         ("text", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_test_case_conversation_turns__user_input__input__event
             v_event
         in
         ("event", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_test_case_conversation_turns__user_input__input__dtmf
             v_dtmf
         in
         ("dtmf", arg) :: bnds
       in
       let bnds =
         match v_language_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language_code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : test_case_conversation_turns__user_input__input ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_test_case_conversation_turns__user_input__input

[@@@deriving.end]

type test_case_conversation_turns__user_input = {
  enable_sentiment_analysis : bool prop option; [@option]
  injected_parameters : string prop option; [@option]
  is_webhook_enabled : bool prop option; [@option]
  input : test_case_conversation_turns__user_input__input list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : test_case_conversation_turns__user_input) -> ()

let yojson_of_test_case_conversation_turns__user_input =
  (function
   | {
       enable_sentiment_analysis = v_enable_sentiment_analysis;
       injected_parameters = v_injected_parameters;
       is_webhook_enabled = v_is_webhook_enabled;
       input = v_input;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_test_case_conversation_turns__user_input__input
             v_input
         in
         ("input", arg) :: bnds
       in
       let bnds =
         match v_is_webhook_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_webhook_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_injected_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "injected_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_sentiment_analysis with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_sentiment_analysis", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : test_case_conversation_turns__user_input ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_test_case_conversation_turns__user_input

[@@@deriving.end]

type test_case_conversation_turns__virtual_agent_output__current_page = {
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       test_case_conversation_turns__virtual_agent_output__current_page) ->
  ()

let yojson_of_test_case_conversation_turns__virtual_agent_output__current_page
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : test_case_conversation_turns__virtual_agent_output__current_page ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_test_case_conversation_turns__virtual_agent_output__current_page

[@@@deriving.end]

type test_case_conversation_turns__virtual_agent_output__text_responses = {
  text : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       test_case_conversation_turns__virtual_agent_output__text_responses) ->
  ()

let yojson_of_test_case_conversation_turns__virtual_agent_output__text_responses
    =
  (function
   | { text = v_text } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_text with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "text", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : test_case_conversation_turns__virtual_agent_output__text_responses ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_test_case_conversation_turns__virtual_agent_output__text_responses

[@@@deriving.end]

type test_case_conversation_turns__virtual_agent_output__triggered_intent = {
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       test_case_conversation_turns__virtual_agent_output__triggered_intent) ->
  ()

let yojson_of_test_case_conversation_turns__virtual_agent_output__triggered_intent
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : test_case_conversation_turns__virtual_agent_output__triggered_intent ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_test_case_conversation_turns__virtual_agent_output__triggered_intent

[@@@deriving.end]

type test_case_conversation_turns__virtual_agent_output = {
  session_parameters : string prop option; [@option]
  current_page :
    test_case_conversation_turns__virtual_agent_output__current_page
    list;
  text_responses :
    test_case_conversation_turns__virtual_agent_output__text_responses
    list;
  triggered_intent :
    test_case_conversation_turns__virtual_agent_output__triggered_intent
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : test_case_conversation_turns__virtual_agent_output) -> ()

let yojson_of_test_case_conversation_turns__virtual_agent_output =
  (function
   | {
       session_parameters = v_session_parameters;
       current_page = v_current_page;
       text_responses = v_text_responses;
       triggered_intent = v_triggered_intent;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_test_case_conversation_turns__virtual_agent_output__triggered_intent
             v_triggered_intent
         in
         ("triggered_intent", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_test_case_conversation_turns__virtual_agent_output__text_responses
             v_text_responses
         in
         ("text_responses", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_test_case_conversation_turns__virtual_agent_output__current_page
             v_current_page
         in
         ("current_page", arg) :: bnds
       in
       let bnds =
         match v_session_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_parameters", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : test_case_conversation_turns__virtual_agent_output ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_test_case_conversation_turns__virtual_agent_output

[@@@deriving.end]

type test_case_conversation_turns = {
  user_input : test_case_conversation_turns__user_input list;
  virtual_agent_output :
    test_case_conversation_turns__virtual_agent_output list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : test_case_conversation_turns) -> ()

let yojson_of_test_case_conversation_turns =
  (function
   | {
       user_input = v_user_input;
       virtual_agent_output = v_virtual_agent_output;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_test_case_conversation_turns__virtual_agent_output
             v_virtual_agent_output
         in
         ("virtual_agent_output", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_test_case_conversation_turns__user_input
             v_user_input
         in
         ("user_input", arg) :: bnds
       in
       `Assoc bnds
    : test_case_conversation_turns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_test_case_conversation_turns

[@@@deriving.end]

type test_config = {
  flow : string prop option; [@option]
  page : string prop option; [@option]
  tracking_parameters : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : test_config) -> ()

let yojson_of_test_config =
  (function
   | {
       flow = v_flow;
       page = v_page;
       tracking_parameters = v_tracking_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tracking_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tracking_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_page with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "page", arg in
             bnd :: bnds
       in
       let bnds =
         match v_flow with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "flow", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : test_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_test_config

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

type last_test_result__conversation_turns__virtual_agent_output__triggered_intent = {
  display_name : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       last_test_result__conversation_turns__virtual_agent_output__triggered_intent) ->
  ()

let yojson_of_last_test_result__conversation_turns__virtual_agent_output__triggered_intent
    =
  (function
   | { display_name = v_display_name; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       `Assoc bnds
    : last_test_result__conversation_turns__virtual_agent_output__triggered_intent ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_last_test_result__conversation_turns__virtual_agent_output__triggered_intent

[@@@deriving.end]

type last_test_result__conversation_turns__virtual_agent_output__text_responses = {
  text : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       last_test_result__conversation_turns__virtual_agent_output__text_responses) ->
  ()

let yojson_of_last_test_result__conversation_turns__virtual_agent_output__text_responses
    =
  (function
   | { text = v_text } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_text
         in
         ("text", arg) :: bnds
       in
       `Assoc bnds
    : last_test_result__conversation_turns__virtual_agent_output__text_responses ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_last_test_result__conversation_turns__virtual_agent_output__text_responses

[@@@deriving.end]

type last_test_result__conversation_turns__virtual_agent_output__status = {
  code : float prop;
  details : string prop;
  message : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       last_test_result__conversation_turns__virtual_agent_output__status) ->
  ()

let yojson_of_last_test_result__conversation_turns__virtual_agent_output__status
    =
  (function
   | { code = v_code; details = v_details; message = v_message } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_details in
         ("details", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_code in
         ("code", arg) :: bnds
       in
       `Assoc bnds
    : last_test_result__conversation_turns__virtual_agent_output__status ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_last_test_result__conversation_turns__virtual_agent_output__status

[@@@deriving.end]

type last_test_result__conversation_turns__virtual_agent_output__differences = {
  description : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       last_test_result__conversation_turns__virtual_agent_output__differences) ->
  ()

let yojson_of_last_test_result__conversation_turns__virtual_agent_output__differences
    =
  (function
   | { description = v_description; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : last_test_result__conversation_turns__virtual_agent_output__differences ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_last_test_result__conversation_turns__virtual_agent_output__differences

[@@@deriving.end]

type last_test_result__conversation_turns__virtual_agent_output__current_page = {
  display_name : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       last_test_result__conversation_turns__virtual_agent_output__current_page) ->
  ()

let yojson_of_last_test_result__conversation_turns__virtual_agent_output__current_page
    =
  (function
   | { display_name = v_display_name; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       `Assoc bnds
    : last_test_result__conversation_turns__virtual_agent_output__current_page ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_last_test_result__conversation_turns__virtual_agent_output__current_page

[@@@deriving.end]

type last_test_result__conversation_turns__virtual_agent_output = {
  current_page :
    last_test_result__conversation_turns__virtual_agent_output__current_page
    list;
  differences :
    last_test_result__conversation_turns__virtual_agent_output__differences
    list;
  session_parameters : string prop;
  status :
    last_test_result__conversation_turns__virtual_agent_output__status
    list;
  text_responses :
    last_test_result__conversation_turns__virtual_agent_output__text_responses
    list;
  triggered_intent :
    last_test_result__conversation_turns__virtual_agent_output__triggered_intent
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : last_test_result__conversation_turns__virtual_agent_output) ->
  ()

let yojson_of_last_test_result__conversation_turns__virtual_agent_output
    =
  (function
   | {
       current_page = v_current_page;
       differences = v_differences;
       session_parameters = v_session_parameters;
       status = v_status;
       text_responses = v_text_responses;
       triggered_intent = v_triggered_intent;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_last_test_result__conversation_turns__virtual_agent_output__triggered_intent
             v_triggered_intent
         in
         ("triggered_intent", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_last_test_result__conversation_turns__virtual_agent_output__text_responses
             v_text_responses
         in
         ("text_responses", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_last_test_result__conversation_turns__virtual_agent_output__status
             v_status
         in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_session_parameters
         in
         ("session_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_last_test_result__conversation_turns__virtual_agent_output__differences
             v_differences
         in
         ("differences", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_last_test_result__conversation_turns__virtual_agent_output__current_page
             v_current_page
         in
         ("current_page", arg) :: bnds
       in
       `Assoc bnds
    : last_test_result__conversation_turns__virtual_agent_output ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_last_test_result__conversation_turns__virtual_agent_output

[@@@deriving.end]

type last_test_result__conversation_turns__user_input__input__text = {
  text : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       last_test_result__conversation_turns__user_input__input__text) ->
  ()

let yojson_of_last_test_result__conversation_turns__user_input__input__text
    =
  (function
   | { text = v_text } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text in
         ("text", arg) :: bnds
       in
       `Assoc bnds
    : last_test_result__conversation_turns__user_input__input__text ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_last_test_result__conversation_turns__user_input__input__text

[@@@deriving.end]

type last_test_result__conversation_turns__user_input__input__event = {
  event : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       last_test_result__conversation_turns__user_input__input__event) ->
  ()

let yojson_of_last_test_result__conversation_turns__user_input__input__event
    =
  (function
   | { event = v_event } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event in
         ("event", arg) :: bnds
       in
       `Assoc bnds
    : last_test_result__conversation_turns__user_input__input__event ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_last_test_result__conversation_turns__user_input__input__event

[@@@deriving.end]

type last_test_result__conversation_turns__user_input__input__dtmf = {
  digits : string prop;
  finish_digit : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       last_test_result__conversation_turns__user_input__input__dtmf) ->
  ()

let yojson_of_last_test_result__conversation_turns__user_input__input__dtmf
    =
  (function
   | { digits = v_digits; finish_digit = v_finish_digit } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_finish_digit in
         ("finish_digit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_digits in
         ("digits", arg) :: bnds
       in
       `Assoc bnds
    : last_test_result__conversation_turns__user_input__input__dtmf ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_last_test_result__conversation_turns__user_input__input__dtmf

[@@@deriving.end]

type last_test_result__conversation_turns__user_input__input = {
  dtmf :
    last_test_result__conversation_turns__user_input__input__dtmf
    list;
  event :
    last_test_result__conversation_turns__user_input__input__event
    list;
  language_code : string prop;
  text :
    last_test_result__conversation_turns__user_input__input__text
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : last_test_result__conversation_turns__user_input__input) ->
  ()

let yojson_of_last_test_result__conversation_turns__user_input__input
    =
  (function
   | {
       dtmf = v_dtmf;
       event = v_event;
       language_code = v_language_code;
       text = v_text;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_last_test_result__conversation_turns__user_input__input__text
             v_text
         in
         ("text", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_language_code in
         ("language_code", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_last_test_result__conversation_turns__user_input__input__event
             v_event
         in
         ("event", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_last_test_result__conversation_turns__user_input__input__dtmf
             v_dtmf
         in
         ("dtmf", arg) :: bnds
       in
       `Assoc bnds
    : last_test_result__conversation_turns__user_input__input ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_last_test_result__conversation_turns__user_input__input

[@@@deriving.end]

type last_test_result__conversation_turns__user_input = {
  enable_sentiment_analysis : bool prop;
  injected_parameters : string prop;
  input :
    last_test_result__conversation_turns__user_input__input list;
  is_webhook_enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : last_test_result__conversation_turns__user_input) -> ()

let yojson_of_last_test_result__conversation_turns__user_input =
  (function
   | {
       enable_sentiment_analysis = v_enable_sentiment_analysis;
       injected_parameters = v_injected_parameters;
       input = v_input;
       is_webhook_enabled = v_is_webhook_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_is_webhook_enabled
         in
         ("is_webhook_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_last_test_result__conversation_turns__user_input__input
             v_input
         in
         ("input", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_injected_parameters
         in
         ("injected_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_sentiment_analysis
         in
         ("enable_sentiment_analysis", arg) :: bnds
       in
       `Assoc bnds
    : last_test_result__conversation_turns__user_input ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_last_test_result__conversation_turns__user_input

[@@@deriving.end]

type last_test_result__conversation_turns = {
  user_input : last_test_result__conversation_turns__user_input list;
  virtual_agent_output :
    last_test_result__conversation_turns__virtual_agent_output list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : last_test_result__conversation_turns) -> ()

let yojson_of_last_test_result__conversation_turns =
  (function
   | {
       user_input = v_user_input;
       virtual_agent_output = v_virtual_agent_output;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_last_test_result__conversation_turns__virtual_agent_output
             v_virtual_agent_output
         in
         ("virtual_agent_output", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_last_test_result__conversation_turns__user_input
             v_user_input
         in
         ("user_input", arg) :: bnds
       in
       `Assoc bnds
    : last_test_result__conversation_turns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_last_test_result__conversation_turns

[@@@deriving.end]

type last_test_result = {
  conversation_turns : last_test_result__conversation_turns list;
  environment : string prop;
  name : string prop;
  test_result : string prop;
  test_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : last_test_result) -> ()

let yojson_of_last_test_result =
  (function
   | {
       conversation_turns = v_conversation_turns;
       environment = v_environment;
       name = v_name;
       test_result = v_test_result;
       test_time = v_test_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_test_time in
         ("test_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_test_result in
         ("test_result", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_environment in
         ("environment", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_last_test_result__conversation_turns
             v_conversation_turns
         in
         ("conversation_turns", arg) :: bnds
       in
       `Assoc bnds
    : last_test_result -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_last_test_result

[@@@deriving.end]

type google_dialogflow_cx_test_case = {
  display_name : string prop;
  id : string prop option; [@option]
  notes : string prop option; [@option]
  parent : string prop option; [@option]
  tags : string prop list option; [@option]
  test_case_conversation_turns : test_case_conversation_turns list;
  test_config : test_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dialogflow_cx_test_case) -> ()

let yojson_of_google_dialogflow_cx_test_case =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       notes = v_notes;
       parent = v_parent;
       tags = v_tags;
       test_case_conversation_turns = v_test_case_conversation_turns;
       test_config = v_test_config;
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
         let arg =
           yojson_of_list yojson_of_test_config v_test_config
         in
         ("test_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_test_case_conversation_turns
             v_test_case_conversation_turns
         in
         ("test_case_conversation_turns", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
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
         match v_notes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notes", arg in
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
       `Assoc bnds
    : google_dialogflow_cx_test_case ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dialogflow_cx_test_case

[@@@deriving.end]

let test_case_conversation_turns__user_input__input__dtmf ?digits
    ?finish_digit () :
    test_case_conversation_turns__user_input__input__dtmf =
  { digits; finish_digit }

let test_case_conversation_turns__user_input__input__event ~event ()
    : test_case_conversation_turns__user_input__input__event =
  { event }

let test_case_conversation_turns__user_input__input__text ~text () :
    test_case_conversation_turns__user_input__input__text =
  { text }

let test_case_conversation_turns__user_input__input ?language_code
    ?(dtmf = []) ?(event = []) ?(text = []) () :
    test_case_conversation_turns__user_input__input =
  { language_code; dtmf; event; text }

let test_case_conversation_turns__user_input
    ?enable_sentiment_analysis ?injected_parameters
    ?is_webhook_enabled ?(input = []) () :
    test_case_conversation_turns__user_input =
  {
    enable_sentiment_analysis;
    injected_parameters;
    is_webhook_enabled;
    input;
  }

let test_case_conversation_turns__virtual_agent_output__current_page
    ?name () :
    test_case_conversation_turns__virtual_agent_output__current_page
    =
  { name }

let test_case_conversation_turns__virtual_agent_output__text_responses
    ?text () :
    test_case_conversation_turns__virtual_agent_output__text_responses
    =
  { text }

let test_case_conversation_turns__virtual_agent_output__triggered_intent
    ?name () :
    test_case_conversation_turns__virtual_agent_output__triggered_intent
    =
  { name }

let test_case_conversation_turns__virtual_agent_output
    ?session_parameters ?(current_page = []) ?(text_responses = [])
    ?(triggered_intent = []) () :
    test_case_conversation_turns__virtual_agent_output =
  {
    session_parameters;
    current_page;
    text_responses;
    triggered_intent;
  }

let test_case_conversation_turns ?(user_input = [])
    ?(virtual_agent_output = []) () : test_case_conversation_turns =
  { user_input; virtual_agent_output }

let test_config ?flow ?page ?tracking_parameters () : test_config =
  { flow; page; tracking_parameters }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dialogflow_cx_test_case ?id ?notes ?parent ?tags
    ?(test_case_conversation_turns = []) ?(test_config = [])
    ?timeouts ~display_name () : google_dialogflow_cx_test_case =
  {
    display_name;
    id;
    notes;
    parent;
    tags;
    test_case_conversation_turns;
    test_config;
    timeouts;
  }

type t = {
  creation_time : string prop;
  display_name : string prop;
  id : string prop;
  last_test_result : last_test_result list prop;
  name : string prop;
  notes : string prop;
  parent : string prop;
  tags : string list prop;
}

let make ?id ?notes ?parent ?tags
    ?(test_case_conversation_turns = []) ?(test_config = [])
    ?timeouts ~display_name __id =
  let __type = "google_dialogflow_cx_test_case" in
  let __attrs =
    ({
       creation_time = Prop.computed __type __id "creation_time";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       last_test_result =
         Prop.computed __type __id "last_test_result";
       name = Prop.computed __type __id "name";
       notes = Prop.computed __type __id "notes";
       parent = Prop.computed __type __id "parent";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dialogflow_cx_test_case
        (google_dialogflow_cx_test_case ?id ?notes ?parent ?tags
           ~test_case_conversation_turns ~test_config ?timeouts
           ~display_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?notes ?parent ?tags
    ?(test_case_conversation_turns = []) ?(test_config = [])
    ?timeouts ~display_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?notes ?parent ?tags ~test_case_conversation_turns
      ~test_config ?timeouts ~display_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
