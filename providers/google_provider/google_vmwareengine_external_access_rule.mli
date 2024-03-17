(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_external_access_rule__destination_ip_ranges
type google_vmwareengine_external_access_rule__source_ip_ranges
type google_vmwareengine_external_access_rule__timeouts
type google_vmwareengine_external_access_rule

val google_vmwareengine_external_access_rule :
  ?description:string ->
  ?id:string ->
  ?timeouts:google_vmwareengine_external_access_rule__timeouts ->
  action:string ->
  destination_ports:string list ->
  ip_protocol:string ->
  name:string ->
  parent:string ->
  priority:float ->
  source_ports:string list ->
  destination_ip_ranges:
    google_vmwareengine_external_access_rule__destination_ip_ranges
    list ->
  source_ip_ranges:
    google_vmwareengine_external_access_rule__source_ip_ranges list ->
  string ->
  unit
