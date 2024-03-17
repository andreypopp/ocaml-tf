(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_lexv2models_bot_version__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** aws_lexv2models_bot_version__timeouts *)

type aws_lexv2models_bot_version__locale_specification = {
  source_bot_version : string;  (** source_bot_version *)
}
[@@deriving yojson_of]

type aws_lexv2models_bot_version = {
  bot_id : string;  (** bot_id *)
  description : string option; [@option]  (** description *)
  locale_specification :
    (string * aws_lexv2models_bot_version__locale_specification) list;
      (** locale_specification *)
  timeouts : aws_lexv2models_bot_version__timeouts option;
}
[@@deriving yojson_of]
(** aws_lexv2models_bot_version *)

let aws_lexv2models_bot_version ?description ?timeouts ~bot_id
    ~locale_specification __resource_id =
  let __resource_type = "aws_lexv2models_bot_version" in
  let __resource =
    { bot_id; description; locale_specification; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lexv2models_bot_version __resource);
  ()
