(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_secret_v1__metadata
type kubernetes_secret_v1__timeouts
type kubernetes_secret_v1

type t = private {
  binary_data : (string * string) list prop;
  data : (string * string) list prop;
  id : string prop;
  immutable : bool prop;
  type_ : string prop;
  wait_for_service_account_token : bool prop;
}

val kubernetes_secret_v1 :
  ?binary_data:(string * string prop) list ->
  ?data:(string * string prop) list ->
  ?id:string prop ->
  ?immutable:bool prop ->
  ?type_:string prop ->
  ?wait_for_service_account_token:bool prop ->
  ?timeouts:kubernetes_secret_v1__timeouts ->
  metadata:kubernetes_secret_v1__metadata list ->
  string ->
  t
