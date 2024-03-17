(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_scc_mute_config__timeouts
type google_scc_mute_config

type t = private {
  create_time : string prop;
  description : string prop;
  filter : string prop;
  id : string prop;
  most_recent_editor : string prop;
  mute_config_id : string prop;
  name : string prop;
  parent : string prop;
  update_time : string prop;
}

val google_scc_mute_config :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:google_scc_mute_config__timeouts ->
  filter:string prop ->
  mute_config_id:string prop ->
  parent:string prop ->
  string ->
  t
