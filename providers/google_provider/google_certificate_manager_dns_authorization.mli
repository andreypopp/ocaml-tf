(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_certificate_manager_dns_authorization__timeouts

type google_certificate_manager_dns_authorization__dns_resource_record = {
  data : string;  (** data *)
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_certificate_manager_dns_authorization

val google_certificate_manager_dns_authorization :
  ?description:string ->
  ?labels:(string * string) list ->
  ?location:string ->
  ?timeouts:google_certificate_manager_dns_authorization__timeouts ->
  domain:string ->
  name:string ->
  string ->
  unit
