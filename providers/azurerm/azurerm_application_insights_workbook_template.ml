(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type galleries = {
  category : string prop;
  name : string prop;
  order : float prop option; [@option]
  resource_type : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : galleries) -> ()

let yojson_of_galleries =
  (function
   | {
       category = v_category;
       name = v_name;
       order = v_order;
       resource_type = v_resource_type;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "order", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_category in
         ("category", arg) :: bnds
       in
       `Assoc bnds
    : galleries -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_galleries

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

type azurerm_application_insights_workbook_template = {
  author : string prop option; [@option]
  id : string prop option; [@option]
  localized : string prop option; [@option]
  location : string prop;
  name : string prop;
  priority : float prop option; [@option]
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  template_data : string prop;
  galleries : galleries list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_application_insights_workbook_template) -> ()

let yojson_of_azurerm_application_insights_workbook_template =
  (function
   | {
       author = v_author;
       id = v_id;
       localized = v_localized;
       location = v_location;
       name = v_name;
       priority = v_priority;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       template_data = v_template_data;
       galleries = v_galleries;
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
         let arg = yojson_of_list yojson_of_galleries v_galleries in
         ("galleries", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_template_data in
         ("template_data", arg) :: bnds
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
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_localized with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "localized", arg in
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
         match v_author with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "author", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_application_insights_workbook_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_application_insights_workbook_template

[@@@deriving.end]

let galleries ?order ?resource_type ?type_ ~category ~name () :
    galleries =
  { category; name; order; resource_type; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_application_insights_workbook_template ?author ?id
    ?localized ?priority ?tags ?timeouts ~location ~name
    ~resource_group_name ~template_data ~galleries () :
    azurerm_application_insights_workbook_template =
  {
    author;
    id;
    localized;
    location;
    name;
    priority;
    resource_group_name;
    tags;
    template_data;
    galleries;
    timeouts;
  }

type t = {
  author : string prop;
  id : string prop;
  localized : string prop;
  location : string prop;
  name : string prop;
  priority : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  template_data : string prop;
}

let make ?author ?id ?localized ?priority ?tags ?timeouts ~location
    ~name ~resource_group_name ~template_data ~galleries __id =
  let __type = "azurerm_application_insights_workbook_template" in
  let __attrs =
    ({
       author = Prop.computed __type __id "author";
       id = Prop.computed __type __id "id";
       localized = Prop.computed __type __id "localized";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       template_data = Prop.computed __type __id "template_data";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_application_insights_workbook_template
        (azurerm_application_insights_workbook_template ?author ?id
           ?localized ?priority ?tags ?timeouts ~location ~name
           ~resource_group_name ~template_data ~galleries ());
    attrs = __attrs;
  }

let register ?tf_module ?author ?id ?localized ?priority ?tags
    ?timeouts ~location ~name ~resource_group_name ~template_data
    ~galleries __id =
  let (r : _ Tf_core.resource) =
    make ?author ?id ?localized ?priority ?tags ?timeouts ~location
      ~name ~resource_group_name ~template_data ~galleries __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
