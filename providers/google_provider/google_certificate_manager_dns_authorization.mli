(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_certificate_manager_dns_authorization__timeouts

type google_certificate_manager_dns_authorization__dns_resource_record = {
  data : string prop;  (** data *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type google_certificate_manager_dns_authorization

val google_certificate_manager_dns_authorization :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:google_certificate_manager_dns_authorization__timeouts ->
  domain:string prop ->
  name:string prop ->
  string ->
  unit
