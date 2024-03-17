(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssoadmin_permission_set_inline_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_permission_set_inline_policy__timeouts *)

type aws_ssoadmin_permission_set_inline_policy = {
  id : string option; [@option]  (** id *)
  inline_policy : string;  (** inline_policy *)
  instance_arn : string;  (** instance_arn *)
  permission_set_arn : string;  (** permission_set_arn *)
  timeouts :
    aws_ssoadmin_permission_set_inline_policy__timeouts option;
}
[@@deriving yojson_of]
(** aws_ssoadmin_permission_set_inline_policy *)

let aws_ssoadmin_permission_set_inline_policy ?id ?timeouts
    ~inline_policy ~instance_arn ~permission_set_arn __resource_id =
  let __resource_type =
    "aws_ssoadmin_permission_set_inline_policy"
  in
  let __resource =
    { id; inline_policy; instance_arn; permission_set_arn; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_permission_set_inline_policy __resource);
  ()
