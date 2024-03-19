(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_access_custom_page = {
  account_id : string prop option; [@option]
      (** The account identifier to target for the resource. Conflicts with `zone_id`. **Modifying this attribute will force creation of a new resource.** *)
  app_count : float prop option; [@option]
      (** Number of apps to display on the custom page. *)
  custom_html : string prop option; [@option]
      (** Custom HTML to display on the custom page. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Friendly name of the Access Custom Page configuration. *)
  type_ : string prop; [@key "type"]
      (** Type of Access custom page to create. Available values: `identity_denied`, `forbidden`. *)
  zone_id : string prop option; [@option]
      (** The zone identifier to target for the resource. Conflicts with `account_id`. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource to customize the pages your end users will see
when trying to reach applications behind Cloudflare Access.
 *)

let cloudflare_access_custom_page ?account_id ?app_count ?custom_html
    ?id ?zone_id ~name ~type_ () : cloudflare_access_custom_page =
  { account_id; app_count; custom_html; id; name; type_; zone_id }

type t = {
  account_id : string prop;
  app_count : float prop;
  custom_html : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  zone_id : string prop;
}

let register ?tf_module ?account_id ?app_count ?custom_html ?id
    ?zone_id ~name ~type_ __resource_id =
  let __resource_type = "cloudflare_access_custom_page" in
  let __resource =
    cloudflare_access_custom_page ?account_id ?app_count ?custom_html
      ?id ?zone_id ~name ~type_ ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_access_custom_page __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       app_count =
         Prop.computed __resource_type __resource_id "app_count";
       custom_html =
         Prop.computed __resource_type __resource_id "custom_html";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       type_ = Prop.computed __resource_type __resource_id "type";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
