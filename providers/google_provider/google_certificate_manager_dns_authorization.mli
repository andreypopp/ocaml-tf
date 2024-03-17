(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_certificate_manager_dns_authorization__timeouts

type google_certificate_manager_dns_authorization__dns_resource_record = {
  data : string;  (** data *)
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
}

type google_certificate_manager_dns_authorization

val google_certificate_manager_dns_authorization :
  ?description:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?location:string ->
  ?project:string ->
  ?type_:string ->
  ?timeouts:google_certificate_manager_dns_authorization__timeouts ->
  domain:string ->
  name:string ->
  string ->
  unit
