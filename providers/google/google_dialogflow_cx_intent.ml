(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type parameters = {
  entity_type : string prop;
      (** The entity type of the parameter.
Format: projects/-/locations/-/agents/-/entityTypes/<System Entity Type ID> for system entity types (for example, projects/-/locations/-/agents/-/entityTypes/sys.date), or projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/entityTypes/<Entity Type ID> for developer entity types. *)
  id : string prop;
      (** The unique identifier of the parameter. This field is used by training phrases to annotate their parts. *)
  is_list : bool prop option; [@option]
      (** Indicates whether the parameter represents a list of values. *)
  redact : bool prop option; [@option]
      (** Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging.
Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled. *)
}
[@@deriving yojson_of]
(** The collection of parameters associated with the intent. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type training_phrases__parts = {
  parameter_id : string prop option; [@option]
      (** The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase. *)
  text : string prop;  (** The text for this part. *)
}
[@@deriving yojson_of]
(** The ordered list of training phrase parts. The parts are concatenated in order to form the training phrase.
Note: The API does not automatically annotate training phrases like the Dialogflow Console does.
Note: Do not forget to include whitespace at part boundaries, so the training phrase is well formatted when the parts are concatenated.
If the training phrase does not need to be annotated with parameters, you just need a single part with only the Part.text field set.
If you want to annotate the training phrase, you must create multiple parts, where the fields of each part are populated in one of two ways:
Part.text is set to a part of the phrase that has no parameters.
Part.text is set to a part of the phrase that you want to annotate, and the parameterId field is set. *)

type training_phrases = {
  repeat_count : float prop option; [@option]
      (** Indicates how many times this example was added to the intent. *)
  parts : training_phrases__parts list;
}
[@@deriving yojson_of]
(** The collection of training phrases the agent is trained on to identify the intent. *)

type google_dialogflow_cx_intent = {
  description : string prop option; [@option]
      (** Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters. *)
  display_name : string prop;
      (** The human-readable name of the intent, unique within the agent. *)
  id : string prop option; [@option]  (** id *)
  is_default_negative_intent : bool prop option; [@option]
      (** Marks this as the [Default Negative Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#negative) for an agent. When you create an agent, a Default Negative Intent is created automatically.
The Default Negative Intent cannot be deleted; deleting the 'google_dialogflow_cx_intent' resource does nothing to the underlying GCP resources.

~> Avoid having multiple 'google_dialogflow_cx_intent' resources linked to the same agent with 'is_default_negative_intent = true' because they will compete to control a single Default Negative Intent resource in GCP. *)
  is_default_welcome_intent : bool prop option; [@option]
      (** Marks this as the [Default Welcome Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#welcome) for an agent. When you create an agent, a Default Welcome Intent is created automatically.
The Default Welcome Intent cannot be deleted; deleting the 'google_dialogflow_cx_intent' resource does nothing to the underlying GCP resources.

~> Avoid having multiple 'google_dialogflow_cx_intent' resources linked to the same agent with 'is_default_welcome_intent = true' because they will compete to control a single Default Welcome Intent resource in GCP. *)
  is_fallback : bool prop option; [@option]
      (** Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation.
Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
To manage the fallback intent, set 'is_default_negative_intent = true' *)
  labels : (string * string prop) list option; [@option]
      (** The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes.
Prefix sys- is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. sys-head means the intent is a head intent. sys.contextual means the intent is a contextual intent.
An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  language_code : string prop option; [@option]
      (** The language of the following fields in intent:
Intent.training_phrases.parts.text
If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. *)
  parent : string prop option; [@option]
      (** The agent to create an intent for.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>. *)
  priority : float prop option; [@option]
      (** The priority of this intent. Higher numbers represent higher priorities.
If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the Normal priority in the console.
If the supplied value is negative, the intent is ignored in runtime detect intent requests. *)
  parameters : parameters list;
  timeouts : timeouts option;
  training_phrases : training_phrases list;
}
[@@deriving yojson_of]
(** google_dialogflow_cx_intent *)

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
    ?is_fallback ?labels ?language_code ?parent ?priority ?timeouts
    ~display_name ~parameters ~training_phrases () :
    google_dialogflow_cx_intent =
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

let register ?tf_module ?description ?id ?is_default_negative_intent
    ?is_default_welcome_intent ?is_fallback ?labels ?language_code
    ?parent ?priority ?timeouts ~display_name ~parameters
    ~training_phrases __resource_id =
  let __resource_type = "google_dialogflow_cx_intent" in
  let __resource =
    google_dialogflow_cx_intent ?description ?id
      ?is_default_negative_intent ?is_default_welcome_intent
      ?is_fallback ?labels ?language_code ?parent ?priority ?timeouts
      ~display_name ~parameters ~training_phrases ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dialogflow_cx_intent __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       is_default_negative_intent =
         Prop.computed __resource_type __resource_id
           "is_default_negative_intent";
       is_default_welcome_intent =
         Prop.computed __resource_type __resource_id
           "is_default_welcome_intent";
       is_fallback =
         Prop.computed __resource_type __resource_id "is_fallback";
       labels = Prop.computed __resource_type __resource_id "labels";
       language_code =
         Prop.computed __resource_type __resource_id "language_code";
       name = Prop.computed __resource_type __resource_id "name";
       parent = Prop.computed __resource_type __resource_id "parent";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
     }
      : t)
  in
  __resource_attributes
