(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hostname = {
  url_hostname : string prop;  (** The FQDN to match on. *)
}
[@@deriving yojson_of]
(** Hostname to store in the list. Must provide only one of: `ip`, `asn`, `redirect`, `hostname`. *)

type redirect = {
  include_subdomains : bool prop option; [@option]
      (** Whether the redirect also matches subdomains of the source url. *)
  preserve_path_suffix : bool prop option; [@option]
      (** Whether the redirect target url should keep the query string of the request's url. *)
  preserve_query_string : bool prop option; [@option]
      (** Whether the redirect target url should keep the query string of the request's url. *)
  source_url : string prop;  (** The source url of the redirect. *)
  status_code : float prop option; [@option]
      (** The status code to be used when redirecting a request. *)
  subpath_matching : bool prop option; [@option]
      (** Whether the redirect also matches subpaths of the source url. *)
  target_url : string prop;  (** The target url of the redirect. *)
}
[@@deriving yojson_of]
(** Redirect configuration to store in the list. Must provide only one of: `ip`, `asn`, `redirect`, `hostname`. *)

type cloudflare_list_item = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  asn : float prop option; [@option]
      (** Autonomous system number to include in the list. Must provide only one of: `ip`, `asn`, `redirect`, `hostname`. *)
  comment : string prop option; [@option]
      (** An optional comment for the item. *)
  ip : string prop option; [@option]
      (** IP address to include in the list. Must provide only one of: `ip`, `asn`, `redirect`, `hostname`. *)
  list_id : string prop;
      (** The list identifier to target for the resource. *)
  hostname : hostname list;
  redirect : redirect list;
}
[@@deriving yojson_of]
(** Provides individual list items (IPs, Redirects, ASNs, Hostnames) to be used in Edge Rules Engine
across all zones within the same account.
 *)

let hostname ~url_hostname () : hostname = { url_hostname }

let redirect ?include_subdomains ?preserve_path_suffix
    ?preserve_query_string ?status_code ?subpath_matching ~source_url
    ~target_url () : redirect =
  {
    include_subdomains;
    preserve_path_suffix;
    preserve_query_string;
    source_url;
    status_code;
    subpath_matching;
    target_url;
  }

let cloudflare_list_item ?asn ?comment ?ip ~account_id ~list_id
    ~hostname ~redirect () : cloudflare_list_item =
  { account_id; asn; comment; ip; list_id; hostname; redirect }

type t = {
  account_id : string prop;
  asn : float prop;
  comment : string prop;
  id : string prop;
  ip : string prop;
  list_id : string prop;
}

let register ?tf_module ?asn ?comment ?ip ~account_id ~list_id
    ~hostname ~redirect __resource_id =
  let __resource_type = "cloudflare_list_item" in
  let __resource =
    cloudflare_list_item ?asn ?comment ?ip ~account_id ~list_id
      ~hostname ~redirect ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_list_item __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       asn = Prop.computed __resource_type __resource_id "asn";
       comment =
         Prop.computed __resource_type __resource_id "comment";
       id = Prop.computed __resource_type __resource_id "id";
       ip = Prop.computed __resource_type __resource_id "ip";
       list_id =
         Prop.computed __resource_type __resource_id "list_id";
     }
      : t)
  in
  __resource_attributes
