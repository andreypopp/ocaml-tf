(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_api_shield_schema_validation_settings = {
  id : string prop option; [@option]  (** id *)
  validation_default_mitigation_action : string prop;
      (** The default mitigation action used when there is no mitigation action defined on the operation. *)
  validation_override_mitigation_action : string prop option;
      [@option]
      (** When set, this overrides both zone level and operation level mitigation actions. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource to manage settings in API Shield Schema Validation 2.0.
 *)

let cloudflare_api_shield_schema_validation_settings ?id
    ?validation_override_mitigation_action
    ~validation_default_mitigation_action ~zone_id () :
    cloudflare_api_shield_schema_validation_settings =
  {
    id;
    validation_default_mitigation_action;
    validation_override_mitigation_action;
    zone_id;
  }

type t = {
  id : string prop;
  validation_default_mitigation_action : string prop;
  validation_override_mitigation_action : string prop;
  zone_id : string prop;
}

let make ?id ?validation_override_mitigation_action
    ~validation_default_mitigation_action ~zone_id __id =
  let __type = "cloudflare_api_shield_schema_validation_settings" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       validation_default_mitigation_action =
         Prop.computed __type __id
           "validation_default_mitigation_action";
       validation_override_mitigation_action =
         Prop.computed __type __id
           "validation_override_mitigation_action";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_api_shield_schema_validation_settings
        (cloudflare_api_shield_schema_validation_settings ?id
           ?validation_override_mitigation_action
           ~validation_default_mitigation_action ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?validation_override_mitigation_action
    ~validation_default_mitigation_action ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?validation_override_mitigation_action
      ~validation_default_mitigation_action ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
