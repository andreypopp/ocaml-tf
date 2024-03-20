(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type subnet = {
  use_in_virtual_machine_creation : string prop option; [@option]
  use_public_ip_address : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subnet) -> ()

let yojson_of_subnet =
  (function
   | {
       use_in_virtual_machine_creation =
         v_use_in_virtual_machine_creation;
       use_public_ip_address = v_use_public_ip_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_use_public_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "use_public_ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_in_virtual_machine_creation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "use_in_virtual_machine_creation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : subnet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subnet

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

type azurerm_dev_test_virtual_network = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  lab_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  subnet : subnet list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_dev_test_virtual_network) -> ()

let yojson_of_azurerm_dev_test_virtual_network =
  (function
   | {
       description = v_description;
       id = v_id;
       lab_name = v_lab_name;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       subnet = v_subnet;
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
         let arg = yojson_of_list yojson_of_subnet v_subnet in
         ("subnet", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lab_name in
         ("lab_name", arg) :: bnds
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
    : azurerm_dev_test_virtual_network ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_dev_test_virtual_network

[@@@deriving.end]

let subnet ?use_in_virtual_machine_creation ?use_public_ip_address ()
    : subnet =
  { use_in_virtual_machine_creation; use_public_ip_address }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dev_test_virtual_network ?description ?id ?tags ?timeouts
    ~lab_name ~name ~resource_group_name ~subnet () :
    azurerm_dev_test_virtual_network =
  {
    description;
    id;
    lab_name;
    name;
    resource_group_name;
    tags;
    subnet;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  lab_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  unique_identifier : string prop;
}

let make ?description ?id ?tags ?timeouts ~lab_name ~name
    ~resource_group_name ~subnet __id =
  let __type = "azurerm_dev_test_virtual_network" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       lab_name = Prop.computed __type __id "lab_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       unique_identifier =
         Prop.computed __type __id "unique_identifier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dev_test_virtual_network
        (azurerm_dev_test_virtual_network ?description ?id ?tags
           ?timeouts ~lab_name ~name ~resource_group_name ~subnet ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?timeouts ~lab_name
    ~name ~resource_group_name ~subnet __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?timeouts ~lab_name ~name
      ~resource_group_name ~subnet __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
