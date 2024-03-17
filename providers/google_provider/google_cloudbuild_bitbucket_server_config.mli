(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudbuild_bitbucket_server_config__connected_repositories
type google_cloudbuild_bitbucket_server_config__secrets
type google_cloudbuild_bitbucket_server_config__timeouts
type google_cloudbuild_bitbucket_server_config

val google_cloudbuild_bitbucket_server_config :
  ?peered_network:string ->
  ?ssl_ca:string ->
  ?timeouts:google_cloudbuild_bitbucket_server_config__timeouts ->
  api_key:string ->
  config_id:string ->
  host_uri:string ->
  location:string ->
  username:string ->
  connected_repositories:
    google_cloudbuild_bitbucket_server_config__connected_repositories
    list ->
  secrets:google_cloudbuild_bitbucket_server_config__secrets list ->
  string ->
  unit
