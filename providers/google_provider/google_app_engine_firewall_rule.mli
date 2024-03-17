(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_app_engine_firewall_rule__timeouts
type google_app_engine_firewall_rule

val google_app_engine_firewall_rule :
  ?description:string ->
  ?priority:float ->
  ?timeouts:google_app_engine_firewall_rule__timeouts ->
  action:string ->
  source_range:string ->
  string ->
  unit
