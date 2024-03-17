(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_url_normalization_settings = {
  id : string option; [@option]  (** id *)
  scope : string;  (** The scope of the URL normalization. *)
  type_ : string; [@key "type"]
      (** The type of URL normalization performed by Cloudflare. *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource to manage URL Normalization Settings.
 *)

let cloudflare_url_normalization_settings ?id ~scope ~type_ ~zone_id
    __resource_id =
  let __resource_type = "cloudflare_url_normalization_settings" in
  let __resource = { id; scope; type_; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_url_normalization_settings __resource);
  ()
