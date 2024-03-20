(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?script_name ~pattern ~zone_id __id =
  let __type = "cloudflare_worker_route" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       pattern = Prop.computed __type __id "pattern";
       script_name = Prop.computed __type __id "script_name";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_worker_route
        (cloudflare_worker_route ?id ?script_name ~pattern ~zone_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?script_name ~pattern ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?script_name ~pattern ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
