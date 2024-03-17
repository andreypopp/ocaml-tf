(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_zone_cache_variants

type t = private {
  avif : string list prop;
  bmp : string list prop;
  gif : string list prop;
  id : string prop;
  jp2 : string list prop;
  jpeg : string list prop;
  jpg : string list prop;
  jpg2 : string list prop;
  png : string list prop;
  tif : string list prop;
  tiff : string list prop;
  webp : string list prop;
  zone_id : string prop;
}

val cloudflare_zone_cache_variants :
  ?avif:string prop list ->
  ?bmp:string prop list ->
  ?gif:string prop list ->
  ?id:string prop ->
  ?jp2:string prop list ->
  ?jpeg:string prop list ->
  ?jpg:string prop list ->
  ?jpg2:string prop list ->
  ?png:string prop list ->
  ?tif:string prop list ->
  ?tiff:string prop list ->
  ?webp:string prop list ->
  zone_id:string prop ->
  string ->
  t
