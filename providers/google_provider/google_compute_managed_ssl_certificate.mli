(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_managed_ssl_certificate__managed
type google_compute_managed_ssl_certificate__timeouts
type google_compute_managed_ssl_certificate

type t = private {
  certificate_id : float prop;
  creation_timestamp : string prop;
  description : string prop;
  expire_time : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  subject_alternative_names : string list prop;
  type_ : string prop;
}

val google_compute_managed_ssl_certificate :
  ?certificate_id:float prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:google_compute_managed_ssl_certificate__timeouts ->
  managed:google_compute_managed_ssl_certificate__managed list ->
  string ->
  t
