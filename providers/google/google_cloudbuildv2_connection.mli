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
  action_uri : string prop;  (** action_uri *)
  message : string prop;  (** message *)
  stage : string prop;  (** stage *)
}

type google_cloudbuildv2_connection

type t = private {
  annotations : (string * string) list prop;
  create_time : string prop;
  disabled : bool prop;
  effective_annotations : (string * string) list prop;
  etag : string prop;
  id : string prop;
  installation_state :
    google_cloudbuildv2_connection__installation_state list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  update_time : string prop;
}

val google_cloudbuildv2_connection :
  ?annotations:(string * string prop) list ->
  ?disabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_cloudbuildv2_connection__timeouts ->
  location:string prop ->
  name:string prop ->
  github_config:google_cloudbuildv2_connection__github_config list ->
  github_enterprise_config:
    google_cloudbuildv2_connection__github_enterprise_config list ->
  gitlab_config:google_cloudbuildv2_connection__gitlab_config list ->
  string ->
  t
