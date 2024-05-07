(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type share_settings__project_map = {
  id : string prop;
  project_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : share_settings__project_map) -> ()

let yojson_of_share_settings__project_map =
  (function
   | { id = v_id; project_id = v_project_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : share_settings__project_map ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_share_settings__project_map

[@@@deriving.end]

type share_settings = {
  share_type : string prop option; [@option]
  project_map : share_settings__project_map list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : share_settings) -> ()

let yojson_of_share_settings =
  (function
   | { share_type = v_share_type; project_map = v_project_map } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_share_settings__project_map
             v_project_map
         in
         ("project_map", arg) :: bnds
       in
       let bnds =
         match v_share_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "share_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : share_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_share_settings

[@@@deriving.end]

type specific_reservation__instance_properties__guest_accelerators = {
  accelerator_count : float prop;
  accelerator_type : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       specific_reservation__instance_properties__guest_accelerators) ->
  ()

let yojson_of_specific_reservation__instance_properties__guest_accelerators
    =
  (function
   | {
       accelerator_count = v_accelerator_count;
       accelerator_type = v_accelerator_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_accelerator_type
         in
         ("accelerator_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_accelerator_count
         in
         ("accelerator_count", arg) :: bnds
       in
       `Assoc bnds
    : specific_reservation__instance_properties__guest_accelerators ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_specific_reservation__instance_properties__guest_accelerators

[@@@deriving.end]

type specific_reservation__instance_properties__local_ssds = {
  disk_size_gb : float prop;
  interface : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : specific_reservation__instance_properties__local_ssds) ->
  ()

let yojson_of_specific_reservation__instance_properties__local_ssds =
  (function
   | { disk_size_gb = v_disk_size_gb; interface = v_interface } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_interface with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interface", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_disk_size_gb in
         ("disk_size_gb", arg) :: bnds
       in
       `Assoc bnds
    : specific_reservation__instance_properties__local_ssds ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_specific_reservation__instance_properties__local_ssds

[@@@deriving.end]

type specific_reservation__instance_properties = {
  machine_type : string prop;
  min_cpu_platform : string prop option; [@option]
  guest_accelerators :
    specific_reservation__instance_properties__guest_accelerators
    list;
  local_ssds :
    specific_reservation__instance_properties__local_ssds list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : specific_reservation__instance_properties) -> ()

let yojson_of_specific_reservation__instance_properties =
  (function
   | {
       machine_type = v_machine_type;
       min_cpu_platform = v_min_cpu_platform;
       guest_accelerators = v_guest_accelerators;
       local_ssds = v_local_ssds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_specific_reservation__instance_properties__local_ssds
             v_local_ssds
         in
         ("local_ssds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_specific_reservation__instance_properties__guest_accelerators
             v_guest_accelerators
         in
         ("guest_accelerators", arg) :: bnds
       in
       let bnds =
         match v_min_cpu_platform with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_cpu_platform", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_machine_type in
         ("machine_type", arg) :: bnds
       in
       `Assoc bnds
    : specific_reservation__instance_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_specific_reservation__instance_properties

[@@@deriving.end]

type specific_reservation = {
  count : float prop;
  instance_properties :
    specific_reservation__instance_properties list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : specific_reservation) -> ()

let yojson_of_specific_reservation =
  (function
   | { count = v_count; instance_properties = v_instance_properties }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_specific_reservation__instance_properties
             v_instance_properties
         in
         ("instance_properties", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : specific_reservation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_specific_reservation

[@@@deriving.end]

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

type google_compute_reservation = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  specific_reservation_required : bool prop option; [@option]
  zone : string prop;
  share_settings : share_settings list;
  specific_reservation : specific_reservation list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_reservation) -> ()

let yojson_of_google_compute_reservation =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       project = v_project;
       specific_reservation_required =
         v_specific_reservation_required;
       zone = v_zone;
       share_settings = v_share_settings;
       specific_reservation = v_specific_reservation;
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
         let arg =
           yojson_of_list yojson_of_specific_reservation
             v_specific_reservation
         in
         ("specific_reservation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_share_settings v_share_settings
         in
         ("share_settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone in
         ("zone", arg) :: bnds
       in
       let bnds =
         match v_specific_reservation_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "specific_reservation_required", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
       `Assoc bnds
    : google_compute_reservation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_reservation

[@@@deriving.end]

let share_settings__project_map ?project_id ~id () :
    share_settings__project_map =
  { id; project_id }

let share_settings ?share_type ~project_map () : share_settings =
  { share_type; project_map }

let specific_reservation__instance_properties__guest_accelerators
    ~accelerator_count ~accelerator_type () :
    specific_reservation__instance_properties__guest_accelerators =
  { accelerator_count; accelerator_type }

let specific_reservation__instance_properties__local_ssds ?interface
    ~disk_size_gb () :
    specific_reservation__instance_properties__local_ssds =
  { disk_size_gb; interface }

let specific_reservation__instance_properties ?min_cpu_platform
    ?(guest_accelerators = []) ?(local_ssds = []) ~machine_type () :
    specific_reservation__instance_properties =
  { machine_type; min_cpu_platform; guest_accelerators; local_ssds }

let specific_reservation ~count ~instance_properties () :
    specific_reservation =
  { count; instance_properties }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_reservation ?description ?id ?project
    ?specific_reservation_required ?(share_settings = []) ?timeouts
    ~name ~zone ~specific_reservation () : google_compute_reservation
    =
  {
    description;
    id;
    name;
    project;
    specific_reservation_required;
    zone;
    share_settings;
    specific_reservation;
    timeouts;
  }

type t = {
  tf_name : string;
  commitment : string prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  specific_reservation_required : bool prop;
  status : string prop;
  zone : string prop;
}

let make ?description ?id ?project ?specific_reservation_required
    ?(share_settings = []) ?timeouts ~name ~zone
    ~specific_reservation __id =
  let __type = "google_compute_reservation" in
  let __attrs =
    ({
       tf_name = __id;
       commitment = Prop.computed __type __id "commitment";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       specific_reservation_required =
         Prop.computed __type __id "specific_reservation_required";
       status = Prop.computed __type __id "status";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_reservation
        (google_compute_reservation ?description ?id ?project
           ?specific_reservation_required ~share_settings ?timeouts
           ~name ~zone ~specific_reservation ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project
    ?specific_reservation_required ?(share_settings = []) ?timeouts
    ~name ~zone ~specific_reservation __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?specific_reservation_required
      ~share_settings ?timeouts ~name ~zone ~specific_reservation
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
