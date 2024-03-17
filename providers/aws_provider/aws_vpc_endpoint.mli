(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_endpoint__dns_options
type aws_vpc_endpoint__timeouts

type aws_vpc_endpoint__dns_entry = {
  dns_name : string;  (** dns_name *)
  hosted_zone_id : string;  (** hosted_zone_id *)
}
[@@deriving yojson_of]

type aws_vpc_endpoint

val aws_vpc_endpoint :
  ?auto_accept:bool ->
  ?private_dns_enabled:bool ->
  ?tags:(string * string) list ->
  ?vpc_endpoint_type:string ->
  ?timeouts:aws_vpc_endpoint__timeouts ->
  service_name:string ->
  vpc_id:string ->
  dns_options:aws_vpc_endpoint__dns_options list ->
  string ->
  unit
