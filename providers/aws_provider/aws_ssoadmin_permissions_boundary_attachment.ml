(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssoadmin_permissions_boundary_attachment__permissions_boundary__customer_managed_policy_reference = {
  name : string;  (** name *)
  path : string option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_permissions_boundary_attachment__permissions_boundary__customer_managed_policy_reference *)

type aws_ssoadmin_permissions_boundary_attachment__permissions_boundary = {
  managed_policy_arn : string option; [@option]
      (** managed_policy_arn *)
  customer_managed_policy_reference :
    aws_ssoadmin_permissions_boundary_attachment__permissions_boundary__customer_managed_policy_reference
    list;
}
[@@deriving yojson_of]
(** aws_ssoadmin_permissions_boundary_attachment__permissions_boundary *)

type aws_ssoadmin_permissions_boundary_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_permissions_boundary_attachment__timeouts *)

type aws_ssoadmin_permissions_boundary_attachment = {
  id : string option; [@option]  (** id *)
  instance_arn : string;  (** instance_arn *)
  permission_set_arn : string;  (** permission_set_arn *)
  permissions_boundary :
    aws_ssoadmin_permissions_boundary_attachment__permissions_boundary
    list;
  timeouts :
    aws_ssoadmin_permissions_boundary_attachment__timeouts option;
}
[@@deriving yojson_of]
(** aws_ssoadmin_permissions_boundary_attachment *)

let aws_ssoadmin_permissions_boundary_attachment ?id ?timeouts
    ~instance_arn ~permission_set_arn ~permissions_boundary
    __resource_id =
  let __resource_type =
    "aws_ssoadmin_permissions_boundary_attachment"
  in
  let __resource =
    {
      id;
      instance_arn;
      permission_set_arn;
      permissions_boundary;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_permissions_boundary_attachment
       __resource);
  ()
