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

type azurerm_api_management_api_tag_description = {
  api_tag_id : string prop;
  description : string prop option; [@option]
  external_documentation_description : string prop option; [@option]
  external_documentation_url : string prop option; [@option]
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_api_tag_description) -> ()

let yojson_of_azurerm_api_management_api_tag_description =
  (function
   | {
       api_tag_id = v_api_tag_id;
       description = v_description;
       external_documentation_description =
         v_external_documentation_description;
       external_documentation_url = v_external_documentation_url;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_documentation_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_documentation_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_documentation_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_documentation_description", arg in
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
         let arg = yojson_of_prop yojson_of_string v_api_tag_id in
         ("api_tag_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_api_tag_description ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_api_tag_description

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_api_tag_description ?description
    ?external_documentation_description ?external_documentation_url
    ?id ?timeouts ~api_tag_id () :
    azurerm_api_management_api_tag_description =
  {
    api_tag_id;
    description;
    external_documentation_description;
    external_documentation_url;
    id;
    timeouts;
  }

type t = {
  api_tag_id : string prop;
  description : string prop;
  external_documentation_description : string prop;
  external_documentation_url : string prop;
  id : string prop;
}

let make ?description ?external_documentation_description
    ?external_documentation_url ?id ?timeouts ~api_tag_id __id =
  let __type = "azurerm_api_management_api_tag_description" in
  let __attrs =
    ({
       api_tag_id = Prop.computed __type __id "api_tag_id";
       description = Prop.computed __type __id "description";
       external_documentation_description =
         Prop.computed __type __id
           "external_documentation_description";
       external_documentation_url =
         Prop.computed __type __id "external_documentation_url";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_api_tag_description
        (azurerm_api_management_api_tag_description ?description
           ?external_documentation_description
           ?external_documentation_url ?id ?timeouts ~api_tag_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description
    ?external_documentation_description ?external_documentation_url
    ?id ?timeouts ~api_tag_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?external_documentation_description
      ?external_documentation_url ?id ?timeouts ~api_tag_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
