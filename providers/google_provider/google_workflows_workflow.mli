(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_workflows_workflow__timeouts
type google_workflows_workflow

val google_workflows_workflow :
  ?call_log_level:string ->
  ?crypto_key_name:string ->
  ?labels:(string * string) list ->
  ?region:string ->
  ?source_contents:string ->
  ?user_env_vars:(string * string) list ->
  ?timeouts:google_workflows_workflow__timeouts ->
  string ->
  unit
