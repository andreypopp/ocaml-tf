(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_config_retention_configuration = {
  retention_period_in_days : float;  (** retention_period_in_days *)
}
[@@deriving yojson_of]
(** aws_config_retention_configuration *)

let aws_config_retention_configuration ~retention_period_in_days
    __resource_id =
  let __resource_type = "aws_config_retention_configuration" in
  let __resource = { retention_period_in_days } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_retention_configuration __resource);
  ()
