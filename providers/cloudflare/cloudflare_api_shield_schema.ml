(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?kind ?validation_enabled ~name ~source ~zone_id __id =
  let __type = "cloudflare_api_shield_schema" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       name = Prop.computed __type __id "name";
       source = Prop.computed __type __id "source";
       validation_enabled =
         Prop.computed __type __id "validation_enabled";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_api_shield_schema
        (cloudflare_api_shield_schema ?id ?kind ?validation_enabled
           ~name ~source ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kind ?validation_enabled ~name ~source
    ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kind ?validation_enabled ~name ~source ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
