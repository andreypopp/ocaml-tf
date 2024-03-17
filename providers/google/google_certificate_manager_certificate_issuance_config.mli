(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_certificate_manager_certificate_issuance_config__certificate_authority_config__certificate_authority_service_config

type google_certificate_manager_certificate_issuance_config__certificate_authority_config

type google_certificate_manager_certificate_issuance_config__timeouts
type google_certificate_manager_certificate_issuance_config

type t = private {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  key_algorithm : string prop;
  labels : (string * string) list prop;
  lifetime : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  rotation_window_percentage : float prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val google_certificate_manager_certificate_issuance_config :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:
    google_certificate_manager_certificate_issuance_config__timeouts ->
  key_algorithm:string prop ->
  lifetime:string prop ->
  name:string prop ->
  rotation_window_percentage:float prop ->
  certificate_authority_config:
    google_certificate_manager_certificate_issuance_config__certificate_authority_config
    list ->
  string ->
  t
