(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_custom_pages = {
  account_id : string prop option; [@option]
      (** The account identifier to target for the resource. Conflicts with `zone_id`. *)
  id : string prop option; [@option]  (** id *)
  state : string prop option; [@option]
      (** Managed state of the custom page. Available values: `default`, `customized`. *)
  type_ : string prop; [@key "type"]
      (** The type of custom page you wish to update. Available values: `basic_challenge`, `waf_challenge`, `waf_block`, `ratelimit_block`, `country_challenge`, `ip_block`, `under_attack`, `500_errors`, `1000_errors`, `managed_challenge`. *)
  url : string prop;
      (** URL of where the custom page source is located. *)
  zone_id : string prop option; [@option]
      (** The zone identifier to target for the resource. Conflicts with `account_id`. *)
}
[@@deriving yojson_of]
(** Provides a resource which manages Cloudflare custom error pages. *)

type t = {
  account_id : string prop;
  id : string prop;
  state : string prop;
  type_ : string prop;
  url : string prop;
  zone_id : string prop;
}

let cloudflare_custom_pages ?account_id ?id ?state ?zone_id ~type_
    ~url __resource_id =
  let __resource_type = "cloudflare_custom_pages" in
  let __resource =
    ({ account_id; id; state; type_; url; zone_id }
      : cloudflare_custom_pages)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_custom_pages __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       state = Prop.computed __resource_type __resource_id "state";
       type_ = Prop.computed __resource_type __resource_id "type";
       url = Prop.computed __resource_type __resource_id "url";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
