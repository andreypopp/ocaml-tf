(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_certificate_manager_certificate_issuance_config__certificate_authority_config__certificate_authority_service_config

type google_certificate_manager_certificate_issuance_config__certificate_authority_config

type google_certificate_manager_certificate_issuance_config__timeouts
type google_certificate_manager_certificate_issuance_config

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
  unit
