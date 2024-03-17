(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_vpc__timeouts
type digitalocean_vpc

type t = private {
  created_at : string prop;
  default : bool prop;
  description : string prop;
  id : string prop;
  ip_range : string prop;
  name : string prop;
  region : string prop;
  urn : string prop;
}

val digitalocean_vpc :
  ?description:string prop ->
  ?id:string prop ->
  ?ip_range:string prop ->
  ?timeouts:digitalocean_vpc__timeouts ->
  name:string prop ->
  region:string prop ->
  string ->
  t
