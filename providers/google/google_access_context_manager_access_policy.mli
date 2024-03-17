(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_access_context_manager_access_policy__timeouts
type google_access_context_manager_access_policy

type t = private {
  create_time : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  scopes : string list prop;
  title : string prop;
  update_time : string prop;
}

val google_access_context_manager_access_policy :
  ?id:string prop ->
  ?scopes:string prop list ->
  ?timeouts:google_access_context_manager_access_policy__timeouts ->
  parent:string prop ->
  title:string prop ->
  string ->
  t
