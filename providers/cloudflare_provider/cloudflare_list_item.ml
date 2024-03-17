(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_list_item__hostname = {
  url_hostname : string;  (** The FQDN to match on. *)
}
[@@deriving yojson_of]
(** Hostname to store in the list. Must provide only one of: `ip`, `asn`, `redirect`, `hostname`. *)

type cloudflare_list_item__redirect = {
  include_subdomains : bool option; [@option]
      (** Whether the redirect also matches subdomains of the source url. *)
  preserve_path_suffix : bool option; [@option]
      (** Whether the redirect target url should keep the query string of the request's url. *)
  preserve_query_string : bool option; [@option]
      (** Whether the redirect target url should keep the query string of the request's url. *)
  source_url : string;  (** The source url of the redirect. *)
  status_code : float option; [@option]
      (** The status code to be used when redirecting a request. *)
  subpath_matching : bool option; [@option]
      (** Whether the redirect also matches subpaths of the source url. *)
  target_url : string;  (** The target url of the redirect. *)
}
[@@deriving yojson_of]
(** Redirect configuration to store in the list. Must provide only one of: `ip`, `asn`, `redirect`, `hostname`. *)

type cloudflare_list_item = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  asn : float option; [@option]
      (** Autonomous system number to include in the list. Must provide only one of: `ip`, `asn`, `redirect`, `hostname`. *)
  comment : string option; [@option]
      (** An optional comment for the item. *)
  ip : string option; [@option]
      (** IP address to include in the list. Must provide only one of: `ip`, `asn`, `redirect`, `hostname`. *)
  list_id : string;
      (** The list identifier to target for the resource. *)
  hostname : cloudflare_list_item__hostname list;
  redirect : cloudflare_list_item__redirect list;
}
[@@deriving yojson_of]
(** Provides individual list items (IPs, Redirects, ASNs, Hostnames) to be used in Edge Rules Engine
across all zones within the same account.
 *)

let cloudflare_list_item ?asn ?comment ?ip ~account_id ~list_id
    ~hostname ~redirect __resource_id =
  let __resource_type = "cloudflare_list_item" in
  let __resource =
    { account_id; asn; comment; ip; list_id; hostname; redirect }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_list_item __resource);
  ()
