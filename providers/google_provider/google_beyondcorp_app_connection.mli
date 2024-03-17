(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_beyondcorp_app_connection__application_endpoint
type google_beyondcorp_app_connection__gateway
type google_beyondcorp_app_connection__timeouts
type google_beyondcorp_app_connection

val google_beyondcorp_app_connection :
  ?connectors:string list ->
  ?display_name:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?region:string ->
  ?type_:string ->
  ?timeouts:google_beyondcorp_app_connection__timeouts ->
  name:string ->
  application_endpoint:
    google_beyondcorp_app_connection__application_endpoint list ->
  gateway:google_beyondcorp_app_connection__gateway list ->
  string ->
  unit
