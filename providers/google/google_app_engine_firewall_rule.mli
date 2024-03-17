(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_app_engine_firewall_rule__timeouts
type google_app_engine_firewall_rule

type t = private {
  action : string prop;
  description : string prop;
  id : string prop;
  priority : float prop;
  project : string prop;
  source_range : string prop;
}

val google_app_engine_firewall_rule :
  ?description:string prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?project:string prop ->
  ?timeouts:google_app_engine_firewall_rule__timeouts ->
  action:string prop ->
  source_range:string prop ->
  string ->
  t
