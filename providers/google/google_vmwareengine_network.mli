(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_network__timeouts

type google_vmwareengine_network__vpc_networks = {
  network : string prop;  (** network *)
  type_ : string prop; [@key "type"]  (** type *)
}

type google_vmwareengine_network

type t = private {
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  type_ : string prop;
  uid : string prop;
  vpc_networks : google_vmwareengine_network__vpc_networks list prop;
}

val google_vmwareengine_network :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_vmwareengine_network__timeouts ->
  location:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t
