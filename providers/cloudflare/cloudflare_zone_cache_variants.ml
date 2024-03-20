(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_zone_cache_variants = {
  avif : string prop list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for avif. *)
  bmp : string prop list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for bmp. *)
  gif : string prop list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for gif. *)
  id : string prop option; [@option]  (** id *)
  jp2 : string prop list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for jp2. *)
  jpeg : string prop list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for jpeg. *)
  jpg : string prop list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for jpg. *)
  jpg2 : string prop list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for jpg2. *)
  png : string prop list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for png. *)
  tif : string prop list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for tif. *)
  tiff : string prop list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for tiff. *)
  webp : string prop list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for webp. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource which customizes Cloudflare zone cache variants. *)

let cloudflare_zone_cache_variants ?avif ?bmp ?gif ?id ?jp2 ?jpeg
    ?jpg ?jpg2 ?png ?tif ?tiff ?webp ~zone_id () :
    cloudflare_zone_cache_variants =
  {
    avif;
    bmp;
    gif;
    id;
    jp2;
    jpeg;
    jpg;
    jpg2;
    png;
    tif;
    tiff;
    webp;
    zone_id;
  }

type t = {
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

let make ?avif ?bmp ?gif ?id ?jp2 ?jpeg ?jpg ?jpg2 ?png ?tif ?tiff
    ?webp ~zone_id __id =
  let __type = "cloudflare_zone_cache_variants" in
  let __attrs =
    ({
       avif = Prop.computed __type __id "avif";
       bmp = Prop.computed __type __id "bmp";
       gif = Prop.computed __type __id "gif";
       id = Prop.computed __type __id "id";
       jp2 = Prop.computed __type __id "jp2";
       jpeg = Prop.computed __type __id "jpeg";
       jpg = Prop.computed __type __id "jpg";
       jpg2 = Prop.computed __type __id "jpg2";
       png = Prop.computed __type __id "png";
       tif = Prop.computed __type __id "tif";
       tiff = Prop.computed __type __id "tiff";
       webp = Prop.computed __type __id "webp";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_zone_cache_variants
        (cloudflare_zone_cache_variants ?avif ?bmp ?gif ?id ?jp2
           ?jpeg ?jpg ?jpg2 ?png ?tif ?tiff ?webp ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?avif ?bmp ?gif ?id ?jp2 ?jpeg ?jpg ?jpg2
    ?png ?tif ?tiff ?webp ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?avif ?bmp ?gif ?id ?jp2 ?jpeg ?jpg ?jpg2 ?png ?tif ?tiff
      ?webp ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
