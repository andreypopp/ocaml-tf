(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ssoadmin_account_assignment = {
  id : string prop option; [@option]  (** id *)
  instance_arn : string prop;  (** instance_arn *)
  permission_set_arn : string prop;  (** permission_set_arn *)
  principal_id : string prop;  (** principal_id *)
  principal_type : string prop;  (** principal_type *)
  target_id : string prop;  (** target_id *)
  target_type : string prop option; [@option]  (** target_type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ssoadmin_account_assignment *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ssoadmin_account_assignment ?id ?target_type ?timeouts
    ~instance_arn ~permission_set_arn ~principal_id ~principal_type
    ~target_id () : aws_ssoadmin_account_assignment =
  {
    id;
    instance_arn;
    permission_set_arn;
    principal_id;
    principal_type;
    target_id;
    target_type;
    timeouts;
  }

type t = {
  id : string prop;
  instance_arn : string prop;
  permission_set_arn : string prop;
  principal_id : string prop;
  principal_type : string prop;
  target_id : string prop;
  target_type : string prop;
}

let register ?tf_module ?id ?target_type ?timeouts ~instance_arn
    ~permission_set_arn ~principal_id ~principal_type ~target_id
    __resource_id =
  let __resource_type = "aws_ssoadmin_account_assignment" in
  let __resource =
    aws_ssoadmin_account_assignment ?id ?target_type ?timeouts
      ~instance_arn ~permission_set_arn ~principal_id ~principal_type
      ~target_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_account_assignment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       instance_arn =
         Prop.computed __resource_type __resource_id "instance_arn";
       permission_set_arn =
         Prop.computed __resource_type __resource_id
           "permission_set_arn";
       principal_id =
         Prop.computed __resource_type __resource_id "principal_id";
       principal_type =
         Prop.computed __resource_type __resource_id "principal_type";
       target_id =
         Prop.computed __resource_type __resource_id "target_id";
       target_type =
         Prop.computed __resource_type __resource_id "target_type";
     }
      : t)
  in
  __resource_attributes
