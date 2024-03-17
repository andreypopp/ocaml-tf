(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_api_shield_operation_schema_validation_settings = {
  id : string option; [@option]  (** id *)
  mitigation_action : string option; [@option]
      (** The mitigation action to apply to this operation. *)
  operation_id : string;
      (** Operation ID these settings should apply to. **Modifying this attribute will force creation of a new resource.** *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource to manage operation-level settings in API Shield Schema Validation 2.0.
 *)

let cloudflare_api_shield_operation_schema_validation_settings ?id
    ?mitigation_action ~operation_id ~zone_id __resource_id =
  let __resource_type =
    "cloudflare_api_shield_operation_schema_validation_settings"
  in
  let __resource =
    { id; mitigation_action; operation_id; zone_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_api_shield_operation_schema_validation_settings
       __resource);
  ()
