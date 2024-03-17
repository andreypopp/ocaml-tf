(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_project__timeouts
type digitalocean_project

val digitalocean_project :
  ?description:string prop ->
  ?environment:string prop ->
  ?id:string prop ->
  ?is_default:bool prop ->
  ?purpose:string prop ->
  ?resources:string prop list ->
  ?timeouts:digitalocean_project__timeouts ->
  name:string prop ->
  string ->
  unit
