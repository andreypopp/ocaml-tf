(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type consumer_accept_lists = {
  connection_limit : float prop;
      (** The number of consumer forwarding rules the consumer project can
create. *)
  network_url : string prop option; [@option]
      (** The network that is allowed to connect to this service attachment.
Only one of project_id_or_num and network_url may be set. *)
  project_id_or_num : string prop option; [@option]
      (** A project that is allowed to connect to this service attachment.
Only one of project_id_or_num and network_url may be set. *)
}
[@@deriving yojson_of]
(** An array of projects that are allowed to connect to this service
attachment. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type connected_endpoints = {
  endpoint : string prop;  (** endpoint *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]

type google_compute_service_attachment = {
  connection_preference : string prop;
      (** The connection preference to use for this service attachment. Valid
values include ACCEPT_AUTOMATIC, ACCEPT_MANUAL. *)
  consumer_reject_lists : string prop list option; [@option]
      (** An array of projects that are not allowed to connect to this service
attachment. *)
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  domain_names : string prop list option; [@option]
      (** If specified, the domain name will be used during the integration between
the PSC connected endpoints and the Cloud DNS. For example, this is a
valid domain name: p.mycompany.com.. Current max number of domain names
supported is 1. *)
  enable_proxy_protocol : bool prop;
      (** If true, enable the proxy protocol which is for supplying client TCP/IP
address data in TCP connections that traverse proxies on their way to
destination servers. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?'
which means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash. *)
  nat_subnets : string prop list;
      (** An array of subnets that is provided for NAT in this service attachment. *)
  project : string prop option; [@option]  (** project *)
  reconcile_connections : bool prop option; [@option]
      (** This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints.

If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified .
If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list. *)
  region : string prop option; [@option]
      (** URL of the region where the resource resides. *)
  target_service : string prop;
      (** The URL of a forwarding rule that represents the service identified by
this service attachment. *)
  consumer_accept_lists : consumer_accept_lists list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_service_attachment *)

let consumer_accept_lists ?network_url ?project_id_or_num
    ~connection_limit () : consumer_accept_lists =
  { connection_limit; network_url; project_id_or_num }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_service_attachment ?consumer_reject_lists
    ?description ?domain_names ?id ?project ?reconcile_connections
    ?region ?timeouts ~connection_preference ~enable_proxy_protocol
    ~name ~nat_subnets ~target_service ~consumer_accept_lists () :
    google_compute_service_attachment =
  {
    connection_preference;
    consumer_reject_lists;
    description;
    domain_names;
    enable_proxy_protocol;
    id;
    name;
    nat_subnets;
    project;
    reconcile_connections;
    region;
    target_service;
    consumer_accept_lists;
    timeouts;
  }

type t = {
  connected_endpoints : connected_endpoints list prop;
  connection_preference : string prop;
  consumer_reject_lists : string list prop;
  description : string prop;
  domain_names : string list prop;
  enable_proxy_protocol : bool prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  nat_subnets : string list prop;
  project : string prop;
  reconcile_connections : bool prop;
  region : string prop;
  self_link : string prop;
  target_service : string prop;
}

let make ?consumer_reject_lists ?description ?domain_names ?id
    ?project ?reconcile_connections ?region ?timeouts
    ~connection_preference ~enable_proxy_protocol ~name ~nat_subnets
    ~target_service ~consumer_accept_lists __id =
  let __type = "google_compute_service_attachment" in
  let __attrs =
    ({
       connected_endpoints =
         Prop.computed __type __id "connected_endpoints";
       connection_preference =
         Prop.computed __type __id "connection_preference";
       consumer_reject_lists =
         Prop.computed __type __id "consumer_reject_lists";
       description = Prop.computed __type __id "description";
       domain_names = Prop.computed __type __id "domain_names";
       enable_proxy_protocol =
         Prop.computed __type __id "enable_proxy_protocol";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       nat_subnets = Prop.computed __type __id "nat_subnets";
       project = Prop.computed __type __id "project";
       reconcile_connections =
         Prop.computed __type __id "reconcile_connections";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       target_service = Prop.computed __type __id "target_service";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_service_attachment
        (google_compute_service_attachment ?consumer_reject_lists
           ?description ?domain_names ?id ?project
           ?reconcile_connections ?region ?timeouts
           ~connection_preference ~enable_proxy_protocol ~name
           ~nat_subnets ~target_service ~consumer_accept_lists ());
    attrs = __attrs;
  }

let register ?tf_module ?consumer_reject_lists ?description
    ?domain_names ?id ?project ?reconcile_connections ?region
    ?timeouts ~connection_preference ~enable_proxy_protocol ~name
    ~nat_subnets ~target_service ~consumer_accept_lists __id =
  let (r : _ Tf_core.resource) =
    make ?consumer_reject_lists ?description ?domain_names ?id
      ?project ?reconcile_connections ?region ?timeouts
      ~connection_preference ~enable_proxy_protocol ~name
      ~nat_subnets ~target_service ~consumer_accept_lists __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
