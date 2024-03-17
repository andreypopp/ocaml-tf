(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_certificate_manager_certificate_issuance_config__certificate_authority_config__certificate_authority_service_config

type google_certificate_manager_certificate_issuance_config__certificate_authority_config

type google_certificate_manager_certificate_issuance_config__timeouts
type google_certificate_manager_certificate_issuance_config

val google_certificate_manager_certificate_issuance_config :
  ?description:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?location:string ->
  ?project:string ->
  ?timeouts:
    google_certificate_manager_certificate_issuance_config__timeouts ->
  key_algorithm:string ->
  lifetime:string ->
  name:string ->
  rotation_window_percentage:float ->
  certificate_authority_config:
    google_certificate_manager_certificate_issuance_config__certificate_authority_config
    list ->
  string ->
  unit
