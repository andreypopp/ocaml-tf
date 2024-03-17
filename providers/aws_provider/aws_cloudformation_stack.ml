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

type t = {
  capabilities : string list prop;
  disable_rollback : bool prop;
  iam_role_arn : string prop;
  id : string prop;
  name : string prop;
  notification_arns : string list prop;
  on_failure : string prop;
  outputs : (string * string) list prop;
  parameters : (string * string) list prop;
  policy_body : string prop;
  policy_url : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  template_body : string prop;
  template_url : string prop;
  timeout_in_minutes : float prop;
}

let aws_cloudformation_stack ?capabilities ?disable_rollback
    ?iam_role_arn ?id ?notification_arns ?on_failure ?parameters
    ?policy_body ?policy_url ?tags ?tags_all ?template_body
    ?template_url ?timeout_in_minutes ?timeouts ~name __resource_id =
  let __resource_type = "aws_cloudformation_stack" in
  let __resource =
    ({
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
      : aws_cloudformation_stack)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudformation_stack __resource);
  let __resource_attributes =
    ({
       capabilities =
         Prop.computed __resource_type __resource_id "capabilities";
       disable_rollback =
         Prop.computed __resource_type __resource_id
           "disable_rollback";
       iam_role_arn =
         Prop.computed __resource_type __resource_id "iam_role_arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       notification_arns =
         Prop.computed __resource_type __resource_id
           "notification_arns";
       on_failure =
         Prop.computed __resource_type __resource_id "on_failure";
       outputs =
         Prop.computed __resource_type __resource_id "outputs";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       policy_body =
         Prop.computed __resource_type __resource_id "policy_body";
       policy_url =
         Prop.computed __resource_type __resource_id "policy_url";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       template_body =
         Prop.computed __resource_type __resource_id "template_body";
       template_url =
         Prop.computed __resource_type __resource_id "template_url";
       timeout_in_minutes =
         Prop.computed __resource_type __resource_id
           "timeout_in_minutes";
     }
      : t)
  in
  __resource_attributes
