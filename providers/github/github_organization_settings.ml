(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_organization_settings = {
  advanced_security_enabled_for_new_repositories : bool prop option;
      [@option]
  billing_email : string prop;
  blog : string prop option; [@option]
  company : string prop option; [@option]
  default_repository_permission : string prop option; [@option]
  dependabot_alerts_enabled_for_new_repositories : bool prop option;
      [@option]
  dependabot_security_updates_enabled_for_new_repositories :
    bool prop option;
      [@option]
  dependency_graph_enabled_for_new_repositories : bool prop option;
      [@option]
  description : string prop option; [@option]
  email : string prop option; [@option]
  has_organization_projects : bool prop option; [@option]
  has_repository_projects : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop option; [@option]
  members_can_create_internal_repositories : bool prop option;
      [@option]
  members_can_create_pages : bool prop option; [@option]
  members_can_create_private_pages : bool prop option; [@option]
  members_can_create_private_repositories : bool prop option;
      [@option]
  members_can_create_public_pages : bool prop option; [@option]
  members_can_create_public_repositories : bool prop option;
      [@option]
  members_can_create_repositories : bool prop option; [@option]
  members_can_fork_private_repositories : bool prop option; [@option]
  name : string prop option; [@option]
  secret_scanning_enabled_for_new_repositories : bool prop option;
      [@option]
  secret_scanning_push_protection_enabled_for_new_repositories :
    bool prop option;
      [@option]
  twitter_username : string prop option; [@option]
  web_commit_signoff_required : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_organization_settings) -> ()

let yojson_of_github_organization_settings =
  (function
   | {
       advanced_security_enabled_for_new_repositories =
         v_advanced_security_enabled_for_new_repositories;
       billing_email = v_billing_email;
       blog = v_blog;
       company = v_company;
       default_repository_permission =
         v_default_repository_permission;
       dependabot_alerts_enabled_for_new_repositories =
         v_dependabot_alerts_enabled_for_new_repositories;
       dependabot_security_updates_enabled_for_new_repositories =
         v_dependabot_security_updates_enabled_for_new_repositories;
       dependency_graph_enabled_for_new_repositories =
         v_dependency_graph_enabled_for_new_repositories;
       description = v_description;
       email = v_email;
       has_organization_projects = v_has_organization_projects;
       has_repository_projects = v_has_repository_projects;
       id = v_id;
       location = v_location;
       members_can_create_internal_repositories =
         v_members_can_create_internal_repositories;
       members_can_create_pages = v_members_can_create_pages;
       members_can_create_private_pages =
         v_members_can_create_private_pages;
       members_can_create_private_repositories =
         v_members_can_create_private_repositories;
       members_can_create_public_pages =
         v_members_can_create_public_pages;
       members_can_create_public_repositories =
         v_members_can_create_public_repositories;
       members_can_create_repositories =
         v_members_can_create_repositories;
       members_can_fork_private_repositories =
         v_members_can_fork_private_repositories;
       name = v_name;
       secret_scanning_enabled_for_new_repositories =
         v_secret_scanning_enabled_for_new_repositories;
       secret_scanning_push_protection_enabled_for_new_repositories =
         v_secret_scanning_push_protection_enabled_for_new_repositories;
       twitter_username = v_twitter_username;
       web_commit_signoff_required = v_web_commit_signoff_required;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_twitter_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "twitter_username", arg in
             bnd :: bnds
       in
       let bnds =
         match
           v_secret_scanning_push_protection_enabled_for_new_repositories
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               ( "secret_scanning_push_protection_enabled_for_new_repositories",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_secret_scanning_enabled_for_new_repositories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "secret_scanning_enabled_for_new_repositories", arg
             in
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
       let bnds =
         match v_members_can_fork_private_repositories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "members_can_fork_private_repositories", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_members_can_create_repositories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "members_can_create_repositories", arg in
             bnd :: bnds
       in
       let bnds =
         match v_members_can_create_public_repositories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "members_can_create_public_repositories", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_members_can_create_public_pages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "members_can_create_public_pages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_members_can_create_private_repositories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "members_can_create_private_repositories", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_members_can_create_private_pages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "members_can_create_private_pages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_members_can_create_pages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "members_can_create_pages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_members_can_create_internal_repositories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "members_can_create_internal_repositories", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
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
         match v_has_repository_projects with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "has_repository_projects", arg in
             bnd :: bnds
       in
       let bnds =
         match v_has_organization_projects with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "has_organization_projects", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email", arg in
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
         match v_dependency_graph_enabled_for_new_repositories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "dependency_graph_enabled_for_new_repositories", arg
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_dependabot_security_updates_enabled_for_new_repositories
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               ( "dependabot_security_updates_enabled_for_new_repositories",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_dependabot_alerts_enabled_for_new_repositories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "dependabot_alerts_enabled_for_new_repositories", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_default_repository_permission with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_repository_permission", arg in
             bnd :: bnds
       in
       let bnds =
         match v_company with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "company", arg in
             bnd :: bnds
       in
       let bnds =
         match v_blog with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "blog", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_billing_email in
         ("billing_email", arg) :: bnds
       in
       let bnds =
         match v_advanced_security_enabled_for_new_repositories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "advanced_security_enabled_for_new_repositories", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : github_organization_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_organization_settings

[@@@deriving.end]

let github_organization_settings
    ?advanced_security_enabled_for_new_repositories ?blog ?company
    ?default_repository_permission
    ?dependabot_alerts_enabled_for_new_repositories
    ?dependabot_security_updates_enabled_for_new_repositories
    ?dependency_graph_enabled_for_new_repositories ?description
    ?email ?has_organization_projects ?has_repository_projects ?id
    ?location ?members_can_create_internal_repositories
    ?members_can_create_pages ?members_can_create_private_pages
    ?members_can_create_private_repositories
    ?members_can_create_public_pages
    ?members_can_create_public_repositories
    ?members_can_create_repositories
    ?members_can_fork_private_repositories ?name
    ?secret_scanning_enabled_for_new_repositories
    ?secret_scanning_push_protection_enabled_for_new_repositories
    ?twitter_username ?web_commit_signoff_required ~billing_email ()
    : github_organization_settings =
  {
    advanced_security_enabled_for_new_repositories;
    billing_email;
    blog;
    company;
    default_repository_permission;
    dependabot_alerts_enabled_for_new_repositories;
    dependabot_security_updates_enabled_for_new_repositories;
    dependency_graph_enabled_for_new_repositories;
    description;
    email;
    has_organization_projects;
    has_repository_projects;
    id;
    location;
    members_can_create_internal_repositories;
    members_can_create_pages;
    members_can_create_private_pages;
    members_can_create_private_repositories;
    members_can_create_public_pages;
    members_can_create_public_repositories;
    members_can_create_repositories;
    members_can_fork_private_repositories;
    name;
    secret_scanning_enabled_for_new_repositories;
    secret_scanning_push_protection_enabled_for_new_repositories;
    twitter_username;
    web_commit_signoff_required;
  }

type t = {
  tf_name : string;
  advanced_security_enabled_for_new_repositories : bool prop;
  billing_email : string prop;
  blog : string prop;
  company : string prop;
  default_repository_permission : string prop;
  dependabot_alerts_enabled_for_new_repositories : bool prop;
  dependabot_security_updates_enabled_for_new_repositories :
    bool prop;
  dependency_graph_enabled_for_new_repositories : bool prop;
  description : string prop;
  email : string prop;
  has_organization_projects : bool prop;
  has_repository_projects : bool prop;
  id : string prop;
  location : string prop;
  members_can_create_internal_repositories : bool prop;
  members_can_create_pages : bool prop;
  members_can_create_private_pages : bool prop;
  members_can_create_private_repositories : bool prop;
  members_can_create_public_pages : bool prop;
  members_can_create_public_repositories : bool prop;
  members_can_create_repositories : bool prop;
  members_can_fork_private_repositories : bool prop;
  name : string prop;
  secret_scanning_enabled_for_new_repositories : bool prop;
  secret_scanning_push_protection_enabled_for_new_repositories :
    bool prop;
  twitter_username : string prop;
  web_commit_signoff_required : bool prop;
}

let make ?advanced_security_enabled_for_new_repositories ?blog
    ?company ?default_repository_permission
    ?dependabot_alerts_enabled_for_new_repositories
    ?dependabot_security_updates_enabled_for_new_repositories
    ?dependency_graph_enabled_for_new_repositories ?description
    ?email ?has_organization_projects ?has_repository_projects ?id
    ?location ?members_can_create_internal_repositories
    ?members_can_create_pages ?members_can_create_private_pages
    ?members_can_create_private_repositories
    ?members_can_create_public_pages
    ?members_can_create_public_repositories
    ?members_can_create_repositories
    ?members_can_fork_private_repositories ?name
    ?secret_scanning_enabled_for_new_repositories
    ?secret_scanning_push_protection_enabled_for_new_repositories
    ?twitter_username ?web_commit_signoff_required ~billing_email
    __id =
  let __type = "github_organization_settings" in
  let __attrs =
    ({
       tf_name = __id;
       advanced_security_enabled_for_new_repositories =
         Prop.computed __type __id
           "advanced_security_enabled_for_new_repositories";
       billing_email = Prop.computed __type __id "billing_email";
       blog = Prop.computed __type __id "blog";
       company = Prop.computed __type __id "company";
       default_repository_permission =
         Prop.computed __type __id "default_repository_permission";
       dependabot_alerts_enabled_for_new_repositories =
         Prop.computed __type __id
           "dependabot_alerts_enabled_for_new_repositories";
       dependabot_security_updates_enabled_for_new_repositories =
         Prop.computed __type __id
           "dependabot_security_updates_enabled_for_new_repositories";
       dependency_graph_enabled_for_new_repositories =
         Prop.computed __type __id
           "dependency_graph_enabled_for_new_repositories";
       description = Prop.computed __type __id "description";
       email = Prop.computed __type __id "email";
       has_organization_projects =
         Prop.computed __type __id "has_organization_projects";
       has_repository_projects =
         Prop.computed __type __id "has_repository_projects";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       members_can_create_internal_repositories =
         Prop.computed __type __id
           "members_can_create_internal_repositories";
       members_can_create_pages =
         Prop.computed __type __id "members_can_create_pages";
       members_can_create_private_pages =
         Prop.computed __type __id "members_can_create_private_pages";
       members_can_create_private_repositories =
         Prop.computed __type __id
           "members_can_create_private_repositories";
       members_can_create_public_pages =
         Prop.computed __type __id "members_can_create_public_pages";
       members_can_create_public_repositories =
         Prop.computed __type __id
           "members_can_create_public_repositories";
       members_can_create_repositories =
         Prop.computed __type __id "members_can_create_repositories";
       members_can_fork_private_repositories =
         Prop.computed __type __id
           "members_can_fork_private_repositories";
       name = Prop.computed __type __id "name";
       secret_scanning_enabled_for_new_repositories =
         Prop.computed __type __id
           "secret_scanning_enabled_for_new_repositories";
       secret_scanning_push_protection_enabled_for_new_repositories =
         Prop.computed __type __id
           "secret_scanning_push_protection_enabled_for_new_repositories";
       twitter_username =
         Prop.computed __type __id "twitter_username";
       web_commit_signoff_required =
         Prop.computed __type __id "web_commit_signoff_required";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_organization_settings
        (github_organization_settings
           ?advanced_security_enabled_for_new_repositories ?blog
           ?company ?default_repository_permission
           ?dependabot_alerts_enabled_for_new_repositories
           ?dependabot_security_updates_enabled_for_new_repositories
           ?dependency_graph_enabled_for_new_repositories
           ?description ?email ?has_organization_projects
           ?has_repository_projects ?id ?location
           ?members_can_create_internal_repositories
           ?members_can_create_pages
           ?members_can_create_private_pages
           ?members_can_create_private_repositories
           ?members_can_create_public_pages
           ?members_can_create_public_repositories
           ?members_can_create_repositories
           ?members_can_fork_private_repositories ?name
           ?secret_scanning_enabled_for_new_repositories
           ?secret_scanning_push_protection_enabled_for_new_repositories
           ?twitter_username ?web_commit_signoff_required
           ~billing_email ());
    attrs = __attrs;
  }

let register ?tf_module
    ?advanced_security_enabled_for_new_repositories ?blog ?company
    ?default_repository_permission
    ?dependabot_alerts_enabled_for_new_repositories
    ?dependabot_security_updates_enabled_for_new_repositories
    ?dependency_graph_enabled_for_new_repositories ?description
    ?email ?has_organization_projects ?has_repository_projects ?id
    ?location ?members_can_create_internal_repositories
    ?members_can_create_pages ?members_can_create_private_pages
    ?members_can_create_private_repositories
    ?members_can_create_public_pages
    ?members_can_create_public_repositories
    ?members_can_create_repositories
    ?members_can_fork_private_repositories ?name
    ?secret_scanning_enabled_for_new_repositories
    ?secret_scanning_push_protection_enabled_for_new_repositories
    ?twitter_username ?web_commit_signoff_required ~billing_email
    __id =
  let (r : _ Tf_core.resource) =
    make ?advanced_security_enabled_for_new_repositories ?blog
      ?company ?default_repository_permission
      ?dependabot_alerts_enabled_for_new_repositories
      ?dependabot_security_updates_enabled_for_new_repositories
      ?dependency_graph_enabled_for_new_repositories ?description
      ?email ?has_organization_projects ?has_repository_projects ?id
      ?location ?members_can_create_internal_repositories
      ?members_can_create_pages ?members_can_create_private_pages
      ?members_can_create_private_repositories
      ?members_can_create_public_pages
      ?members_can_create_public_repositories
      ?members_can_create_repositories
      ?members_can_fork_private_repositories ?name
      ?secret_scanning_enabled_for_new_repositories
      ?secret_scanning_push_protection_enabled_for_new_repositories
      ?twitter_username ?web_commit_signoff_required ~billing_email
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
