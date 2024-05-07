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

type azurerm_management_lock = {
  id : string prop option; [@option]
  lock_level : string prop;
  name : string prop;
  notes : string prop option; [@option]
  scope : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_management_lock) -> ()

let yojson_of_azurerm_management_lock =
  (function
   | {
       id = v_id;
       lock_level = v_lock_level;
       name = v_name;
       notes = v_notes;
       scope = v_scope;
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
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         match v_notes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lock_level in
         ("lock_level", arg) :: bnds
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
    : azurerm_management_lock -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_management_lock

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_management_lock ?id ?notes ?timeouts ~lock_level ~name
    ~scope () : azurerm_management_lock =
  { id; lock_level; name; notes; scope; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  lock_level : string prop;
  name : string prop;
  notes : string prop;
  scope : string prop;
}

let make ?id ?notes ?timeouts ~lock_level ~name ~scope __id =
  let __type = "azurerm_management_lock" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       lock_level = Prop.computed __type __id "lock_level";
       name = Prop.computed __type __id "name";
       notes = Prop.computed __type __id "notes";
       scope = Prop.computed __type __id "scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_management_lock
        (azurerm_management_lock ?id ?notes ?timeouts ~lock_level
           ~name ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?notes ?timeouts ~lock_level ~name ~scope
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?notes ?timeouts ~lock_level ~name ~scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
