(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudformation_stack *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_cloudformation_stack ?capabilities ?disable_rollback
    ?iam_role_arn ?id ?notification_arns ?on_failure ?parameters
    ?policy_body ?policy_url ?tags ?tags_all ?template_body
    ?template_url ?timeout_in_minutes ?timeouts ~name () :
    aws_cloudformation_stack =
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

let make ?capabilities ?disable_rollback ?iam_role_arn ?id
    ?notification_arns ?on_failure ?parameters ?policy_body
    ?policy_url ?tags ?tags_all ?template_body ?template_url
    ?timeout_in_minutes ?timeouts ~name __id =
  let __type = "aws_cloudformation_stack" in
  let __attrs =
    ({
       capabilities = Prop.computed __type __id "capabilities";
       disable_rollback =
         Prop.computed __type __id "disable_rollback";
       iam_role_arn = Prop.computed __type __id "iam_role_arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       notification_arns =
         Prop.computed __type __id "notification_arns";
       on_failure = Prop.computed __type __id "on_failure";
       outputs = Prop.computed __type __id "outputs";
       parameters = Prop.computed __type __id "parameters";
       policy_body = Prop.computed __type __id "policy_body";
       policy_url = Prop.computed __type __id "policy_url";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       template_body = Prop.computed __type __id "template_body";
       template_url = Prop.computed __type __id "template_url";
       timeout_in_minutes =
         Prop.computed __type __id "timeout_in_minutes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudformation_stack
        (aws_cloudformation_stack ?capabilities ?disable_rollback
           ?iam_role_arn ?id ?notification_arns ?on_failure
           ?parameters ?policy_body ?policy_url ?tags ?tags_all
           ?template_body ?template_url ?timeout_in_minutes ?timeouts
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?capabilities ?disable_rollback ?iam_role_arn
    ?id ?notification_arns ?on_failure ?parameters ?policy_body
    ?policy_url ?tags ?tags_all ?template_body ?template_url
    ?timeout_in_minutes ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?capabilities ?disable_rollback ?iam_role_arn ?id
      ?notification_arns ?on_failure ?parameters ?policy_body
      ?policy_url ?tags ?tags_all ?template_body ?template_url
      ?timeout_in_minutes ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
