(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type connected_repositories

val connected_repositories :
  project_key:string prop ->
  repo_slug:string prop ->
  unit ->
  connected_repositories

type secrets

val secrets :
  admin_access_token_version_name:string prop ->
  read_access_token_version_name:string prop ->
  webhook_secret_version_name:string prop ->
  unit ->
  secrets

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_cloudbuild_bitbucket_server_config

val google_cloudbuild_bitbucket_server_config :
  ?id:string prop ->
  ?peered_network:string prop ->
  ?project:string prop ->
  ?ssl_ca:string prop ->
  ?timeouts:timeouts ->
  api_key:string prop ->
  config_id:string prop ->
  host_uri:string prop ->
  location:string prop ->
  username:string prop ->
  connected_repositories:connected_repositories list ->
  secrets:secrets list ->
  unit ->
  google_cloudbuild_bitbucket_server_config

val yojson_of_google_cloudbuild_bitbucket_server_config :
  google_cloudbuild_bitbucket_server_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_key : string prop;
  config_id : string prop;
  host_uri : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  peered_network : string prop;
  project : string prop;
  ssl_ca : string prop;
  username : string prop;
  webhook_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?peered_network:string prop ->
  ?project:string prop ->
  ?ssl_ca:string prop ->
  ?timeouts:timeouts ->
  api_key:string prop ->
  config_id:string prop ->
  host_uri:string prop ->
  location:string prop ->
  username:string prop ->
  connected_repositories:connected_repositories list ->
  secrets:secrets list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?peered_network:string prop ->
  ?project:string prop ->
  ?ssl_ca:string prop ->
  ?timeouts:timeouts ->
  api_key:string prop ->
  config_id:string prop ->
  host_uri:string prop ->
  location:string prop ->
  username:string prop ->
  connected_repositories:connected_repositories list ->
  secrets:secrets list ->
  string ->
  t Tf_core.resource
