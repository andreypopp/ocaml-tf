(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_vpc__timeouts
type digitalocean_vpc

val digitalocean_vpc :
  ?description:string prop ->
  ?id:string prop ->
  ?ip_range:string prop ->
  ?timeouts:digitalocean_vpc__timeouts ->
  name:string prop ->
  region:string prop ->
  string ->
  unit
