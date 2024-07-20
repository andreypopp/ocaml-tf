(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter__tags = {
  tag : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__tags) -> ()

let yojson_of_filter__tags =
  (function
   | { tag = v_tag; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tag in
         ("tag", arg) :: bnds
       in
       `Assoc bnds
    : filter__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__tags

[@@@deriving.end]

type filter = {
  locations : string prop list option; [@option]
  os_types : string prop list option; [@option]
  resource_groups : string prop list option; [@option]
  resource_types : string prop list option; [@option]
  tag_filter : string prop option; [@option]
  tags : filter__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | {
       locations = v_locations;
       os_types = v_os_types;
       resource_groups = v_resource_groups;
       resource_types = v_resource_types;
       tag_filter = v_tag_filter;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filter__tags) v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tag_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag_filter", arg in
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
         match v_resource_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "os_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_locations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "locations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

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

type azurerm_maintenance_assignment_dynamic_scope = {
  id : string prop option; [@option]
  maintenance_configuration_id : string prop;
  name : string prop;
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_maintenance_assignment_dynamic_scope) -> ()

let yojson_of_azurerm_maintenance_assignment_dynamic_scope =
  (function
   | {
       id = v_id;
       maintenance_configuration_id = v_maintenance_configuration_id;
       name = v_name;
       filter = v_filter;
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
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_maintenance_configuration_id
         in
         ("maintenance_configuration_id", arg) :: bnds
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
    : azurerm_maintenance_assignment_dynamic_scope ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_maintenance_assignment_dynamic_scope

[@@@deriving.end]

let filter__tags ~tag ~values () : filter__tags = { tag; values }

let filter ?locations ?os_types ?resource_groups ?resource_types
    ?tag_filter ?(tags = []) () : filter =
  {
    locations;
    os_types;
    resource_groups;
    resource_types;
    tag_filter;
    tags;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_maintenance_assignment_dynamic_scope ?id ?timeouts
    ~maintenance_configuration_id ~name ~filter () :
    azurerm_maintenance_assignment_dynamic_scope =
  { id; maintenance_configuration_id; name; filter; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  maintenance_configuration_id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~maintenance_configuration_id ~name ~filter
    __id =
  let __type = "azurerm_maintenance_assignment_dynamic_scope" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       maintenance_configuration_id =
         Prop.computed __type __id "maintenance_configuration_id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_maintenance_assignment_dynamic_scope
        (azurerm_maintenance_assignment_dynamic_scope ?id ?timeouts
           ~maintenance_configuration_id ~name ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~maintenance_configuration_id
    ~name ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~maintenance_configuration_id ~name ~filter
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
