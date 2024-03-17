(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3control_object_lambda_access_point_policy = {
  account_id : string prop option; [@option]  (** account_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_s3control_object_lambda_access_point_policy *)

type t = {
  account_id : string prop;
  has_public_access_policy : bool prop;
  id : string prop;
  name : string prop;
  policy : string prop;
}

let aws_s3control_object_lambda_access_point_policy ?account_id ?id
    ~name ~policy __resource_id =
  let __resource_type =
    "aws_s3control_object_lambda_access_point_policy"
  in
  let __resource =
    ({ account_id; id; name; policy }
      : aws_s3control_object_lambda_access_point_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_object_lambda_access_point_policy
       __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       has_public_access_policy =
         Prop.computed __resource_type __resource_id
           "has_public_access_policy";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       policy = Prop.computed __resource_type __resource_id "policy";
     }
      : t)
  in
  __resource_attributes
