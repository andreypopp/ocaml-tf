(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_management_connectivity_test__destination
type google_network_management_connectivity_test__source
type google_network_management_connectivity_test__timeouts
type google_network_management_connectivity_test

val google_network_management_connectivity_test :
  ?description:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?protocol:string ->
  ?related_projects:string list ->
  ?timeouts:google_network_management_connectivity_test__timeouts ->
  name:string ->
  destination:
    google_network_management_connectivity_test__destination list ->
  source:google_network_management_connectivity_test__source list ->
  string ->
  unit
