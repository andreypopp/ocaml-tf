(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_service_attachment__consumer_accept_lists = {
  connection_limit : float;
      (** The number of consumer forwarding rules the consumer project can
create. *)
  network_url : string option; [@option]
      (** The network that is allowed to connect to this service attachment.
Only one of project_id_or_num and network_url may be set. *)
  project_id_or_num : string option; [@option]
      (** A project that is allowed to connect to this service attachment.
Only one of project_id_or_num and network_url may be set. *)
}
[@@deriving yojson_of]
(** An array of projects that are allowed to connect to this service
attachment. *)

type google_compute_service_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_service_attachment__timeouts *)

type google_compute_service_attachment__connected_endpoints = {
  endpoint : string;  (** endpoint *)
  status : string;  (** status *)
}
[@@deriving yojson_of]

type google_compute_service_attachment = {
  connection_preference : string;
      (** The connection preference to use for this service attachment. Valid
values include ACCEPT_AUTOMATIC, ACCEPT_MANUAL. *)
  consumer_reject_lists : string list option; [@option]
      (** An array of projects that are not allowed to connect to this service
attachment. *)
  description : string option; [@option]
      (** An optional description of this resource. *)
  domain_names : string list option; [@option]
      (** If specified, the domain name will be used during the integration between
the PSC connected endpoints and the Cloud DNS. For example, this is a
valid domain name: p.mycompany.com.. Current max number of domain names
supported is 1. *)
  enable_proxy_protocol : bool;
      (** If true, enable the proxy protocol which is for supplying client TCP/IP
address data in TCP connections that traverse proxies on their way to
destination servers. *)
  name : string;
      (** Name of the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?'
which means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash. *)
  nat_subnets : string list;
      (** An array of subnets that is provided for NAT in this service attachment. *)
  target_service : string;
      (** The URL of a forwarding rule that represents the service identified by
this service attachment. *)
  consumer_accept_lists :
    google_compute_service_attachment__consumer_accept_lists list;
  timeouts : google_compute_service_attachment__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_service_attachment *)

let google_compute_service_attachment ?consumer_reject_lists
    ?description ?domain_names ?timeouts ~connection_preference
    ~enable_proxy_protocol ~name ~nat_subnets ~target_service
    ~consumer_accept_lists __resource_id =
  let __resource_type = "google_compute_service_attachment" in
  let __resource =
    {
      connection_preference;
      consumer_reject_lists;
      description;
      domain_names;
      enable_proxy_protocol;
      name;
      nat_subnets;
      target_service;
      consumer_accept_lists;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_service_attachment __resource);
  ()
