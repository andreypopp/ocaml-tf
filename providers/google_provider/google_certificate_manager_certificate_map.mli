(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_certificate_manager_certificate_map__timeouts

type google_certificate_manager_certificate_map__gclb_targets__ip_configs = {
  ip_address : string;  (** ip_address *)
  ports : float list;  (** ports *)
}

type google_certificate_manager_certificate_map__gclb_targets = {
  ip_configs :
    google_certificate_manager_certificate_map__gclb_targets__ip_configs
    list;
      (** ip_configs *)
  target_https_proxy : string;  (** target_https_proxy *)
  target_ssl_proxy : string;  (** target_ssl_proxy *)
}

type google_certificate_manager_certificate_map

val google_certificate_manager_certificate_map :
  ?description:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?timeouts:google_certificate_manager_certificate_map__timeouts ->
  name:string ->
  string ->
  unit
