(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_netapp_storage_pool = {
  active_directory : string prop option; [@option]
      (** Specifies the Active Directory policy to be used. Format: 'projects/{{project}}/locations/{{location}}/activeDirectories/{{name}}'.
The policy needs to be in the same location as the storage pool. *)
  capacity_gib : string prop;
      (** Capacity of the storage pool (in GiB). *)
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  kms_config : string prop option; [@option]
      (** Specifies the CMEK policy to be used for volume encryption. Format: 'projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}'.
The policy needs to be in the same location as the storage pool. *)
  labels : (string * string prop) list option; [@option]
      (** Labels as key value pairs. Example: '{ owner: Bob, department: finance, purpose: testing }'.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  ldap_enabled : bool prop option; [@option]
      (** When enabled, the volumes uses Active Directory as LDAP name service for UID/GID lookups. Required to enable extended group support for NFSv3,
using security identifiers for NFSv4.1 or principal names for kerberized NFSv4.1. *)
  location : string prop;
      (** Name of the location. Usually a region name, expect for some STANDARD service level pools which require a zone name. *)
  name : string prop;
      (** The resource name of the storage pool. Needs to be unique per location. *)
  network : string prop;
      (** VPC network name with format: 'projects/{{project}}/global/networks/{{network}}' *)
  project : string prop option; [@option]  (** project *)
  service_level : string prop;
      (** Service level of the storage pool. Possible values: [PREMIUM, EXTREME, STANDARD] *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_netapp_storage_pool *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_netapp_storage_pool ?active_directory ?description ?id
    ?kms_config ?labels ?ldap_enabled ?project ?timeouts
    ~capacity_gib ~location ~name ~network ~service_level () :
    google_netapp_storage_pool =
  {
    active_directory;
    capacity_gib;
    description;
    id;
    kms_config;
    labels;
    ldap_enabled;
    location;
    name;
    network;
    project;
    service_level;
    timeouts;
  }

type t = {
  active_directory : string prop;
  capacity_gib : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  encryption_type : string prop;
  id : string prop;
  kms_config : string prop;
  labels : (string * string) list prop;
  ldap_enabled : bool prop;
  location : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  service_level : string prop;
  terraform_labels : (string * string) list prop;
  volume_capacity_gib : string prop;
  volume_count : float prop;
}

let make ?active_directory ?description ?id ?kms_config ?labels
    ?ldap_enabled ?project ?timeouts ~capacity_gib ~location ~name
    ~network ~service_level __id =
  let __type = "google_netapp_storage_pool" in
  let __attrs =
    ({
       active_directory =
         Prop.computed __type __id "active_directory";
       capacity_gib = Prop.computed __type __id "capacity_gib";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       encryption_type = Prop.computed __type __id "encryption_type";
       id = Prop.computed __type __id "id";
       kms_config = Prop.computed __type __id "kms_config";
       labels = Prop.computed __type __id "labels";
       ldap_enabled = Prop.computed __type __id "ldap_enabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       service_level = Prop.computed __type __id "service_level";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       volume_capacity_gib =
         Prop.computed __type __id "volume_capacity_gib";
       volume_count = Prop.computed __type __id "volume_count";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_netapp_storage_pool
        (google_netapp_storage_pool ?active_directory ?description
           ?id ?kms_config ?labels ?ldap_enabled ?project ?timeouts
           ~capacity_gib ~location ~name ~network ~service_level ());
    attrs = __attrs;
  }

let register ?tf_module ?active_directory ?description ?id
    ?kms_config ?labels ?ldap_enabled ?project ?timeouts
    ~capacity_gib ~location ~name ~network ~service_level __id =
  let (r : _ Tf_core.resource) =
    make ?active_directory ?description ?id ?kms_config ?labels
      ?ldap_enabled ?project ?timeouts ~capacity_gib ~location ~name
      ~network ~service_level __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
