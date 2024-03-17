(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_endpoint__dns_options
type aws_vpc_endpoint__timeouts

type aws_vpc_endpoint__dns_entry = {
  dns_name : string prop;  (** dns_name *)
  hosted_zone_id : string prop;  (** hosted_zone_id *)
}

type aws_vpc_endpoint

val aws_vpc_endpoint :
  ?auto_accept:bool prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?policy:string prop ->
  ?private_dns_enabled:bool prop ->
  ?route_table_ids:string prop list ->
  ?security_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_endpoint_type:string prop ->
  ?timeouts:aws_vpc_endpoint__timeouts ->
  service_name:string prop ->
  vpc_id:string prop ->
  dns_options:aws_vpc_endpoint__dns_options list ->
  string ->
  unit
