(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3control_access_point_policy = {
  access_point_arn : string prop;  (** access_point_arn *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_s3control_access_point_policy *)

let aws_s3control_access_point_policy ?id ~access_point_arn ~policy
    () : aws_s3control_access_point_policy =
  { access_point_arn; id; policy }

type t = {
  access_point_arn : string prop;
  has_public_access_policy : bool prop;
  id : string prop;
  policy : string prop;
}

let register ?tf_module ?id ~access_point_arn ~policy __resource_id =
  let __resource_type = "aws_s3control_access_point_policy" in
  let __resource =
    aws_s3control_access_point_policy ?id ~access_point_arn ~policy
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_access_point_policy __resource);
  let __resource_attributes =
    ({
       access_point_arn =
         Prop.computed __resource_type __resource_id
           "access_point_arn";
       has_public_access_policy =
         Prop.computed __resource_type __resource_id
           "has_public_access_policy";
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
     }
      : t)
  in
  __resource_attributes
