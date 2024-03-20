(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type share_settings__project_map = {
  id : string prop;
  project_id : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
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
  project_map : share_settings__project_map list;
  share_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : share_settings) -> ()

let yojson_of_share_settings =
  (function
   | { project_map = v_project_map; share_type = v_share_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_share_type in
         ("share_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_share_settings__project_map
             v_project_map
         in
         ("project_map", arg) :: bnds
       in
       `Assoc bnds
    : share_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_share_settings

[@@@deriving.end]

type specific_reservation__instance_properties__local_ssds = {
  disk_size_gb : float prop;
  interface : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_interface in
         ("interface", arg) :: bnds
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

type specific_reservation__instance_properties = {
  guest_accelerators :
    specific_reservation__instance_properties__guest_accelerators
    list;
  local_ssds :
    specific_reservation__instance_properties__local_ssds list;
  machine_type : string prop;
  min_cpu_platform : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : specific_reservation__instance_properties) -> ()

let yojson_of_specific_reservation__instance_properties =
  (function
   | {
       guest_accelerators = v_guest_accelerators;
       local_ssds = v_local_ssds;
       machine_type = v_machine_type;
       min_cpu_platform = v_min_cpu_platform;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_min_cpu_platform
         in
         ("min_cpu_platform", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_machine_type in
         ("machine_type", arg) :: bnds
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
       `Assoc bnds
    : specific_reservation__instance_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_specific_reservation__instance_properties

[@@@deriving.end]

type specific_reservation = {
  count : float prop;
  in_use_count : float prop;
  instance_properties :
    specific_reservation__instance_properties list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : specific_reservation) -> ()

let yojson_of_specific_reservation =
  (function
   | {
       count = v_count;
       in_use_count = v_in_use_count;
       instance_properties = v_instance_properties;
     } ->
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
         let arg = yojson_of_prop yojson_of_float v_in_use_count in
         ("in_use_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : specific_reservation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_specific_reservation

[@@@deriving.end]

type google_compute_reservation = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  zone : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_reservation) -> ()

let yojson_of_google_compute_reservation =
  (function
   | { id = v_id; name = v_name; project = v_project; zone = v_zone }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone in
         ("zone", arg) :: bnds
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
       `Assoc bnds
    : google_compute_reservation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_reservation

[@@@deriving.end]

let google_compute_reservation ?id ?project ~name ~zone () :
    google_compute_reservation =
  { id; name; project; zone }

type t = {
  commitment : string prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  share_settings : share_settings list prop;
  specific_reservation : specific_reservation list prop;
  specific_reservation_required : bool prop;
  status : string prop;
  zone : string prop;
}

let make ?id ?project ~name ~zone __id =
  let __type = "google_compute_reservation" in
  let __attrs =
    ({
       commitment = Prop.computed __type __id "commitment";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       share_settings = Prop.computed __type __id "share_settings";
       specific_reservation =
         Prop.computed __type __id "specific_reservation";
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
        (google_compute_reservation ?id ?project ~name ~zone ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~name ~zone __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~name ~zone __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
