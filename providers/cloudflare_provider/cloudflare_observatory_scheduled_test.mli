(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_observatory_scheduled_test__timeouts
type cloudflare_observatory_scheduled_test

type t = private {
  frequency : string prop;
  id : string prop;
  region : string prop;
  url : string prop;
  zone_id : string prop;
}

val cloudflare_observatory_scheduled_test :
  ?id:string prop ->
  ?timeouts:cloudflare_observatory_scheduled_test__timeouts ->
  frequency:string prop ->
  region:string prop ->
  url:string prop ->
  zone_id:string prop ->
  string ->
  t
