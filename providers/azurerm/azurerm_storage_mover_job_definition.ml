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

type azurerm_storage_mover_job_definition = {
  agent_name : string prop option; [@option]
  copy_mode : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  source_name : string prop;
  source_sub_path : string prop option; [@option]
  storage_mover_project_id : string prop;
  target_name : string prop;
  target_sub_path : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_mover_job_definition) -> ()

let yojson_of_azurerm_storage_mover_job_definition =
  (function
   | {
       agent_name = v_agent_name;
       copy_mode = v_copy_mode;
       description = v_description;
       id = v_id;
       name = v_name;
       source_name = v_source_name;
       source_sub_path = v_source_sub_path;
       storage_mover_project_id = v_storage_mover_project_id;
       target_name = v_target_name;
       target_sub_path = v_target_sub_path;
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
         match v_target_sub_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_sub_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_name in
         ("target_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_mover_project_id
         in
         ("storage_mover_project_id", arg) :: bnds
       in
       let bnds =
         match v_source_sub_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_sub_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_name in
         ("source_name", arg) :: bnds
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_copy_mode in
         ("copy_mode", arg) :: bnds
       in
       let bnds =
         match v_agent_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "agent_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_storage_mover_job_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_mover_job_definition

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_mover_job_definition ?agent_name ?description ?id
    ?source_sub_path ?target_sub_path ?timeouts ~copy_mode ~name
    ~source_name ~storage_mover_project_id ~target_name () :
    azurerm_storage_mover_job_definition =
  {
    agent_name;
    copy_mode;
    description;
    id;
    name;
    source_name;
    source_sub_path;
    storage_mover_project_id;
    target_name;
    target_sub_path;
    timeouts;
  }

type t = {
  agent_name : string prop;
  copy_mode : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  source_name : string prop;
  source_sub_path : string prop;
  storage_mover_project_id : string prop;
  target_name : string prop;
  target_sub_path : string prop;
}

let make ?agent_name ?description ?id ?source_sub_path
    ?target_sub_path ?timeouts ~copy_mode ~name ~source_name
    ~storage_mover_project_id ~target_name __id =
  let __type = "azurerm_storage_mover_job_definition" in
  let __attrs =
    ({
       agent_name = Prop.computed __type __id "agent_name";
       copy_mode = Prop.computed __type __id "copy_mode";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       source_name = Prop.computed __type __id "source_name";
       source_sub_path = Prop.computed __type __id "source_sub_path";
       storage_mover_project_id =
         Prop.computed __type __id "storage_mover_project_id";
       target_name = Prop.computed __type __id "target_name";
       target_sub_path = Prop.computed __type __id "target_sub_path";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_mover_job_definition
        (azurerm_storage_mover_job_definition ?agent_name
           ?description ?id ?source_sub_path ?target_sub_path
           ?timeouts ~copy_mode ~name ~source_name
           ~storage_mover_project_id ~target_name ());
    attrs = __attrs;
  }

let register ?tf_module ?agent_name ?description ?id ?source_sub_path
    ?target_sub_path ?timeouts ~copy_mode ~name ~source_name
    ~storage_mover_project_id ~target_name __id =
  let (r : _ Tf_core.resource) =
    make ?agent_name ?description ?id ?source_sub_path
      ?target_sub_path ?timeouts ~copy_mode ~name ~source_name
      ~storage_mover_project_id ~target_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
