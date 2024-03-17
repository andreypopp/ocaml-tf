(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssoadmin_account_assignment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_account_assignment__timeouts *)

type aws_ssoadmin_account_assignment = {
  id : string prop option; [@option]  (** id *)
  instance_arn : string prop;  (** instance_arn *)
  permission_set_arn : string prop;  (** permission_set_arn *)
  principal_id : string prop;  (** principal_id *)
  principal_type : string prop;  (** principal_type *)
  target_id : string prop;  (** target_id *)
  target_type : string prop option; [@option]  (** target_type *)
  timeouts : aws_ssoadmin_account_assignment__timeouts option;
}
[@@deriving yojson_of]
(** aws_ssoadmin_account_assignment *)

type t = {
  id : string prop;
  instance_arn : string prop;
  permission_set_arn : string prop;
  principal_id : string prop;
  principal_type : string prop;
  target_id : string prop;
  target_type : string prop;
}

let aws_ssoadmin_account_assignment ?id ?target_type ?timeouts
    ~instance_arn ~permission_set_arn ~principal_id ~principal_type
    ~target_id __resource_id =
  let __resource_type = "aws_ssoadmin_account_assignment" in
  let __resource =
    ({
       id;
       instance_arn;
       permission_set_arn;
       principal_id;
       principal_type;
       target_id;
       target_type;
       timeouts;
     }
      : aws_ssoadmin_account_assignment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
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
