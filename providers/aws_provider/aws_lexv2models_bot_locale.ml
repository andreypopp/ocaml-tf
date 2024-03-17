(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lexv2models_bot_locale__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_lexv2models_bot_locale__timeouts *)

type aws_lexv2models_bot_locale__voice_settings = {
  engine : string option; [@option]  (** engine *)
  voice_id : string;  (** voice_id *)
}
[@@deriving yojson_of]
(** aws_lexv2models_bot_locale__voice_settings *)

type aws_lexv2models_bot_locale = {
  bot_id : string;  (** bot_id *)
  bot_version : string;  (** bot_version *)
  description : string option; [@option]  (** description *)
  locale_id : string;  (** locale_id *)
  n_lu_intent_confidence_threshold : float;
      (** n_lu_intent_confidence_threshold *)
  timeouts : aws_lexv2models_bot_locale__timeouts option;
  voice_settings : aws_lexv2models_bot_locale__voice_settings list;
}
[@@deriving yojson_of]
(** aws_lexv2models_bot_locale *)

let aws_lexv2models_bot_locale ?description ?timeouts ~bot_id
    ~bot_version ~locale_id ~n_lu_intent_confidence_threshold
    ~voice_settings __resource_id =
  let __resource_type = "aws_lexv2models_bot_locale" in
  let __resource =
    {
      bot_id;
      bot_version;
      description;
      locale_id;
      n_lu_intent_confidence_threshold;
      timeouts;
      voice_settings;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lexv2models_bot_locale __resource);
  ()
