(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_beyondcorp_app_connector__principal_info__service_account
type google_beyondcorp_app_connector__principal_info
type google_beyondcorp_app_connector__timeouts
type google_beyondcorp_app_connector

type t = private {
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

val google_beyondcorp_app_connector :
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_beyondcorp_app_connector__timeouts ->
  name:string prop ->
  principal_info:google_beyondcorp_app_connector__principal_info list ->
  string ->
  t
