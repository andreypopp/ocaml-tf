(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type test_case_conversation_turns__user_input__input__dtmf = {
  digits : string prop option; [@option]  (** The dtmf digits. *)
  finish_digit : string prop option; [@option]
      (** The finish digit (if any). *)
}
[@@deriving yojson_of]
(** The DTMF event to be handled. *)

type test_case_conversation_turns__user_input__input__event = {
  event : string prop;  (** Name of the event. *)
}
[@@deriving yojson_of]
(** The event to be triggered. *)

type test_case_conversation_turns__user_input__input__text = {
  text : string prop;
      (** The natural language text to be processed. Text length must not exceed 256 characters. *)
}
[@@deriving yojson_of]
(** The natural language text to be processed. *)

type test_case_conversation_turns__user_input__input = {
  language_code : string prop option; [@option]
      (** The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes.
Note that queries in the same session do not necessarily need to specify the same language. *)
  dtmf : test_case_conversation_turns__user_input__input__dtmf list;
  event :
    test_case_conversation_turns__user_input__input__event list;
  text : test_case_conversation_turns__user_input__input__text list;
}
[@@deriving yojson_of]
(** User input. Supports text input, event input, dtmf input in the test case. *)

type test_case_conversation_turns__user_input = {
  enable_sentiment_analysis : bool prop option; [@option]
      (** Whether sentiment analysis is enabled. *)
  injected_parameters : string prop option; [@option]
      (** Parameters that need to be injected into the conversation during intent detection. *)
  is_webhook_enabled : bool prop option; [@option]
      (** If webhooks should be allowed to trigger in response to the user utterance. Often if parameters are injected, webhooks should not be enabled. *)
  input : test_case_conversation_turns__user_input__input list;
}
[@@deriving yojson_of]
(** The user input. *)

type test_case_conversation_turns__virtual_agent_output__current_page = {
  name : string prop option; [@option]
      (** The unique identifier of the page.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>. *)
}
[@@deriving yojson_of]
(** The [Page](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows.pages#Page) on which the utterance was spoken. *)

type test_case_conversation_turns__virtual_agent_output__text_responses = {
  text : string prop list option; [@option]
      (** A collection of text responses. *)
}
[@@deriving yojson_of]
(** The text responses from the agent for the turn. *)

type test_case_conversation_turns__virtual_agent_output__triggered_intent = {
  name : string prop option; [@option]
      (** The unique identifier of the intent.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/intents/<Intent ID>. *)
}
[@@deriving yojson_of]
(** The [Intent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.intents#Intent) that triggered the response. *)

type test_case_conversation_turns__virtual_agent_output = {
  session_parameters : string prop option; [@option]
      (** The session parameters available to the bot at this point. *)
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
[@@deriving yojson_of]
(** The virtual agent output. *)

type test_case_conversation_turns = {
  user_input : test_case_conversation_turns__user_input list;
  virtual_agent_output :
    test_case_conversation_turns__virtual_agent_output list;
}
[@@deriving yojson_of]
(** The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly. *)

type test_config = {
  flow : string prop option; [@option]
      (** Flow name to start the test case with.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
Only one of flow and page should be set to indicate the starting point of the test case. If neither is set, the test case will start with start page on the default start flow. *)
  page : string prop option; [@option]
      (** The page to start the test case with.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
Only one of flow and page should be set to indicate the starting point of the test case. If neither is set, the test case will start with start page on the default start flow. *)
  tracking_parameters : string prop list option; [@option]
      (** Session parameters to be compared when calculating differences. *)
}
[@@deriving yojson_of]
(** Config for the test case. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type last_test_result__conversation_turns__virtual_agent_output__triggered_intent = {
  display_name : string prop;  (** display_name *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type last_test_result__conversation_turns__virtual_agent_output__text_responses = {
  text : string prop list;  (** text *)
}
[@@deriving yojson_of]

type last_test_result__conversation_turns__virtual_agent_output__status = {
  code : float prop;  (** code *)
  details : string prop;  (** details *)
  message : string prop;  (** message *)
}
[@@deriving yojson_of]

type last_test_result__conversation_turns__virtual_agent_output__differences = {
  description : string prop;  (** description *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type last_test_result__conversation_turns__virtual_agent_output__current_page = {
  display_name : string prop;  (** display_name *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type last_test_result__conversation_turns__virtual_agent_output = {
  current_page :
    last_test_result__conversation_turns__virtual_agent_output__current_page
    list;
      (** current_page *)
  differences :
    last_test_result__conversation_turns__virtual_agent_output__differences
    list;
      (** differences *)
  session_parameters : string prop;  (** session_parameters *)
  status :
    last_test_result__conversation_turns__virtual_agent_output__status
    list;
      (** status *)
  text_responses :
    last_test_result__conversation_turns__virtual_agent_output__text_responses
    list;
      (** text_responses *)
  triggered_intent :
    last_test_result__conversation_turns__virtual_agent_output__triggered_intent
    list;
      (** triggered_intent *)
}
[@@deriving yojson_of]

type last_test_result__conversation_turns__user_input__input__text = {
  text : string prop;  (** text *)
}
[@@deriving yojson_of]

type last_test_result__conversation_turns__user_input__input__event = {
  event : string prop;  (** event *)
}
[@@deriving yojson_of]

type last_test_result__conversation_turns__user_input__input__dtmf = {
  digits : string prop;  (** digits *)
  finish_digit : string prop;  (** finish_digit *)
}
[@@deriving yojson_of]

type last_test_result__conversation_turns__user_input__input = {
  dtmf :
    last_test_result__conversation_turns__user_input__input__dtmf
    list;
      (** dtmf *)
  event :
    last_test_result__conversation_turns__user_input__input__event
    list;
      (** event *)
  language_code : string prop;  (** language_code *)
  text :
    last_test_result__conversation_turns__user_input__input__text
    list;
      (** text *)
}
[@@deriving yojson_of]

type last_test_result__conversation_turns__user_input = {
  enable_sentiment_analysis : bool prop;
      (** enable_sentiment_analysis *)
  injected_parameters : string prop;  (** injected_parameters *)
  input :
    last_test_result__conversation_turns__user_input__input list;
      (** input *)
  is_webhook_enabled : bool prop;  (** is_webhook_enabled *)
}
[@@deriving yojson_of]

type last_test_result__conversation_turns = {
  user_input : last_test_result__conversation_turns__user_input list;
      (** user_input *)
  virtual_agent_output :
    last_test_result__conversation_turns__virtual_agent_output list;
      (** virtual_agent_output *)
}
[@@deriving yojson_of]

type last_test_result = {
  conversation_turns : last_test_result__conversation_turns list;
      (** conversation_turns *)
  environment : string prop;  (** environment *)
  name : string prop;  (** name *)
  test_result : string prop;  (** test_result *)
  test_time : string prop;  (** test_time *)
}
[@@deriving yojson_of]

type google_dialogflow_cx_test_case = {
  display_name : string prop;
      (** The human-readable name of the test case, unique within the agent. Limit of 200 characters. *)
  id : string prop option; [@option]  (** id *)
  notes : string prop option; [@option]
      (** Additional freeform notes about the test case. Limit of 400 characters. *)
  parent : string prop option; [@option]
      (** The agent to create the test case for.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>. *)
  tags : string prop list option; [@option]
      (** Tags are short descriptions that users may apply to test cases for organizational and filtering purposes.
Each tag should start with # and has a limit of 30 characters *)
  test_case_conversation_turns : test_case_conversation_turns list;
  test_config : test_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_dialogflow_cx_test_case *)

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
    ~dtmf ~event ~text () :
    test_case_conversation_turns__user_input__input =
  { language_code; dtmf; event; text }

let test_case_conversation_turns__user_input
    ?enable_sentiment_analysis ?injected_parameters
    ?is_webhook_enabled ~input () :
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
    ?session_parameters ~current_page ~text_responses
    ~triggered_intent () :
    test_case_conversation_turns__virtual_agent_output =
  {
    session_parameters;
    current_page;
    text_responses;
    triggered_intent;
  }

let test_case_conversation_turns ~user_input ~virtual_agent_output ()
    : test_case_conversation_turns =
  { user_input; virtual_agent_output }

let test_config ?flow ?page ?tracking_parameters () : test_config =
  { flow; page; tracking_parameters }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dialogflow_cx_test_case ?id ?notes ?parent ?tags ?timeouts
    ~display_name ~test_case_conversation_turns ~test_config () :
    google_dialogflow_cx_test_case =
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

let make ?id ?notes ?parent ?tags ?timeouts ~display_name
    ~test_case_conversation_turns ~test_config __id =
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
           ?timeouts ~display_name ~test_case_conversation_turns
           ~test_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?notes ?parent ?tags ?timeouts
    ~display_name ~test_case_conversation_turns ~test_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?notes ?parent ?tags ?timeouts ~display_name
      ~test_case_conversation_turns ~test_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
