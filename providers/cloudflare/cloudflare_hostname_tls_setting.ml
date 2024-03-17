(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_hostname_tls_setting = {
  hostname : string prop;
      (** Hostname that belongs to this zone name. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  setting : string prop;
      (** TLS setting name. **Modifying this attribute will force creation of a new resource.** *)
  value : string prop;  (** TLS setting value. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare per-hostname TLS setting resource. Used to set TLS settings for hostnames under the specified zone.
 *)

type t = {
  created_at : string prop;
  hostname : string prop;
  id : string prop;
  setting : string prop;
  updated_at : string prop;
  value : string prop;
  zone_id : string prop;
}

let cloudflare_hostname_tls_setting ?id ~hostname ~setting ~value
    ~zone_id __resource_id =
  let __resource_type = "cloudflare_hostname_tls_setting" in
  let __resource =
    ({ hostname; id; setting; value; zone_id }
      : cloudflare_hostname_tls_setting)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_hostname_tls_setting __resource);
  let __resource_attributes =
    ({
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       hostname =
         Prop.computed __resource_type __resource_id "hostname";
       id = Prop.computed __resource_type __resource_id "id";
       setting =
         Prop.computed __resource_type __resource_id "setting";
       updated_at =
         Prop.computed __resource_type __resource_id "updated_at";
       value = Prop.computed __resource_type __resource_id "value";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
