(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_total_tls = {
  certificate_authority : string prop option; [@option]
      (** The Certificate Authority that Total TLS certificates will be issued through. Available values: `google`, `lets_encrypt`. *)
  enabled : bool prop;  (** Enable Total TLS for the zone. *)
  id : string prop option; [@option]  (** id *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource which manages Total TLS for a zone.
 *)

let cloudflare_total_tls ?certificate_authority ?id ~enabled ~zone_id
    () : cloudflare_total_tls =
  { certificate_authority; enabled; id; zone_id }

type t = {
  certificate_authority : string prop;
  enabled : bool prop;
  id : string prop;
  zone_id : string prop;
}

let register ?tf_module ?certificate_authority ?id ~enabled ~zone_id
    __resource_id =
  let __resource_type = "cloudflare_total_tls" in
  let __resource =
    cloudflare_total_tls ?certificate_authority ?id ~enabled ~zone_id
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_total_tls __resource);
  let __resource_attributes =
    ({
       certificate_authority =
         Prop.computed __resource_type __resource_id
           "certificate_authority";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
