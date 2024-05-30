(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type required_pull_request_reviews__bypass_pull_request_allowances = {
  apps : string prop list option; [@option]
  teams : string prop list option; [@option]
  users : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       required_pull_request_reviews__bypass_pull_request_allowances) ->
  ()

let yojson_of_required_pull_request_reviews__bypass_pull_request_allowances
    =
  (function
   | { apps = v_apps; teams = v_teams; users = v_users } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "users", arg in
             bnd :: bnds
       in
       let bnds =
         match v_teams with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "teams", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "apps", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : required_pull_request_reviews__bypass_pull_request_allowances ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_required_pull_request_reviews__bypass_pull_request_allowances

[@@@deriving.end]

type required_pull_request_reviews = {
  dismiss_stale_reviews : bool prop option; [@option]
  dismissal_apps : string prop list option; [@option]
  dismissal_teams : string prop list option; [@option]
  dismissal_users : string prop list option; [@option]
  include_admins : bool prop option; [@option]
  require_code_owner_reviews : bool prop option; [@option]
  require_last_push_approval : bool prop option; [@option]
  required_approving_review_count : float prop option; [@option]
  bypass_pull_request_allowances :
    required_pull_request_reviews__bypass_pull_request_allowances
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : required_pull_request_reviews) -> ()

let yojson_of_required_pull_request_reviews =
  (function
   | {
       dismiss_stale_reviews = v_dismiss_stale_reviews;
       dismissal_apps = v_dismissal_apps;
       dismissal_teams = v_dismissal_teams;
       dismissal_users = v_dismissal_users;
       include_admins = v_include_admins;
       require_code_owner_reviews = v_require_code_owner_reviews;
       require_last_push_approval = v_require_last_push_approval;
       required_approving_review_count =
         v_required_approving_review_count;
       bypass_pull_request_allowances =
         v_bypass_pull_request_allowances;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_bypass_pull_request_allowances then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_required_pull_request_reviews__bypass_pull_request_allowances)
               v_bypass_pull_request_allowances
           in
           let bnd = "bypass_pull_request_allowances", arg in
           bnd :: bnds
       in
       let bnds =
         match v_required_approving_review_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "required_approving_review_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_last_push_approval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_last_push_approval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_code_owner_reviews with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_code_owner_reviews", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_admins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_admins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dismissal_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dismissal_users", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dismissal_teams with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dismissal_teams", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dismissal_apps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dismissal_apps", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dismiss_stale_reviews with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dismiss_stale_reviews", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : required_pull_request_reviews ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_required_pull_request_reviews

[@@@deriving.end]

type required_status_checks = {
  checks : string prop list option; [@option]
  contexts : string prop list option; [@option]
  include_admins : bool prop option; [@option]
  strict : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : required_status_checks) -> ()

let yojson_of_required_status_checks =
  (function
   | {
       checks = v_checks;
       contexts = v_contexts;
       include_admins = v_include_admins;
       strict = v_strict;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_strict with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "strict", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_admins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_admins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_contexts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "contexts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_checks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "checks", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : required_status_checks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_required_status_checks

[@@@deriving.end]

type restrictions = {
  apps : string prop list option; [@option]
  teams : string prop list option; [@option]
  users : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restrictions) -> ()

let yojson_of_restrictions =
  (function
   | { apps = v_apps; teams = v_teams; users = v_users } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "users", arg in
             bnd :: bnds
       in
       let bnds =
         match v_teams with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "teams", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "apps", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : restrictions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restrictions

[@@@deriving.end]

type github_branch_protection_v3 = {
  branch : string prop;
  enforce_admins : bool prop option; [@option]
  id : string prop option; [@option]
  repository : string prop;
  require_conversation_resolution : bool prop option; [@option]
  require_signed_commits : bool prop option; [@option]
  required_pull_request_reviews : required_pull_request_reviews list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  required_status_checks : required_status_checks list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  restrictions : restrictions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_branch_protection_v3) -> ()

let yojson_of_github_branch_protection_v3 =
  (function
   | {
       branch = v_branch;
       enforce_admins = v_enforce_admins;
       id = v_id;
       repository = v_repository;
       require_conversation_resolution =
         v_require_conversation_resolution;
       require_signed_commits = v_require_signed_commits;
       required_pull_request_reviews =
         v_required_pull_request_reviews;
       required_status_checks = v_required_status_checks;
       restrictions = v_restrictions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_restrictions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_restrictions) v_restrictions
           in
           let bnd = "restrictions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_required_status_checks then bnds
         else
           let arg =
             (yojson_of_list yojson_of_required_status_checks)
               v_required_status_checks
           in
           let bnd = "required_status_checks", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_required_pull_request_reviews then bnds
         else
           let arg =
             (yojson_of_list yojson_of_required_pull_request_reviews)
               v_required_pull_request_reviews
           in
           let bnd = "required_pull_request_reviews", arg in
           bnd :: bnds
       in
       let bnds =
         match v_require_signed_commits with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_signed_commits", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_conversation_resolution with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_conversation_resolution", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
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
         match v_enforce_admins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enforce_admins", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : github_branch_protection_v3 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_branch_protection_v3

[@@@deriving.end]

let required_pull_request_reviews__bypass_pull_request_allowances
    ?apps ?teams ?users () :
    required_pull_request_reviews__bypass_pull_request_allowances =
  { apps; teams; users }

let required_pull_request_reviews ?dismiss_stale_reviews
    ?dismissal_apps ?dismissal_teams ?dismissal_users ?include_admins
    ?require_code_owner_reviews ?require_last_push_approval
    ?required_approving_review_count
    ?(bypass_pull_request_allowances = []) () :
    required_pull_request_reviews =
  {
    dismiss_stale_reviews;
    dismissal_apps;
    dismissal_teams;
    dismissal_users;
    include_admins;
    require_code_owner_reviews;
    require_last_push_approval;
    required_approving_review_count;
    bypass_pull_request_allowances;
  }

let required_status_checks ?checks ?contexts ?include_admins ?strict
    () : required_status_checks =
  { checks; contexts; include_admins; strict }

let restrictions ?apps ?teams ?users () : restrictions =
  { apps; teams; users }

let github_branch_protection_v3 ?enforce_admins ?id
    ?require_conversation_resolution ?require_signed_commits
    ?(required_pull_request_reviews = [])
    ?(required_status_checks = []) ?(restrictions = []) ~branch
    ~repository () : github_branch_protection_v3 =
  {
    branch;
    enforce_admins;
    id;
    repository;
    require_conversation_resolution;
    require_signed_commits;
    required_pull_request_reviews;
    required_status_checks;
    restrictions;
  }

type t = {
  tf_name : string;
  branch : string prop;
  enforce_admins : bool prop;
  etag : string prop;
  id : string prop;
  repository : string prop;
  require_conversation_resolution : bool prop;
  require_signed_commits : bool prop;
}

let make ?enforce_admins ?id ?require_conversation_resolution
    ?require_signed_commits ?(required_pull_request_reviews = [])
    ?(required_status_checks = []) ?(restrictions = []) ~branch
    ~repository __id =
  let __type = "github_branch_protection_v3" in
  let __attrs =
    ({
       tf_name = __id;
       branch = Prop.computed __type __id "branch";
       enforce_admins = Prop.computed __type __id "enforce_admins";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       repository = Prop.computed __type __id "repository";
       require_conversation_resolution =
         Prop.computed __type __id "require_conversation_resolution";
       require_signed_commits =
         Prop.computed __type __id "require_signed_commits";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_branch_protection_v3
        (github_branch_protection_v3 ?enforce_admins ?id
           ?require_conversation_resolution ?require_signed_commits
           ~required_pull_request_reviews ~required_status_checks
           ~restrictions ~branch ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?enforce_admins ?id
    ?require_conversation_resolution ?require_signed_commits
    ?(required_pull_request_reviews = [])
    ?(required_status_checks = []) ?(restrictions = []) ~branch
    ~repository __id =
  let (r : _ Tf_core.resource) =
    make ?enforce_admins ?id ?require_conversation_resolution
      ?require_signed_commits ~required_pull_request_reviews
      ~required_status_checks ~restrictions ~branch ~repository __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
