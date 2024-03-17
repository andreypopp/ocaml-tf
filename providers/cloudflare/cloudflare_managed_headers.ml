(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_managed_headers__managed_request_headers = {
  enabled : bool prop;  (** Whether the headers rule is active. *)
  id : string prop;  (** Unique headers rule identifier. *)
}
[@@deriving yojson_of]
(** The list of managed request headers. *)

type cloudflare_managed_headers__managed_response_headers = {
  enabled : bool prop;  (** Whether the headers rule is active. *)
  id : string prop;  (** Unique headers rule identifier. *)
}
[@@deriving yojson_of]
(** The list of managed response headers. *)

type cloudflare_managed_headers = {
  id : string prop option; [@option]  (** id *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. *)
  managed_request_headers :
    cloudflare_managed_headers__managed_request_headers list;
  managed_response_headers :
    cloudflare_managed_headers__managed_response_headers list;
}
[@@deriving yojson_of]
(** The [Cloudflare Managed Headers](https://developers.cloudflare.com/rules/transform/managed-transforms/)
allows you to add or remove some predefined headers to one's
requests or origin responses.
 *)

type t = { id : string prop; zone_id : string prop }

let cloudflare_managed_headers ?id ~zone_id ~managed_request_headers
    ~managed_response_headers __resource_id =
  let __resource_type = "cloudflare_managed_headers" in
  let __resource =
    ({
       id;
       zone_id;
       managed_request_headers;
       managed_response_headers;
     }
      : cloudflare_managed_headers)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_managed_headers __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
