(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_organization_settings

val github_organization_settings :
  ?advanced_security_enabled_for_new_repositories:bool prop ->
  ?blog:string prop ->
  ?company:string prop ->
  ?default_repository_permission:string prop ->
  ?dependabot_alerts_enabled_for_new_repositories:bool prop ->
  ?dependabot_security_updates_enabled_for_new_repositories:bool prop ->
  ?dependency_graph_enabled_for_new_repositories:bool prop ->
  ?description:string prop ->
  ?email:string prop ->
  ?has_organization_projects:bool prop ->
  ?has_repository_projects:bool prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?members_can_create_internal_repositories:bool prop ->
  ?members_can_create_pages:bool prop ->
  ?members_can_create_private_pages:bool prop ->
  ?members_can_create_private_repositories:bool prop ->
  ?members_can_create_public_pages:bool prop ->
  ?members_can_create_public_repositories:bool prop ->
  ?members_can_create_repositories:bool prop ->
  ?members_can_fork_private_repositories:bool prop ->
  ?name:string prop ->
  ?secret_scanning_enabled_for_new_repositories:bool prop ->
  ?secret_scanning_push_protection_enabled_for_new_repositories:
    bool prop ->
  ?twitter_username:string prop ->
  ?web_commit_signoff_required:bool prop ->
  billing_email:string prop ->
  unit ->
  github_organization_settings

val yojson_of_github_organization_settings :
  github_organization_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?advanced_security_enabled_for_new_repositories:bool prop ->
  ?blog:string prop ->
  ?company:string prop ->
  ?default_repository_permission:string prop ->
  ?dependabot_alerts_enabled_for_new_repositories:bool prop ->
  ?dependabot_security_updates_enabled_for_new_repositories:bool prop ->
  ?dependency_graph_enabled_for_new_repositories:bool prop ->
  ?description:string prop ->
  ?email:string prop ->
  ?has_organization_projects:bool prop ->
  ?has_repository_projects:bool prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?members_can_create_internal_repositories:bool prop ->
  ?members_can_create_pages:bool prop ->
  ?members_can_create_private_pages:bool prop ->
  ?members_can_create_private_repositories:bool prop ->
  ?members_can_create_public_pages:bool prop ->
  ?members_can_create_public_repositories:bool prop ->
  ?members_can_create_repositories:bool prop ->
  ?members_can_fork_private_repositories:bool prop ->
  ?name:string prop ->
  ?secret_scanning_enabled_for_new_repositories:bool prop ->
  ?secret_scanning_push_protection_enabled_for_new_repositories:
    bool prop ->
  ?twitter_username:string prop ->
  ?web_commit_signoff_required:bool prop ->
  billing_email:string prop ->
  string ->
  t

val make :
  ?advanced_security_enabled_for_new_repositories:bool prop ->
  ?blog:string prop ->
  ?company:string prop ->
  ?default_repository_permission:string prop ->
  ?dependabot_alerts_enabled_for_new_repositories:bool prop ->
  ?dependabot_security_updates_enabled_for_new_repositories:bool prop ->
  ?dependency_graph_enabled_for_new_repositories:bool prop ->
  ?description:string prop ->
  ?email:string prop ->
  ?has_organization_projects:bool prop ->
  ?has_repository_projects:bool prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?members_can_create_internal_repositories:bool prop ->
  ?members_can_create_pages:bool prop ->
  ?members_can_create_private_pages:bool prop ->
  ?members_can_create_private_repositories:bool prop ->
  ?members_can_create_public_pages:bool prop ->
  ?members_can_create_public_repositories:bool prop ->
  ?members_can_create_repositories:bool prop ->
  ?members_can_fork_private_repositories:bool prop ->
  ?name:string prop ->
  ?secret_scanning_enabled_for_new_repositories:bool prop ->
  ?secret_scanning_push_protection_enabled_for_new_repositories:
    bool prop ->
  ?twitter_username:string prop ->
  ?web_commit_signoff_required:bool prop ->
  billing_email:string prop ->
  string ->
  t Tf_core.resource
