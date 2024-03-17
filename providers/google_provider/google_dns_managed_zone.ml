(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dns_managed_zone__cloud_logging_config = {
  enable_logging : bool;
      (** If set, enable query logging for this ManagedZone. False by default, making logging opt-in. *)
}
[@@deriving yojson_of]
(** Cloud logging configuration *)

type google_dns_managed_zone__dnssec_config__default_key_specs = {
  algorithm : string option; [@option]
      (** String mnemonic specifying the DNSSEC algorithm of this key Possible values: [ecdsap256sha256, ecdsap384sha384, rsasha1, rsasha256, rsasha512] *)
  key_length : float option; [@option]
      (** Length of the keys in bits *)
  key_type : string option; [@option]
      (** Specifies whether this is a key signing key (KSK) or a zone
signing key (ZSK). Key signing keys have the Secure Entry
Point flag set and, when active, will only be used to sign
resource record sets of type DNSKEY. Zone signing keys do
not have the Secure Entry Point flag set and will be used
to sign all other types of resource record sets. Possible values: [keySigning, zoneSigning] *)
  kind : string option; [@option]
      (** Identifies what kind of resource this is *)
}
[@@deriving yojson_of]
(** Specifies parameters that will be used for generating initial DnsKeys
for this ManagedZone. If you provide a spec for keySigning or zoneSigning,
you must also provide one for the other.
default_key_specs can only be updated when the state is 'off'. *)

type google_dns_managed_zone__dnssec_config = {
  kind : string option; [@option]
      (** Identifies what kind of resource this is *)
  non_existence : string option; [@option]
      (** Specifies the mechanism used to provide authenticated denial-of-existence responses.
non_existence can only be updated when the state is 'off'. Possible values: [nsec, nsec3] *)
  state : string option; [@option]
      (** Specifies whether DNSSEC is enabled, and what mode it is in Possible values: [off, on, transfer] *)
  default_key_specs :
    google_dns_managed_zone__dnssec_config__default_key_specs list;
}
[@@deriving yojson_of]
(** DNSSEC configuration *)

type google_dns_managed_zone__forwarding_config__target_name_servers = {
  forwarding_path : string option; [@option]
      (** Forwarding path for this TargetNameServer. If unset or 'default' Cloud DNS will make forwarding
decision based on address ranges, i.e. RFC1918 addresses go to the VPC, Non-RFC1918 addresses go
to the Internet. When set to 'private', Cloud DNS will always send queries through VPC for this target Possible values: [default, private] *)
  ipv4_address : string;  (** IPv4 address of a target name server. *)
}
[@@deriving yojson_of]
(** List of target name servers to forward to. Cloud DNS will
select the best available name server if more than
one target is given. *)

type google_dns_managed_zone__forwarding_config = {
  target_name_servers :
    google_dns_managed_zone__forwarding_config__target_name_servers
    list;
}
[@@deriving yojson_of]
(** The presence for this field indicates that outbound forwarding is enabled
for this zone. The value of this field contains the set of destinations
to forward to. *)

type google_dns_managed_zone__peering_config__target_network = {
  network_url : string;
      (** The id or fully qualified URL of the VPC network to forward queries to.
This should be formatted like 'projects/{project}/global/networks/{network}' or
'https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}' *)
}
[@@deriving yojson_of]
(** The network with which to peer. *)

type google_dns_managed_zone__peering_config = {
  target_network :
    google_dns_managed_zone__peering_config__target_network list;
}
[@@deriving yojson_of]
(** The presence of this field indicates that DNS Peering is enabled for this
zone. The value of this field contains the network to peer with. *)

type google_dns_managed_zone__private_visibility_config__gke_clusters = {
  gke_cluster_name : string;
      (** The resource name of the cluster to bind this ManagedZone to.
This should be specified in the format like
'projects/*/locations/*/clusters/*' *)
}
[@@deriving yojson_of]
(** The list of Google Kubernetes Engine clusters that can see this zone. *)

type google_dns_managed_zone__private_visibility_config__networks = {
  network_url : string;
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

type google_dns_managed_zone__private_visibility_config = {
  gke_clusters :
    google_dns_managed_zone__private_visibility_config__gke_clusters
    list;
  networks :
    google_dns_managed_zone__private_visibility_config__networks list;
}
[@@deriving yojson_of]
(** For privately visible zones, the set of Virtual Private Cloud
resources that the zone is visible from. At least one of 'gke_clusters' or 'networks' must be specified. *)

type google_dns_managed_zone__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dns_managed_zone__timeouts *)

type google_dns_managed_zone = {
  description : string option; [@option]
      (** A textual description field. Defaults to 'Managed by Terraform'. *)
  dns_name : string;
      (** The DNS name of this managed zone, for instance example.com.. *)
  force_destroy : bool option; [@option]
      (** Set this true to delete all records in the zone. *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]
      (** A set of key/value label pairs to assign to this ManagedZone.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;
      (** User assigned name for this resource.
Must be unique within the project. *)
  project : string option; [@option]  (** project *)
  visibility : string option; [@option]
      (** The zone's visibility: public zones are exposed to the Internet,
while private zones are visible only to Virtual Private Cloud resources. Default value: public Possible values: [private, public] *)
  cloud_logging_config :
    google_dns_managed_zone__cloud_logging_config list;
  dnssec_config : google_dns_managed_zone__dnssec_config list;
  forwarding_config :
    google_dns_managed_zone__forwarding_config list;
  peering_config : google_dns_managed_zone__peering_config list;
  private_visibility_config :
    google_dns_managed_zone__private_visibility_config list;
  timeouts : google_dns_managed_zone__timeouts option;
}
[@@deriving yojson_of]
(** google_dns_managed_zone *)

let google_dns_managed_zone ?description ?force_destroy ?id ?labels
    ?project ?visibility ?timeouts ~dns_name ~name
    ~cloud_logging_config ~dnssec_config ~forwarding_config
    ~peering_config ~private_visibility_config __resource_id =
  let __resource_type = "google_dns_managed_zone" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dns_managed_zone __resource);
  ()
