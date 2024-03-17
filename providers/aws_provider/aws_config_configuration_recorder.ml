(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_config_configuration_recorder__recording_group__exclusion_by_resource_types = {
  resource_types : string prop list option; [@option]
      (** resource_types *)
}
[@@deriving yojson_of]
(** aws_config_configuration_recorder__recording_group__exclusion_by_resource_types *)

type aws_config_configuration_recorder__recording_group__recording_strategy = {
  use_only : string prop option; [@option]  (** use_only *)
}
[@@deriving yojson_of]
(** aws_config_configuration_recorder__recording_group__recording_strategy *)

type aws_config_configuration_recorder__recording_group = {
  all_supported : bool prop option; [@option]  (** all_supported *)
  include_global_resource_types : bool prop option; [@option]
      (** include_global_resource_types *)
  resource_types : string prop list option; [@option]
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
  description : string prop option; [@option]  (** description *)
  recording_frequency : string prop;  (** recording_frequency *)
  resource_types : string prop list;  (** resource_types *)
}
[@@deriving yojson_of]
(** aws_config_configuration_recorder__recording_mode__recording_mode_override *)

type aws_config_configuration_recorder__recording_mode = {
  recording_frequency : string prop option; [@option]
      (** recording_frequency *)
  recording_mode_override :
    aws_config_configuration_recorder__recording_mode__recording_mode_override
    list;
}
[@@deriving yojson_of]
(** aws_config_configuration_recorder__recording_mode *)

type aws_config_configuration_recorder = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  role_arn : string prop;  (** role_arn *)
  recording_group :
    aws_config_configuration_recorder__recording_group list;
  recording_mode :
    aws_config_configuration_recorder__recording_mode list;
}
[@@deriving yojson_of]
(** aws_config_configuration_recorder *)

type t = {
  id : string prop;
  name : string prop;
  role_arn : string prop;
}

let aws_config_configuration_recorder ?id ?name ~role_arn
    ~recording_group ~recording_mode __resource_id =
  let __resource_type = "aws_config_configuration_recorder" in
  let __resource =
    ({ id; name; role_arn; recording_group; recording_mode }
      : aws_config_configuration_recorder)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_configuration_recorder __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
     }
      : t)
  in
  __resource_attributes
