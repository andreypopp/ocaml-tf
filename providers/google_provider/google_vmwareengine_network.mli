(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_network__timeouts

type google_vmwareengine_network__vpc_networks = {
  network : string;  (** network *)
  type_ : string; [@key "type"]  (** type *)
}

type google_vmwareengine_network

val google_vmwareengine_network :
  ?description:string ->
  ?id:string ->
  ?project:string ->
  ?timeouts:google_vmwareengine_network__timeouts ->
  location:string ->
  name:string ->
  type_:string ->
  string ->
  unit
