(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?name ?timeouts ~bot_id ~bot_version ~locale_id
    ~n_lu_intent_confidence_threshold ~voice_settings __id =
  let __type = "aws_lexv2models_bot_locale" in
  let __attrs =
    ({
       bot_id = Prop.computed __type __id "bot_id";
       bot_version = Prop.computed __type __id "bot_version";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       locale_id = Prop.computed __type __id "locale_id";
       n_lu_intent_confidence_threshold =
         Prop.computed __type __id "n_lu_intent_confidence_threshold";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lexv2models_bot_locale
        (aws_lexv2models_bot_locale ?description ?name ?timeouts
           ~bot_id ~bot_version ~locale_id
           ~n_lu_intent_confidence_threshold ~voice_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?name ?timeouts ~bot_id
    ~bot_version ~locale_id ~n_lu_intent_confidence_threshold
    ~voice_settings __id =
  let (r : _ Tf_core.resource) =
    make ?description ?name ?timeouts ~bot_id ~bot_version ~locale_id
      ~n_lu_intent_confidence_threshold ~voice_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
