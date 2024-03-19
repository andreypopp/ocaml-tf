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

let aws_ecr_lifecycle_policy ?id ~policy ~repository () :
    aws_ecr_lifecycle_policy =
  { id; policy; repository }

type t = {
  id : string prop;
  policy : string prop;
  registry_id : string prop;
  repository : string prop;
}

let register ?tf_module ?id ~policy ~repository __resource_id =
  let __resource_type = "aws_ecr_lifecycle_policy" in
  let __resource =
    aws_ecr_lifecycle_policy ?id ~policy ~repository ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
