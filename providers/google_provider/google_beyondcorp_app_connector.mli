(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_beyondcorp_app_connector__principal_info__service_account
type google_beyondcorp_app_connector__principal_info
type google_beyondcorp_app_connector__timeouts
type google_beyondcorp_app_connector

val google_beyondcorp_app_connector :
  ?display_name:string ->
  ?labels:(string * string) list ->
  ?region:string ->
  ?timeouts:google_beyondcorp_app_connector__timeouts ->
  name:string ->
  principal_info:google_beyondcorp_app_connector__principal_info list ->
  string ->
  unit
