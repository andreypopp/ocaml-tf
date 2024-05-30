(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type required_pull_request_reviews = {
  dismiss_stale_reviews : bool prop option; [@option]
  dismissal_restrictions : string prop list option; [@option]
  pull_request_bypassers : string prop list option; [@option]
  require_code_owner_reviews : bool prop option; [@option]
  require_last_push_approval : bool prop option; [@option]
  required_approving_review_count : float prop option; [@option]
  restrict_dismissals : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : required_pull_request_reviews) -> ()

let yojson_of_required_pull_request_reviews =
  (function
   | {
       dismiss_stale_reviews = v_dismiss_stale_reviews;
       dismissal_restrictions = v_dismissal_restrictions;
       pull_request_bypassers = v_pull_request_bypassers;
       require_code_owner_reviews = v_require_code_owner_reviews;
       require_last_push_approval = v_require_last_push_approval;
       required_approving_review_count =
         v_required_approving_review_count;
       restrict_dismissals = v_restrict_dismissals;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_restrict_dismissals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "restrict_dismissals", arg in
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
         match v_pull_request_bypassers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "pull_request_bypassers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dismissal_restrictions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dismissal_restrictions", arg in
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
  contexts : string prop list option; [@option]
  strict : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : required_status_checks) -> ()

let yojson_of_required_status_checks =
  (function
   | { contexts = v_contexts; strict = v_strict } ->
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
         match v_contexts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "contexts", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : required_status_checks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_required_status_checks

[@@@deriving.end]

type restrict_pushes = {
  blocks_creations : bool prop option; [@option]
  push_allowances : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restrict_pushes) -> ()

let yojson_of_restrict_pushes =
  (function
   | {
       blocks_creations = v_blocks_creations;
       push_allowances = v_push_allowances;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_push_allowances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "push_allowances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_blocks_creations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "blocks_creations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : restrict_pushes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restrict_pushes

[@@@deriving.end]

type github_branch_protection = {
  allows_deletions : bool prop option; [@option]
  allows_force_pushes : bool prop option; [@option]
  enforce_admins : bool prop option; [@option]
  force_push_bypassers : string prop list option; [@option]
  id : string prop option; [@option]
  lock_branch : bool prop option; [@option]
  pattern : string prop;
  repository_id : string prop;
  require_conversation_resolution : bool prop option; [@option]
  require_signed_commits : bool prop option; [@option]
  required_linear_history : bool prop option; [@option]
  required_pull_request_reviews : required_pull_request_reviews list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  required_status_checks : required_status_checks list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  restrict_pushes : restrict_pushes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_branch_protection) -> ()

let yojson_of_github_branch_protection =
  (function
   | {
       allows_deletions = v_allows_deletions;
       allows_force_pushes = v_allows_force_pushes;
       enforce_admins = v_enforce_admins;
       force_push_bypassers = v_force_push_bypassers;
       id = v_id;
       lock_branch = v_lock_branch;
       pattern = v_pattern;
       repository_id = v_repository_id;
       require_conversation_resolution =
         v_require_conversation_resolution;
       require_signed_commits = v_require_signed_commits;
       required_linear_history = v_required_linear_history;
       required_pull_request_reviews =
         v_required_pull_request_reviews;
       required_status_checks = v_required_status_checks;
       restrict_pushes = v_restrict_pushes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_restrict_pushes then bnds
         else
           let arg =
             (yojson_of_list yojson_of_restrict_pushes)
               v_restrict_pushes
           in
           let bnd = "restrict_pushes", arg in
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
         match v_required_linear_history with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "required_linear_history", arg in
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
         let arg = yojson_of_prop yojson_of_string v_repository_id in
         ("repository_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       let bnds =
         match v_lock_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "lock_branch", arg in
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
         match v_force_push_bypassers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "force_push_bypassers", arg in
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
         match v_allows_force_pushes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allows_force_pushes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allows_deletions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allows_deletions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_branch_protection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_branch_protection

[@@@deriving.end]

let required_pull_request_reviews ?dismiss_stale_reviews
    ?dismissal_restrictions ?pull_request_bypassers
    ?require_code_owner_reviews ?require_last_push_approval
    ?required_approving_review_count ?restrict_dismissals () :
    required_pull_request_reviews =
  {
    dismiss_stale_reviews;
    dismissal_restrictions;
    pull_request_bypassers;
    require_code_owner_reviews;
    require_last_push_approval;
    required_approving_review_count;
    restrict_dismissals;
  }

let required_status_checks ?contexts ?strict () :
    required_status_checks =
  { contexts; strict }

let restrict_pushes ?blocks_creations ?push_allowances () :
    restrict_pushes =
  { blocks_creations; push_allowances }

let github_branch_protection ?allows_deletions ?allows_force_pushes
    ?enforce_admins ?force_push_bypassers ?id ?lock_branch
    ?require_conversation_resolution ?require_signed_commits
    ?required_linear_history ?(required_pull_request_reviews = [])
    ?(required_status_checks = []) ?(restrict_pushes = []) ~pattern
    ~repository_id () : github_branch_protection =
  {
    allows_deletions;
    allows_force_pushes;
    enforce_admins;
    force_push_bypassers;
    id;
    lock_branch;
    pattern;
    repository_id;
    require_conversation_resolution;
    require_signed_commits;
    required_linear_history;
    required_pull_request_reviews;
    required_status_checks;
    restrict_pushes;
  }

type t = {
  tf_name : string;
  allows_deletions : bool prop;
  allows_force_pushes : bool prop;
  enforce_admins : bool prop;
  force_push_bypassers : string list prop;
  id : string prop;
  lock_branch : bool prop;
  pattern : string prop;
  repository_id : string prop;
  require_conversation_resolution : bool prop;
  require_signed_commits : bool prop;
  required_linear_history : bool prop;
}

let make ?allows_deletions ?allows_force_pushes ?enforce_admins
    ?force_push_bypassers ?id ?lock_branch
    ?require_conversation_resolution ?require_signed_commits
    ?required_linear_history ?(required_pull_request_reviews = [])
    ?(required_status_checks = []) ?(restrict_pushes = []) ~pattern
    ~repository_id __id =
  let __type = "github_branch_protection" in
  let __attrs =
    ({
       tf_name = __id;
       allows_deletions =
         Prop.computed __type __id "allows_deletions";
       allows_force_pushes =
         Prop.computed __type __id "allows_force_pushes";
       enforce_admins = Prop.computed __type __id "enforce_admins";
       force_push_bypassers =
         Prop.computed __type __id "force_push_bypassers";
       id = Prop.computed __type __id "id";
       lock_branch = Prop.computed __type __id "lock_branch";
       pattern = Prop.computed __type __id "pattern";
       repository_id = Prop.computed __type __id "repository_id";
       require_conversation_resolution =
         Prop.computed __type __id "require_conversation_resolution";
       require_signed_commits =
         Prop.computed __type __id "require_signed_commits";
       required_linear_history =
         Prop.computed __type __id "required_linear_history";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_branch_protection
        (github_branch_protection ?allows_deletions
           ?allows_force_pushes ?enforce_admins ?force_push_bypassers
           ?id ?lock_branch ?require_conversation_resolution
           ?require_signed_commits ?required_linear_history
           ~required_pull_request_reviews ~required_status_checks
           ~restrict_pushes ~pattern ~repository_id ());
    attrs = __attrs;
  }

let register ?tf_module ?allows_deletions ?allows_force_pushes
    ?enforce_admins ?force_push_bypassers ?id ?lock_branch
    ?require_conversation_resolution ?require_signed_commits
    ?required_linear_history ?(required_pull_request_reviews = [])
    ?(required_status_checks = []) ?(restrict_pushes = []) ~pattern
    ~repository_id __id =
  let (r : _ Tf_core.resource) =
    make ?allows_deletions ?allows_force_pushes ?enforce_admins
      ?force_push_bypassers ?id ?lock_branch
      ?require_conversation_resolution ?require_signed_commits
      ?required_linear_history ~required_pull_request_reviews
      ~required_status_checks ~restrict_pushes ~pattern
      ~repository_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
