(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_total_tls = {
  certificate_authority : string option; [@option]
      (** The Certificate Authority that Total TLS certificates will be issued through. Available values: `google`, `lets_encrypt`. *)
  enabled : bool;  (** Enable Total TLS for the zone. *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource which manages Total TLS for a zone.
 *)

let cloudflare_total_tls ?certificate_authority ~enabled ~zone_id
    __resource_id =
  let __resource_type = "cloudflare_total_tls" in
  let __resource = { certificate_authority; enabled; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_total_tls __resource);
  ()
