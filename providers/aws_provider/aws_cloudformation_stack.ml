(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudformation_stack__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_cloudformation_stack__timeouts *)

type aws_cloudformation_stack = {
  capabilities : string prop list option; [@option]
      (** capabilities *)
  disable_rollback : bool prop option; [@option]
      (** disable_rollback *)
  iam_role_arn : string prop option; [@option]  (** iam_role_arn *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  notification_arns : string prop list option; [@option]
      (** notification_arns *)
  on_failure : string prop option; [@option]  (** on_failure *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  policy_body : string prop option; [@option]  (** policy_body *)
  policy_url : string prop option; [@option]  (** policy_url *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  template_body : string prop option; [@option]  (** template_body *)
  template_url : string prop option; [@option]  (** template_url *)
  timeout_in_minutes : float prop option; [@option]
      (** timeout_in_minutes *)
  timeouts : aws_cloudformation_stack__timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudformation_stack *)

let aws_cloudformation_stack ?capabilities ?disable_rollback
    ?iam_role_arn ?id ?notification_arns ?on_failure ?parameters
    ?policy_body ?policy_url ?tags ?tags_all ?template_body
    ?template_url ?timeout_in_minutes ?timeouts ~name __resource_id =
  let __resource_type = "aws_cloudformation_stack" in
  let __resource =
    {
      capabilities;
      disable_rollback;
      iam_role_arn;
      id;
      name;
      notification_arns;
      on_failure;
      parameters;
      policy_body;
      policy_url;
      tags;
      tags_all;
      template_body;
      template_url;
      timeout_in_minutes;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudformation_stack __resource);
  ()
