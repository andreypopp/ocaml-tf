(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloud_logging_config = {
  enable_logging : bool prop;
      (** If set, enable query logging for this ManagedZone. False by default, making logging opt-in. *)
}
[@@deriving yojson_of]
(** Cloud logging configuration *)

type dnssec_config__default_key_specs = {
  algorithm : string prop option; [@option]
      (** String mnemonic specifying the DNSSEC algorithm of this key Possible values: [ecdsap256sha256, ecdsap384sha384, rsasha1, rsasha256, rsasha512] *)
  key_length : float prop option; [@option]
      (** Length of the keys in bits *)
  key_type : string prop option; [@option]
      (** Specifies whether this is a key signing key (KSK) or a zone
signing key (ZSK). Key signing keys have the Secure Entry
Point flag set and, when active, will only be used to sign
resource record sets of type DNSKEY. Zone signing keys do
not have the Secure Entry Point flag set and will be used
to sign all other types of resource record sets. Possible values: [keySigning, zoneSigning] *)
  kind : string prop option; [@option]
      (** Identifies what kind of resource this is *)
}
[@@deriving yojson_of]
(** Specifies parameters that will be used for generating initial DnsKeys
for this ManagedZone. If you provide a spec for keySigning or zoneSigning,
you must also provide one for the other.
default_key_specs can only be updated when the state is 'off'. *)

type dnssec_config = {
  kind : string prop option; [@option]
      (** Identifies what kind of resource this is *)
  non_existence : string prop option; [@option]
      (** Specifies the mechanism used to provide authenticated denial-of-existence responses.
non_existence can only be updated when the state is 'off'. Possible values: [nsec, nsec3] *)
  state : string prop option; [@option]
      (** Specifies whether DNSSEC is enabled, and what mode it is in Possible values: [off, on, transfer] *)
  default_key_specs : dnssec_config__default_key_specs list;
}
[@@deriving yojson_of]
(** DNSSEC configuration *)

type forwarding_config__target_name_servers = {
  forwarding_path : string prop option; [@option]
      (** Forwarding path for this TargetNameServer. If unset or 'default' Cloud DNS will make forwarding
decision based on address ranges, i.e. RFC1918 addresses go to the VPC, Non-RFC1918 addresses go
to the Internet. When set to 'private', Cloud DNS will always send queries through VPC for this target Possible values: [default, private] *)
  ipv4_address : string prop;
      (** IPv4 address of a target name server. *)
}
[@@deriving yojson_of]
(** List of target name servers to forward to. Cloud DNS will
select the best available name server if more than
one target is given. *)

type forwarding_config = {
  target_name_servers : forwarding_config__target_name_servers list;
}
[@@deriving yojson_of]
(** The presence for this field indicates that outbound forwarding is enabled
for this zone. The value of this field contains the set of destinations
to forward to. *)

type peering_config__target_network = {
  network_url : string prop;
      (** The id or fully qualified URL of the VPC network to forward queries to.
This should be formatted like 'projects/{project}/global/networks/{network}' or
'https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}' *)
}
[@@deriving yojson_of]
(** The network with which to peer. *)

type peering_config = {
  target_network : peering_config__target_network list;
}
[@@deriving yojson_of]
(** The presence of this field indicates that DNS Peering is enabled for this
zone. The value of this field contains the network to peer with. *)

type private_visibility_config__gke_clusters = {
  gke_cluster_name : string prop;
      (** The resource name of the cluster to bind this ManagedZone to.
This should be specified in the format like
'projects/*/locations/*/clusters/*' *)
}
[@@deriving yojson_of]
(** The list of Google Kubernetes Engine clusters that can see this zone. *)

type private_visibility_config__networks = {
  network_url : string prop;
      (** The id or fully qualified URL of the VPC network to bind to.
This should be formatted like 'projects/{project}/global/networks/{network}' or
'https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}' *)
}
[@@deriving yojson_of]
(** The list of VPC networks that can see this zone. Until the provider updates to use the Terraform 0.12 SDK in a future release, you
may experience issues with this resource while updating. If you've defined a 'networks' block and
add another 'networks' block while keeping the old block, Terraform will see an incorrect diff
and apply an incorrect update to the resource. If you encounter this issue, remove all 'networks'
blocks in an update and then apply another update adding all of them back simultaneously. *)

type private_visibility_config = {
  gke_clusters : private_visibility_config__gke_clusters list;
  networks : private_visibility_config__networks list;
}
[@@deriving yojson_of]
(** For privately visible zones, the set of Virtual Private Cloud
resources that the zone is visible from. At least one of 'gke_clusters' or 'networks' must be specified. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_dns_managed_zone = {
  description : string prop option; [@option]
      (** A textual description field. Defaults to 'Managed by Terraform'. *)
  dns_name : string prop;
      (** The DNS name of this managed zone, for instance example.com.. *)
  force_destroy : bool prop option; [@option]
      (** Set this true to delete all records in the zone. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** A set of key/value label pairs to assign to this ManagedZone.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;
      (** User assigned name for this resource.
Must be unique within the project. *)
  project : string prop option; [@option]  (** project *)
  visibility : string prop option; [@option]
      (** The zone's visibility: public zones are exposed to the Internet,
while private zones are visible only to Virtual Private Cloud resources. Default value: public Possible values: [private, public] *)
  cloud_logging_config : cloud_logging_config list;
  dnssec_config : dnssec_config list;
  forwarding_config : forwarding_config list;
  peering_config : peering_config list;
  private_visibility_config : private_visibility_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_dns_managed_zone *)

let cloud_logging_config ~enable_logging () : cloud_logging_config =
  { enable_logging }

let dnssec_config__default_key_specs ?algorithm ?key_length ?key_type
    ?kind () : dnssec_config__default_key_specs =
  { algorithm; key_length; key_type; kind }

let dnssec_config ?kind ?non_existence ?state ~default_key_specs () :
    dnssec_config =
  { kind; non_existence; state; default_key_specs }

let forwarding_config__target_name_servers ?forwarding_path
    ~ipv4_address () : forwarding_config__target_name_servers =
  { forwarding_path; ipv4_address }

let forwarding_config ~target_name_servers () : forwarding_config =
  { target_name_servers }

let peering_config__target_network ~network_url () :
    peering_config__target_network =
  { network_url }

let peering_config ~target_network () : peering_config =
  { target_network }

let private_visibility_config__gke_clusters ~gke_cluster_name () :
    private_visibility_config__gke_clusters =
  { gke_cluster_name }

let private_visibility_config__networks ~network_url () :
    private_visibility_config__networks =
  { network_url }

let private_visibility_config ~gke_clusters ~networks () :
    private_visibility_config =
  { gke_clusters; networks }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dns_managed_zone ?description ?force_destroy ?id ?labels
    ?project ?visibility ?timeouts ~dns_name ~name
    ~cloud_logging_config ~dnssec_config ~forwarding_config
    ~peering_config ~private_visibility_config () :
    google_dns_managed_zone =
  {
    description;
    dns_name;
    force_destroy;
    id;
    labels;
    name;
    project;
    visibility;
    cloud_logging_config;
    dnssec_config;
    forwarding_config;
    peering_config;
    private_visibility_config;
    timeouts;
  }

type t = {
  creation_time : string prop;
  description : string prop;
  dns_name : string prop;
  effective_labels : (string * string) list prop;
  force_destroy : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  managed_zone_id : float prop;
  name : string prop;
  name_servers : string list prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  visibility : string prop;
}

let make ?description ?force_destroy ?id ?labels ?project ?visibility
    ?timeouts ~dns_name ~name ~cloud_logging_config ~dnssec_config
    ~forwarding_config ~peering_config ~private_visibility_config
    __id =
  let __type = "google_dns_managed_zone" in
  let __attrs =
    ({
       creation_time = Prop.computed __type __id "creation_time";
       description = Prop.computed __type __id "description";
       dns_name = Prop.computed __type __id "dns_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       managed_zone_id = Prop.computed __type __id "managed_zone_id";
       name = Prop.computed __type __id "name";
       name_servers = Prop.computed __type __id "name_servers";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       visibility = Prop.computed __type __id "visibility";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dns_managed_zone
        (google_dns_managed_zone ?description ?force_destroy ?id
           ?labels ?project ?visibility ?timeouts ~dns_name ~name
           ~cloud_logging_config ~dnssec_config ~forwarding_config
           ~peering_config ~private_visibility_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?force_destroy ?id ?labels
    ?project ?visibility ?timeouts ~dns_name ~name
    ~cloud_logging_config ~dnssec_config ~forwarding_config
    ~peering_config ~private_visibility_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?force_destroy ?id ?labels ?project ?visibility
      ?timeouts ~dns_name ~name ~cloud_logging_config ~dnssec_config
      ~forwarding_config ~peering_config ~private_visibility_config
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
