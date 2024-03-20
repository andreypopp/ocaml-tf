(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type virtual_machine_preferences__compute_engine_preferences__machine_preferences__allowed_machine_series = {
  code : string prop option; [@option]
      (** Code to identify a Compute Engine machine series. Consult https://cloud.google.com/compute/docs/machine-resource#machine_type_comparison for more details on the available series. *)
}
[@@deriving yojson_of]
(** Compute Engine machine series to consider for insights and recommendations. If empty, no restriction is applied on the machine series. *)

type virtual_machine_preferences__compute_engine_preferences__machine_preferences = {
  allowed_machine_series :
    virtual_machine_preferences__compute_engine_preferences__machine_preferences__allowed_machine_series
    list;
}
[@@deriving yojson_of]
(** The type of machines to consider when calculating virtual machine migration insights and recommendations. Not all machine types are available in all zones and regions. *)

type virtual_machine_preferences__compute_engine_preferences = {
  license_type : string prop option; [@option]
      (** License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan. 
 Possible values:
 LICENSE_TYPE_UNSPECIFIED
LICENSE_TYPE_DEFAULT
LICENSE_TYPE_BRING_YOUR_OWN_LICENSE *)
  machine_preferences :
    virtual_machine_preferences__compute_engine_preferences__machine_preferences
    list;
}
[@@deriving yojson_of]
(** The user preferences relating to Compute Engine target platform. *)

type virtual_machine_preferences__region_preferences = {
  preferred_regions : string prop list option; [@option]
      (** A list of preferred regions, ordered by the most preferred region first. Set only valid Google Cloud region names. See https://cloud.google.com/compute/docs/regions-zones for available regions. *)
}
[@@deriving yojson_of]
(** The user preferences relating to target regions. *)

type virtual_machine_preferences__sole_tenancy_preferences__node_types = {
  node_name : string prop option; [@option]
      (** Name of the Sole Tenant node. Consult https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes *)
}
[@@deriving yojson_of]
(** A list of sole tenant node types. An empty list means that all possible node types will be considered. *)

type virtual_machine_preferences__sole_tenancy_preferences = {
  commitment_plan : string prop option; [@option]
      (** Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with. 
 Possible values:
 COMMITMENT_PLAN_UNSPECIFIED
ON_DEMAND
COMMITMENT_1_YEAR
COMMITMENT_3_YEAR *)
  cpu_overcommit_ratio : float prop option; [@option]
      (** CPU overcommit ratio. Acceptable values are between 1.0 and 2.0 inclusive. *)
  host_maintenance_policy : string prop option; [@option]
      (** Sole Tenancy nodes maintenance policy. 
 Possible values:
 HOST_MAINTENANCE_POLICY_UNSPECIFIED
HOST_MAINTENANCE_POLICY_DEFAULT
HOST_MAINTENANCE_POLICY_RESTART_IN_PLACE
HOST_MAINTENANCE_POLICY_MIGRATE_WITHIN_NODE_GROUP *)
  node_types :
    virtual_machine_preferences__sole_tenancy_preferences__node_types
    list;
}
[@@deriving yojson_of]
(** Preferences concerning Sole Tenancy nodes and VMs. *)

type virtual_machine_preferences__vmware_engine_preferences = {
  commitment_plan : string prop option; [@option]
      (** Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with. 
 Possible values:
 COMMITMENT_PLAN_UNSPECIFIED
ON_DEMAND
COMMITMENT_1_YEAR_MONTHLY_PAYMENTS
COMMITMENT_3_YEAR_MONTHLY_PAYMENTS
COMMITMENT_1_YEAR_UPFRONT_PAYMENT
COMMITMENT_3_YEAR_UPFRONT_PAYMENT *)
  cpu_overcommit_ratio : float prop option; [@option]
      (** CPU overcommit ratio. Acceptable values are between 1.0 and 8.0, with 0.1 increment. *)
  memory_overcommit_ratio : float prop option; [@option]
      (** Memory overcommit ratio. Acceptable values are 1.0, 1.25, 1.5, 1.75 and 2.0. *)
  storage_deduplication_compression_ratio : float prop option;
      [@option]
      (** The Deduplication and Compression ratio is based on the logical (Used Before) space required to store data before applying deduplication and compression, in relation to the physical (Used After) space required after applying deduplication and compression. Specifically, the ratio is the Used Before space divided by the Used After space. For example, if the Used Before space is 3 GB, but the physical Used After space is 1 GB, the deduplication and compression ratio is 3x. Acceptable values are between 1.0 and 4.0. *)
}
[@@deriving yojson_of]
(** The user preferences relating to Google Cloud VMware Engine target platform. *)

type virtual_machine_preferences = {
  commitment_plan : string prop option; [@option]
      (** Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with. 
 Possible values:
 COMMITMENT_PLAN_UNSPECIFIED
COMMITMENT_PLAN_NONE
COMMITMENT_PLAN_ONE_YEAR
COMMITMENT_PLAN_THREE_YEARS *)
  sizing_optimization_strategy : string prop option; [@option]
      (** Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with. 
 Possible values:
 SIZING_OPTIMIZATION_STRATEGY_UNSPECIFIED
SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE
SIZING_OPTIMIZATION_STRATEGY_MODERATE
SIZING_OPTIMIZATION_STRATEGY_AGGRESSIVE *)
  target_product : string prop option; [@option]
      (** Target product for assets using this preference set. Specify either target product or business goal, but not both. 
 Possible values:
 COMPUTE_MIGRATION_TARGET_PRODUCT_UNSPECIFIED
COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE
COMPUTE_MIGRATION_TARGET_PRODUCT_VMWARE_ENGINE
COMPUTE_MIGRATION_TARGET_PRODUCT_SOLE_TENANCY *)
  compute_engine_preferences :
    virtual_machine_preferences__compute_engine_preferences list;
  region_preferences :
    virtual_machine_preferences__region_preferences list;
  sole_tenancy_preferences :
    virtual_machine_preferences__sole_tenancy_preferences list;
  vmware_engine_preferences :
    virtual_machine_preferences__vmware_engine_preferences list;
}
[@@deriving yojson_of]
(** VirtualMachinePreferences enables you to create sets of assumptions, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets. *)

type google_migration_center_preference_set = {
  description : string prop option; [@option]
      (** A description of the preference set. *)
  display_name : string prop option; [@option]
      (** User-friendly display name. Maximum length is 63 characters. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** Part of 'parent'. See documentation of 'projectsId'. *)
  preference_set_id : string prop;
      (** Required. User specified ID for the preference set. It will become the last component of the preference set name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression '[a-z]([a-z0-9-]{0,61}[a-z0-9])?'. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
  virtual_machine_preferences : virtual_machine_preferences list;
}
[@@deriving yojson_of]
(** google_migration_center_preference_set *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let virtual_machine_preferences__compute_engine_preferences__machine_preferences__allowed_machine_series
    ?code () :
    virtual_machine_preferences__compute_engine_preferences__machine_preferences__allowed_machine_series
    =
  { code }

let virtual_machine_preferences__compute_engine_preferences__machine_preferences
    ~allowed_machine_series () :
    virtual_machine_preferences__compute_engine_preferences__machine_preferences
    =
  { allowed_machine_series }

let virtual_machine_preferences__compute_engine_preferences
    ?license_type ~machine_preferences () :
    virtual_machine_preferences__compute_engine_preferences =
  { license_type; machine_preferences }

let virtual_machine_preferences__region_preferences
    ?preferred_regions () :
    virtual_machine_preferences__region_preferences =
  { preferred_regions }

let virtual_machine_preferences__sole_tenancy_preferences__node_types
    ?node_name () :
    virtual_machine_preferences__sole_tenancy_preferences__node_types
    =
  { node_name }

let virtual_machine_preferences__sole_tenancy_preferences
    ?commitment_plan ?cpu_overcommit_ratio ?host_maintenance_policy
    ~node_types () :
    virtual_machine_preferences__sole_tenancy_preferences =
  {
    commitment_plan;
    cpu_overcommit_ratio;
    host_maintenance_policy;
    node_types;
  }

let virtual_machine_preferences__vmware_engine_preferences
    ?commitment_plan ?cpu_overcommit_ratio ?memory_overcommit_ratio
    ?storage_deduplication_compression_ratio () :
    virtual_machine_preferences__vmware_engine_preferences =
  {
    commitment_plan;
    cpu_overcommit_ratio;
    memory_overcommit_ratio;
    storage_deduplication_compression_ratio;
  }

let virtual_machine_preferences ?commitment_plan
    ?sizing_optimization_strategy ?target_product
    ~compute_engine_preferences ~region_preferences
    ~sole_tenancy_preferences ~vmware_engine_preferences () :
    virtual_machine_preferences =
  {
    commitment_plan;
    sizing_optimization_strategy;
    target_product;
    compute_engine_preferences;
    region_preferences;
    sole_tenancy_preferences;
    vmware_engine_preferences;
  }

let google_migration_center_preference_set ?description ?display_name
    ?id ?project ?timeouts ~location ~preference_set_id
    ~virtual_machine_preferences () :
    google_migration_center_preference_set =
  {
    description;
    display_name;
    id;
    location;
    preference_set_id;
    project;
    timeouts;
    virtual_machine_preferences;
  }

type t = {
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  preference_set_id : string prop;
  project : string prop;
  update_time : string prop;
}

let make ?description ?display_name ?id ?project ?timeouts ~location
    ~preference_set_id ~virtual_machine_preferences __id =
  let __type = "google_migration_center_preference_set" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       preference_set_id =
         Prop.computed __type __id "preference_set_id";
       project = Prop.computed __type __id "project";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_migration_center_preference_set
        (google_migration_center_preference_set ?description
           ?display_name ?id ?project ?timeouts ~location
           ~preference_set_id ~virtual_machine_preferences ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id ?project
    ?timeouts ~location ~preference_set_id
    ~virtual_machine_preferences __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?project ?timeouts ~location
      ~preference_set_id ~virtual_machine_preferences __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
