(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_api_shield_schema_validation_settings = {
  validation_default_mitigation_action : string;
      (** The default mitigation action used when there is no mitigation action defined on the operation. *)
  validation_override_mitigation_action : string option; [@option]
      (** When set, this overrides both zone level and operation level mitigation actions. *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource to manage settings in API Shield Schema Validation 2.0.
 *)

let cloudflare_api_shield_schema_validation_settings
    ?validation_override_mitigation_action
    ~validation_default_mitigation_action ~zone_id __resource_id =
  let __resource_type =
    "cloudflare_api_shield_schema_validation_settings"
  in
  let __resource =
    {
      validation_default_mitigation_action;
      validation_override_mitigation_action;
      zone_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_api_shield_schema_validation_settings
       __resource);
  ()
