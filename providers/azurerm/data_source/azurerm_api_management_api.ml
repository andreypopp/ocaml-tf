(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
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
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type subscription_key_parameter_names = {
  header : string prop;
  query : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subscription_key_parameter_names) -> ()

let yojson_of_subscription_key_parameter_names =
  (function
   | { header = v_header; query = v_query } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query in
         ("query", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header in
         ("header", arg) :: bnds
       in
       `Assoc bnds
    : subscription_key_parameter_names ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subscription_key_parameter_names

[@@@deriving.end]

type azurerm_api_management_api = {
  api_management_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  revision : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_api) -> ()

let yojson_of_azurerm_api_management_api =
  (function
   | {
       api_management_name = v_api_management_name;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       revision = v_revision;
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
         let arg = yojson_of_prop yojson_of_string v_revision in
         ("revision", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_name
         in
         ("api_management_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_api -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_api

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_api_management_api ?id ?timeouts ~api_management_name
    ~name ~resource_group_name ~revision () :
    azurerm_api_management_api =
  {
    api_management_name;
    id;
    name;
    resource_group_name;
    revision;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  is_current : bool prop;
  is_online : bool prop;
  name : string prop;
  path : string prop;
  protocols : string list prop;
  resource_group_name : string prop;
  revision : string prop;
  service_url : string prop;
  soap_pass_through : bool prop;
  subscription_key_parameter_names :
    subscription_key_parameter_names list prop;
  subscription_required : bool prop;
  version : string prop;
  version_set_id : string prop;
}

let make ?id ?timeouts ~api_management_name ~name
    ~resource_group_name ~revision __id =
  let __type = "azurerm_api_management_api" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       is_current = Prop.computed __type __id "is_current";
       is_online = Prop.computed __type __id "is_online";
       name = Prop.computed __type __id "name";
       path = Prop.computed __type __id "path";
       protocols = Prop.computed __type __id "protocols";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       revision = Prop.computed __type __id "revision";
       service_url = Prop.computed __type __id "service_url";
       soap_pass_through =
         Prop.computed __type __id "soap_pass_through";
       subscription_key_parameter_names =
         Prop.computed __type __id "subscription_key_parameter_names";
       subscription_required =
         Prop.computed __type __id "subscription_required";
       version = Prop.computed __type __id "version";
       version_set_id = Prop.computed __type __id "version_set_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_api
        (azurerm_api_management_api ?id ?timeouts
           ~api_management_name ~name ~resource_group_name ~revision
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~api_management_name ~name
    ~resource_group_name ~revision __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~api_management_name ~name
      ~resource_group_name ~revision __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
