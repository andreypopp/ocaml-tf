(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_active_directory_domain__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_active_directory_domain__timeouts *)

type google_active_directory_domain = {
  admin : string option; [@option]
      (** The name of delegated administrator account used to perform Active Directory operations.
If not specified, setupadmin will be used. *)
  authorized_networks : string list option; [@option]
      (** The full names of the Google Compute Engine networks the domain instance is connected to. The domain is only available on networks listed in authorizedNetworks.
If CIDR subnets overlap between networks, domain creation will fail. *)
  domain_name : string;
      (** The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions,
https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains. *)
  labels : (string * string) list option; [@option]
      (** Resource labels that can contain user-provided metadata

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  locations : string list;
      (** Locations where domain needs to be provisioned. [regions][compute/docs/regions-zones/]
e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block. *)
  reserved_ip_range : string;
      (** The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger.
Ranges must be unique and non-overlapping with existing subnets in authorizedNetworks *)
  timeouts : google_active_directory_domain__timeouts option;
}
[@@deriving yojson_of]
(** google_active_directory_domain *)

let google_active_directory_domain ?admin ?authorized_networks
    ?labels ?timeouts ~domain_name ~locations ~reserved_ip_range
    __resource_id =
  let __resource_type = "google_active_directory_domain" in
  let __resource =
    {
      admin;
      authorized_networks;
      domain_name;
      labels;
      locations;
      reserved_ip_range;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_active_directory_domain __resource);
  ()
