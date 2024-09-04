(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_organization = {
  id : string prop option; [@option]
  ignore_archived_repos : bool prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_organization) -> ()

let yojson_of_github_organization =
  (function
   | {
       id = v_id;
       ignore_archived_repos = v_ignore_archived_repos;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_ignore_archived_repos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_archived_repos", arg in
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
       `Assoc bnds
    : github_organization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_organization

[@@@deriving.end]

let github_organization ?id ?ignore_archived_repos ~name () :
    github_organization =
  { id; ignore_archived_repos; name }

type t = {
  tf_name : string;
  advanced_security_enabled_for_new_repositories : bool prop;
  default_repository_permission : string prop;
  dependabot_alerts_enabled_for_new_repositories : bool prop;
  dependabot_security_updates_enabled_for_new_repositories :
    bool prop;
  dependency_graph_enabled_for_new_repositories : bool prop;
  description : string prop;
  id : string prop;
  ignore_archived_repos : bool prop;
  login : string prop;
  members : string list prop;
  members_allowed_repository_creation_type : string prop;
  members_can_create_internal_repositories : bool prop;
  members_can_create_pages : bool prop;
  members_can_create_private_pages : bool prop;
  members_can_create_private_repositories : bool prop;
  members_can_create_public_pages : bool prop;
  members_can_create_public_repositories : bool prop;
  members_can_create_repositories : bool prop;
  members_can_fork_private_repositories : bool prop;
  name : string prop;
  node_id : string prop;
  orgname : string prop;
  plan : string prop;
  repositories : string list prop;
  secret_scanning_enabled_for_new_repositories : bool prop;
  secret_scanning_push_protection_enabled_for_new_repositories :
    bool prop;
  two_factor_requirement_enabled : bool prop;
  users : string Tf_core.assoc list prop;
  web_commit_signoff_required : bool prop;
}

let make ?id ?ignore_archived_repos ~name __id =
  let __type = "github_organization" in
  let __attrs =
    ({
       tf_name = __id;
       advanced_security_enabled_for_new_repositories =
         Prop.computed __type __id
           "advanced_security_enabled_for_new_repositories";
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
       id = Prop.computed __type __id "id";
       ignore_archived_repos =
         Prop.computed __type __id "ignore_archived_repos";
       login = Prop.computed __type __id "login";
       members = Prop.computed __type __id "members";
       members_allowed_repository_creation_type =
         Prop.computed __type __id
           "members_allowed_repository_creation_type";
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
       node_id = Prop.computed __type __id "node_id";
       orgname = Prop.computed __type __id "orgname";
       plan = Prop.computed __type __id "plan";
       repositories = Prop.computed __type __id "repositories";
       secret_scanning_enabled_for_new_repositories =
         Prop.computed __type __id
           "secret_scanning_enabled_for_new_repositories";
       secret_scanning_push_protection_enabled_for_new_repositories =
         Prop.computed __type __id
           "secret_scanning_push_protection_enabled_for_new_repositories";
       two_factor_requirement_enabled =
         Prop.computed __type __id "two_factor_requirement_enabled";
       users = Prop.computed __type __id "users";
       web_commit_signoff_required =
         Prop.computed __type __id "web_commit_signoff_required";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_organization
        (github_organization ?id ?ignore_archived_repos ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ignore_archived_repos ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ignore_archived_repos ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
