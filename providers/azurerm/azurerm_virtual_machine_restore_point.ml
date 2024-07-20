(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type azurerm_virtual_machine_restore_point = {
  crash_consistency_mode_enabled : bool prop option; [@option]
  excluded_disks : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  virtual_machine_restore_point_collection_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_machine_restore_point) -> ()

let yojson_of_azurerm_virtual_machine_restore_point =
  (function
   | {
       crash_consistency_mode_enabled =
         v_crash_consistency_mode_enabled;
       excluded_disks = v_excluded_disks;
       id = v_id;
       name = v_name;
       virtual_machine_restore_point_collection_id =
         v_virtual_machine_restore_point_collection_id;
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
           yojson_of_prop yojson_of_string
             v_virtual_machine_restore_point_collection_id
         in
         ("virtual_machine_restore_point_collection_id", arg) :: bnds
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
         match v_excluded_disks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_disks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_crash_consistency_mode_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "crash_consistency_mode_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_machine_restore_point ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_machine_restore_point

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_virtual_machine_restore_point
    ?crash_consistency_mode_enabled ?excluded_disks ?id ?timeouts
    ~name ~virtual_machine_restore_point_collection_id () :
    azurerm_virtual_machine_restore_point =
  {
    crash_consistency_mode_enabled;
    excluded_disks;
    id;
    name;
    virtual_machine_restore_point_collection_id;
    timeouts;
  }

type t = {
  tf_name : string;
  crash_consistency_mode_enabled : bool prop;
  excluded_disks : string list prop;
  id : string prop;
  name : string prop;
  virtual_machine_restore_point_collection_id : string prop;
}

let make ?crash_consistency_mode_enabled ?excluded_disks ?id
    ?timeouts ~name ~virtual_machine_restore_point_collection_id __id
    =
  let __type = "azurerm_virtual_machine_restore_point" in
  let __attrs =
    ({
       tf_name = __id;
       crash_consistency_mode_enabled =
         Prop.computed __type __id "crash_consistency_mode_enabled";
       excluded_disks = Prop.computed __type __id "excluded_disks";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       virtual_machine_restore_point_collection_id =
         Prop.computed __type __id
           "virtual_machine_restore_point_collection_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_machine_restore_point
        (azurerm_virtual_machine_restore_point
           ?crash_consistency_mode_enabled ?excluded_disks ?id
           ?timeouts ~name
           ~virtual_machine_restore_point_collection_id ());
    attrs = __attrs;
  }

let register ?tf_module ?crash_consistency_mode_enabled
    ?excluded_disks ?id ?timeouts ~name
    ~virtual_machine_restore_point_collection_id __id =
  let (r : _ Tf_core.resource) =
    make ?crash_consistency_mode_enabled ?excluded_disks ?id
      ?timeouts ~name ~virtual_machine_restore_point_collection_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
