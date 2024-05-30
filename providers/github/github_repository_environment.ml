(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type deployment_branch_policy = {
  custom_branch_policies : bool prop;
  protected_branches : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment_branch_policy) -> ()

let yojson_of_deployment_branch_policy =
  (function
   | {
       custom_branch_policies = v_custom_branch_policies;
       protected_branches = v_protected_branches;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_protected_branches
         in
         ("protected_branches", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_custom_branch_policies
         in
         ("custom_branch_policies", arg) :: bnds
       in
       `Assoc bnds
    : deployment_branch_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment_branch_policy

[@@@deriving.end]

type reviewers = {
  teams : float prop list option; [@option]
  users : float prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : reviewers) -> ()

let yojson_of_reviewers =
  (function
   | { teams = v_teams; users = v_users } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "users", arg in
             bnd :: bnds
       in
       let bnds =
         match v_teams with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "teams", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : reviewers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_reviewers

[@@@deriving.end]

type github_repository_environment = {
  can_admins_bypass : bool prop option; [@option]
  environment : string prop;
  id : string prop option; [@option]
  prevent_self_review : bool prop option; [@option]
  repository : string prop;
  wait_timer : float prop option; [@option]
  deployment_branch_policy : deployment_branch_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  reviewers : reviewers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_environment) -> ()

let yojson_of_github_repository_environment =
  (function
   | {
       can_admins_bypass = v_can_admins_bypass;
       environment = v_environment;
       id = v_id;
       prevent_self_review = v_prevent_self_review;
       repository = v_repository;
       wait_timer = v_wait_timer;
       deployment_branch_policy = v_deployment_branch_policy;
       reviewers = v_reviewers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_reviewers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_reviewers) v_reviewers
           in
           let bnd = "reviewers", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_deployment_branch_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_deployment_branch_policy)
               v_deployment_branch_policy
           in
           let bnd = "deployment_branch_policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_wait_timer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "wait_timer", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         match v_prevent_self_review with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "prevent_self_review", arg in
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
         let arg = yojson_of_prop yojson_of_string v_environment in
         ("environment", arg) :: bnds
       in
       let bnds =
         match v_can_admins_bypass with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "can_admins_bypass", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_repository_environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_environment

[@@@deriving.end]

let deployment_branch_policy ~custom_branch_policies
    ~protected_branches () : deployment_branch_policy =
  { custom_branch_policies; protected_branches }

let reviewers ?teams ?users () : reviewers = { teams; users }

let github_repository_environment ?can_admins_bypass ?id
    ?prevent_self_review ?wait_timer ?(deployment_branch_policy = [])
    ?(reviewers = []) ~environment ~repository () :
    github_repository_environment =
  {
    can_admins_bypass;
    environment;
    id;
    prevent_self_review;
    repository;
    wait_timer;
    deployment_branch_policy;
    reviewers;
  }

type t = {
  tf_name : string;
  can_admins_bypass : bool prop;
  environment : string prop;
  id : string prop;
  prevent_self_review : bool prop;
  repository : string prop;
  wait_timer : float prop;
}

let make ?can_admins_bypass ?id ?prevent_self_review ?wait_timer
    ?(deployment_branch_policy = []) ?(reviewers = []) ~environment
    ~repository __id =
  let __type = "github_repository_environment" in
  let __attrs =
    ({
       tf_name = __id;
       can_admins_bypass =
         Prop.computed __type __id "can_admins_bypass";
       environment = Prop.computed __type __id "environment";
       id = Prop.computed __type __id "id";
       prevent_self_review =
         Prop.computed __type __id "prevent_self_review";
       repository = Prop.computed __type __id "repository";
       wait_timer = Prop.computed __type __id "wait_timer";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_environment
        (github_repository_environment ?can_admins_bypass ?id
           ?prevent_self_review ?wait_timer ~deployment_branch_policy
           ~reviewers ~environment ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?can_admins_bypass ?id ?prevent_self_review
    ?wait_timer ?(deployment_branch_policy = []) ?(reviewers = [])
    ~environment ~repository __id =
  let (r : _ Tf_core.resource) =
    make ?can_admins_bypass ?id ?prevent_self_review ?wait_timer
      ~deployment_branch_policy ~reviewers ~environment ~repository
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
