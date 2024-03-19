(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_api_shield_schema = {
  id : string prop option; [@option]  (** id *)
  kind : string prop option; [@option]
      (** Kind of schema. Defaults to `openapi_v3`. **Modifying this attribute will force creation of a new resource.** *)
  name : string prop;
      (** Name of the schema. **Modifying this attribute will force creation of a new resource.** *)
  source : string prop;
      (** Schema file bytes. **Modifying this attribute will force creation of a new resource.** *)
  validation_enabled : bool prop option; [@option]
      (** Flag whether schema is enabled for validation. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource to manage a schema in API Shield Schema Validation 2.0.
 *)

let cloudflare_api_shield_schema ?id ?kind ?validation_enabled ~name
    ~source ~zone_id () : cloudflare_api_shield_schema =
  { id; kind; name; source; validation_enabled; zone_id }

type t = {
  id : string prop;
  kind : string prop;
  name : string prop;
  source : string prop;
  validation_enabled : bool prop;
  zone_id : string prop;
}

let register ?tf_module ?id ?kind ?validation_enabled ~name ~source
    ~zone_id __resource_id =
  let __resource_type = "cloudflare_api_shield_schema" in
  let __resource =
    cloudflare_api_shield_schema ?id ?kind ?validation_enabled ~name
      ~source ~zone_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_api_shield_schema __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       kind = Prop.computed __resource_type __resource_id "kind";
       name = Prop.computed __resource_type __resource_id "name";
       source = Prop.computed __resource_type __resource_id "source";
       validation_enabled =
         Prop.computed __resource_type __resource_id
           "validation_enabled";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
