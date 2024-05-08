(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type attributes = {
  flow_logs_enabled : bool prop;  (** flow_logs_enabled *)
  flow_logs_s3_bucket : string prop;  (** flow_logs_s3_bucket *)
  flow_logs_s3_prefix : string prop;  (** flow_logs_s3_prefix *)
}

type ip_sets = {
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ip_addresses *)
  ip_family : string prop;  (** ip_family *)
}

type aws_globalaccelerator_accelerator

val aws_globalaccelerator_accelerator :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  unit ->
  aws_globalaccelerator_accelerator

val yojson_of_aws_globalaccelerator_accelerator :
  aws_globalaccelerator_accelerator -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  attributes : attributes list prop;
  dns_name : string prop;
  dual_stack_dns_name : string prop;
  enabled : bool prop;
  hosted_zone_id : string prop;
  id : string prop;
  ip_address_type : string prop;
  ip_sets : ip_sets list prop;
  name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t Tf_core.resource
