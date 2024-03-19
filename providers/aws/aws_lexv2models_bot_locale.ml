(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type voice_settings = {
  engine : string prop option; [@option]  (** engine *)
  voice_id : string prop;  (** voice_id *)
}
[@@deriving yojson_of]
(** voice_settings *)

type aws_lexv2models_bot_locale = {
  bot_id : string prop;  (** bot_id *)
  bot_version : string prop;  (** bot_version *)
  description : string prop option; [@option]  (** description *)
  locale_id : string prop;  (** locale_id *)
  n_lu_intent_confidence_threshold : float prop;
      (** n_lu_intent_confidence_threshold *)
  name : string prop option; [@option]  (** name *)
  timeouts : timeouts option;
  voice_settings : voice_settings list;
}
[@@deriving yojson_of]
(** aws_lexv2models_bot_locale *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let voice_settings ?engine ~voice_id () : voice_settings =
  { engine; voice_id }

let aws_lexv2models_bot_locale ?description ?name ?timeouts ~bot_id
    ~bot_version ~locale_id ~n_lu_intent_confidence_threshold
    ~voice_settings () : aws_lexv2models_bot_locale =
  {
    bot_id;
    bot_version;
    description;
    locale_id;
    n_lu_intent_confidence_threshold;
    name;
    timeouts;
    voice_settings;
  }

type t = {
  bot_id : string prop;
  bot_version : string prop;
  description : string prop;
  id : string prop;
  locale_id : string prop;
  n_lu_intent_confidence_threshold : float prop;
  name : string prop;
}

let register ?tf_module ?description ?name ?timeouts ~bot_id
    ~bot_version ~locale_id ~n_lu_intent_confidence_threshold
    ~voice_settings __resource_id =
  let __resource_type = "aws_lexv2models_bot_locale" in
  let __resource =
    aws_lexv2models_bot_locale ?description ?name ?timeouts ~bot_id
      ~bot_version ~locale_id ~n_lu_intent_confidence_threshold
      ~voice_settings ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lexv2models_bot_locale __resource);
  let __resource_attributes =
    ({
       bot_id = Prop.computed __resource_type __resource_id "bot_id";
       bot_version =
         Prop.computed __resource_type __resource_id "bot_version";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       locale_id =
         Prop.computed __resource_type __resource_id "locale_id";
       n_lu_intent_confidence_threshold =
         Prop.computed __resource_type __resource_id
           "n_lu_intent_confidence_threshold";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
