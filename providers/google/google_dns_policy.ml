(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type alternative_name_server_config__target_name_servers = {
  forwarding_path : string prop option; [@option]
      (** Forwarding path for this TargetNameServer. If unset or 'default' Cloud DNS will make forwarding
decision based on address ranges, i.e. RFC1918 addresses go to the VPC, Non-RFC1918 addresses go
to the Internet. When set to 'private', Cloud DNS will always send queries through VPC for this target Possible values: [default, private] *)
  ipv4_address : string prop;  (** IPv4 address to forward to. *)
}
[@@deriving yojson_of]
(** Sets an alternative name server for the associated networks. When specified,
all DNS queries are forwarded to a name server that you choose. Names such as .internal
are not available when an alternative name server is specified. *)

type alternative_name_server_config = {
  target_name_servers :
    alternative_name_server_config__target_name_servers list;
}
[@@deriving yojson_of]
(** Sets an alternative name server for the associated networks.
When specified, all DNS queries are forwarded to a name server that you choose.
Names such as .internal are not available when an alternative name server is specified. *)

type networks = {
  network_url : string prop;
      (** The id or fully qualified URL of the VPC network to forward queries to.
This should be formatted like 'projects/{project}/global/networks/{network}' or
'https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}' *)
}
[@@deriving yojson_of]
(** List of network names specifying networks to which this policy is applied. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_dns_policy = {
  description : string prop option; [@option]
      (** A textual description field. Defaults to 'Managed by Terraform'. *)
  enable_inbound_forwarding : bool prop option; [@option]
      (** Allows networks bound to this policy to receive DNS queries sent
by VMs or applications over VPN connections. When enabled, a
virtual IP address will be allocated from each of the sub-networks
that are bound to this policy. *)
  enable_logging : bool prop option; [@option]
      (** Controls whether logging is enabled for the networks bound to this policy.
Defaults to no logging if not set. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** User assigned name for this policy. *)
  project : string prop option; [@option]  (** project *)
  alternative_name_server_config :
    alternative_name_server_config list;
  networks : networks list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_dns_policy *)

let alternative_name_server_config__target_name_servers
    ?forwarding_path ~ipv4_address () :
    alternative_name_server_config__target_name_servers =
  { forwarding_path; ipv4_address }

let alternative_name_server_config ~target_name_servers () :
    alternative_name_server_config =
  { target_name_servers }

let networks ~network_url () : networks = { network_url }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dns_policy ?description ?enable_inbound_forwarding
    ?enable_logging ?id ?project ?timeouts ~name
    ~alternative_name_server_config ~networks () : google_dns_policy
    =
  {
    description;
    enable_inbound_forwarding;
    enable_logging;
    id;
    name;
    project;
    alternative_name_server_config;
    networks;
    timeouts;
  }

type t = {
  description : string prop;
  enable_inbound_forwarding : bool prop;
  enable_logging : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

let make ?description ?enable_inbound_forwarding ?enable_logging ?id
    ?project ?timeouts ~name ~alternative_name_server_config
    ~networks __id =
  let __type = "google_dns_policy" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       enable_inbound_forwarding =
         Prop.computed __type __id "enable_inbound_forwarding";
       enable_logging = Prop.computed __type __id "enable_logging";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dns_policy
        (google_dns_policy ?description ?enable_inbound_forwarding
           ?enable_logging ?id ?project ?timeouts ~name
           ~alternative_name_server_config ~networks ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enable_inbound_forwarding
    ?enable_logging ?id ?project ?timeouts ~name
    ~alternative_name_server_config ~networks __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enable_inbound_forwarding ?enable_logging ?id
      ?project ?timeouts ~name ~alternative_name_server_config
      ~networks __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
