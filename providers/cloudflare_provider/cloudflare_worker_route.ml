(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_worker_route = {
  pattern : string;
      (** The [route pattern](https://developers.cloudflare.com/workers/about/routes/) to associate the Worker with. *)
  script_name : string option; [@option]
      (** Worker script name to invoke for requests that match the route pattern. *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare worker route resource. A route will also require a `cloudflare_worker_script`. *)

let cloudflare_worker_route ?script_name ~pattern ~zone_id
    __resource_id =
  let __resource_type = "cloudflare_worker_route" in
  let __resource = { pattern; script_name; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_worker_route __resource);
  ()
