(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_custom_image__timeouts
type digitalocean_custom_image

val digitalocean_custom_image :
  ?description:string ->
  ?distribution:string ->
  ?tags:string list ->
  ?timeouts:digitalocean_custom_image__timeouts ->
  name:string ->
  regions:string list ->
  url:string ->
  string ->
  unit
