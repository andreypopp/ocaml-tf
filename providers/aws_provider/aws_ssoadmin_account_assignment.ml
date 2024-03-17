(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssoadmin_account_assignment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_account_assignment__timeouts *)

type aws_ssoadmin_account_assignment = {
  instance_arn : string;  (** instance_arn *)
  permission_set_arn : string;  (** permission_set_arn *)
  principal_id : string;  (** principal_id *)
  principal_type : string;  (** principal_type *)
  target_id : string;  (** target_id *)
  target_type : string option; [@option]  (** target_type *)
  timeouts : aws_ssoadmin_account_assignment__timeouts option;
}
[@@deriving yojson_of]
(** aws_ssoadmin_account_assignment *)

let aws_ssoadmin_account_assignment ?target_type ?timeouts
    ~instance_arn ~permission_set_arn ~principal_id ~principal_type
    ~target_id __resource_id =
  let __resource_type = "aws_ssoadmin_account_assignment" in
  let __resource =
    {
      instance_arn;
      permission_set_arn;
      principal_id;
      principal_type;
      target_id;
      target_type;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_account_assignment __resource);
  ()
