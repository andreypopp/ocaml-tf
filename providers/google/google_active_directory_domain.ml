(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_active_directory_domain = {
  admin : string prop option; [@option]
      (** The name of delegated administrator account used to perform Active Directory operations.
If not specified, setupadmin will be used. *)
  authorized_networks : string prop list option; [@option]
      (** The full names of the Google Compute Engine networks the domain instance is connected to. The domain is only available on networks listed in authorizedNetworks.
If CIDR subnets overlap between networks, domain creation will fail. *)
  domain_name : string prop;
      (** The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions,
https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Resource labels that can contain user-provided metadata

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  locations : string prop list;
      (** Locations where domain needs to be provisioned. [regions][compute/docs/regions-zones/]
e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block. *)
  project : string prop option; [@option]  (** project *)
  reserved_ip_range : string prop;
      (** The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger.
Ranges must be unique and non-overlapping with existing subnets in authorizedNetworks *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_active_directory_domain *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_active_directory_domain ?admin ?authorized_networks ?id
    ?labels ?project ?timeouts ~domain_name ~locations
    ~reserved_ip_range () : google_active_directory_domain =
  {
    admin;
    authorized_networks;
    domain_name;
    id;
    labels;
    locations;
    project;
    reserved_ip_range;
    timeouts;
  }

type t = {
  admin : string prop;
  authorized_networks : string list prop;
  domain_name : string prop;
  effective_labels : (string * string) list prop;
  fqdn : string prop;
  id : string prop;
  labels : (string * string) list prop;
  locations : string list prop;
  name : string prop;
  project : string prop;
  reserved_ip_range : string prop;
  terraform_labels : (string * string) list prop;
}

let register ?tf_module ?admin ?authorized_networks ?id ?labels
    ?project ?timeouts ~domain_name ~locations ~reserved_ip_range
    __resource_id =
  let __resource_type = "google_active_directory_domain" in
  let __resource =
    google_active_directory_domain ?admin ?authorized_networks ?id
      ?labels ?project ?timeouts ~domain_name ~locations
      ~reserved_ip_range ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_active_directory_domain __resource);
  let __resource_attributes =
    ({
       admin = Prop.computed __resource_type __resource_id "admin";
       authorized_networks =
         Prop.computed __resource_type __resource_id
           "authorized_networks";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       fqdn = Prop.computed __resource_type __resource_id "fqdn";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       locations =
         Prop.computed __resource_type __resource_id "locations";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       reserved_ip_range =
         Prop.computed __resource_type __resource_id
           "reserved_ip_range";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
     }
      : t)
  in
  __resource_attributes
