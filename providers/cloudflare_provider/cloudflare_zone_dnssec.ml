(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_zone_dnssec = {
  id : string option; [@option]  (** id *)
  modified_on : string option; [@option]
      (** Zone DNSSEC updated time. *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare resource to create and modify zone DNSSEC settings. *)

let cloudflare_zone_dnssec ?id ?modified_on ~zone_id __resource_id =
  let __resource_type = "cloudflare_zone_dnssec" in
  let __resource = { id; modified_on; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_zone_dnssec __resource);
  ()
