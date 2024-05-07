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

type google_netapp_storage_pool = {
  active_directory : string prop option; [@option]
  capacity_gib : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  kms_config : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  ldap_enabled : bool prop option; [@option]
  location : string prop;
  name : string prop;
  network : string prop;
  project : string prop option; [@option]
  service_level : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_netapp_storage_pool) -> ()

let yojson_of_google_netapp_storage_pool =
  (function
   | {
       active_directory = v_active_directory;
       capacity_gib = v_capacity_gib;
       description = v_description;
       id = v_id;
       kms_config = v_kms_config;
       labels = v_labels;
       ldap_enabled = v_ldap_enabled;
       location = v_location;
       name = v_name;
       network = v_network;
       project = v_project;
       service_level = v_service_level;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_level in
         ("service_level", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_ldap_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ldap_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_config", arg in
             bnd :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_capacity_gib in
         ("capacity_gib", arg) :: bnds
       in
       let bnds =
         match v_active_directory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "active_directory", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_netapp_storage_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_netapp_storage_pool

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
