(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type linked_service = {
  name : string prop;
  parameters : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : linked_service) -> ()

let yojson_of_linked_service =
  (function
   | { name = v_name; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : linked_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_linked_service

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

type azurerm_data_factory_custom_dataset = {
  additional_properties : string prop Tf_core.assoc option; [@option]
  annotations : string prop list option; [@option]
  data_factory_id : string prop;
  description : string prop option; [@option]
  folder : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  parameters : string prop Tf_core.assoc option; [@option]
  schema_json : string prop option; [@option]
  type_ : string prop; [@key "type"]
  type_properties_json : string prop;
  linked_service : linked_service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_factory_custom_dataset) -> ()

let yojson_of_azurerm_data_factory_custom_dataset =
  (function
   | {
       additional_properties = v_additional_properties;
       annotations = v_annotations;
       data_factory_id = v_data_factory_id;
       description = v_description;
       folder = v_folder;
       id = v_id;
       name = v_name;
       parameters = v_parameters;
       schema_json = v_schema_json;
       type_ = v_type_;
       type_properties_json = v_type_properties_json;
       linked_service = v_linked_service;
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
         if Stdlib.( = ) [] v_linked_service then bnds
         else
           let arg =
             (yojson_of_list yojson_of_linked_service)
               v_linked_service
           in
           let bnd = "linked_service", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_type_properties_json
         in
         ("type_properties_json", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_schema_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema_json", arg in
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
         match v_folder with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "folder", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_data_factory_id
         in
         ("data_factory_id", arg) :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "additional_properties", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory_custom_dataset ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_custom_dataset

[@@@deriving.end]

let linked_service ?parameters ~name () : linked_service =
  { name; parameters }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_custom_dataset ?additional_properties
    ?annotations ?description ?folder ?id ?parameters ?schema_json
    ?timeouts ~data_factory_id ~name ~type_ ~type_properties_json
    ~linked_service () : azurerm_data_factory_custom_dataset =
  {
    additional_properties;
    annotations;
    data_factory_id;
    description;
    folder;
    id;
    name;
    parameters;
    schema_json;
    type_;
    type_properties_json;
    linked_service;
    timeouts;
  }

type t = {
  tf_name : string;
  additional_properties : string Tf_core.assoc prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
  schema_json : string prop;
  type_ : string prop;
  type_properties_json : string prop;
}

let make ?additional_properties ?annotations ?description ?folder ?id
    ?parameters ?schema_json ?timeouts ~data_factory_id ~name ~type_
    ~type_properties_json ~linked_service __id =
  let __type = "azurerm_data_factory_custom_dataset" in
  let __attrs =
    ({
       tf_name = __id;
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       folder = Prop.computed __type __id "folder";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       schema_json = Prop.computed __type __id "schema_json";
       type_ = Prop.computed __type __id "type";
       type_properties_json =
         Prop.computed __type __id "type_properties_json";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_custom_dataset
        (azurerm_data_factory_custom_dataset ?additional_properties
           ?annotations ?description ?folder ?id ?parameters
           ?schema_json ?timeouts ~data_factory_id ~name ~type_
           ~type_properties_json ~linked_service ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_properties ?annotations
    ?description ?folder ?id ?parameters ?schema_json ?timeouts
    ~data_factory_id ~name ~type_ ~type_properties_json
    ~linked_service __id =
  let (r : _ Tf_core.resource) =
    make ?additional_properties ?annotations ?description ?folder ?id
      ?parameters ?schema_json ?timeouts ~data_factory_id ~name
      ~type_ ~type_properties_json ~linked_service __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
