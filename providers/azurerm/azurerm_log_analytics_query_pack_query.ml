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

type azurerm_log_analytics_query_pack_query = {
  additional_settings_json : string prop option; [@option]
  body : string prop;
  categories : string prop list option; [@option]
  description : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  query_pack_id : string prop;
  resource_types : string prop list option; [@option]
  solutions : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_log_analytics_query_pack_query) -> ()

let yojson_of_azurerm_log_analytics_query_pack_query =
  (function
   | {
       additional_settings_json = v_additional_settings_json;
       body = v_body;
       categories = v_categories;
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       name = v_name;
       query_pack_id = v_query_pack_id;
       resource_types = v_resource_types;
       solutions = v_solutions;
       tags = v_tags;
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
         match v_solutions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "solutions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_types", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query_pack_id in
         ("query_pack_id", arg) :: bnds
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
         match v_categories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "categories", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_body in
         ("body", arg) :: bnds
       in
       let bnds =
         match v_additional_settings_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "additional_settings_json", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_log_analytics_query_pack_query ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_log_analytics_query_pack_query

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_log_analytics_query_pack_query ?additional_settings_json
    ?categories ?description ?id ?name ?resource_types ?solutions
    ?tags ?timeouts ~body ~display_name ~query_pack_id () :
    azurerm_log_analytics_query_pack_query =
  {
    additional_settings_json;
    body;
    categories;
    description;
    display_name;
    id;
    name;
    query_pack_id;
    resource_types;
    solutions;
    tags;
    timeouts;
  }

type t = {
  additional_settings_json : string prop;
  body : string prop;
  categories : string list prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  query_pack_id : string prop;
  resource_types : string list prop;
  solutions : string list prop;
  tags : (string * string) list prop;
}

let make ?additional_settings_json ?categories ?description ?id ?name
    ?resource_types ?solutions ?tags ?timeouts ~body ~display_name
    ~query_pack_id __id =
  let __type = "azurerm_log_analytics_query_pack_query" in
  let __attrs =
    ({
       additional_settings_json =
         Prop.computed __type __id "additional_settings_json";
       body = Prop.computed __type __id "body";
       categories = Prop.computed __type __id "categories";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       query_pack_id = Prop.computed __type __id "query_pack_id";
       resource_types = Prop.computed __type __id "resource_types";
       solutions = Prop.computed __type __id "solutions";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_log_analytics_query_pack_query
        (azurerm_log_analytics_query_pack_query
           ?additional_settings_json ?categories ?description ?id
           ?name ?resource_types ?solutions ?tags ?timeouts ~body
           ~display_name ~query_pack_id ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_settings_json ?categories
    ?description ?id ?name ?resource_types ?solutions ?tags ?timeouts
    ~body ~display_name ~query_pack_id __id =
  let (r : _ Tf_core.resource) =
    make ?additional_settings_json ?categories ?description ?id ?name
      ?resource_types ?solutions ?tags ?timeouts ~body ~display_name
      ~query_pack_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
