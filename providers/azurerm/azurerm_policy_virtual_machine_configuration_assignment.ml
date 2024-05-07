(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__parameter = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__parameter) -> ()

let yojson_of_configuration__parameter =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : configuration__parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__parameter

[@@@deriving.end]

type configuration = {
  assignment_type : string prop option; [@option]
  content_hash : string prop option; [@option]
  content_uri : string prop option; [@option]
  version : string prop option; [@option]
  parameter : configuration__parameter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | {
       assignment_type = v_assignment_type;
       content_hash = v_content_hash;
       content_uri = v_content_uri;
       version = v_version;
       parameter = v_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_configuration__parameter
             v_parameter
         in
         ("parameter", arg) :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_hash with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_hash", arg in
             bnd :: bnds
       in
       let bnds =
         match v_assignment_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "assignment_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

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

type azurerm_policy_virtual_machine_configuration_assignment = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  virtual_machine_id : string prop;
  configuration : configuration list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_policy_virtual_machine_configuration_assignment) ->
  ()

let yojson_of_azurerm_policy_virtual_machine_configuration_assignment
    =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       virtual_machine_id = v_virtual_machine_id;
       configuration = v_configuration;
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
           yojson_of_list yojson_of_configuration v_configuration
         in
         ("configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_machine_id
         in
         ("virtual_machine_id", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_policy_virtual_machine_configuration_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_policy_virtual_machine_configuration_assignment

[@@@deriving.end]

let configuration__parameter ~name ~value () :
    configuration__parameter =
  { name; value }

let configuration ?assignment_type ?content_hash ?content_uri
    ?version ~parameter () : configuration =
  { assignment_type; content_hash; content_uri; version; parameter }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_policy_virtual_machine_configuration_assignment ?id
    ?timeouts ~location ~name ~virtual_machine_id ~configuration () :
    azurerm_policy_virtual_machine_configuration_assignment =
  { id; location; name; virtual_machine_id; configuration; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  virtual_machine_id : string prop;
}

let make ?id ?timeouts ~location ~name ~virtual_machine_id
    ~configuration __id =
  let __type =
    "azurerm_policy_virtual_machine_configuration_assignment"
  in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       virtual_machine_id =
         Prop.computed __type __id "virtual_machine_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_policy_virtual_machine_configuration_assignment
        (azurerm_policy_virtual_machine_configuration_assignment ?id
           ?timeouts ~location ~name ~virtual_machine_id
           ~configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~location ~name
    ~virtual_machine_id ~configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~location ~name ~virtual_machine_id
      ~configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
