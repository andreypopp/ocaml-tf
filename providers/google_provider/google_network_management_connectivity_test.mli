(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_management_connectivity_test__destination
type google_network_management_connectivity_test__source
type google_network_management_connectivity_test__timeouts
type google_network_management_connectivity_test

type t = private {
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  protocol : string prop;
  related_projects : string list prop;
  terraform_labels : (string * string) list prop;
}

val google_network_management_connectivity_test :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?protocol:string prop ->
  ?related_projects:string prop list ->
  ?timeouts:google_network_management_connectivity_test__timeouts ->
  name:string prop ->
  destination:
    google_network_management_connectivity_test__destination list ->
  source:google_network_management_connectivity_test__source list ->
  string ->
  t
