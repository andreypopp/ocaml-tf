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

let cloudflare_custom_pages ?account_id ?id ?state ?zone_id ~type_
    ~url __resource_id =
  let __resource_type = "cloudflare_custom_pages" in
  let __resource = { account_id; id; state; type_; url; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_custom_pages __resource);
  ()
