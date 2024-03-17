(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_config_retention_configuration = {
  retention_period_in_days : float prop;
      (** retention_period_in_days *)
}
[@@deriving yojson_of]
(** aws_config_retention_configuration *)

type t = {
  id : string prop;
  name : string prop;
  retention_period_in_days : float prop;
}

let aws_config_retention_configuration ~retention_period_in_days
    __resource_id =
  let __resource_type = "aws_config_retention_configuration" in
  let __resource =
    ({ retention_period_in_days }
      : aws_config_retention_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_retention_configuration __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       retention_period_in_days =
         Prop.computed __resource_type __resource_id
           "retention_period_in_days";
     }
      : t)
  in
  __resource_attributes
