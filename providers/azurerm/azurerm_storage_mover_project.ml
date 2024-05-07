(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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

type azurerm_storage_mover_project = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  storage_mover_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_mover_project) -> ()

let yojson_of_azurerm_storage_mover_project =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       storage_mover_id = v_storage_mover_id;
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
           yojson_of_prop yojson_of_string v_storage_mover_id
         in
         ("storage_mover_id", arg) :: bnds
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
    : azurerm_storage_mover_project ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_mover_project

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_mover_project ?description ?id ?timeouts ~name
    ~storage_mover_id () : azurerm_storage_mover_project =
  { description; id; name; storage_mover_id; timeouts }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  storage_mover_id : string prop;
}

let make ?description ?id ?timeouts ~name ~storage_mover_id __id =
  let __type = "azurerm_storage_mover_project" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       storage_mover_id =
         Prop.computed __type __id "storage_mover_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_mover_project
        (azurerm_storage_mover_project ?description ?id ?timeouts
           ~name ~storage_mover_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~name
    ~storage_mover_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~name ~storage_mover_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
