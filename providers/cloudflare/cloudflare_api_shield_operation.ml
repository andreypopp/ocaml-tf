(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_api_shield_operation = {
  endpoint : string prop;
      (** The endpoint which can contain path parameter templates in curly braces, each will be replaced from left to right with `{varN}`, starting with `{var1}`. This will then be [Cloudflare-normalized](https://developers.cloudflare.com/rules/normalization/how-it-works/). **Modifying this attribute will force creation of a new resource.** *)
  host : string prop;
      (** RFC3986-compliant host. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  method_ : string prop; [@key "method"]
      (** The HTTP method used to access the endpoint. **Modifying this attribute will force creation of a new resource.** *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource to manage an operation in API Shield Endpoint Management.
 *)

let cloudflare_api_shield_operation ?id ~endpoint ~host ~method_
    ~zone_id () : cloudflare_api_shield_operation =
  { endpoint; host; id; method_; zone_id }

type t = {
  endpoint : string prop;
  host : string prop;
  id : string prop;
  method_ : string prop;
  zone_id : string prop;
}

let register ?tf_module ?id ~endpoint ~host ~method_ ~zone_id
    __resource_id =
  let __resource_type = "cloudflare_api_shield_operation" in
  let __resource =
    cloudflare_api_shield_operation ?id ~endpoint ~host ~method_
      ~zone_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_api_shield_operation __resource);
  let __resource_attributes =
    ({
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       host = Prop.computed __resource_type __resource_id "host";
       id = Prop.computed __resource_type __resource_id "id";
       method_ = Prop.computed __resource_type __resource_id "method";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
