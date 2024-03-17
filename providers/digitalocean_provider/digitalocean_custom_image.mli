(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_custom_image__timeouts
type digitalocean_custom_image

val digitalocean_custom_image :
  ?description:string prop ->
  ?distribution:string prop ->
  ?id:string prop ->
  ?tags:string prop list ->
  ?timeouts:digitalocean_custom_image__timeouts ->
  name:string prop ->
  regions:string prop list ->
  url:string prop ->
  string ->
  unit
