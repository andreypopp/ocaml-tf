(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_authenticated_origin_pulls = {
  authenticated_origin_pulls_certificate : string prop option;
      [@option]
      (** The ID of an uploaded Authenticated Origin Pulls certificate. If no hostname is provided, this certificate will be used zone wide as Per-Zone Authenticated Origin Pulls. *)
  enabled : bool prop;
      (** Whether to enable Authenticated Origin Pulls on the given zone or hostname. *)
  hostname : string prop option; [@option]
      (** Specify a hostname to enable Per-Hostname Authenticated Origin Pulls on, using the provided certificate. *)
  id : string prop option; [@option]  (** id *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Authenticated Origin Pulls resource. A `cloudflare_authenticated_origin_pulls`
resource is required to use Per-Zone or Per-Hostname Authenticated
Origin Pulls. *)

let cloudflare_authenticated_origin_pulls
    ?authenticated_origin_pulls_certificate ?hostname ?id ~enabled
    ~zone_id __resource_id =
  let __resource_type = "cloudflare_authenticated_origin_pulls" in
  let __resource =
    {
      authenticated_origin_pulls_certificate;
      enabled;
      hostname;
      id;
      zone_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_authenticated_origin_pulls __resource);
  ()
