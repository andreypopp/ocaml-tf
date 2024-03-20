(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_api_shield_operation_schema_validation_settings = {
  id : string prop option; [@option]  (** id *)
  mitigation_action : string prop option; [@option]
      (** The mitigation action to apply to this operation. *)
  operation_id : string prop;
      (** Operation ID these settings should apply to. **Modifying this attribute will force creation of a new resource.** *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource to manage operation-level settings in API Shield Schema Validation 2.0.
 *)

let cloudflare_api_shield_operation_schema_validation_settings ?id
    ?mitigation_action ~operation_id ~zone_id () :
    cloudflare_api_shield_operation_schema_validation_settings =
  { id; mitigation_action; operation_id; zone_id }

type t = {
  id : string prop;
  mitigation_action : string prop;
  operation_id : string prop;
  zone_id : string prop;
}

let make ?id ?mitigation_action ~operation_id ~zone_id __id =
  let __type =
    "cloudflare_api_shield_operation_schema_validation_settings"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       mitigation_action =
         Prop.computed __type __id "mitigation_action";
       operation_id = Prop.computed __type __id "operation_id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_api_shield_operation_schema_validation_settings
        (cloudflare_api_shield_operation_schema_validation_settings
           ?id ?mitigation_action ~operation_id ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?mitigation_action ~operation_id ~zone_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?mitigation_action ~operation_id ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
