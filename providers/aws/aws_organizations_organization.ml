(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type accounts = {
  arn : string prop;
  email : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : accounts) -> ()

let yojson_of_accounts =
  (function
   | {
       arn = v_arn;
       email = v_email;
       id = v_id;
       name = v_name;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : accounts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_accounts

[@@@deriving.end]

type non_master_accounts = {
  arn : string prop;
  email : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : non_master_accounts) -> ()

let yojson_of_non_master_accounts =
  (function
   | {
       arn = v_arn;
       email = v_email;
       id = v_id;
       name = v_name;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : non_master_accounts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_non_master_accounts

[@@@deriving.end]

type roots__policy_types = {
  status : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : roots__policy_types) -> ()

let yojson_of_roots__policy_types =
  (function
   | { status = v_status; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       `Assoc bnds
    : roots__policy_types -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roots__policy_types

[@@@deriving.end]

type roots = {
  arn : string prop;
  id : string prop;
  name : string prop;
  policy_types : roots__policy_types list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : roots) -> ()

let yojson_of_roots =
  (function
   | {
       arn = v_arn;
       id = v_id;
       name = v_name;
       policy_types = v_policy_types;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_policy_types then bnds
         else
           let arg =
             (yojson_of_list yojson_of_roots__policy_types)
               v_policy_types
           in
           let bnd = "policy_types", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : roots -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roots

[@@@deriving.end]

type aws_organizations_organization = {
  aws_service_access_principals : string prop list option; [@option]
  enabled_policy_types : string prop list option; [@option]
  feature_set : string prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_organizations_organization) -> ()

let yojson_of_aws_organizations_organization =
  (function
   | {
       aws_service_access_principals =
         v_aws_service_access_principals;
       enabled_policy_types = v_enabled_policy_types;
       feature_set = v_feature_set;
       id = v_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_feature_set with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "feature_set", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled_policy_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "enabled_policy_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aws_service_access_principals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "aws_service_access_principals", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_organizations_organization ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_organizations_organization

[@@@deriving.end]

let aws_organizations_organization ?aws_service_access_principals
    ?enabled_policy_types ?feature_set ?id () :
    aws_organizations_organization =
  {
    aws_service_access_principals;
    enabled_policy_types;
    feature_set;
    id;
  }

type t = {
  tf_name : string;
  accounts : accounts list prop;
  arn : string prop;
  aws_service_access_principals : string list prop;
  enabled_policy_types : string list prop;
  feature_set : string prop;
  id : string prop;
  master_account_arn : string prop;
  master_account_email : string prop;
  master_account_id : string prop;
  non_master_accounts : non_master_accounts list prop;
  roots : roots list prop;
}

let make ?aws_service_access_principals ?enabled_policy_types
    ?feature_set ?id __id =
  let __type = "aws_organizations_organization" in
  let __attrs =
    ({
       tf_name = __id;
       accounts = Prop.computed __type __id "accounts";
       arn = Prop.computed __type __id "arn";
       aws_service_access_principals =
         Prop.computed __type __id "aws_service_access_principals";
       enabled_policy_types =
         Prop.computed __type __id "enabled_policy_types";
       feature_set = Prop.computed __type __id "feature_set";
       id = Prop.computed __type __id "id";
       master_account_arn =
         Prop.computed __type __id "master_account_arn";
       master_account_email =
         Prop.computed __type __id "master_account_email";
       master_account_id =
         Prop.computed __type __id "master_account_id";
       non_master_accounts =
         Prop.computed __type __id "non_master_accounts";
       roots = Prop.computed __type __id "roots";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_organizations_organization
        (aws_organizations_organization
           ?aws_service_access_principals ?enabled_policy_types
           ?feature_set ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?aws_service_access_principals
    ?enabled_policy_types ?feature_set ?id __id =
  let (r : _ Tf_core.resource) =
    make ?aws_service_access_principals ?enabled_policy_types
      ?feature_set ?id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
