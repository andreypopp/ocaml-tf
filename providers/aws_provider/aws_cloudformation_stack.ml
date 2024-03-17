(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloudformation_stack__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_cloudformation_stack__timeouts *)

type aws_cloudformation_stack = {
  capabilities : string list option; [@option]  (** capabilities *)
  disable_rollback : bool option; [@option]  (** disable_rollback *)
  iam_role_arn : string option; [@option]  (** iam_role_arn *)
  name : string;  (** name *)
  notification_arns : string list option; [@option]
      (** notification_arns *)
  on_failure : string option; [@option]  (** on_failure *)
  policy_url : string option; [@option]  (** policy_url *)
  tags : (string * string) list option; [@option]  (** tags *)
  template_url : string option; [@option]  (** template_url *)
  timeout_in_minutes : float option; [@option]
      (** timeout_in_minutes *)
  timeouts : aws_cloudformation_stack__timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudformation_stack *)

let aws_cloudformation_stack ?capabilities ?disable_rollback
    ?iam_role_arn ?notification_arns ?on_failure ?policy_url ?tags
    ?template_url ?timeout_in_minutes ?timeouts ~name __resource_id =
  let __resource_type = "aws_cloudformation_stack" in
  let __resource =
    {
      capabilities;
      disable_rollback;
      iam_role_arn;
      name;
      notification_arns;
      on_failure;
      policy_url;
      tags;
      template_url;
      timeout_in_minutes;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudformation_stack __resource);
  ()
