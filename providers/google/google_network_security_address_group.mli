(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_security_address_group__timeouts
type google_network_security_address_group

type t = private {
  capacity : float prop;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  items : string list prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  update_time : string prop;
}

val google_network_security_address_group :
  ?description:string prop ->
  ?id:string prop ->
  ?items:string prop list ->
  ?labels:(string * string prop) list ->
  ?parent:string prop ->
  ?timeouts:google_network_security_address_group__timeouts ->
  capacity:float prop ->
  location:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t
