(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_globalaccelerator_accelerator__attributes
type aws_globalaccelerator_accelerator__timeouts

type aws_globalaccelerator_accelerator__ip_sets = {
  ip_addresses : string list;  (** ip_addresses *)
  ip_family : string;  (** ip_family *)
}
[@@deriving yojson_of]

type aws_globalaccelerator_accelerator

val aws_globalaccelerator_accelerator :
  ?enabled:bool ->
  ?ip_address_type:string ->
  ?ip_addresses:string list ->
  ?tags:(string * string) list ->
  ?timeouts:aws_globalaccelerator_accelerator__timeouts ->
  name:string ->
  attributes:aws_globalaccelerator_accelerator__attributes list ->
  string ->
  unit
