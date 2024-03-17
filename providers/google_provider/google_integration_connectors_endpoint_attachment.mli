(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_integration_connectors_endpoint_attachment__timeouts
type google_integration_connectors_endpoint_attachment

val google_integration_connectors_endpoint_attachment :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:
    google_integration_connectors_endpoint_attachment__timeouts ->
  location:string prop ->
  name:string prop ->
  service_attachment:string prop ->
  string ->
  unit
