(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_api_shield__auth_id_characteristics = {
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
  auth_id_characteristics :
    cloudflare_api_shield__auth_id_characteristics list;
}
[@@deriving yojson_of]
(** Provides a resource to manage API Shield configurations.
 *)

let cloudflare_api_shield ?id ~zone_id ~auth_id_characteristics
    __resource_id =
  let __resource_type = "cloudflare_api_shield" in
  let __resource = { id; zone_id; auth_id_characteristics } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_api_shield __resource);
  ()
