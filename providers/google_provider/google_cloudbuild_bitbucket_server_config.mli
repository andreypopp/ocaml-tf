(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudbuild_bitbucket_server_config__connected_repositories
type google_cloudbuild_bitbucket_server_config__secrets
type google_cloudbuild_bitbucket_server_config__timeouts
type google_cloudbuild_bitbucket_server_config

type t = private {
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

val google_cloudbuild_bitbucket_server_config :
  ?id:string prop ->
  ?peered_network:string prop ->
  ?project:string prop ->
  ?ssl_ca:string prop ->
  ?timeouts:google_cloudbuild_bitbucket_server_config__timeouts ->
  api_key:string prop ->
  config_id:string prop ->
  host_uri:string prop ->
  location:string prop ->
  username:string prop ->
  connected_repositories:
    google_cloudbuild_bitbucket_server_config__connected_repositories
    list ->
  secrets:google_cloudbuild_bitbucket_server_config__secrets list ->
  string ->
  t
