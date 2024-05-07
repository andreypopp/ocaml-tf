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

type azurerm_api_management_email_template = {
  api_management_name : string prop;
  body : string prop;
  id : string prop option; [@option]
  resource_group_name : string prop;
  subject : string prop;
  template_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_email_template) -> ()

let yojson_of_azurerm_api_management_email_template =
  (function
   | {
       api_management_name = v_api_management_name;
       body = v_body;
       id = v_id;
       resource_group_name = v_resource_group_name;
       subject = v_subject;
       template_name = v_template_name;
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
         let arg = yojson_of_prop yojson_of_string v_template_name in
         ("template_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subject in
         ("subject", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_body in
         ("body", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_name
         in
         ("api_management_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_email_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_email_template

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_email_template ?id ?timeouts
    ~api_management_name ~body ~resource_group_name ~subject
    ~template_name () : azurerm_api_management_email_template =
  {
    api_management_name;
    body;
    id;
    resource_group_name;
    subject;
    template_name;
    timeouts;
  }

type t = {
  tf_name : string;
  api_management_name : string prop;
  body : string prop;
  description : string prop;
  id : string prop;
  resource_group_name : string prop;
  subject : string prop;
  template_name : string prop;
  title : string prop;
}

let make ?id ?timeouts ~api_management_name ~body
    ~resource_group_name ~subject ~template_name __id =
  let __type = "azurerm_api_management_email_template" in
  let __attrs =
    ({
       tf_name = __id;
       api_management_name =
         Prop.computed __type __id "api_management_name";
       body = Prop.computed __type __id "body";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subject = Prop.computed __type __id "subject";
       template_name = Prop.computed __type __id "template_name";
       title = Prop.computed __type __id "title";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_email_template
        (azurerm_api_management_email_template ?id ?timeouts
           ~api_management_name ~body ~resource_group_name ~subject
           ~template_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~api_management_name ~body
    ~resource_group_name ~subject ~template_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~api_management_name ~body
      ~resource_group_name ~subject ~template_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
