(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_schemas_registry_policy = {
  policy : string;  (** policy *)
  registry_name : string;  (** registry_name *)
}
[@@deriving yojson_of]
(** aws_schemas_registry_policy *)

let aws_schemas_registry_policy ~policy ~registry_name __resource_id
    =
  let __resource_type = "aws_schemas_registry_policy" in
  let __resource = { policy; registry_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_schemas_registry_policy __resource);
  ()
