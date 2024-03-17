(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_schemas_registry_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  registry_name : string prop;  (** registry_name *)
}
[@@deriving yojson_of]
(** aws_schemas_registry_policy *)

let aws_schemas_registry_policy ?id ~policy ~registry_name
    __resource_id =
  let __resource_type = "aws_schemas_registry_policy" in
  let __resource = { id; policy; registry_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_schemas_registry_policy __resource);
  ()
