(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_device_policy_certificates = {
  enabled : bool;
      (** `true` if certificate generation is enabled. *)
  zone_id : string;
      (** The zone identifier to target for the resource. *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare device policy certificates resource. Device
policy certificate resources enable client device certificate
generation.
 *)

let cloudflare_device_policy_certificates ~enabled ~zone_id
    __resource_id =
  let __resource_type = "cloudflare_device_policy_certificates" in
  let __resource = { enabled; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_device_policy_certificates __resource);
  ()
