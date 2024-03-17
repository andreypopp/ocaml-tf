(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_network__timeouts

type google_vmwareengine_network__vpc_networks = {
  network : string;  (** network *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_vmwareengine_network

val google_vmwareengine_network :
  ?description:string ->
  ?timeouts:google_vmwareengine_network__timeouts ->
  location:string ->
  name:string ->
  type_:string ->
  string ->
  unit
