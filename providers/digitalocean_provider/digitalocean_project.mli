(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_project__timeouts
type digitalocean_project

val digitalocean_project :
  ?description:string ->
  ?environment:string ->
  ?is_default:bool ->
  ?purpose:string ->
  ?timeouts:digitalocean_project__timeouts ->
  name:string ->
  string ->
  unit
