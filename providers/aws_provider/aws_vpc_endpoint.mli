(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_endpoint__dns_options
type aws_vpc_endpoint__timeouts

type aws_vpc_endpoint__dns_entry = {
  dns_name : string;  (** dns_name *)
  hosted_zone_id : string;  (** hosted_zone_id *)
}

type aws_vpc_endpoint

val aws_vpc_endpoint :
  ?auto_accept:bool ->
  ?id:string ->
  ?ip_address_type:string ->
  ?policy:string ->
  ?private_dns_enabled:bool ->
  ?route_table_ids:string list ->
  ?security_group_ids:string list ->
  ?subnet_ids:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?vpc_endpoint_type:string ->
  ?timeouts:aws_vpc_endpoint__timeouts ->
  service_name:string ->
  vpc_id:string ->
  dns_options:aws_vpc_endpoint__dns_options list ->
  string ->
  unit
