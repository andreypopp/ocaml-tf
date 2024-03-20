(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auth_id_characteristics = {
  name : string prop option; [@option]
      (** The name of the characteristic. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type of characteristic. Available values: `header`, `cookie`. *)
}
[@@deriving yojson_of]
(** Characteristics define properties across which auth-ids can be computed in a privacy-preserving manner. *)

type cloudflare_api_shield = {
  id : string prop option; [@option]  (** id *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  auth_id_characteristics : auth_id_characteristics list;
}
[@@deriving yojson_of]
(** Provides a resource to manage API Shield configurations.
 *)

let auth_id_characteristics ?name ?type_ () : auth_id_characteristics
    =
  { name; type_ }

let cloudflare_api_shield ?id ~zone_id ~auth_id_characteristics () :
    cloudflare_api_shield =
  { id; zone_id; auth_id_characteristics }

type t = { id : string prop; zone_id : string prop }

let make ?id ~zone_id ~auth_id_characteristics __id =
  let __type = "cloudflare_api_shield" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_api_shield
        (cloudflare_api_shield ?id ~zone_id ~auth_id_characteristics
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~zone_id ~auth_id_characteristics __id =
  let (r : _ Tf_core.resource) =
    make ?id ~zone_id ~auth_id_characteristics __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
