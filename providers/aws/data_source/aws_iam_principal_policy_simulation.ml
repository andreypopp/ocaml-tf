(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type context = {
  key : string prop;
  type_ : string prop; [@key "type"]
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : context) -> ()

let yojson_of_context =
  (function
   | { key = v_key; type_ = v_type_; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : context -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_context

[@@@deriving.end]

type results__matched_statements = {
  source_policy_id : string prop;
  source_policy_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : results__matched_statements) -> ()

let yojson_of_results__matched_statements =
  (function
   | {
       source_policy_id = v_source_policy_id;
       source_policy_type = v_source_policy_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_policy_type
         in
         ("source_policy_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_policy_id
         in
         ("source_policy_id", arg) :: bnds
       in
       `Assoc bnds
    : results__matched_statements ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_results__matched_statements

[@@@deriving.end]

type results = {
  action_name : string prop;
  allowed : bool prop;
  decision : string prop;
  decision_details : (string * string prop) list;
  matched_statements : results__matched_statements list;
      [@default []] [@yojson_drop_default ( = )]
  missing_context_keys : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  resource_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : results) -> ()

let yojson_of_results =
  (function
   | {
       action_name = v_action_name;
       allowed = v_allowed;
       decision = v_decision;
       decision_details = v_decision_details;
       matched_statements = v_matched_statements;
       missing_context_keys = v_missing_context_keys;
       resource_arn = v_resource_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       let bnds =
         if [] = v_missing_context_keys then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_missing_context_keys
           in
           let bnd = "missing_context_keys", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_matched_statements then bnds
         else
           let arg =
             (yojson_of_list yojson_of_results__matched_statements)
               v_matched_statements
           in
           let bnd = "matched_statements", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_decision_details
         in
         ("decision_details", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_decision in
         ("decision", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_allowed in
         ("allowed", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action_name in
         ("action_name", arg) :: bnds
       in
       `Assoc bnds
    : results -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_results

[@@@deriving.end]

type aws_iam_principal_policy_simulation = {
  action_names : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  additional_policies_json : string prop list option; [@option]
  caller_arn : string prop option; [@option]
  permissions_boundary_policies_json : string prop list option;
      [@option]
  policy_source_arn : string prop;
  resource_arns : string prop list option; [@option]
  resource_handling_option : string prop option; [@option]
  resource_owner_account_id : string prop option; [@option]
  resource_policy_json : string prop option; [@option]
  context : context list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_principal_policy_simulation) -> ()

let yojson_of_aws_iam_principal_policy_simulation =
  (function
   | {
       action_names = v_action_names;
       additional_policies_json = v_additional_policies_json;
       caller_arn = v_caller_arn;
       permissions_boundary_policies_json =
         v_permissions_boundary_policies_json;
       policy_source_arn = v_policy_source_arn;
       resource_arns = v_resource_arns;
       resource_handling_option = v_resource_handling_option;
       resource_owner_account_id = v_resource_owner_account_id;
       resource_policy_json = v_resource_policy_json;
       context = v_context;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_context then bnds
         else
           let arg = (yojson_of_list yojson_of_context) v_context in
           let bnd = "context", arg in
           bnd :: bnds
       in
       let bnds =
         match v_resource_policy_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_policy_json", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_owner_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_owner_account_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_handling_option with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_handling_option", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_arns", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_policy_source_arn
         in
         ("policy_source_arn", arg) :: bnds
       in
       let bnds =
         match v_permissions_boundary_policies_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "permissions_boundary_policies_json", arg in
             bnd :: bnds
       in
       let bnds =
         match v_caller_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "caller_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_policies_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "additional_policies_json", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_action_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_action_names
           in
           let bnd = "action_names", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws_iam_principal_policy_simulation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_principal_policy_simulation

[@@@deriving.end]

let context ~key ~type_ ~values () : context = { key; type_; values }

let aws_iam_principal_policy_simulation ?additional_policies_json
    ?caller_arn ?permissions_boundary_policies_json ?resource_arns
    ?resource_handling_option ?resource_owner_account_id
    ?resource_policy_json ~action_names ~policy_source_arn ~context
    () : aws_iam_principal_policy_simulation =
  {
    action_names;
    additional_policies_json;
    caller_arn;
    permissions_boundary_policies_json;
    policy_source_arn;
    resource_arns;
    resource_handling_option;
    resource_owner_account_id;
    resource_policy_json;
    context;
  }

type t = {
  tf_name : string;
  action_names : string list prop;
  additional_policies_json : string list prop;
  all_allowed : bool prop;
  caller_arn : string prop;
  id : string prop;
  permissions_boundary_policies_json : string list prop;
  policy_source_arn : string prop;
  resource_arns : string list prop;
  resource_handling_option : string prop;
  resource_owner_account_id : string prop;
  resource_policy_json : string prop;
  results : results list prop;
}

let make ?additional_policies_json ?caller_arn
    ?permissions_boundary_policies_json ?resource_arns
    ?resource_handling_option ?resource_owner_account_id
    ?resource_policy_json ~action_names ~policy_source_arn ~context
    __id =
  let __type = "aws_iam_principal_policy_simulation" in
  let __attrs =
    ({
       tf_name = __id;
       action_names = Prop.computed __type __id "action_names";
       additional_policies_json =
         Prop.computed __type __id "additional_policies_json";
       all_allowed = Prop.computed __type __id "all_allowed";
       caller_arn = Prop.computed __type __id "caller_arn";
       id = Prop.computed __type __id "id";
       permissions_boundary_policies_json =
         Prop.computed __type __id
           "permissions_boundary_policies_json";
       policy_source_arn =
         Prop.computed __type __id "policy_source_arn";
       resource_arns = Prop.computed __type __id "resource_arns";
       resource_handling_option =
         Prop.computed __type __id "resource_handling_option";
       resource_owner_account_id =
         Prop.computed __type __id "resource_owner_account_id";
       resource_policy_json =
         Prop.computed __type __id "resource_policy_json";
       results = Prop.computed __type __id "results";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_principal_policy_simulation
        (aws_iam_principal_policy_simulation
           ?additional_policies_json ?caller_arn
           ?permissions_boundary_policies_json ?resource_arns
           ?resource_handling_option ?resource_owner_account_id
           ?resource_policy_json ~action_names ~policy_source_arn
           ~context ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_policies_json ?caller_arn
    ?permissions_boundary_policies_json ?resource_arns
    ?resource_handling_option ?resource_owner_account_id
    ?resource_policy_json ~action_names ~policy_source_arn ~context
    __id =
  let (r : _ Tf_core.resource) =
    make ?additional_policies_json ?caller_arn
      ?permissions_boundary_policies_json ?resource_arns
      ?resource_handling_option ?resource_owner_account_id
      ?resource_policy_json ~action_names ~policy_source_arn ~context
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
