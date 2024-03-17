(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_access_context_manager_egress_policy__timeouts
type google_access_context_manager_egress_policy

type t = private {
  egress_policy_name : string prop;
  id : string prop;
  resource : string prop;
}

val google_access_context_manager_egress_policy :
  ?id:string prop ->
  ?timeouts:google_access_context_manager_egress_policy__timeouts ->
  egress_policy_name:string prop ->
  resource:string prop ->
  string ->
  t
