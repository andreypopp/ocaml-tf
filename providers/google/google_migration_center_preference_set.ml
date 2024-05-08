(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type virtual_machine_preferences__compute_engine_preferences__machine_preferences__allowed_machine_series = {
  code : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       virtual_machine_preferences__compute_engine_preferences__machine_preferences__allowed_machine_series) ->
  ()

let yojson_of_virtual_machine_preferences__compute_engine_preferences__machine_preferences__allowed_machine_series
    =
  (function
   | { code = v_code } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_machine_preferences__compute_engine_preferences__machine_preferences__allowed_machine_series ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_machine_preferences__compute_engine_preferences__machine_preferences__allowed_machine_series

[@@@deriving.end]

type virtual_machine_preferences__compute_engine_preferences__machine_preferences = {
  allowed_machine_series :
    virtual_machine_preferences__compute_engine_preferences__machine_preferences__allowed_machine_series
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       virtual_machine_preferences__compute_engine_preferences__machine_preferences) ->
  ()

let yojson_of_virtual_machine_preferences__compute_engine_preferences__machine_preferences
    =
  (function
   | { allowed_machine_series = v_allowed_machine_series } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_allowed_machine_series then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_virtual_machine_preferences__compute_engine_preferences__machine_preferences__allowed_machine_series)
               v_allowed_machine_series
           in
           let bnd = "allowed_machine_series", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : virtual_machine_preferences__compute_engine_preferences__machine_preferences ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_machine_preferences__compute_engine_preferences__machine_preferences

[@@@deriving.end]

type virtual_machine_preferences__compute_engine_preferences = {
  license_type : string prop option; [@option]
  machine_preferences :
    virtual_machine_preferences__compute_engine_preferences__machine_preferences
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : virtual_machine_preferences__compute_engine_preferences) ->
  ()

let yojson_of_virtual_machine_preferences__compute_engine_preferences
    =
  (function
   | {
       license_type = v_license_type;
       machine_preferences = v_machine_preferences;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_machine_preferences then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_virtual_machine_preferences__compute_engine_preferences__machine_preferences)
               v_machine_preferences
           in
           let bnd = "machine_preferences", arg in
           bnd :: bnds
       in
       let bnds =
         match v_license_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "license_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_machine_preferences__compute_engine_preferences ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_machine_preferences__compute_engine_preferences

[@@@deriving.end]

type virtual_machine_preferences__region_preferences = {
  preferred_regions : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : virtual_machine_preferences__region_preferences) -> ()

let yojson_of_virtual_machine_preferences__region_preferences =
  (function
   | { preferred_regions = v_preferred_regions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_preferred_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "preferred_regions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_machine_preferences__region_preferences ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_machine_preferences__region_preferences

[@@@deriving.end]

type virtual_machine_preferences__sole_tenancy_preferences__node_types = {
  node_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       virtual_machine_preferences__sole_tenancy_preferences__node_types) ->
  ()

let yojson_of_virtual_machine_preferences__sole_tenancy_preferences__node_types
    =
  (function
   | { node_name = v_node_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_node_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_machine_preferences__sole_tenancy_preferences__node_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_machine_preferences__sole_tenancy_preferences__node_types

[@@@deriving.end]

type virtual_machine_preferences__sole_tenancy_preferences = {
  commitment_plan : string prop option; [@option]
  cpu_overcommit_ratio : float prop option; [@option]
  host_maintenance_policy : string prop option; [@option]
  node_types :
    virtual_machine_preferences__sole_tenancy_preferences__node_types
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : virtual_machine_preferences__sole_tenancy_preferences) ->
  ()

let yojson_of_virtual_machine_preferences__sole_tenancy_preferences =
  (function
   | {
       commitment_plan = v_commitment_plan;
       cpu_overcommit_ratio = v_cpu_overcommit_ratio;
       host_maintenance_policy = v_host_maintenance_policy;
       node_types = v_node_types;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_node_types then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_virtual_machine_preferences__sole_tenancy_preferences__node_types)
               v_node_types
           in
           let bnd = "node_types", arg in
           bnd :: bnds
       in
       let bnds =
         match v_host_maintenance_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_maintenance_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu_overcommit_ratio with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpu_overcommit_ratio", arg in
             bnd :: bnds
       in
       let bnds =
         match v_commitment_plan with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "commitment_plan", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_machine_preferences__sole_tenancy_preferences ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_machine_preferences__sole_tenancy_preferences

[@@@deriving.end]

type virtual_machine_preferences__vmware_engine_preferences = {
  commitment_plan : string prop option; [@option]
  cpu_overcommit_ratio : float prop option; [@option]
  memory_overcommit_ratio : float prop option; [@option]
  storage_deduplication_compression_ratio : float prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : virtual_machine_preferences__vmware_engine_preferences) ->
  ()

let yojson_of_virtual_machine_preferences__vmware_engine_preferences
    =
  (function
   | {
       commitment_plan = v_commitment_plan;
       cpu_overcommit_ratio = v_cpu_overcommit_ratio;
       memory_overcommit_ratio = v_memory_overcommit_ratio;
       storage_deduplication_compression_ratio =
         v_storage_deduplication_compression_ratio;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_deduplication_compression_ratio with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "storage_deduplication_compression_ratio", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_memory_overcommit_ratio with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "memory_overcommit_ratio", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu_overcommit_ratio with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpu_overcommit_ratio", arg in
             bnd :: bnds
       in
       let bnds =
         match v_commitment_plan with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "commitment_plan", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_machine_preferences__vmware_engine_preferences ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_machine_preferences__vmware_engine_preferences

[@@@deriving.end]

type virtual_machine_preferences = {
  commitment_plan : string prop option; [@option]
  sizing_optimization_strategy : string prop option; [@option]
  target_product : string prop option; [@option]
  compute_engine_preferences :
    virtual_machine_preferences__compute_engine_preferences list;
      [@default []] [@yojson_drop_default ( = )]
  region_preferences :
    virtual_machine_preferences__region_preferences list;
      [@default []] [@yojson_drop_default ( = )]
  sole_tenancy_preferences :
    virtual_machine_preferences__sole_tenancy_preferences list;
      [@default []] [@yojson_drop_default ( = )]
  vmware_engine_preferences :
    virtual_machine_preferences__vmware_engine_preferences list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : virtual_machine_preferences) -> ()

let yojson_of_virtual_machine_preferences =
  (function
   | {
       commitment_plan = v_commitment_plan;
       sizing_optimization_strategy = v_sizing_optimization_strategy;
       target_product = v_target_product;
       compute_engine_preferences = v_compute_engine_preferences;
       region_preferences = v_region_preferences;
       sole_tenancy_preferences = v_sole_tenancy_preferences;
       vmware_engine_preferences = v_vmware_engine_preferences;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_vmware_engine_preferences then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_virtual_machine_preferences__vmware_engine_preferences)
               v_vmware_engine_preferences
           in
           let bnd = "vmware_engine_preferences", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_sole_tenancy_preferences then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_virtual_machine_preferences__sole_tenancy_preferences)
               v_sole_tenancy_preferences
           in
           let bnd = "sole_tenancy_preferences", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_region_preferences then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_virtual_machine_preferences__region_preferences)
               v_region_preferences
           in
           let bnd = "region_preferences", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_compute_engine_preferences then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_virtual_machine_preferences__compute_engine_preferences)
               v_compute_engine_preferences
           in
           let bnd = "compute_engine_preferences", arg in
           bnd :: bnds
       in
       let bnds =
         match v_target_product with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_product", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sizing_optimization_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sizing_optimization_strategy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_commitment_plan with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "commitment_plan", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_machine_preferences ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_machine_preferences

[@@@deriving.end]

type google_migration_center_preference_set = {
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  preference_set_id : string prop;
  project : string prop option; [@option]
  timeouts : timeouts option;
  virtual_machine_preferences : virtual_machine_preferences list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_migration_center_preference_set) -> ()

let yojson_of_google_migration_center_preference_set =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       location = v_location;
       preference_set_id = v_preference_set_id;
       project = v_project;
       timeouts = v_timeouts;
       virtual_machine_preferences = v_virtual_machine_preferences;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_virtual_machine_preferences then bnds
         else
           let arg =
             (yojson_of_list yojson_of_virtual_machine_preferences)
               v_virtual_machine_preferences
           in
           let bnd = "virtual_machine_preferences", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_preference_set_id
         in
         ("preference_set_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_migration_center_preference_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_migration_center_preference_set

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let virtual_machine_preferences__compute_engine_preferences__machine_preferences__allowed_machine_series
    ?code () :
    virtual_machine_preferences__compute_engine_preferences__machine_preferences__allowed_machine_series
    =
  { code }

let virtual_machine_preferences__compute_engine_preferences__machine_preferences
    ?(allowed_machine_series = []) () :
    virtual_machine_preferences__compute_engine_preferences__machine_preferences
    =
  { allowed_machine_series }

let virtual_machine_preferences__compute_engine_preferences
    ?license_type ?(machine_preferences = []) () :
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
    ?(node_types = []) () :
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
    ?(compute_engine_preferences = []) ?(region_preferences = [])
    ?(sole_tenancy_preferences = [])
    ?(vmware_engine_preferences = []) () :
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
    ?id ?project ?timeouts ?(virtual_machine_preferences = [])
    ~location ~preference_set_id () :
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
  tf_name : string;
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

let make ?description ?display_name ?id ?project ?timeouts
    ?(virtual_machine_preferences = []) ~location ~preference_set_id
    __id =
  let __type = "google_migration_center_preference_set" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?display_name ?id ?project ?timeouts
           ~virtual_machine_preferences ~location ~preference_set_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id ?project
    ?timeouts ?(virtual_machine_preferences = []) ~location
    ~preference_set_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?project ?timeouts
      ~virtual_machine_preferences ~location ~preference_set_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
