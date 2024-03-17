(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_config_configuration_recorder__recording_group__exclusion_by_resource_types = {
  resource_types : string list option; [@option]
      (** resource_types *)
}
[@@deriving yojson_of]
(** aws_config_configuration_recorder__recording_group__exclusion_by_resource_types *)

type aws_config_configuration_recorder__recording_group__recording_strategy = {
  use_only : string option; [@option]  (** use_only *)
}
[@@deriving yojson_of]
(** aws_config_configuration_recorder__recording_group__recording_strategy *)

type aws_config_configuration_recorder__recording_group = {
  all_supported : bool option; [@option]  (** all_supported *)
  include_global_resource_types : bool option; [@option]
      (** include_global_resource_types *)
  resource_types : string list option; [@option]
      (** resource_types *)
  exclusion_by_resource_types :
    aws_config_configuration_recorder__recording_group__exclusion_by_resource_types
    list;
  recording_strategy :
    aws_config_configuration_recorder__recording_group__recording_strategy
    list;
}
[@@deriving yojson_of]
(** aws_config_configuration_recorder__recording_group *)

type aws_config_configuration_recorder__recording_mode__recording_mode_override = {
  description : string option; [@option]  (** description *)
  recording_frequency : string;  (** recording_frequency *)
  resource_types : string list;  (** resource_types *)
}
[@@deriving yojson_of]
(** aws_config_configuration_recorder__recording_mode__recording_mode_override *)

type aws_config_configuration_recorder__recording_mode = {
  recording_frequency : string option; [@option]
      (** recording_frequency *)
  recording_mode_override :
    aws_config_configuration_recorder__recording_mode__recording_mode_override
    list;
}
[@@deriving yojson_of]
(** aws_config_configuration_recorder__recording_mode *)

type aws_config_configuration_recorder = {
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  role_arn : string;  (** role_arn *)
  recording_group :
    aws_config_configuration_recorder__recording_group list;
  recording_mode :
    aws_config_configuration_recorder__recording_mode list;
}
[@@deriving yojson_of]
(** aws_config_configuration_recorder *)

let aws_config_configuration_recorder ?id ?name ~role_arn
    ~recording_group ~recording_mode __resource_id =
  let __resource_type = "aws_config_configuration_recorder" in
  let __resource =
    { id; name; role_arn; recording_group; recording_mode }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_configuration_recorder __resource);
  ()
