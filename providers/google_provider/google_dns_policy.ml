(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_dns_policy__alternative_name_server_config__target_name_servers = {
  forwarding_path : string option; [@option]
      (** Forwarding path for this TargetNameServer. If unset or 'default' Cloud DNS will make forwarding
decision based on address ranges, i.e. RFC1918 addresses go to the VPC, Non-RFC1918 addresses go
to the Internet. When set to 'private', Cloud DNS will always send queries through VPC for this target Possible values: [default, private] *)
  ipv4_address : string;  (** IPv4 address to forward to. *)
}
[@@deriving yojson_of]
(** Sets an alternative name server for the associated networks. When specified,
all DNS queries are forwarded to a name server that you choose. Names such as .internal
are not available when an alternative name server is specified. *)

type google_dns_policy__alternative_name_server_config = {
  target_name_servers :
    google_dns_policy__alternative_name_server_config__target_name_servers
    list;
}
[@@deriving yojson_of]
(** Sets an alternative name server for the associated networks.
When specified, all DNS queries are forwarded to a name server that you choose.
Names such as .internal are not available when an alternative name server is specified. *)

type google_dns_policy__networks = {
  network_url : string;
      (** The id or fully qualified URL of the VPC network to forward queries to.
This should be formatted like 'projects/{project}/global/networks/{network}' or
'https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}' *)
}
[@@deriving yojson_of]
(** List of network names specifying networks to which this policy is applied. *)

type google_dns_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dns_policy__timeouts *)

type google_dns_policy = {
  description : string option; [@option]
      (** A textual description field. Defaults to 'Managed by Terraform'. *)
  enable_inbound_forwarding : bool option; [@option]
      (** Allows networks bound to this policy to receive DNS queries sent
by VMs or applications over VPN connections. When enabled, a
virtual IP address will be allocated from each of the sub-networks
that are bound to this policy. *)
  enable_logging : bool option; [@option]
      (** Controls whether logging is enabled for the networks bound to this policy.
Defaults to no logging if not set. *)
  name : string;  (** User assigned name for this policy. *)
  alternative_name_server_config :
    google_dns_policy__alternative_name_server_config list;
  networks : google_dns_policy__networks list;
  timeouts : google_dns_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_dns_policy *)

let google_dns_policy ?description ?enable_inbound_forwarding
    ?enable_logging ?timeouts ~name ~alternative_name_server_config
    ~networks __resource_id =
  let __resource_type = "google_dns_policy" in
  let __resource =
    {
      description;
      enable_inbound_forwarding;
      enable_logging;
      name;
      alternative_name_server_config;
      networks;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dns_policy __resource);
  ()
