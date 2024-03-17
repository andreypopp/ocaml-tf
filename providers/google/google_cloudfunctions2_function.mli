(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudfunctions2_function__build_config__source__repo_source

type google_cloudfunctions2_function__build_config__source__storage_source

type google_cloudfunctions2_function__build_config__source
type google_cloudfunctions2_function__build_config
type google_cloudfunctions2_function__event_trigger__event_filters
type google_cloudfunctions2_function__event_trigger

type google_cloudfunctions2_function__service_config__secret_environment_variables

type google_cloudfunctions2_function__service_config__secret_volumes__versions

type google_cloudfunctions2_function__service_config__secret_volumes
type google_cloudfunctions2_function__service_config
type google_cloudfunctions2_function__timeouts
type google_cloudfunctions2_function

type t = private {
  description : string prop;
  effective_labels : (string * string) list prop;
  environment : string prop;
  id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  url : string prop;
}

val google_cloudfunctions2_function :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_cloudfunctions2_function__timeouts ->
  location:string prop ->
  name:string prop ->
  build_config:google_cloudfunctions2_function__build_config list ->
  event_trigger:google_cloudfunctions2_function__event_trigger list ->
  service_config:google_cloudfunctions2_function__service_config list ->
  string ->
  t
