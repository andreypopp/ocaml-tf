(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ip_sets = {
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ip_addresses *)
  ip_family : string prop;  (** ip_family *)
}

type attributes

val attributes :
  ?flow_logs_enabled:bool prop ->
  ?flow_logs_s3_bucket:string prop ->
  ?flow_logs_s3_prefix:string prop ->
  unit ->
  attributes

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type aws_globalaccelerator_custom_routing_accelerator

val aws_globalaccelerator_custom_routing_accelerator :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?ip_addresses:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?attributes:attributes list ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  aws_globalaccelerator_custom_routing_accelerator

val yojson_of_aws_globalaccelerator_custom_routing_accelerator :
  aws_globalaccelerator_custom_routing_accelerator -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dns_name : string prop;
  enabled : bool prop;
  hosted_zone_id : string prop;
  id : string prop;
  ip_address_type : string prop;
  ip_addresses : string list prop;
  ip_sets : ip_sets list prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?ip_addresses:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?attributes:attributes list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?ip_addresses:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?attributes:attributes list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
