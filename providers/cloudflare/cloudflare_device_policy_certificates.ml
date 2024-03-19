(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_device_policy_certificates = {
  enabled : bool prop;
      (** `true` if certificate generation is enabled. *)
  id : string prop option; [@option]  (** id *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare device policy certificates resource. Device
policy certificate resources enable client device certificate
generation.
 *)

let cloudflare_device_policy_certificates ?id ~enabled ~zone_id () :
    cloudflare_device_policy_certificates =
  { enabled; id; zone_id }

type t = {
  enabled : bool prop;
  id : string prop;
  zone_id : string prop;
}

let register ?tf_module ?id ~enabled ~zone_id __resource_id =
  let __resource_type = "cloudflare_device_policy_certificates" in
  let __resource =
    cloudflare_device_policy_certificates ?id ~enabled ~zone_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_device_policy_certificates __resource);
  let __resource_attributes =
    ({
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
