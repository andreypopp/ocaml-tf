(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_api_shield_schema = {
  kind : string option; [@option]
      (** Kind of schema. Defaults to `openapi_v3`. **Modifying this attribute will force creation of a new resource.** *)
  name : string;
      (** Name of the schema. **Modifying this attribute will force creation of a new resource.** *)
  source : string;
      (** Schema file bytes. **Modifying this attribute will force creation of a new resource.** *)
  validation_enabled : bool option; [@option]
      (** Flag whether schema is enabled for validation. *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource to manage a schema in API Shield Schema Validation 2.0.
 *)

let cloudflare_api_shield_schema ?kind ?validation_enabled ~name
    ~source ~zone_id __resource_id =
  let __resource_type = "cloudflare_api_shield_schema" in
  let __resource =
    { kind; name; source; validation_enabled; zone_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_api_shield_schema __resource);
  ()