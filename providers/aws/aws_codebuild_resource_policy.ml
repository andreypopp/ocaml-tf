(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codebuild_resource_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_codebuild_resource_policy *)

let aws_codebuild_resource_policy ?id ~policy ~resource_arn () :
    aws_codebuild_resource_policy =
  { id; policy; resource_arn }

type t = {
  id : string prop;
  policy : string prop;
  resource_arn : string prop;
}

let register ?tf_module ?id ~policy ~resource_arn __resource_id =
  let __resource_type = "aws_codebuild_resource_policy" in
  let __resource =
    aws_codebuild_resource_policy ?id ~policy ~resource_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codebuild_resource_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
       resource_arn =
         Prop.computed __resource_type __resource_id "resource_arn";
     }
      : t)
  in
  __resource_attributes
