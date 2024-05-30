(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type pages__source = { branch : string prop; path : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : pages__source) -> ()

let yojson_of_pages__source =
  (function
   | { branch = v_branch; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
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
  build_type : string prop;
  cname : string prop;
  custom_404 : bool prop;
  html_url : string prop;
  source : pages__source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  status : string prop;
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pages) -> ()

let yojson_of_pages =
  (function
   | {
       build_type = v_build_type;
       cname = v_cname;
       custom_404 = v_custom_404;
       html_url = v_html_url;
       source = v_source;
       status = v_status;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_html_url in
         ("html_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_custom_404 in
         ("custom_404", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cname in
         ("cname", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_build_type in
         ("build_type", arg) :: bnds
       in
       `Assoc bnds
    : pages -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pages

[@@@deriving.end]

type repository_license__license = {
  body : string prop;
  conditions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  description : string prop;
  featured : bool prop;
  html_url : string prop;
  implementation : string prop;
  key : string prop;
  limitations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  permissions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spdx_id : string prop;
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : repository_license__license) -> ()

let yojson_of_repository_license__license =
  (function
   | {
       body = v_body;
       conditions = v_conditions;
       description = v_description;
       featured = v_featured;
       html_url = v_html_url;
       implementation = v_implementation;
       key = v_key;
       limitations = v_limitations;
       name = v_name;
       permissions = v_permissions;
       spdx_id = v_spdx_id;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_spdx_id in
         ("spdx_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_permissions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_permissions
           in
           let bnd = "permissions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_limitations then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_limitations
           in
           let bnd = "limitations", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_implementation
         in
         ("implementation", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_html_url in
         ("html_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_featured in
         ("featured", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_conditions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_conditions
           in
           let bnd = "conditions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_body in
         ("body", arg) :: bnds
       in
       `Assoc bnds
    : repository_license__license ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_repository_license__license

[@@@deriving.end]

type repository_license = {
  content : string prop;
  download_url : string prop;
  encoding : string prop;
  git_url : string prop;
  html_url : string prop;
  license : repository_license__license list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  path : string prop;
  sha : string prop;
  size : float prop;
  type_ : string prop; [@key "type"]
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : repository_license) -> ()

let yojson_of_repository_license =
  (function
   | {
       content = v_content;
       download_url = v_download_url;
       encoding = v_encoding;
       git_url = v_git_url;
       html_url = v_html_url;
       license = v_license;
       name = v_name;
       path = v_path;
       sha = v_sha;
       size = v_size;
       type_ = v_type_;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sha in
         ("sha", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_license then bnds
         else
           let arg =
             (yojson_of_list yojson_of_repository_license__license)
               v_license
           in
           let bnd = "license", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_html_url in
         ("html_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_git_url in
         ("git_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_encoding in
         ("encoding", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_download_url in
         ("download_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : repository_license -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_repository_license

[@@@deriving.end]

type template = { owner : string prop; repository : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : template) -> ()

let yojson_of_template =
  (function
   | { owner = v_owner; repository = v_repository } ->
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
       `Assoc bnds
    : template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template

[@@@deriving.end]

type github_repository = {
  description : string prop option; [@option]
  full_name : string prop option; [@option]
  homepage_url : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository) -> ()

let yojson_of_github_repository =
  (function
   | {
       description = v_description;
       full_name = v_full_name;
       homepage_url = v_homepage_url;
       id = v_id;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_full_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "full_name", arg in
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
       `Assoc bnds
    : github_repository -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository

[@@@deriving.end]

let github_repository ?description ?full_name ?homepage_url ?id ?name
    () : github_repository =
  { description; full_name; homepage_url; id; name }

type t = {
  tf_name : string;
  allow_auto_merge : bool prop;
  allow_merge_commit : bool prop;
  allow_rebase_merge : bool prop;
  allow_squash_merge : bool prop;
  archived : bool prop;
  default_branch : string prop;
  description : string prop;
  fork : bool prop;
  full_name : string prop;
  git_clone_url : string prop;
  has_discussions : bool prop;
  has_downloads : bool prop;
  has_issues : bool prop;
  has_projects : bool prop;
  has_wiki : bool prop;
  homepage_url : string prop;
  html_url : string prop;
  http_clone_url : string prop;
  id : string prop;
  is_template : bool prop;
  merge_commit_message : string prop;
  merge_commit_title : string prop;
  name : string prop;
  node_id : string prop;
  pages : pages list prop;
  primary_language : string prop;
  private_ : bool prop;
  repo_id : float prop;
  repository_license : repository_license list prop;
  squash_merge_commit_message : string prop;
  squash_merge_commit_title : string prop;
  ssh_clone_url : string prop;
  svn_url : string prop;
  template : template list prop;
  topics : string list prop;
  visibility : string prop;
}

let make ?description ?full_name ?homepage_url ?id ?name __id =
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
       archived = Prop.computed __type __id "archived";
       default_branch = Prop.computed __type __id "default_branch";
       description = Prop.computed __type __id "description";
       fork = Prop.computed __type __id "fork";
       full_name = Prop.computed __type __id "full_name";
       git_clone_url = Prop.computed __type __id "git_clone_url";
       has_discussions = Prop.computed __type __id "has_discussions";
       has_downloads = Prop.computed __type __id "has_downloads";
       has_issues = Prop.computed __type __id "has_issues";
       has_projects = Prop.computed __type __id "has_projects";
       has_wiki = Prop.computed __type __id "has_wiki";
       homepage_url = Prop.computed __type __id "homepage_url";
       html_url = Prop.computed __type __id "html_url";
       http_clone_url = Prop.computed __type __id "http_clone_url";
       id = Prop.computed __type __id "id";
       is_template = Prop.computed __type __id "is_template";
       merge_commit_message =
         Prop.computed __type __id "merge_commit_message";
       merge_commit_title =
         Prop.computed __type __id "merge_commit_title";
       name = Prop.computed __type __id "name";
       node_id = Prop.computed __type __id "node_id";
       pages = Prop.computed __type __id "pages";
       primary_language =
         Prop.computed __type __id "primary_language";
       private_ = Prop.computed __type __id "private";
       repo_id = Prop.computed __type __id "repo_id";
       repository_license =
         Prop.computed __type __id "repository_license";
       squash_merge_commit_message =
         Prop.computed __type __id "squash_merge_commit_message";
       squash_merge_commit_title =
         Prop.computed __type __id "squash_merge_commit_title";
       ssh_clone_url = Prop.computed __type __id "ssh_clone_url";
       svn_url = Prop.computed __type __id "svn_url";
       template = Prop.computed __type __id "template";
       topics = Prop.computed __type __id "topics";
       visibility = Prop.computed __type __id "visibility";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository
        (github_repository ?description ?full_name ?homepage_url ?id
           ?name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?full_name ?homepage_url ?id
    ?name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?full_name ?homepage_url ?id ?name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
