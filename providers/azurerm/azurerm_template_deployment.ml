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

type azurerm_template_deployment = {
  deployment_mode : string prop;
  id : string prop option; [@option]
  name : string prop;
  parameters : string prop Tf_core.assoc option; [@option]
  parameters_body : string prop option; [@option]
  resource_group_name : string prop;
  template_body : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_template_deployment) -> ()

let yojson_of_azurerm_template_deployment =
  (function
   | {
       deployment_mode = v_deployment_mode;
       id = v_id;
       name = v_name;
       parameters = v_parameters;
       parameters_body = v_parameters_body;
       resource_group_name = v_resource_group_name;
       template_body = v_template_body;
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
         match v_template_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "template_body", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_parameters_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameters_body", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "parameters", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_deployment_mode
         in
         ("deployment_mode", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_template_deployment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_template_deployment

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_template_deployment ?id ?parameters ?parameters_body
    ?template_body ?timeouts ~deployment_mode ~name
    ~resource_group_name () : azurerm_template_deployment =
  {
    deployment_mode;
    id;
    name;
    parameters;
    parameters_body;
    resource_group_name;
    template_body;
    timeouts;
  }

type t = {
  tf_name : string;
  deployment_mode : string prop;
  id : string prop;
  name : string prop;
  outputs : string Tf_core.assoc prop;
  parameters : string Tf_core.assoc prop;
  parameters_body : string prop;
  resource_group_name : string prop;
  template_body : string prop;
}

let make ?id ?parameters ?parameters_body ?template_body ?timeouts
    ~deployment_mode ~name ~resource_group_name __id =
  let __type = "azurerm_template_deployment" in
  let __attrs =
    ({
       tf_name = __id;
       deployment_mode = Prop.computed __type __id "deployment_mode";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       outputs = Prop.computed __type __id "outputs";
       parameters = Prop.computed __type __id "parameters";
       parameters_body = Prop.computed __type __id "parameters_body";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       template_body = Prop.computed __type __id "template_body";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_template_deployment
        (azurerm_template_deployment ?id ?parameters ?parameters_body
           ?template_body ?timeouts ~deployment_mode ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?parameters ?parameters_body
    ?template_body ?timeouts ~deployment_mode ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?parameters ?parameters_body ?template_body ?timeouts
      ~deployment_mode ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
