(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_logpull_retention = {
  enabled : bool prop;
      (** Whether you wish to retain logs or not. *)
  id : string prop option; [@option]  (** id *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Allows management of the Logpull Retention settings used to control whether or not to retain HTTP request logs. *)

let cloudflare_logpull_retention ?id ~enabled ~zone_id () :
    cloudflare_logpull_retention =
  { enabled; id; zone_id }

type t = {
  enabled : bool prop;
  id : string prop;
  zone_id : string prop;
}

let register ?tf_module ?id ~enabled ~zone_id __resource_id =
  let __resource_type = "cloudflare_logpull_retention" in
  let __resource =
    cloudflare_logpull_retention ?id ~enabled ~zone_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_logpull_retention __resource);
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
