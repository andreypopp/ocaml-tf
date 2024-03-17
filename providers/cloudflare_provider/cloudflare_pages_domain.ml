(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_pages_domain = {
  account_id : string prop;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  domain : string prop;
      (** Custom domain. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  project_name : string prop;
      (** Name of the Pages Project. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource for managing Cloudflare Pages domains.
 *)

type t = {
  account_id : string prop;
  domain : string prop;
  id : string prop;
  project_name : string prop;
  status : string prop;
}

let cloudflare_pages_domain ?id ~account_id ~domain ~project_name
    __resource_id =
  let __resource_type = "cloudflare_pages_domain" in
  let __resource =
    ({ account_id; domain; id; project_name }
      : cloudflare_pages_domain)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_pages_domain __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       domain = Prop.computed __resource_type __resource_id "domain";
       id = Prop.computed __resource_type __resource_id "id";
       project_name =
         Prop.computed __resource_type __resource_id "project_name";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
