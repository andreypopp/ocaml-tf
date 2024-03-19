(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_inspector_assessment_target = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_arn : string prop option; [@option]
      (** resource_group_arn *)
}
[@@deriving yojson_of]
(** aws_inspector_assessment_target *)

let aws_inspector_assessment_target ?id ?resource_group_arn ~name ()
    : aws_inspector_assessment_target =
  { id; name; resource_group_arn }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  resource_group_arn : string prop;
}

let register ?tf_module ?id ?resource_group_arn ~name __resource_id =
  let __resource_type = "aws_inspector_assessment_target" in
  let __resource =
    aws_inspector_assessment_target ?id ?resource_group_arn ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_inspector_assessment_target __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_arn =
         Prop.computed __resource_type __resource_id
           "resource_group_arn";
     }
      : t)
  in
  __resource_attributes
