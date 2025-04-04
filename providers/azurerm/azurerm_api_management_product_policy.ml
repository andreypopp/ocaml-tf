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

type azurerm_api_management_product_policy = {
  api_management_name : string prop;
  id : string prop option; [@option]
  product_id : string prop;
  resource_group_name : string prop;
  xml_content : string prop option; [@option]
  xml_link : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_product_policy) -> ()

let yojson_of_azurerm_api_management_product_policy =
  (function
   | {
       api_management_name = v_api_management_name;
       id = v_id;
       product_id = v_product_id;
       resource_group_name = v_resource_group_name;
       xml_content = v_xml_content;
       xml_link = v_xml_link;
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
         match v_xml_link with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "xml_link", arg in
             bnd :: bnds
       in
       let bnds =
         match v_xml_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "xml_content", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_product_id in
         ("product_id", arg) :: bnds
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
    : azurerm_api_management_product_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_product_policy

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_product_policy ?id ?xml_content ?xml_link
    ?timeouts ~api_management_name ~product_id ~resource_group_name
    () : azurerm_api_management_product_policy =
  {
    api_management_name;
    id;
    product_id;
    resource_group_name;
    xml_content;
    xml_link;
    timeouts;
  }

type t = {
  tf_name : string;
  api_management_name : string prop;
  id : string prop;
  product_id : string prop;
  resource_group_name : string prop;
  xml_content : string prop;
  xml_link : string prop;
}

let make ?id ?xml_content ?xml_link ?timeouts ~api_management_name
    ~product_id ~resource_group_name __id =
  let __type = "azurerm_api_management_product_policy" in
  let __attrs =
    ({
       tf_name = __id;
       api_management_name =
         Prop.computed __type __id "api_management_name";
       id = Prop.computed __type __id "id";
       product_id = Prop.computed __type __id "product_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       xml_content = Prop.computed __type __id "xml_content";
       xml_link = Prop.computed __type __id "xml_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_product_policy
        (azurerm_api_management_product_policy ?id ?xml_content
           ?xml_link ?timeouts ~api_management_name ~product_id
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?xml_content ?xml_link ?timeouts
    ~api_management_name ~product_id ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?xml_content ?xml_link ?timeouts ~api_management_name
      ~product_id ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
