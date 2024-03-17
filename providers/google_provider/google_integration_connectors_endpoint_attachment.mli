(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_integration_connectors_endpoint_attachment__timeouts
type google_integration_connectors_endpoint_attachment

val google_integration_connectors_endpoint_attachment :
  ?description:string ->
  ?labels:(string * string) list ->
  ?timeouts:
    google_integration_connectors_endpoint_attachment__timeouts ->
  location:string ->
  name:string ->
  service_attachment:string ->
  string ->
  unit
