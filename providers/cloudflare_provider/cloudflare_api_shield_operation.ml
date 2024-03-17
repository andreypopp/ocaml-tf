(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_api_shield_operation = {
  endpoint : string;
      (** The endpoint which can contain path parameter templates in curly braces, each will be replaced from left to right with `{varN}`, starting with `{var1}`. This will then be [Cloudflare-normalized](https://developers.cloudflare.com/rules/normalization/how-it-works/). **Modifying this attribute will force creation of a new resource.** *)
  host : string;
      (** RFC3986-compliant host. **Modifying this attribute will force creation of a new resource.** *)
  method_ : string; [@key "method"]
      (** The HTTP method used to access the endpoint. **Modifying this attribute will force creation of a new resource.** *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource to manage an operation in API Shield Endpoint Management.
 *)

let cloudflare_api_shield_operation ~endpoint ~host ~method_ ~zone_id
    __resource_id =
  let __resource_type = "cloudflare_api_shield_operation" in
  let __resource = { endpoint; host; method_; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_api_shield_operation __resource);
  ()
