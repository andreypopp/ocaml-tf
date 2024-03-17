(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_zone_cache_variants = {
  avif : string list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for avif. *)
  bmp : string list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for bmp. *)
  gif : string list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for gif. *)
  jp2 : string list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for jp2. *)
  jpeg : string list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for jpeg. *)
  jpg : string list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for jpg. *)
  jpg2 : string list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for jpg2. *)
  png : string list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for png. *)
  tif : string list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for tif. *)
  tiff : string list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for tiff. *)
  webp : string list option; [@option]
      (** List of strings with the MIME types of all the variants that should be served for webp. *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource which customizes Cloudflare zone cache variants. *)

let cloudflare_zone_cache_variants ?avif ?bmp ?gif ?jp2 ?jpeg ?jpg
    ?jpg2 ?png ?tif ?tiff ?webp ~zone_id __resource_id =
  let __resource_type = "cloudflare_zone_cache_variants" in
  let __resource =
    {
      avif;
      bmp;
      gif;
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
