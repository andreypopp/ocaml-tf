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

type azurerm_resource_management_private_link_association = {
  id : string prop option; [@option]
  management_group_id : string prop;
  name : string prop option; [@option]
  public_network_access_enabled : bool prop;
  resource_management_private_link_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_resource_management_private_link_association) -> ()

let yojson_of_azurerm_resource_management_private_link_association =
  (function
   | {
       id = v_id;
       management_group_id = v_management_group_id;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_management_private_link_id =
         v_resource_management_private_link_id;
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
             v_resource_management_private_link_id
         in
         ("resource_management_private_link_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_public_network_access_enabled
         in
         ("public_network_access_enabled", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_management_group_id
         in
         ("management_group_id", arg) :: bnds
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
    : azurerm_resource_management_private_link_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_resource_management_private_link_association

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_resource_management_private_link_association ?id ?name
    ?timeouts ~management_group_id ~public_network_access_enabled
    ~resource_management_private_link_id () :
    azurerm_resource_management_private_link_association =
  {
    id;
    management_group_id;
    name;
    public_network_access_enabled;
    resource_management_private_link_id;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  management_group_id : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_management_private_link_id : string prop;
  tenant_id : string prop;
}

let make ?id ?name ?timeouts ~management_group_id
    ~public_network_access_enabled
    ~resource_management_private_link_id __id =
  let __type =
    "azurerm_resource_management_private_link_association"
  in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       management_group_id =
         Prop.computed __type __id "management_group_id";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_management_private_link_id =
         Prop.computed __type __id
           "resource_management_private_link_id";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_resource_management_private_link_association
        (azurerm_resource_management_private_link_association ?id
           ?name ?timeouts ~management_group_id
           ~public_network_access_enabled
           ~resource_management_private_link_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?timeouts ~management_group_id
    ~public_network_access_enabled
    ~resource_management_private_link_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?timeouts ~management_group_id
      ~public_network_access_enabled
      ~resource_management_private_link_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
