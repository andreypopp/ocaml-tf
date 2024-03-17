(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_external_access_rule__destination_ip_ranges
type google_vmwareengine_external_access_rule__source_ip_ranges
type google_vmwareengine_external_access_rule__timeouts
type google_vmwareengine_external_access_rule

val google_vmwareengine_external_access_rule :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:google_vmwareengine_external_access_rule__timeouts ->
  action:string prop ->
  destination_ports:string prop list ->
  ip_protocol:string prop ->
  name:string prop ->
  parent:string prop ->
  priority:float prop ->
  source_ports:string prop list ->
  destination_ip_ranges:
    google_vmwareengine_external_access_rule__destination_ip_ranges
    list ->
  source_ip_ranges:
    google_vmwareengine_external_access_rule__source_ip_ranges list ->
  string ->
  unit
