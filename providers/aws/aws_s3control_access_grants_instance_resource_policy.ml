(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3control_access_grants_instance_resource_policy = {
  account_id : string prop option; [@option]  (** account_id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_s3control_access_grants_instance_resource_policy *)

let aws_s3control_access_grants_instance_resource_policy ?account_id
    ~policy () : aws_s3control_access_grants_instance_resource_policy
    =
  { account_id; policy }

type t = {
  account_id : string prop;
  id : string prop;
  policy : string prop;
}

let register ?tf_module ?account_id ~policy __resource_id =
  let __resource_type =
    "aws_s3control_access_grants_instance_resource_policy"
  in
  let __resource =
    aws_s3control_access_grants_instance_resource_policy ?account_id
      ~policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_access_grants_instance_resource_policy
       __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
     }
      : t)
  in
  __resource_attributes
