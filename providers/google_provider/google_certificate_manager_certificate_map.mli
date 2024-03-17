(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_certificate_manager_certificate_map__timeouts

type google_certificate_manager_certificate_map__gclb_targets__ip_configs = {
  ip_address : string prop;  (** ip_address *)
  ports : float prop list;  (** ports *)
}

type google_certificate_manager_certificate_map__gclb_targets = {
  ip_configs :
    google_certificate_manager_certificate_map__gclb_targets__ip_configs
    list;
      (** ip_configs *)
  target_https_proxy : string prop;  (** target_https_proxy *)
  target_ssl_proxy : string prop;  (** target_ssl_proxy *)
}

type google_certificate_manager_certificate_map

val google_certificate_manager_certificate_map :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_certificate_manager_certificate_map__timeouts ->
  name:string prop ->
  string ->
  unit
