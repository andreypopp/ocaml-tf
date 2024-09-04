(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type preserved_state__disk = {
  delete_rule : string prop option; [@option]
  device_name : string prop;
  mode : string prop option; [@option]
  source : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : preserved_state__disk) -> ()

let yojson_of_preserved_state__disk =
  (function
   | {
       delete_rule = v_delete_rule;
       device_name = v_device_name;
       mode = v_mode;
       source = v_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       let bnds =
         match v_delete_rule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete_rule", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : preserved_state__disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_preserved_state__disk

[@@@deriving.end]

type preserved_state__external_ip__ip_address = {
  address : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : preserved_state__external_ip__ip_address) -> ()

let yojson_of_preserved_state__external_ip__ip_address =
  (function
   | { address = v_address } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : preserved_state__external_ip__ip_address ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_preserved_state__external_ip__ip_address

[@@@deriving.end]

type preserved_state__external_ip = {
  auto_delete : string prop option; [@option]
  interface_name : string prop;
  ip_address : preserved_state__external_ip__ip_address list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : preserved_state__external_ip) -> ()

let yojson_of_preserved_state__external_ip =
  (function
   | {
       auto_delete = v_auto_delete;
       interface_name = v_interface_name;
       ip_address = v_ip_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_address then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_preserved_state__external_ip__ip_address)
               v_ip_address
           in
           let bnd = "ip_address", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_interface_name
         in
         ("interface_name", arg) :: bnds
       in
       let bnds =
         match v_auto_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_delete", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : preserved_state__external_ip ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_preserved_state__external_ip

[@@@deriving.end]

type preserved_state__internal_ip__ip_address = {
  address : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : preserved_state__internal_ip__ip_address) -> ()

let yojson_of_preserved_state__internal_ip__ip_address =
  (function
   | { address = v_address } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : preserved_state__internal_ip__ip_address ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_preserved_state__internal_ip__ip_address

[@@@deriving.end]

type preserved_state__internal_ip = {
  auto_delete : string prop option; [@option]
  interface_name : string prop;
  ip_address : preserved_state__internal_ip__ip_address list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : preserved_state__internal_ip) -> ()

let yojson_of_preserved_state__internal_ip =
  (function
   | {
       auto_delete = v_auto_delete;
       interface_name = v_interface_name;
       ip_address = v_ip_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_address then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_preserved_state__internal_ip__ip_address)
               v_ip_address
           in
           let bnd = "ip_address", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_interface_name
         in
         ("interface_name", arg) :: bnds
       in
       let bnds =
         match v_auto_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_delete", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : preserved_state__internal_ip ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_preserved_state__internal_ip

[@@@deriving.end]

type preserved_state = {
  metadata : string prop Tf_core.assoc option; [@option]
  disk : preserved_state__disk list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  external_ip : preserved_state__external_ip list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  internal_ip : preserved_state__internal_ip list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : preserved_state) -> ()

let yojson_of_preserved_state =
  (function
   | {
       metadata = v_metadata;
       disk = v_disk;
       external_ip = v_external_ip;
       internal_ip = v_internal_ip;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_internal_ip then bnds
         else
           let arg =
             (yojson_of_list yojson_of_preserved_state__internal_ip)
               v_internal_ip
           in
           let bnd = "internal_ip", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_external_ip then bnds
         else
           let arg =
             (yojson_of_list yojson_of_preserved_state__external_ip)
               v_external_ip
           in
           let bnd = "external_ip", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_disk then bnds
         else
           let arg =
             (yojson_of_list yojson_of_preserved_state__disk) v_disk
           in
           let bnd = "disk", arg in
           bnd :: bnds
       in
       let bnds =
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : preserved_state -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_preserved_state

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

type google_compute_region_per_instance_config = {
  id : string prop option; [@option]
  minimal_action : string prop option; [@option]
  most_disruptive_allowed_action : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  region_instance_group_manager : string prop;
  remove_instance_on_destroy : bool prop option; [@option]
  remove_instance_state_on_destroy : bool prop option; [@option]
  preserved_state : preserved_state list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_region_per_instance_config) -> ()

let yojson_of_google_compute_region_per_instance_config =
  (function
   | {
       id = v_id;
       minimal_action = v_minimal_action;
       most_disruptive_allowed_action =
         v_most_disruptive_allowed_action;
       name = v_name;
       project = v_project;
       region = v_region;
       region_instance_group_manager =
         v_region_instance_group_manager;
       remove_instance_on_destroy = v_remove_instance_on_destroy;
       remove_instance_state_on_destroy =
         v_remove_instance_state_on_destroy;
       preserved_state = v_preserved_state;
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
         if Stdlib.( = ) [] v_preserved_state then bnds
         else
           let arg =
             (yojson_of_list yojson_of_preserved_state)
               v_preserved_state
           in
           let bnd = "preserved_state", arg in
           bnd :: bnds
       in
       let bnds =
         match v_remove_instance_state_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "remove_instance_state_on_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_remove_instance_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "remove_instance_on_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_region_instance_group_manager
         in
         ("region_instance_group_manager", arg) :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         match v_most_disruptive_allowed_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "most_disruptive_allowed_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minimal_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "minimal_action", arg in
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
       `Assoc bnds
    : google_compute_region_per_instance_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_region_per_instance_config

[@@@deriving.end]

let preserved_state__disk ?delete_rule ?mode ~device_name ~source ()
    : preserved_state__disk =
  { delete_rule; device_name; mode; source }

let preserved_state__external_ip__ip_address ?address () :
    preserved_state__external_ip__ip_address =
  { address }

let preserved_state__external_ip ?auto_delete ?(ip_address = [])
    ~interface_name () : preserved_state__external_ip =
  { auto_delete; interface_name; ip_address }

let preserved_state__internal_ip__ip_address ?address () :
    preserved_state__internal_ip__ip_address =
  { address }

let preserved_state__internal_ip ?auto_delete ?(ip_address = [])
    ~interface_name () : preserved_state__internal_ip =
  { auto_delete; interface_name; ip_address }

let preserved_state ?metadata ~disk ~external_ip ~internal_ip () :
    preserved_state =
  { metadata; disk; external_ip; internal_ip }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_region_per_instance_config ?id ?minimal_action
    ?most_disruptive_allowed_action ?project ?region
    ?remove_instance_on_destroy ?remove_instance_state_on_destroy
    ?(preserved_state = []) ?timeouts ~name
    ~region_instance_group_manager () :
    google_compute_region_per_instance_config =
  {
    id;
    minimal_action;
    most_disruptive_allowed_action;
    name;
    project;
    region;
    region_instance_group_manager;
    remove_instance_on_destroy;
    remove_instance_state_on_destroy;
    preserved_state;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  minimal_action : string prop;
  most_disruptive_allowed_action : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  region_instance_group_manager : string prop;
  remove_instance_on_destroy : bool prop;
  remove_instance_state_on_destroy : bool prop;
}

let make ?id ?minimal_action ?most_disruptive_allowed_action ?project
    ?region ?remove_instance_on_destroy
    ?remove_instance_state_on_destroy ?(preserved_state = [])
    ?timeouts ~name ~region_instance_group_manager __id =
  let __type = "google_compute_region_per_instance_config" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       minimal_action = Prop.computed __type __id "minimal_action";
       most_disruptive_allowed_action =
         Prop.computed __type __id "most_disruptive_allowed_action";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       region_instance_group_manager =
         Prop.computed __type __id "region_instance_group_manager";
       remove_instance_on_destroy =
         Prop.computed __type __id "remove_instance_on_destroy";
       remove_instance_state_on_destroy =
         Prop.computed __type __id "remove_instance_state_on_destroy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_per_instance_config
        (google_compute_region_per_instance_config ?id
           ?minimal_action ?most_disruptive_allowed_action ?project
           ?region ?remove_instance_on_destroy
           ?remove_instance_state_on_destroy ~preserved_state
           ?timeouts ~name ~region_instance_group_manager ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?minimal_action
    ?most_disruptive_allowed_action ?project ?region
    ?remove_instance_on_destroy ?remove_instance_state_on_destroy
    ?(preserved_state = []) ?timeouts ~name
    ~region_instance_group_manager __id =
  let (r : _ Tf_core.resource) =
    make ?id ?minimal_action ?most_disruptive_allowed_action ?project
      ?region ?remove_instance_on_destroy
      ?remove_instance_state_on_destroy ~preserved_state ?timeouts
      ~name ~region_instance_group_manager __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
