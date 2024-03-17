(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_network__timeouts

type google_vmwareengine_network__vpc_networks = {
  network : string prop;  (** network *)
  type_ : string prop; [@key "type"]  (** type *)
}

type google_vmwareengine_network

val google_vmwareengine_network :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_vmwareengine_network__timeouts ->
  location:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  unit
