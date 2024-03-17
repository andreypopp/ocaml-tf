(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_netapp_storage_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_netapp_storage_pool__timeouts *)

type google_netapp_storage_pool = {
  active_directory : string option; [@option]
      (** Specifies the Active Directory policy to be used. Format: 'projects/{{project}}/locations/{{location}}/activeDirectories/{{name}}'.
The policy needs to be in the same location as the storage pool. *)
  capacity_gib : string;
      (** Capacity of the storage pool (in GiB). *)
  description : string option; [@option]
      (** An optional description of this resource. *)
  kms_config : string option; [@option]
      (** Specifies the CMEK policy to be used for volume encryption. Format: 'projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}'.
The policy needs to be in the same location as the storage pool. *)
  labels : (string * string) list option; [@option]
      (** Labels as key value pairs. Example: '{ owner: Bob, department: finance, purpose: testing }'.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  ldap_enabled : bool option; [@option]
      (** When enabled, the volumes uses Active Directory as LDAP name service for UID/GID lookups. Required to enable extended group support for NFSv3,
using security identifiers for NFSv4.1 or principal names for kerberized NFSv4.1. *)
  location : string;
      (** Name of the location. Usually a region name, expect for some STANDARD service level pools which require a zone name. *)
  name : string;
      (** The resource name of the storage pool. Needs to be unique per location. *)
  network : string;
      (** VPC network name with format: 'projects/{{project}}/global/networks/{{network}}' *)
  service_level : string;
      (** Service level of the storage pool. Possible values: [PREMIUM, EXTREME, STANDARD] *)
  timeouts : google_netapp_storage_pool__timeouts option;
}
[@@deriving yojson_of]
(** google_netapp_storage_pool *)

let google_netapp_storage_pool ?active_directory ?description
    ?kms_config ?labels ?ldap_enabled ?timeouts ~capacity_gib
    ~location ~name ~network ~service_level __resource_id =
  let __resource_type = "google_netapp_storage_pool" in
  let __resource =
    {
      active_directory;
      capacity_gib;
      description;
      kms_config;
      labels;
      ldap_enabled;
      location;
      name;
      network;
      service_level;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_netapp_storage_pool __resource);
  ()
