(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_cloudformation_stack = {
  capabilities : string prop list option; [@option]
  disable_rollback : bool prop option; [@option]
  iam_role_arn : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  notification_arns : string prop list option; [@option]
  on_failure : string prop option; [@option]
  parameters : (string * string prop) list option; [@option]
  policy_body : string prop option; [@option]
  policy_url : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  template_body : string prop option; [@option]
  template_url : string prop option; [@option]
  timeout_in_minutes : float prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudformation_stack) -> ()

let yojson_of_aws_cloudformation_stack =
  (function
   | {
       capabilities = v_capabilities;
       disable_rollback = v_disable_rollback;
       iam_role_arn = v_iam_role_arn;
       id = v_id;
       name = v_name;
       notification_arns = v_notification_arns;
       on_failure = v_on_failure;
       parameters = v_parameters;
       policy_body = v_policy_body;
       policy_url = v_policy_url;
       tags = v_tags;
       tags_all = v_tags_all;
       template_body = v_template_body;
       template_url = v_template_url;
       timeout_in_minutes = v_timeout_in_minutes;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_timeout_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_in_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_template_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "template_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_template_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "template_body", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_body", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_failure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "on_failure", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notification_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "notification_arns", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iam_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_rollback with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_rollback", arg in
             bnd :: bnds
       in
       let bnds =
         match v_capabilities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "capabilities", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudformation_stack -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudformation_stack

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
