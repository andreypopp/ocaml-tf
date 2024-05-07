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

type azurerm_api_management_api_version_set = {
  api_management_name : string prop;
  description : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  version_header_name : string prop option; [@option]
  version_query_name : string prop option; [@option]
  versioning_scheme : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_api_version_set) -> ()

let yojson_of_azurerm_api_management_api_version_set =
  (function
   | {
       api_management_name = v_api_management_name;
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       version_header_name = v_version_header_name;
       version_query_name = v_version_query_name;
       versioning_scheme = v_versioning_scheme;
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
           yojson_of_prop yojson_of_string v_versioning_scheme
         in
         ("versioning_scheme", arg) :: bnds
       in
       let bnds =
         match v_version_query_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_query_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_version_header_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_header_name", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_api_management_name
         in
         ("api_management_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_api_version_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_api_version_set

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_api_version_set ?description ?id
    ?version_header_name ?version_query_name ?timeouts
    ~api_management_name ~display_name ~name ~resource_group_name
    ~versioning_scheme () : azurerm_api_management_api_version_set =
  {
    api_management_name;
    description;
    display_name;
    id;
    name;
    resource_group_name;
    version_header_name;
    version_query_name;
    versioning_scheme;
    timeouts;
  }

type t = {
  tf_name : string;
  api_management_name : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  version_header_name : string prop;
  version_query_name : string prop;
  versioning_scheme : string prop;
}

let make ?description ?id ?version_header_name ?version_query_name
    ?timeouts ~api_management_name ~display_name ~name
    ~resource_group_name ~versioning_scheme __id =
  let __type = "azurerm_api_management_api_version_set" in
  let __attrs =
    ({
       tf_name = __id;
       api_management_name =
         Prop.computed __type __id "api_management_name";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       version_header_name =
         Prop.computed __type __id "version_header_name";
       version_query_name =
         Prop.computed __type __id "version_query_name";
       versioning_scheme =
         Prop.computed __type __id "versioning_scheme";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_api_version_set
        (azurerm_api_management_api_version_set ?description ?id
           ?version_header_name ?version_query_name ?timeouts
           ~api_management_name ~display_name ~name
           ~resource_group_name ~versioning_scheme ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?version_header_name
    ?version_query_name ?timeouts ~api_management_name ~display_name
    ~name ~resource_group_name ~versioning_scheme __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?version_header_name ?version_query_name
      ?timeouts ~api_management_name ~display_name ~name
      ~resource_group_name ~versioning_scheme __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
