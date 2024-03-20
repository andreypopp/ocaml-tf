(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type managed_request_headers = {
  enabled : bool prop;  (** Whether the headers rule is active. *)
  id : string prop;  (** Unique headers rule identifier. *)
}
[@@deriving yojson_of]
(** The list of managed request headers. *)

type managed_response_headers = {
  enabled : bool prop;  (** Whether the headers rule is active. *)
  id : string prop;  (** Unique headers rule identifier. *)
}
[@@deriving yojson_of]
(** The list of managed response headers. *)

type cloudflare_managed_headers = {
  id : string prop option; [@option]  (** id *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. *)
  managed_request_headers : managed_request_headers list;
  managed_response_headers : managed_response_headers list;
}
[@@deriving yojson_of]
(** The [Cloudflare Managed Headers](https://developers.cloudflare.com/rules/transform/managed-transforms/)
allows you to add or remove some predefined headers to one's
requests or origin responses.
 *)

let managed_request_headers ~enabled ~id () : managed_request_headers
    =
  { enabled; id }

let managed_response_headers ~enabled ~id () :
    managed_response_headers =
  { enabled; id }

let cloudflare_managed_headers ?id ~zone_id ~managed_request_headers
    ~managed_response_headers () : cloudflare_managed_headers =
  { id; zone_id; managed_request_headers; managed_response_headers }

type t = { id : string prop; zone_id : string prop }

let make ?id ~zone_id ~managed_request_headers
    ~managed_response_headers __id =
  let __type = "cloudflare_managed_headers" in
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
      yojson_of_cloudflare_managed_headers
        (cloudflare_managed_headers ?id ~zone_id
           ~managed_request_headers ~managed_response_headers ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~zone_id ~managed_request_headers
    ~managed_response_headers __id =
  let (r : _ Tf_core.resource) =
    make ?id ~zone_id ~managed_request_headers
      ~managed_response_headers __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
