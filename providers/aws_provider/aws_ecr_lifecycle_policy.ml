(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecr_lifecycle_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  repository : string prop;  (** repository *)
}
[@@deriving yojson_of]
(** aws_ecr_lifecycle_policy *)

type t = {
  id : string prop;
  policy : string prop;
  registry_id : string prop;
  repository : string prop;
}

let aws_ecr_lifecycle_policy ?id ~policy ~repository __resource_id =
  let __resource_type = "aws_ecr_lifecycle_policy" in
  let __resource =
    ({ id; policy; repository } : aws_ecr_lifecycle_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecr_lifecycle_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
       registry_id =
         Prop.computed __resource_type __resource_id "registry_id";
       repository =
         Prop.computed __resource_type __resource_id "repository";
     }
      : t)
  in
  __resource_attributes
