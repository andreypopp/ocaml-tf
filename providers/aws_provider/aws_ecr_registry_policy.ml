(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecr_registry_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_ecr_registry_policy *)

type t = {
  id : string prop;
  policy : string prop;
  registry_id : string prop;
}

let aws_ecr_registry_policy ?id ~policy __resource_id =
  let __resource_type = "aws_ecr_registry_policy" in
  let __resource = ({ id; policy } : aws_ecr_registry_policy) in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecr_registry_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
       registry_id =
         Prop.computed __resource_type __resource_id "registry_id";
     }
      : t)
  in
  __resource_attributes
