(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_workflows_workflow__timeouts
type google_workflows_workflow

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
  unit
