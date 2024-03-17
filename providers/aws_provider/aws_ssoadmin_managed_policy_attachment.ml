(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ssoadmin_managed_policy_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_managed_policy_attachment__timeouts *)

type aws_ssoadmin_managed_policy_attachment = {
  instance_arn : string;  (** instance_arn *)
  managed_policy_arn : string;  (** managed_policy_arn *)
  permission_set_arn : string;  (** permission_set_arn *)
  timeouts : aws_ssoadmin_managed_policy_attachment__timeouts option;
}
[@@deriving yojson_of]
(** aws_ssoadmin_managed_policy_attachment *)

let aws_ssoadmin_managed_policy_attachment ?timeouts ~instance_arn
    ~managed_policy_arn ~permission_set_arn __resource_id =
  let __resource_type = "aws_ssoadmin_managed_policy_attachment" in
  let __resource =
    {
      instance_arn;
      managed_policy_arn;
      permission_set_arn;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_managed_policy_attachment __resource);
  ()
