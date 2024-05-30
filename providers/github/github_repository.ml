(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type pages__source = {
  branch : string prop;
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pages__source) -> ()

let yojson_of_pages__source =
  (function
   | { branch = v_branch; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : pages__source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pages__source

[@@@deriving.end]

type pages = {
  build_type : string prop option; [@option]
  cname : string prop option; [@option]
  source : pages__source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pages) -> ()

let yojson_of_pages =
  (function
   | {
       build_type = v_build_type;
       cname = v_cname;
       source = v_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source then bnds
         else
           let arg =
             (yojson_of_list yojson_of_pages__source) v_source
           in
           let bnd = "source", arg in
           bnd :: bnds
       in
       let bnds =
         match v_cname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cname", arg in
             bnd :: bnds
       in
       let bnds =
         match v_build_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "build_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : pages -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pages

[@@@deriving.end]

type security_and_analysis__advanced_security = {
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_and_analysis__advanced_security) -> ()

let yojson_of_security_and_analysis__advanced_security =
  (function
   | { status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       `Assoc bnds
    : security_and_analysis__advanced_security ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_and_analysis__advanced_security

[@@@deriving.end]

type security_and_analysis__secret_scanning = {
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_and_analysis__secret_scanning) -> ()

let yojson_of_security_and_analysis__secret_scanning =
  (function
   | { status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       `Assoc bnds
    : security_and_analysis__secret_scanning ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_and_analysis__secret_scanning

[@@@deriving.end]

type security_and_analysis__secret_scanning_push_protection = {
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : security_and_analysis__secret_scanning_push_protection) ->
  ()

let yojson_of_security_and_analysis__secret_scanning_push_protection
    =
  (function
   | { status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       `Assoc bnds
    : security_and_analysis__secret_scanning_push_protection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_security_and_analysis__secret_scanning_push_protection

[@@@deriving.end]

type security_and_analysis = {
  advanced_security : security_and_analysis__advanced_security list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secret_scanning : security_and_analysis__secret_scanning list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secret_scanning_push_protection :
    security_and_analysis__secret_scanning_push_protection list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_and_analysis) -> ()

let yojson_of_security_and_analysis =
  (function
   | {
       advanced_security = v_advanced_security;
       secret_scanning = v_secret_scanning;
       secret_scanning_push_protection =
         v_secret_scanning_push_protection;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_secret_scanning_push_protection then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_security_and_analysis__secret_scanning_push_protection)
               v_secret_scanning_push_protection
           in
           let bnd = "secret_scanning_push_protection", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_secret_scanning then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_security_and_analysis__secret_scanning)
               v_secret_scanning
           in
           let bnd = "secret_scanning", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_advanced_security then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_security_and_analysis__advanced_security)
               v_advanced_security
           in
           let bnd = "advanced_security", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : security_and_analysis -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_and_analysis

[@@@deriving.end]

type template = {
  include_all_branches : bool prop option; [@option]
  owner : string prop;
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template) -> ()

let yojson_of_template =
  (function
   | {
       include_all_branches = v_include_all_branches;
       owner = v_owner;
       repository = v_repository;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_owner in
         ("owner", arg) :: bnds
       in
       let bnds =
         match v_include_all_branches with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_all_branches", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template

[@@@deriving.end]

type github_repository = {
  allow_auto_merge : bool prop option; [@option]
  allow_merge_commit : bool prop option; [@option]
  allow_rebase_merge : bool prop option; [@option]
  allow_squash_merge : bool prop option; [@option]
  allow_update_branch : bool prop option; [@option]
  archive_on_destroy : bool prop option; [@option]
  archived : bool prop option; [@option]
  auto_init : bool prop option; [@option]
  default_branch : string prop option; [@option]
  delete_branch_on_merge : bool prop option; [@option]
  description : string prop option; [@option]
  gitignore_template : string prop option; [@option]
  has_discussions : bool prop option; [@option]
  has_downloads : bool prop option; [@option]
  has_issues : bool prop option; [@option]
  has_projects : bool prop option; [@option]
  has_wiki : bool prop option; [@option]
  homepage_url : string prop option; [@option]
  id : string prop option; [@option]
  ignore_vulnerability_alerts_during_read : bool prop option;
      [@option]
  is_template : bool prop option; [@option]
  license_template : string prop option; [@option]
  merge_commit_message : string prop option; [@option]
  merge_commit_title : string prop option; [@option]
  name : string prop;
  private_ : bool prop option; [@option] [@key "private"]
  squash_merge_commit_message : string prop option; [@option]
  squash_merge_commit_title : string prop option; [@option]
  topics : string prop list option; [@option]
  visibility : string prop option; [@option]
  vulnerability_alerts : bool prop option; [@option]
  web_commit_signoff_required : bool prop option; [@option]
  pages : pages list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  security_and_analysis : security_and_analysis list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  template : template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository) -> ()

let yojson_of_github_repository =
  (function
   | {
       allow_auto_merge = v_allow_auto_merge;
       allow_merge_commit = v_allow_merge_commit;
       allow_rebase_merge = v_allow_rebase_merge;
       allow_squash_merge = v_allow_squash_merge;
       allow_update_branch = v_allow_update_branch;
       archive_on_destroy = v_archive_on_destroy;
       archived = v_archived;
       auto_init = v_auto_init;
       default_branch = v_default_branch;
       delete_branch_on_merge = v_delete_branch_on_merge;
       description = v_description;
       gitignore_template = v_gitignore_template;
       has_discussions = v_has_discussions;
       has_downloads = v_has_downloads;
       has_issues = v_has_issues;
       has_projects = v_has_projects;
       has_wiki = v_has_wiki;
       homepage_url = v_homepage_url;
       id = v_id;
       ignore_vulnerability_alerts_during_read =
         v_ignore_vulnerability_alerts_during_read;
       is_template = v_is_template;
       license_template = v_license_template;
       merge_commit_message = v_merge_commit_message;
       merge_commit_title = v_merge_commit_title;
       name = v_name;
       private_ = v_private_;
       squash_merge_commit_message = v_squash_merge_commit_message;
       squash_merge_commit_title = v_squash_merge_commit_title;
       topics = v_topics;
       visibility = v_visibility;
       vulnerability_alerts = v_vulnerability_alerts;
       web_commit_signoff_required = v_web_commit_signoff_required;
       pages = v_pages;
       security_and_analysis = v_security_and_analysis;
       template = v_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_template then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template) v_template
           in
           let bnd = "template", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_and_analysis then bnds
         else
           let arg =
             (yojson_of_list yojson_of_security_and_analysis)
               v_security_and_analysis
           in
           let bnd = "security_and_analysis", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_pages then bnds
         else
           let arg = (yojson_of_list yojson_of_pages) v_pages in
           let bnd = "pages", arg in
           bnd :: bnds
       in
       let bnds =
         match v_web_commit_signoff_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "web_commit_signoff_required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vulnerability_alerts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "vulnerability_alerts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_visibility with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "visibility", arg in
             bnd :: bnds
       in
       let bnds =
         match v_topics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "topics", arg in
             bnd :: bnds
       in
       let bnds =
         match v_squash_merge_commit_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "squash_merge_commit_title", arg in
             bnd :: bnds
       in
       let bnds =
         match v_squash_merge_commit_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "squash_merge_commit_message", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "private", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_merge_commit_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "merge_commit_title", arg in
             bnd :: bnds
       in
       let bnds =
         match v_merge_commit_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "merge_commit_message", arg in
             bnd :: bnds
       in
       let bnds =
         match v_license_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "license_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_vulnerability_alerts_during_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "ignore_vulnerability_alerts_during_read", arg
             in
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
         match v_homepage_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "homepage_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_has_wiki with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "has_wiki", arg in
             bnd :: bnds
       in
       let bnds =
         match v_has_projects with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "has_projects", arg in
             bnd :: bnds
       in
       let bnds =
         match v_has_issues with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "has_issues", arg in
             bnd :: bnds
       in
       let bnds =
         match v_has_downloads with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "has_downloads", arg in
             bnd :: bnds
       in
       let bnds =
         match v_has_discussions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "has_discussions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gitignore_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gitignore_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_branch_on_merge with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_branch_on_merge", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_branch", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_init with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_init", arg in
             bnd :: bnds
       in
       let bnds =
         match v_archived with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "archived", arg in
             bnd :: bnds
       in
       let bnds =
         match v_archive_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "archive_on_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_update_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_update_branch", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_squash_merge with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_squash_merge", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_rebase_merge with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_rebase_merge", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_merge_commit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_merge_commit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_auto_merge with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_auto_merge", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_repository -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository

[@@@deriving.end]

let pages__source ?path ~branch () : pages__source = { branch; path }

let pages ?build_type ?cname ?(source = []) () : pages =
  { build_type; cname; source }

let security_and_analysis__advanced_security ~status () :
    security_and_analysis__advanced_security =
  { status }

let security_and_analysis__secret_scanning ~status () :
    security_and_analysis__secret_scanning =
  { status }

let security_and_analysis__secret_scanning_push_protection ~status ()
    : security_and_analysis__secret_scanning_push_protection =
  { status }

let security_and_analysis ?(advanced_security = [])
    ?(secret_scanning = []) ?(secret_scanning_push_protection = [])
    () : security_and_analysis =
  {
    advanced_security;
    secret_scanning;
    secret_scanning_push_protection;
  }

let template ?include_all_branches ~owner ~repository () : template =
  { include_all_branches; owner; repository }

let github_repository ?allow_auto_merge ?allow_merge_commit
    ?allow_rebase_merge ?allow_squash_merge ?allow_update_branch
    ?archive_on_destroy ?archived ?auto_init ?default_branch
    ?delete_branch_on_merge ?description ?gitignore_template
    ?has_discussions ?has_downloads ?has_issues ?has_projects
    ?has_wiki ?homepage_url ?id
    ?ignore_vulnerability_alerts_during_read ?is_template
    ?license_template ?merge_commit_message ?merge_commit_title
    ?private_ ?squash_merge_commit_message ?squash_merge_commit_title
    ?topics ?visibility ?vulnerability_alerts
    ?web_commit_signoff_required ?(pages = [])
    ?(security_and_analysis = []) ?(template = []) ~name () :
    github_repository =
  {
    allow_auto_merge;
    allow_merge_commit;
    allow_rebase_merge;
    allow_squash_merge;
    allow_update_branch;
    archive_on_destroy;
    archived;
    auto_init;
    default_branch;
    delete_branch_on_merge;
    description;
    gitignore_template;
    has_discussions;
    has_downloads;
    has_issues;
    has_projects;
    has_wiki;
    homepage_url;
    id;
    ignore_vulnerability_alerts_during_read;
    is_template;
    license_template;
    merge_commit_message;
    merge_commit_title;
    name;
    private_;
    squash_merge_commit_message;
    squash_merge_commit_title;
    topics;
    visibility;
    vulnerability_alerts;
    web_commit_signoff_required;
    pages;
    security_and_analysis;
    template;
  }

type t = {
  tf_name : string;
  allow_auto_merge : bool prop;
  allow_merge_commit : bool prop;
  allow_rebase_merge : bool prop;
  allow_squash_merge : bool prop;
  allow_update_branch : bool prop;
  archive_on_destroy : bool prop;
  archived : bool prop;
  auto_init : bool prop;
  default_branch : string prop;
  delete_branch_on_merge : bool prop;
  description : string prop;
  etag : string prop;
  full_name : string prop;
  git_clone_url : string prop;
  gitignore_template : string prop;
  has_discussions : bool prop;
  has_downloads : bool prop;
  has_issues : bool prop;
  has_projects : bool prop;
  has_wiki : bool prop;
  homepage_url : string prop;
  html_url : string prop;
  http_clone_url : string prop;
  id : string prop;
  ignore_vulnerability_alerts_during_read : bool prop;
  is_template : bool prop;
  license_template : string prop;
  merge_commit_message : string prop;
  merge_commit_title : string prop;
  name : string prop;
  node_id : string prop;
  primary_language : string prop;
  private_ : bool prop;
  repo_id : float prop;
  squash_merge_commit_message : string prop;
  squash_merge_commit_title : string prop;
  ssh_clone_url : string prop;
  svn_url : string prop;
  topics : string list prop;
  visibility : string prop;
  vulnerability_alerts : bool prop;
  web_commit_signoff_required : bool prop;
}

let make ?allow_auto_merge ?allow_merge_commit ?allow_rebase_merge
    ?allow_squash_merge ?allow_update_branch ?archive_on_destroy
    ?archived ?auto_init ?default_branch ?delete_branch_on_merge
    ?description ?gitignore_template ?has_discussions ?has_downloads
    ?has_issues ?has_projects ?has_wiki ?homepage_url ?id
    ?ignore_vulnerability_alerts_during_read ?is_template
    ?license_template ?merge_commit_message ?merge_commit_title
    ?private_ ?squash_merge_commit_message ?squash_merge_commit_title
    ?topics ?visibility ?vulnerability_alerts
    ?web_commit_signoff_required ?(pages = [])
    ?(security_and_analysis = []) ?(template = []) ~name __id =
  let __type = "github_repository" in
  let __attrs =
    ({
       tf_name = __id;
       allow_auto_merge =
         Prop.computed __type __id "allow_auto_merge";
       allow_merge_commit =
         Prop.computed __type __id "allow_merge_commit";
       allow_rebase_merge =
         Prop.computed __type __id "allow_rebase_merge";
       allow_squash_merge =
         Prop.computed __type __id "allow_squash_merge";
       allow_update_branch =
         Prop.computed __type __id "allow_update_branch";
       archive_on_destroy =
         Prop.computed __type __id "archive_on_destroy";
       archived = Prop.computed __type __id "archived";
       auto_init = Prop.computed __type __id "auto_init";
       default_branch = Prop.computed __type __id "default_branch";
       delete_branch_on_merge =
         Prop.computed __type __id "delete_branch_on_merge";
       description = Prop.computed __type __id "description";
       etag = Prop.computed __type __id "etag";
       full_name = Prop.computed __type __id "full_name";
       git_clone_url = Prop.computed __type __id "git_clone_url";
       gitignore_template =
         Prop.computed __type __id "gitignore_template";
       has_discussions = Prop.computed __type __id "has_discussions";
       has_downloads = Prop.computed __type __id "has_downloads";
       has_issues = Prop.computed __type __id "has_issues";
       has_projects = Prop.computed __type __id "has_projects";
       has_wiki = Prop.computed __type __id "has_wiki";
       homepage_url = Prop.computed __type __id "homepage_url";
       html_url = Prop.computed __type __id "html_url";
       http_clone_url = Prop.computed __type __id "http_clone_url";
       id = Prop.computed __type __id "id";
       ignore_vulnerability_alerts_during_read =
         Prop.computed __type __id
           "ignore_vulnerability_alerts_during_read";
       is_template = Prop.computed __type __id "is_template";
       license_template =
         Prop.computed __type __id "license_template";
       merge_commit_message =
         Prop.computed __type __id "merge_commit_message";
       merge_commit_title =
         Prop.computed __type __id "merge_commit_title";
       name = Prop.computed __type __id "name";
       node_id = Prop.computed __type __id "node_id";
       primary_language =
         Prop.computed __type __id "primary_language";
       private_ = Prop.computed __type __id "private";
       repo_id = Prop.computed __type __id "repo_id";
       squash_merge_commit_message =
         Prop.computed __type __id "squash_merge_commit_message";
       squash_merge_commit_title =
         Prop.computed __type __id "squash_merge_commit_title";
       ssh_clone_url = Prop.computed __type __id "ssh_clone_url";
       svn_url = Prop.computed __type __id "svn_url";
       topics = Prop.computed __type __id "topics";
       visibility = Prop.computed __type __id "visibility";
       vulnerability_alerts =
         Prop.computed __type __id "vulnerability_alerts";
       web_commit_signoff_required =
         Prop.computed __type __id "web_commit_signoff_required";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository
        (github_repository ?allow_auto_merge ?allow_merge_commit
           ?allow_rebase_merge ?allow_squash_merge
           ?allow_update_branch ?archive_on_destroy ?archived
           ?auto_init ?default_branch ?delete_branch_on_merge
           ?description ?gitignore_template ?has_discussions
           ?has_downloads ?has_issues ?has_projects ?has_wiki
           ?homepage_url ?id ?ignore_vulnerability_alerts_during_read
           ?is_template ?license_template ?merge_commit_message
           ?merge_commit_title ?private_ ?squash_merge_commit_message
           ?squash_merge_commit_title ?topics ?visibility
           ?vulnerability_alerts ?web_commit_signoff_required ~pages
           ~security_and_analysis ~template ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_auto_merge ?allow_merge_commit
    ?allow_rebase_merge ?allow_squash_merge ?allow_update_branch
    ?archive_on_destroy ?archived ?auto_init ?default_branch
    ?delete_branch_on_merge ?description ?gitignore_template
    ?has_discussions ?has_downloads ?has_issues ?has_projects
    ?has_wiki ?homepage_url ?id
    ?ignore_vulnerability_alerts_during_read ?is_template
    ?license_template ?merge_commit_message ?merge_commit_title
    ?private_ ?squash_merge_commit_message ?squash_merge_commit_title
    ?topics ?visibility ?vulnerability_alerts
    ?web_commit_signoff_required ?(pages = [])
    ?(security_and_analysis = []) ?(template = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?allow_auto_merge ?allow_merge_commit ?allow_rebase_merge
      ?allow_squash_merge ?allow_update_branch ?archive_on_destroy
      ?archived ?auto_init ?default_branch ?delete_branch_on_merge
      ?description ?gitignore_template ?has_discussions
      ?has_downloads ?has_issues ?has_projects ?has_wiki
      ?homepage_url ?id ?ignore_vulnerability_alerts_during_read
      ?is_template ?license_template ?merge_commit_message
      ?merge_commit_title ?private_ ?squash_merge_commit_message
      ?squash_merge_commit_title ?topics ?visibility
      ?vulnerability_alerts ?web_commit_signoff_required ~pages
      ~security_and_analysis ~template ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
