(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_vpc__timeouts
type digitalocean_vpc

val digitalocean_vpc :
  ?description:string ->
  ?id:string ->
  ?ip_range:string ->
  ?timeouts:digitalocean_vpc__timeouts ->
  name:string ->
  region:string ->
  string ->
  unit
