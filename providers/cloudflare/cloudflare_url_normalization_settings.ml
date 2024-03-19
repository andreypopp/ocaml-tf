(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_url_normalization_settings = {
  id : string prop option; [@option]  (** id *)
  scope : string prop;  (** The scope of the URL normalization. *)
  type_ : string prop; [@key "type"]
      (** The type of URL normalization performed by Cloudflare. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource to manage URL Normalization Settings.
 *)

let cloudflare_url_normalization_settings ?id ~scope ~type_ ~zone_id
    () : cloudflare_url_normalization_settings =
  { id; scope; type_; zone_id }

type t = {
  id : string prop;
  scope : string prop;
  type_ : string prop;
  zone_id : string prop;
}

let register ?tf_module ?id ~scope ~type_ ~zone_id __resource_id =
  let __resource_type = "cloudflare_url_normalization_settings" in
  let __resource =
    cloudflare_url_normalization_settings ?id ~scope ~type_ ~zone_id
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_url_normalization_settings __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       scope = Prop.computed __resource_type __resource_id "scope";
       type_ = Prop.computed __resource_type __resource_id "type";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
