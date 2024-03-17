(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_sourcerepo_repository__pubsub_configs
type google_sourcerepo_repository__timeouts
type google_sourcerepo_repository

type t = private {
  id : string prop;
  name : string prop;
  project : string prop;
  size : float prop;
  url : string prop;
}

val google_sourcerepo_repository :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_sourcerepo_repository__timeouts ->
  name:string prop ->
  pubsub_configs:google_sourcerepo_repository__pubsub_configs list ->
  string ->
  t
