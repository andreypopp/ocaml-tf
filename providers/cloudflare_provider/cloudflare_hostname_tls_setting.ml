(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_hostname_tls_setting = {
  hostname : string;
      (** Hostname that belongs to this zone name. **Modifying this attribute will force creation of a new resource.** *)
  setting : string;
      (** TLS setting name. **Modifying this attribute will force creation of a new resource.** *)
  value : string;  (** TLS setting value. *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare per-hostname TLS setting resource. Used to set TLS settings for hostnames under the specified zone.
 *)

let cloudflare_hostname_tls_setting ~hostname ~setting ~value
    ~zone_id __resource_id =
  let __resource_type = "cloudflare_hostname_tls_setting" in
  let __resource = { hostname; setting; value; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_hostname_tls_setting __resource);
  ()
