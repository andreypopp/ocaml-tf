(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_worker_route = {
  id : string prop option; [@option]  (** id *)
  pattern : string prop;
      (** The [route pattern](https://developers.cloudflare.com/workers/about/routes/) to associate the Worker with. *)
  script_name : string prop option; [@option]
      (** Worker script name to invoke for requests that match the route pattern. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare worker route resource. A route will also require a `cloudflare_worker_script`. *)

let cloudflare_worker_route ?id ?script_name ~pattern ~zone_id () :
    cloudflare_worker_route =
  { id; pattern; script_name; zone_id }

type t = {
  id : string prop;
  pattern : string prop;
  script_name : string prop;
  zone_id : string prop;
}

let register ?tf_module ?id ?script_name ~pattern ~zone_id
    __resource_id =
  let __resource_type = "cloudflare_worker_route" in
  let __resource =
    cloudflare_worker_route ?id ?script_name ~pattern ~zone_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_worker_route __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       pattern =
         Prop.computed __resource_type __resource_id "pattern";
       script_name =
         Prop.computed __resource_type __resource_id "script_name";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
