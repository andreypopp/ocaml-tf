(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_hostname_tls_setting_ciphers = {
  hostname : string prop;
      (** Hostname that belongs to this zone name. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  ports : float prop list option; [@option]
      (** Ports to use within the IP rule. *)
  value : string prop list;  (** Ciphers suites value. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare per-hostname TLS setting resource, specifically for ciphers suites. Used to set ciphers suites for hostnames under the specified zone.
 *)

type t = {
  created_at : string prop;
  hostname : string prop;
  id : string prop;
  ports : float list prop;
  updated_at : string prop;
  value : string list prop;
  zone_id : string prop;
}

let cloudflare_hostname_tls_setting_ciphers ?id ?ports ~hostname
    ~value ~zone_id __resource_id =
  let __resource_type = "cloudflare_hostname_tls_setting_ciphers" in
  let __resource =
    ({ hostname; id; ports; value; zone_id }
      : cloudflare_hostname_tls_setting_ciphers)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_hostname_tls_setting_ciphers __resource);
  let __resource_attributes =
    ({
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       hostname =
         Prop.computed __resource_type __resource_id "hostname";
       id = Prop.computed __resource_type __resource_id "id";
       ports = Prop.computed __resource_type __resource_id "ports";
       updated_at =
         Prop.computed __resource_type __resource_id "updated_at";
       value = Prop.computed __resource_type __resource_id "value";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
