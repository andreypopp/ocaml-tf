(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_zone_cache_variants = {
  avif : string prop list option; [@option]
  bmp : string prop list option; [@option]
  gif : string prop list option; [@option]
  id : string prop option; [@option]
  jp2 : string prop list option; [@option]
  jpeg : string prop list option; [@option]
  jpg : string prop list option; [@option]
  jpg2 : string prop list option; [@option]
  png : string prop list option; [@option]
  tif : string prop list option; [@option]
  tiff : string prop list option; [@option]
  webp : string prop list option; [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_zone_cache_variants) -> ()

let yojson_of_cloudflare_zone_cache_variants =
  (function
   | {
       avif = v_avif;
       bmp = v_bmp;
       gif = v_gif;
       id = v_id;
       jp2 = v_jp2;
       jpeg = v_jpeg;
       jpg = v_jpg;
       jpg2 = v_jpg2;
       png = v_png;
       tif = v_tif;
       tiff = v_tiff;
       webp = v_webp;
       zone_id = v_zone_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         match v_webp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "webp", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tiff with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tiff", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tif with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tif", arg in
             bnd :: bnds
       in
       let bnds =
         match v_png with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "png", arg in
             bnd :: bnds
       in
       let bnds =
         match v_jpg2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "jpg2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_jpg with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "jpg", arg in
             bnd :: bnds
       in
       let bnds =
         match v_jpeg with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "jpeg", arg in
             bnd :: bnds
       in
       let bnds =
         match v_jp2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "jp2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gif with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "gif", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bmp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "bmp", arg in
             bnd :: bnds
       in
       let bnds =
         match v_avif with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "avif", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_zone_cache_variants ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_zone_cache_variants

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
