(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_hostname_tls_setting_ciphers = {
  hostname : string;
      (** Hostname that belongs to this zone name. **Modifying this attribute will force creation of a new resource.** *)
  ports : float list option; [@option]
      (** Ports to use within the IP rule. *)
  value : string list;  (** Ciphers suites value. *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare per-hostname TLS setting resource, specifically for ciphers suites. Used to set ciphers suites for hostnames under the specified zone.
 *)

let cloudflare_hostname_tls_setting_ciphers ?ports ~hostname ~value
    ~zone_id __resource_id =
  let __resource_type = "cloudflare_hostname_tls_setting_ciphers" in
  let __resource = { hostname; ports; value; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_hostname_tls_setting_ciphers __resource);
  ()
