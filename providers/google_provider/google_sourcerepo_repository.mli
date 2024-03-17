(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_sourcerepo_repository__pubsub_configs
type google_sourcerepo_repository__timeouts
type google_sourcerepo_repository

val google_sourcerepo_repository :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_sourcerepo_repository__timeouts ->
  name:string prop ->
  pubsub_configs:google_sourcerepo_repository__pubsub_configs list ->
  string ->
  unit
