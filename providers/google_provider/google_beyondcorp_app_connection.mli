(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_beyondcorp_app_connection__application_endpoint
type google_beyondcorp_app_connection__gateway
type google_beyondcorp_app_connection__timeouts
type google_beyondcorp_app_connection

val google_beyondcorp_app_connection :
  ?connectors:string prop list ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?type_:string prop ->
  ?timeouts:google_beyondcorp_app_connection__timeouts ->
  name:string prop ->
  application_endpoint:
    google_beyondcorp_app_connection__application_endpoint list ->
  gateway:google_beyondcorp_app_connection__gateway list ->
  string ->
  unit
