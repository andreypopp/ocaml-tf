(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_managed_headers__managed_request_headers = {
  enabled : bool;  (** Whether the headers rule is active. *)
  id : string;  (** Unique headers rule identifier. *)
}
[@@deriving yojson_of]
(** The list of managed request headers. *)

type cloudflare_managed_headers__managed_response_headers = {
  enabled : bool;  (** Whether the headers rule is active. *)
  id : string;  (** Unique headers rule identifier. *)
}
[@@deriving yojson_of]
(** The list of managed response headers. *)

type cloudflare_managed_headers = {
  zone_id : string;
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

let cloudflare_managed_headers ~zone_id ~managed_request_headers
    ~managed_response_headers __resource_id =
  let __resource_type = "cloudflare_managed_headers" in
  let __resource =
    { zone_id; managed_request_headers; managed_response_headers }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_managed_headers __resource);
  ()
