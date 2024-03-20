(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type google_compute_attached_disk = {
  device_name : string prop option; [@option]
  disk : string prop;
  id : string prop option; [@option]
  instance : string prop;
  mode : string prop option; [@option]
  project : string prop option; [@option]
  zone : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_attached_disk) -> ()

let yojson_of_google_compute_attached_disk =
  (function
   | {
       device_name = v_device_name;
       disk = v_disk;
       id = v_id;
       instance = v_instance;
       mode = v_mode;
       project = v_project;
       zone = v_zone;
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
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
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
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance in
         ("instance", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_disk in
         ("disk", arg) :: bnds
       in
       let bnds =
         match v_device_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_attached_disk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_attached_disk

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_attached_disk ?device_name ?id ?mode ?project
    ?zone ?timeouts ~disk ~instance () : google_compute_attached_disk
    =
  { device_name; disk; id; instance; mode; project; zone; timeouts }

type t = {
  device_name : string prop;
  disk : string prop;
  id : string prop;
  instance : string prop;
  mode : string prop;
  project : string prop;
  zone : string prop;
}

let make ?device_name ?id ?mode ?project ?zone ?timeouts ~disk
    ~instance __id =
  let __type = "google_compute_attached_disk" in
  let __attrs =
    ({
       device_name = Prop.computed __type __id "device_name";
       disk = Prop.computed __type __id "disk";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       mode = Prop.computed __type __id "mode";
       project = Prop.computed __type __id "project";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_attached_disk
        (google_compute_attached_disk ?device_name ?id ?mode ?project
           ?zone ?timeouts ~disk ~instance ());
    attrs = __attrs;
  }

let register ?tf_module ?device_name ?id ?mode ?project ?zone
    ?timeouts ~disk ~instance __id =
  let (r : _ Tf_core.resource) =
    make ?device_name ?id ?mode ?project ?zone ?timeouts ~disk
      ~instance __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
