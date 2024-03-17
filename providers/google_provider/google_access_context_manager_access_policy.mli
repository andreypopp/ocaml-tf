(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_access_context_manager_access_policy__timeouts
type google_access_context_manager_access_policy

val google_access_context_manager_access_policy :
  ?id:string prop ->
  ?scopes:string prop list ->
  ?timeouts:google_access_context_manager_access_policy__timeouts ->
  parent:string prop ->
  title:string prop ->
  string ->
  unit
