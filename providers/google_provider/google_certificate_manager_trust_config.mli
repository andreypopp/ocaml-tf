(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_certificate_manager_trust_config__timeouts

type google_certificate_manager_trust_config__trust_stores__intermediate_cas

type google_certificate_manager_trust_config__trust_stores__trust_anchors

type google_certificate_manager_trust_config__trust_stores
type google_certificate_manager_trust_config

val google_certificate_manager_trust_config :
  ?description:string ->
  ?labels:(string * string) list ->
  ?timeouts:google_certificate_manager_trust_config__timeouts ->
  location:string ->
  name:string ->
  trust_stores:
    google_certificate_manager_trust_config__trust_stores list ->
  string ->
  unit
