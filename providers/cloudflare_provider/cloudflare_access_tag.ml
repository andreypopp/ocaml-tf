(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_access_tag = {
  account_id : string option; [@option]
      (** The account identifier to target for the resource. Conflicts with `zone_id`. **Modifying this attribute will force creation of a new resource.** *)
  name : string;  (** Friendly name of the Access Tag. *)
  zone_id : string option; [@option]
      (** The zone identifier to target for the resource. Conflicts with `account_id`. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource to customize the pages your end users will see
when trying to reach applications behind Cloudflare Access.
 *)

let cloudflare_access_tag ?account_id ?zone_id ~name __resource_id =
  let __resource_type = "cloudflare_access_tag" in
  let __resource = { account_id; name; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_access_tag __resource);
  ()
