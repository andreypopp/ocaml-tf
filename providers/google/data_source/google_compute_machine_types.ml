(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type machine_types__deprecated = {
  replacement : string prop;
  state : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : machine_types__deprecated) -> ()

let yojson_of_machine_types__deprecated =
  (function
   | { replacement = v_replacement; state = v_state } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_replacement in
         ("replacement", arg) :: bnds
       in
       `Assoc bnds
    : machine_types__deprecated -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_machine_types__deprecated

[@@@deriving.end]

type machine_types__accelerators = {
  guest_accelerator_count : float prop;
  guest_accelerator_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : machine_types__accelerators) -> ()

let yojson_of_machine_types__accelerators =
  (function
   | {
       guest_accelerator_count = v_guest_accelerator_count;
       guest_accelerator_type = v_guest_accelerator_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_guest_accelerator_type
         in
         ("guest_accelerator_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_guest_accelerator_count
         in
         ("guest_accelerator_count", arg) :: bnds
       in
       `Assoc bnds
    : machine_types__accelerators ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_machine_types__accelerators

[@@@deriving.end]

type machine_types = {
  accelerators : machine_types__accelerators list;
  deprecated : machine_types__deprecated list;
  description : string prop;
  guest_cpus : float prop;
  is_shared_cpus : bool prop;
  maximum_persistent_disks : float prop;
  maximum_persistent_disks_size_gb : float prop;
  memory_mb : float prop;
  name : string prop;
  self_link : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : machine_types) -> ()

let yojson_of_machine_types =
  (function
   | {
       accelerators = v_accelerators;
       deprecated = v_deprecated;
       description = v_description;
       guest_cpus = v_guest_cpus;
       is_shared_cpus = v_is_shared_cpus;
       maximum_persistent_disks = v_maximum_persistent_disks;
       maximum_persistent_disks_size_gb =
         v_maximum_persistent_disks_size_gb;
       memory_mb = v_memory_mb;
       name = v_name;
       self_link = v_self_link;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_self_link in
         ("self_link", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_memory_mb in
         ("memory_mb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_maximum_persistent_disks_size_gb
         in
         ("maximum_persistent_disks_size_gb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_maximum_persistent_disks
         in
         ("maximum_persistent_disks", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_shared_cpus in
         ("is_shared_cpus", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_guest_cpus in
         ("guest_cpus", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_machine_types__deprecated
             v_deprecated
         in
         ("deprecated", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_machine_types__accelerators
             v_accelerators
         in
         ("accelerators", arg) :: bnds
       in
       `Assoc bnds
    : machine_types -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_machine_types

[@@@deriving.end]

type google_compute_machine_types = {
  filter : string prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_machine_types) -> ()

let yojson_of_google_compute_machine_types =
  (function
   | {
       filter = v_filter;
       id = v_id;
       project = v_project;
       zone = v_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_machine_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_machine_types

[@@@deriving.end]

let google_compute_machine_types ?filter ?id ?project ?zone () :
    google_compute_machine_types =
  { filter; id; project; zone }

type t = {
  tf_name : string;
  filter : string prop;
  id : string prop;
  machine_types : machine_types list prop;
  project : string prop;
  zone : string prop;
}

let make ?filter ?id ?project ?zone __id =
  let __type = "google_compute_machine_types" in
  let __attrs =
    ({
       tf_name = __id;
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       machine_types = Prop.computed __type __id "machine_types";
       project = Prop.computed __type __id "project";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_machine_types
        (google_compute_machine_types ?filter ?id ?project ?zone ());
    attrs = __attrs;
  }

let register ?tf_module ?filter ?id ?project ?zone __id =
  let (r : _ Tf_core.resource) =
    make ?filter ?id ?project ?zone __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
