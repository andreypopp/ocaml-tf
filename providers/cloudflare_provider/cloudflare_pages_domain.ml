(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_pages_domain = {
  account_id : string;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  domain : string;
      (** Custom domain. **Modifying this attribute will force creation of a new resource.** *)
  id : string option; [@option]  (** id *)
  project_name : string;
      (** Name of the Pages Project. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource for managing Cloudflare Pages domains.
 *)

let cloudflare_pages_domain ?id ~account_id ~domain ~project_name
    __resource_id =
  let __resource_type = "cloudflare_pages_domain" in
  let __resource = { account_id; domain; id; project_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_pages_domain __resource);
  ()
