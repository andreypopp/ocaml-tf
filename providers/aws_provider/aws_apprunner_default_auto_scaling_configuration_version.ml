(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apprunner_default_auto_scaling_configuration_version = {
  auto_scaling_configuration_arn : string prop;
      (** auto_scaling_configuration_arn *)
}
[@@deriving yojson_of]
(** aws_apprunner_default_auto_scaling_configuration_version *)

let aws_apprunner_default_auto_scaling_configuration_version
    ~auto_scaling_configuration_arn __resource_id =
  let __resource_type =
    "aws_apprunner_default_auto_scaling_configuration_version"
  in
  let __resource = { auto_scaling_configuration_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_default_auto_scaling_configuration_version
       __resource);
  ()
