(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_globalaccelerator_accelerator__attributes
type aws_globalaccelerator_accelerator__timeouts

type aws_globalaccelerator_accelerator__ip_sets = {
  ip_addresses : string prop list;  (** ip_addresses *)
  ip_family : string prop;  (** ip_family *)
}

type aws_globalaccelerator_accelerator

type t = private {
  dns_name : string prop;
  dual_stack_dns_name : string prop;
  enabled : bool prop;
  hosted_zone_id : string prop;
  id : string prop;
  ip_address_type : string prop;
  ip_addresses : string list prop;
  ip_sets : aws_globalaccelerator_accelerator__ip_sets list prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_globalaccelerator_accelerator :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?ip_addresses:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_globalaccelerator_accelerator__timeouts ->
  name:string prop ->
  attributes:aws_globalaccelerator_accelerator__attributes list ->
  string ->
  t
