(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloud9_environment_membership = {
  environment_id : string prop;  (** environment_id *)
  id : string prop option; [@option]  (** id *)
  permissions : string prop;  (** permissions *)
  user_arn : string prop;  (** user_arn *)
}
[@@deriving yojson_of]
(** aws_cloud9_environment_membership *)

let aws_cloud9_environment_membership ?id ~environment_id
    ~permissions ~user_arn () : aws_cloud9_environment_membership =
  { environment_id; id; permissions; user_arn }

type t = {
  environment_id : string prop;
  id : string prop;
  permissions : string prop;
  user_arn : string prop;
  user_id : string prop;
}

let register ?tf_module ?id ~environment_id ~permissions ~user_arn
    __resource_id =
  let __resource_type = "aws_cloud9_environment_membership" in
  let __resource =
    aws_cloud9_environment_membership ?id ~environment_id
      ~permissions ~user_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloud9_environment_membership __resource);
  let __resource_attributes =
    ({
       environment_id =
         Prop.computed __resource_type __resource_id "environment_id";
       id = Prop.computed __resource_type __resource_id "id";
       permissions =
         Prop.computed __resource_type __resource_id "permissions";
       user_arn =
         Prop.computed __resource_type __resource_id "user_arn";
       user_id =
         Prop.computed __resource_type __resource_id "user_id";
     }
      : t)
  in
  __resource_attributes
