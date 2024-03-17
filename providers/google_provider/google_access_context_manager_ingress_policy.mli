(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_access_context_manager_ingress_policy__timeouts
type google_access_context_manager_ingress_policy

type t = private {
  id : string prop;
  ingress_policy_name : string prop;
  resource : string prop;
}

val google_access_context_manager_ingress_policy :
  ?id:string prop ->
  ?timeouts:google_access_context_manager_ingress_policy__timeouts ->
  ingress_policy_name:string prop ->
  resource:string prop ->
  string ->
  t
