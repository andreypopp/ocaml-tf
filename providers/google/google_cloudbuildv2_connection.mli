(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type installation_state = {
  action_uri : string prop;  (** action_uri *)
  message : string prop;  (** message *)
  stage : string prop;  (** stage *)
}

type bitbucket_cloud_config__authorizer_credential

val bitbucket_cloud_config__authorizer_credential :
  user_token_secret_version:string prop ->
  unit ->
  bitbucket_cloud_config__authorizer_credential

type bitbucket_cloud_config__read_authorizer_credential

val bitbucket_cloud_config__read_authorizer_credential :
  user_token_secret_version:string prop ->
  unit ->
  bitbucket_cloud_config__read_authorizer_credential

type bitbucket_cloud_config

val bitbucket_cloud_config :
  webhook_secret_secret_version:string prop ->
  workspace:string prop ->
  authorizer_credential:
    bitbucket_cloud_config__authorizer_credential list ->
  read_authorizer_credential:
    bitbucket_cloud_config__read_authorizer_credential list ->
  unit ->
  bitbucket_cloud_config

type bitbucket_data_center_config__authorizer_credential

val bitbucket_data_center_config__authorizer_credential :
  user_token_secret_version:string prop ->
  unit ->
  bitbucket_data_center_config__authorizer_credential

type bitbucket_data_center_config__read_authorizer_credential

val bitbucket_data_center_config__read_authorizer_credential :
  user_token_secret_version:string prop ->
  unit ->
  bitbucket_data_center_config__read_authorizer_credential

type bitbucket_data_center_config__service_directory_config

val bitbucket_data_center_config__service_directory_config :
  service:string prop ->
  unit ->
  bitbucket_data_center_config__service_directory_config

type bitbucket_data_center_config

val bitbucket_data_center_config :
  ?ssl_ca:string prop ->
  ?service_directory_config:
    bitbucket_data_center_config__service_directory_config list ->
  host_uri:string prop ->
  webhook_secret_secret_version:string prop ->
  authorizer_credential:
    bitbucket_data_center_config__authorizer_credential list ->
  read_authorizer_credential:
    bitbucket_data_center_config__read_authorizer_credential list ->
  unit ->
  bitbucket_data_center_config

type github_config__authorizer_credential

val github_config__authorizer_credential :
  ?oauth_token_secret_version:string prop ->
  unit ->
  github_config__authorizer_credential

type github_config

val github_config :
  ?app_installation_id:float prop ->
  ?authorizer_credential:github_config__authorizer_credential list ->
  unit ->
  github_config

type github_enterprise_config__service_directory_config

val github_enterprise_config__service_directory_config :
  service:string prop ->
  unit ->
  github_enterprise_config__service_directory_config

type github_enterprise_config

val github_enterprise_config :
  ?app_id:float prop ->
  ?app_installation_id:float prop ->
  ?app_slug:string prop ->
  ?private_key_secret_version:string prop ->
  ?ssl_ca:string prop ->
  ?webhook_secret_secret_version:string prop ->
  ?service_directory_config:
    github_enterprise_config__service_directory_config list ->
  host_uri:string prop ->
  unit ->
  github_enterprise_config

type gitlab_config__authorizer_credential

val gitlab_config__authorizer_credential :
  user_token_secret_version:string prop ->
  unit ->
  gitlab_config__authorizer_credential

type gitlab_config__read_authorizer_credential

val gitlab_config__read_authorizer_credential :
  user_token_secret_version:string prop ->
  unit ->
  gitlab_config__read_authorizer_credential

type gitlab_config__service_directory_config

val gitlab_config__service_directory_config :
  service:string prop ->
  unit ->
  gitlab_config__service_directory_config

type gitlab_config

val gitlab_config :
  ?host_uri:string prop ->
  ?ssl_ca:string prop ->
  ?service_directory_config:
    gitlab_config__service_directory_config list ->
  webhook_secret_secret_version:string prop ->
  authorizer_credential:gitlab_config__authorizer_credential list ->
  read_authorizer_credential:
    gitlab_config__read_authorizer_credential list ->
  unit ->
  gitlab_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_cloudbuildv2_connection

val google_cloudbuildv2_connection :
  ?annotations:string prop Tf_core.assoc ->
  ?disabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?bitbucket_cloud_config:bitbucket_cloud_config list ->
  ?bitbucket_data_center_config:bitbucket_data_center_config list ->
  ?github_config:github_config list ->
  ?github_enterprise_config:github_enterprise_config list ->
  ?gitlab_config:gitlab_config list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_cloudbuildv2_connection

val yojson_of_google_cloudbuildv2_connection :
  google_cloudbuildv2_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : string Tf_core.assoc prop;
  create_time : string prop;
  disabled : bool prop;
  effective_annotations : string Tf_core.assoc prop;
  etag : string prop;
  id : string prop;
  installation_state : installation_state list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:string prop Tf_core.assoc ->
  ?disabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?bitbucket_cloud_config:bitbucket_cloud_config list ->
  ?bitbucket_data_center_config:bitbucket_data_center_config list ->
  ?github_config:github_config list ->
  ?github_enterprise_config:github_enterprise_config list ->
  ?gitlab_config:gitlab_config list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?annotations:string prop Tf_core.assoc ->
  ?disabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?bitbucket_cloud_config:bitbucket_cloud_config list ->
  ?bitbucket_data_center_config:bitbucket_data_center_config list ->
  ?github_config:github_config list ->
  ?github_enterprise_config:github_enterprise_config list ->
  ?gitlab_config:gitlab_config list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
