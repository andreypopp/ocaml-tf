(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_observatory_scheduled_test__timeouts
type cloudflare_observatory_scheduled_test

val cloudflare_observatory_scheduled_test :
  ?id:string prop ->
  ?timeouts:cloudflare_observatory_scheduled_test__timeouts ->
  frequency:string prop ->
  region:string prop ->
  url:string prop ->
  zone_id:string prop ->
  string ->
  unit
