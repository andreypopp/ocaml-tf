(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_list__item__value__hostname = {
  url_hostname : string;
      (** The FQDN to match on. Wildcard sub-domain matching is allowed. Eg. *.abc.com. *)
}
[@@deriving yojson_of]
(** cloudflare_list__item__value__hostname *)

type cloudflare_list__item__value__redirect = {
  include_subdomains : string option; [@option]
      (** Whether the redirect also matches subdomains of the source url. Available values: `disabled`, `enabled`. *)
  preserve_path_suffix : string option; [@option]
      (** Whether to preserve the path suffix when doing subpath matching. Available values: `disabled`, `enabled`. *)
  preserve_query_string : string option; [@option]
      (** Whether the redirect target url should keep the query string of the request's url. Available values: `disabled`, `enabled`. *)
  source_url : string;  (** The source url of the redirect. *)
  status_code : float option; [@option]
      (** The status code to be used when redirecting a request. *)
  subpath_matching : string option; [@option]
      (** Whether the redirect also matches subpaths of the source url. Available values: `disabled`, `enabled`. *)
  target_url : string;  (** The target url of the redirect. *)
}
[@@deriving yojson_of]
(** cloudflare_list__item__value__redirect *)

type cloudflare_list__item__value = {
  asn : float option; [@option]  (** asn *)
  ip : string option; [@option]  (** ip *)
  hostname : cloudflare_list__item__value__hostname list;
  redirect : cloudflare_list__item__value__redirect list;
}
[@@deriving yojson_of]
(** cloudflare_list__item__value *)

type cloudflare_list__item = {
  comment : string option; [@option]
      (** An optional comment for the item. *)
  value : cloudflare_list__item__value list;
}
[@@deriving yojson_of]
(** cloudflare_list__item *)

type cloudflare_list = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  description : string option; [@option]
      (** An optional description of the list. *)
  kind : string;
      (** The type of items the list will contain. Available values: `ip`, `redirect`, `hostname`, `asn`. **Modifying this attribute will force creation of a new resource.** *)
  name : string;
      (** The name of the list. **Modifying this attribute will force creation of a new resource.** *)
  item : cloudflare_list__item list;
}
[@@deriving yojson_of]
(** Provides Lists (IPs, Redirects, Hostname, ASNs) to be used in Edge
Rules Engine across all zones within the same account.
 *)

let cloudflare_list ?description ~account_id ~kind ~name ~item
    __resource_id =
  let __resource_type = "cloudflare_list" in
  let __resource = { account_id; description; kind; name; item } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_list __resource);
  ()
