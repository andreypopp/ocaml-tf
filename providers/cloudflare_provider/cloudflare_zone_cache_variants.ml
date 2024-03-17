(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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
    ?jpg ?jpg2 ?png ?tif ?tiff ?webp ~zone_id __resource_id =
  let __resource_type = "cloudflare_zone_cache_variants" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_zone_cache_variants __resource);
  ()
