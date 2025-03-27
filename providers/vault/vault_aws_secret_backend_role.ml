(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_aws_secret_backend_role = {
  backend : string prop;
  credential_type : string prop;
  default_sts_ttl : float prop option; [@option]
  external_id : string prop option; [@option]
  iam_groups : string prop list option; [@option]
  iam_tags : string prop Tf_core.assoc option; [@option]
  id : string prop option; [@option]
  max_sts_ttl : float prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  permissions_boundary_arn : string prop option; [@option]
  policy_arns : string prop list option; [@option]
  policy_document : string prop option; [@option]
  role_arns : string prop list option; [@option]
  session_tags : string prop Tf_core.assoc option; [@option]
  user_path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_aws_secret_backend_role) -> ()

let yojson_of_vault_aws_secret_backend_role =
  (function
   | {
       backend = v_backend;
       credential_type = v_credential_type;
       default_sts_ttl = v_default_sts_ttl;
       external_id = v_external_id;
       iam_groups = v_iam_groups;
       iam_tags = v_iam_tags;
       id = v_id;
       max_sts_ttl = v_max_sts_ttl;
       name = v_name;
       namespace = v_namespace;
       permissions_boundary_arn = v_permissions_boundary_arn;
       policy_arns = v_policy_arns;
       policy_document = v_policy_document;
       role_arns = v_role_arns;
       session_tags = v_session_tags;
       user_path = v_user_path;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_user_path with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "user_path", arg in
         bnd :: bnds
     in
     let bnds =
       match v_session_tags with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "session_tags", arg in
         bnd :: bnds
     in
     let bnds =
       match v_role_arns with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "role_arns", arg in
         bnd :: bnds
     in
     let bnds =
       match v_policy_document with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "policy_document", arg in
         bnd :: bnds
     in
     let bnds =
       match v_policy_arns with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "policy_arns", arg in
         bnd :: bnds
     in
     let bnds =
       match v_permissions_boundary_arn with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "permissions_boundary_arn", arg in
         bnd :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_max_sts_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_sts_ttl", arg in
         bnd :: bnds
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
       match v_iam_tags with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "iam_tags", arg in
         bnd :: bnds
     in
     let bnds =
       match v_iam_groups with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "iam_groups", arg in
         bnd :: bnds
     in
     let bnds =
       match v_external_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "external_id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_default_sts_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "default_sts_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_credential_type in
       ("credential_type", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_aws_secret_backend_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_aws_secret_backend_role

[@@@deriving.end]

let vault_aws_secret_backend_role ?default_sts_ttl ?external_id ?iam_groups ?iam_tags ?id ?max_sts_ttl ?namespace
  ?permissions_boundary_arn ?policy_arns ?policy_document ?role_arns ?session_tags ?user_path ~backend ~credential_type
  ~name () =
  ({
     backend;
     credential_type;
     default_sts_ttl;
     external_id;
     iam_groups;
     iam_tags;
     id;
     max_sts_ttl;
     name;
     namespace;
     permissions_boundary_arn;
     policy_arns;
     policy_document;
     role_arns;
     session_tags;
     user_path;
   }
    : vault_aws_secret_backend_role)

type t = {
  tf_name : string;
  backend : string prop;
  credential_type : string prop;
  default_sts_ttl : float prop;
  external_id : string prop;
  iam_groups : string list prop;
  iam_tags : string Tf_core.assoc prop;
  id : string prop;
  max_sts_ttl : float prop;
  name : string prop;
  namespace : string prop;
  permissions_boundary_arn : string prop;
  policy_arns : string list prop;
  policy_document : string prop;
  role_arns : string list prop;
  session_tags : string Tf_core.assoc prop;
  user_path : string prop;
}

let make ?default_sts_ttl ?external_id ?iam_groups ?iam_tags ?id ?max_sts_ttl ?namespace ?permissions_boundary_arn
  ?policy_arns ?policy_document ?role_arns ?session_tags ?user_path ~backend ~credential_type ~name __id =
  let __type = "vault_aws_secret_backend_role" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       credential_type = Prop.computed __type __id "credential_type";
       default_sts_ttl = Prop.computed __type __id "default_sts_ttl";
       external_id = Prop.computed __type __id "external_id";
       iam_groups = Prop.computed __type __id "iam_groups";
       iam_tags = Prop.computed __type __id "iam_tags";
       id = Prop.computed __type __id "id";
       max_sts_ttl = Prop.computed __type __id "max_sts_ttl";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       permissions_boundary_arn = Prop.computed __type __id "permissions_boundary_arn";
       policy_arns = Prop.computed __type __id "policy_arns";
       policy_document = Prop.computed __type __id "policy_document";
       role_arns = Prop.computed __type __id "role_arns";
       session_tags = Prop.computed __type __id "session_tags";
       user_path = Prop.computed __type __id "user_path";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_aws_secret_backend_role
        (vault_aws_secret_backend_role ?default_sts_ttl ?external_id ?iam_groups ?iam_tags ?id ?max_sts_ttl ?namespace
           ?permissions_boundary_arn ?policy_arns ?policy_document ?role_arns ?session_tags ?user_path ~backend
           ~credential_type ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?default_sts_ttl ?external_id ?iam_groups ?iam_tags ?id ?max_sts_ttl ?namespace
  ?permissions_boundary_arn ?policy_arns ?policy_document ?role_arns ?session_tags ?user_path ~backend ~credential_type
  ~name __id =
  let (r : _ Tf_core.resource) =
    make ?default_sts_ttl ?external_id ?iam_groups ?iam_tags ?id ?max_sts_ttl ?namespace ?permissions_boundary_arn
      ?policy_arns ?policy_document ?role_arns ?session_tags ?user_path ~backend ~credential_type ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
