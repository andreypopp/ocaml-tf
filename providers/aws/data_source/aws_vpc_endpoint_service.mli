(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_vpc_endpoint_service

val aws_vpc_endpoint_service :
  ?id:string prop ->
  ?service:string prop ->
  ?service_name:string prop ->
  ?service_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_vpc_endpoint_service

val yojson_of_aws_vpc_endpoint_service :
  aws_vpc_endpoint_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  acceptance_required : bool prop;
  arn : string prop;
  availability_zones : string list prop;
  base_endpoint_dns_names : string list prop;
  id : string prop;
  manages_vpc_endpoints : bool prop;
  owner : string prop;
  private_dns_name : string prop;
  service : string prop;
  service_id : string prop;
  service_name : string prop;
  service_type : string prop;
  supported_ip_address_types : string list prop;
  tags : (string * string) list prop;
  vpc_endpoint_policy_supported : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?service:string prop ->
  ?service_name:string prop ->
  ?service_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?service:string prop ->
  ?service_name:string prop ->
  ?service_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
