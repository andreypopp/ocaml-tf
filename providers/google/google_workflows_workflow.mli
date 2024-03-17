(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_workflows_workflow__timeouts
type google_workflows_workflow

type t = private {
  call_log_level : string prop;
  create_time : string prop;
  crypto_key_name : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  name_prefix : string prop;
  project : string prop;
  region : string prop;
  revision_id : string prop;
  service_account : string prop;
  source_contents : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  user_env_vars : (string * string) list prop;
}

val google_workflows_workflow :
  ?call_log_level:string prop ->
  ?crypto_key_name:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?service_account:string prop ->
  ?source_contents:string prop ->
  ?user_env_vars:(string * string prop) list ->
  ?timeouts:google_workflows_workflow__timeouts ->
  string ->
  t
