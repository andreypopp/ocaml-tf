(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bypass_actors = {
  actor_id : float prop;
  actor_type : string prop;
  bypass_mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bypass_actors) -> ()

let yojson_of_bypass_actors =
  (function
   | {
       actor_id = v_actor_id;
       actor_type = v_actor_type;
       bypass_mode = v_bypass_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bypass_mode in
         ("bypass_mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_actor_type in
         ("actor_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_actor_id in
         ("actor_id", arg) :: bnds
       in
       `Assoc bnds
    : bypass_actors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bypass_actors

[@@@deriving.end]

type conditions__ref_name = {
  exclude : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  include_ : string prop list;
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
      [@key "include"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__ref_name) -> ()

let yojson_of_conditions__ref_name =
  (function
   | { exclude = v_exclude; include_ = v_include_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_include_ then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_include_
           in
           let bnd = "include", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_exclude then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_exclude
           in
           let bnd = "exclude", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : conditions__ref_name -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__ref_name

[@@@deriving.end]

type conditions = {
  ref_name : conditions__ref_name list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions) -> ()

let yojson_of_conditions =
  (function
   | { ref_name = v_ref_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ref_name then bnds
         else
           let arg =
             (yojson_of_list yojson_of_conditions__ref_name)
               v_ref_name
           in
           let bnd = "ref_name", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : conditions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions

[@@@deriving.end]

type rules__branch_name_pattern = {
  name : string prop option; [@option]
  negate : bool prop option; [@option]
  operator : string prop;
  pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__branch_name_pattern) -> ()

let yojson_of_rules__branch_name_pattern =
  (function
   | {
       name = v_name;
       negate = v_negate;
       operator = v_operator;
       pattern = v_pattern;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__branch_name_pattern -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__branch_name_pattern

[@@@deriving.end]

type rules__commit_author_email_pattern = {
  name : string prop option; [@option]
  negate : bool prop option; [@option]
  operator : string prop;
  pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__commit_author_email_pattern) -> ()

let yojson_of_rules__commit_author_email_pattern =
  (function
   | {
       name = v_name;
       negate = v_negate;
       operator = v_operator;
       pattern = v_pattern;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__commit_author_email_pattern ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__commit_author_email_pattern

[@@@deriving.end]

type rules__commit_message_pattern = {
  name : string prop option; [@option]
  negate : bool prop option; [@option]
  operator : string prop;
  pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__commit_message_pattern) -> ()

let yojson_of_rules__commit_message_pattern =
  (function
   | {
       name = v_name;
       negate = v_negate;
       operator = v_operator;
       pattern = v_pattern;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__commit_message_pattern ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__commit_message_pattern

[@@@deriving.end]

type rules__committer_email_pattern = {
  name : string prop option; [@option]
  negate : bool prop option; [@option]
  operator : string prop;
  pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__committer_email_pattern) -> ()

let yojson_of_rules__committer_email_pattern =
  (function
   | {
       name = v_name;
       negate = v_negate;
       operator = v_operator;
       pattern = v_pattern;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__committer_email_pattern ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__committer_email_pattern

[@@@deriving.end]

type rules__pull_request = {
  dismiss_stale_reviews_on_push : bool prop option; [@option]
  require_code_owner_review : bool prop option; [@option]
  require_last_push_approval : bool prop option; [@option]
  required_approving_review_count : float prop option; [@option]
  required_review_thread_resolution : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__pull_request) -> ()

let yojson_of_rules__pull_request =
  (function
   | {
       dismiss_stale_reviews_on_push =
         v_dismiss_stale_reviews_on_push;
       require_code_owner_review = v_require_code_owner_review;
       require_last_push_approval = v_require_last_push_approval;
       required_approving_review_count =
         v_required_approving_review_count;
       required_review_thread_resolution =
         v_required_review_thread_resolution;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_required_review_thread_resolution with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "required_review_thread_resolution", arg in
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
         match v_require_code_owner_review with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_code_owner_review", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dismiss_stale_reviews_on_push with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dismiss_stale_reviews_on_push", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__pull_request -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__pull_request

[@@@deriving.end]

type rules__required_deployments = {
  required_deployment_environments : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__required_deployments) -> ()

let yojson_of_rules__required_deployments =
  (function
   | {
       required_deployment_environments =
         v_required_deployment_environments;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_required_deployment_environments then
           bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_required_deployment_environments
           in
           let bnd = "required_deployment_environments", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rules__required_deployments ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__required_deployments

[@@@deriving.end]

type rules__required_status_checks__required_check = {
  context : string prop;
  integration_id : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__required_status_checks__required_check) -> ()

let yojson_of_rules__required_status_checks__required_check =
  (function
   | { context = v_context; integration_id = v_integration_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_integration_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "integration_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_context in
         ("context", arg) :: bnds
       in
       `Assoc bnds
    : rules__required_status_checks__required_check ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__required_status_checks__required_check

[@@@deriving.end]

type rules__required_status_checks = {
  strict_required_status_checks_policy : bool prop option; [@option]
  required_check : rules__required_status_checks__required_check list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__required_status_checks) -> ()

let yojson_of_rules__required_status_checks =
  (function
   | {
       strict_required_status_checks_policy =
         v_strict_required_status_checks_policy;
       required_check = v_required_check;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_required_check then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__required_status_checks__required_check)
               v_required_check
           in
           let bnd = "required_check", arg in
           bnd :: bnds
       in
       let bnds =
         match v_strict_required_status_checks_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "strict_required_status_checks_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__required_status_checks ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__required_status_checks

[@@@deriving.end]

type rules__tag_name_pattern = {
  name : string prop option; [@option]
  negate : bool prop option; [@option]
  operator : string prop;
  pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__tag_name_pattern) -> ()

let yojson_of_rules__tag_name_pattern =
  (function
   | {
       name = v_name;
       negate = v_negate;
       operator = v_operator;
       pattern = v_pattern;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__tag_name_pattern -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__tag_name_pattern

[@@@deriving.end]

type rules = {
  creation : bool prop option; [@option]
  deletion : bool prop option; [@option]
  non_fast_forward : bool prop option; [@option]
  required_linear_history : bool prop option; [@option]
  required_signatures : bool prop option; [@option]
  update : bool prop option; [@option]
  update_allows_fetch_and_merge : bool prop option; [@option]
  branch_name_pattern : rules__branch_name_pattern list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  commit_author_email_pattern :
    rules__commit_author_email_pattern list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  commit_message_pattern : rules__commit_message_pattern list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  committer_email_pattern : rules__committer_email_pattern list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pull_request : rules__pull_request list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  required_deployments : rules__required_deployments list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  required_status_checks : rules__required_status_checks list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tag_name_pattern : rules__tag_name_pattern list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules) -> ()

let yojson_of_rules =
  (function
   | {
       creation = v_creation;
       deletion = v_deletion;
       non_fast_forward = v_non_fast_forward;
       required_linear_history = v_required_linear_history;
       required_signatures = v_required_signatures;
       update = v_update;
       update_allows_fetch_and_merge =
         v_update_allows_fetch_and_merge;
       branch_name_pattern = v_branch_name_pattern;
       commit_author_email_pattern = v_commit_author_email_pattern;
       commit_message_pattern = v_commit_message_pattern;
       committer_email_pattern = v_committer_email_pattern;
       pull_request = v_pull_request;
       required_deployments = v_required_deployments;
       required_status_checks = v_required_status_checks;
       tag_name_pattern = v_tag_name_pattern;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tag_name_pattern then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rules__tag_name_pattern)
               v_tag_name_pattern
           in
           let bnd = "tag_name_pattern", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_required_status_checks then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rules__required_status_checks)
               v_required_status_checks
           in
           let bnd = "required_status_checks", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_required_deployments then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rules__required_deployments)
               v_required_deployments
           in
           let bnd = "required_deployments", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_pull_request then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rules__pull_request)
               v_pull_request
           in
           let bnd = "pull_request", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_committer_email_pattern then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rules__committer_email_pattern)
               v_committer_email_pattern
           in
           let bnd = "committer_email_pattern", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_commit_message_pattern then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rules__commit_message_pattern)
               v_commit_message_pattern
           in
           let bnd = "commit_message_pattern", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_commit_author_email_pattern then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__commit_author_email_pattern)
               v_commit_author_email_pattern
           in
           let bnd = "commit_author_email_pattern", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_branch_name_pattern then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rules__branch_name_pattern)
               v_branch_name_pattern
           in
           let bnd = "branch_name_pattern", arg in
           bnd :: bnds
       in
       let bnds =
         match v_update_allows_fetch_and_merge with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "update_allows_fetch_and_merge", arg in
             bnd :: bnds
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_required_signatures with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "required_signatures", arg in
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
         match v_non_fast_forward with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "non_fast_forward", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deletion", arg in
             bnd :: bnds
       in
       let bnds =
         match v_creation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "creation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules

[@@@deriving.end]

type github_repository_ruleset = {
  enforcement : string prop;
  id : string prop option; [@option]
  name : string prop;
  repository : string prop option; [@option]
  target : string prop;
  bypass_actors : bypass_actors list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  conditions : conditions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rules : rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_ruleset) -> ()

let yojson_of_github_repository_ruleset =
  (function
   | {
       enforcement = v_enforcement;
       id = v_id;
       name = v_name;
       repository = v_repository;
       target = v_target;
       bypass_actors = v_bypass_actors;
       conditions = v_conditions;
       rules = v_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rules then bnds
         else
           let arg = (yojson_of_list yojson_of_rules) v_rules in
           let bnd = "rules", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_conditions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_conditions) v_conditions
           in
           let bnd = "conditions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bypass_actors then bnds
         else
           let arg =
             (yojson_of_list yojson_of_bypass_actors) v_bypass_actors
           in
           let bnd = "bypass_actors", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
       in
       let bnds =
         match v_repository with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repository", arg in
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
         let arg = yojson_of_prop yojson_of_string v_enforcement in
         ("enforcement", arg) :: bnds
       in
       `Assoc bnds
    : github_repository_ruleset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_ruleset

[@@@deriving.end]

let bypass_actors ~actor_id ~actor_type ~bypass_mode () :
    bypass_actors =
  { actor_id; actor_type; bypass_mode }

let conditions__ref_name ~exclude ~include_ () : conditions__ref_name
    =
  { exclude; include_ }

let conditions ~ref_name () : conditions = { ref_name }

let rules__branch_name_pattern ?name ?negate ~operator ~pattern () :
    rules__branch_name_pattern =
  { name; negate; operator; pattern }

let rules__commit_author_email_pattern ?name ?negate ~operator
    ~pattern () : rules__commit_author_email_pattern =
  { name; negate; operator; pattern }

let rules__commit_message_pattern ?name ?negate ~operator ~pattern ()
    : rules__commit_message_pattern =
  { name; negate; operator; pattern }

let rules__committer_email_pattern ?name ?negate ~operator ~pattern
    () : rules__committer_email_pattern =
  { name; negate; operator; pattern }

let rules__pull_request ?dismiss_stale_reviews_on_push
    ?require_code_owner_review ?require_last_push_approval
    ?required_approving_review_count
    ?required_review_thread_resolution () : rules__pull_request =
  {
    dismiss_stale_reviews_on_push;
    require_code_owner_review;
    require_last_push_approval;
    required_approving_review_count;
    required_review_thread_resolution;
  }

let rules__required_deployments ~required_deployment_environments ()
    : rules__required_deployments =
  { required_deployment_environments }

let rules__required_status_checks__required_check ?integration_id
    ~context () : rules__required_status_checks__required_check =
  { context; integration_id }

let rules__required_status_checks
    ?strict_required_status_checks_policy ~required_check () :
    rules__required_status_checks =
  { strict_required_status_checks_policy; required_check }

let rules__tag_name_pattern ?name ?negate ~operator ~pattern () :
    rules__tag_name_pattern =
  { name; negate; operator; pattern }

let rules ?creation ?deletion ?non_fast_forward
    ?required_linear_history ?required_signatures ?update
    ?update_allows_fetch_and_merge ?(branch_name_pattern = [])
    ?(commit_author_email_pattern = [])
    ?(commit_message_pattern = []) ?(committer_email_pattern = [])
    ?(pull_request = []) ?(required_deployments = [])
    ?(required_status_checks = []) ?(tag_name_pattern = []) () :
    rules =
  {
    creation;
    deletion;
    non_fast_forward;
    required_linear_history;
    required_signatures;
    update;
    update_allows_fetch_and_merge;
    branch_name_pattern;
    commit_author_email_pattern;
    commit_message_pattern;
    committer_email_pattern;
    pull_request;
    required_deployments;
    required_status_checks;
    tag_name_pattern;
  }

let github_repository_ruleset ?id ?repository ?(bypass_actors = [])
    ?(conditions = []) ~enforcement ~name ~target ~rules () :
    github_repository_ruleset =
  {
    enforcement;
    id;
    name;
    repository;
    target;
    bypass_actors;
    conditions;
    rules;
  }

type t = {
  tf_name : string;
  enforcement : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  node_id : string prop;
  repository : string prop;
  ruleset_id : float prop;
  target : string prop;
}

let make ?id ?repository ?(bypass_actors = []) ?(conditions = [])
    ~enforcement ~name ~target ~rules __id =
  let __type = "github_repository_ruleset" in
  let __attrs =
    ({
       tf_name = __id;
       enforcement = Prop.computed __type __id "enforcement";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       node_id = Prop.computed __type __id "node_id";
       repository = Prop.computed __type __id "repository";
       ruleset_id = Prop.computed __type __id "ruleset_id";
       target = Prop.computed __type __id "target";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_ruleset
        (github_repository_ruleset ?id ?repository ~bypass_actors
           ~conditions ~enforcement ~name ~target ~rules ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?repository ?(bypass_actors = [])
    ?(conditions = []) ~enforcement ~name ~target ~rules __id =
  let (r : _ Tf_core.resource) =
    make ?id ?repository ~bypass_actors ~conditions ~enforcement
      ~name ~target ~rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
