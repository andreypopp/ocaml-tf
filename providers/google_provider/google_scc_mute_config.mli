(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_scc_mute_config__timeouts
type google_scc_mute_config

val google_scc_mute_config :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:google_scc_mute_config__timeouts ->
  filter:string prop ->
  mute_config_id:string prop ->
  parent:string prop ->
  string ->
  unit
