(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudbuildv2_connection__github_config__authorizer_credential

type google_cloudbuildv2_connection__github_config

type google_cloudbuildv2_connection__github_enterprise_config__service_directory_config

type google_cloudbuildv2_connection__github_enterprise_config

type google_cloudbuildv2_connection__gitlab_config__authorizer_credential

type google_cloudbuildv2_connection__gitlab_config__read_authorizer_credential

type google_cloudbuildv2_connection__gitlab_config__service_directory_config

type google_cloudbuildv2_connection__gitlab_config
type google_cloudbuildv2_connection__timeouts

type google_cloudbuildv2_connection__installation_state = {
  action_uri : string;  (** action_uri *)
  message : string;  (** message *)
  stage : string;  (** stage *)
}

type google_cloudbuildv2_connection

val google_cloudbuildv2_connection :
  ?annotations:(string * string) list ->
  ?disabled:bool ->
  ?id:string ->
  ?project:string ->
  ?timeouts:google_cloudbuildv2_connection__timeouts ->
  location:string ->
  name:string ->
  github_config:google_cloudbuildv2_connection__github_config list ->
  github_enterprise_config:
    google_cloudbuildv2_connection__github_enterprise_config list ->
  gitlab_config:google_cloudbuildv2_connection__gitlab_config list ->
  string ->
  unit
