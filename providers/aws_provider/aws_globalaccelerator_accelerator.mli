(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_globalaccelerator_accelerator__attributes
type aws_globalaccelerator_accelerator__timeouts

type aws_globalaccelerator_accelerator__ip_sets = {
  ip_addresses : string list;  (** ip_addresses *)
  ip_family : string;  (** ip_family *)
}

type aws_globalaccelerator_accelerator

val aws_globalaccelerator_accelerator :
  ?enabled:bool ->
  ?id:string ->
  ?ip_address_type:string ->
  ?ip_addresses:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_globalaccelerator_accelerator__timeouts ->
  name:string ->
  attributes:aws_globalaccelerator_accelerator__attributes list ->
  string ->
  unit
