(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type key_vault_key = {
  linked_service_name : string prop;
  secret_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : key_vault_key) -> ()

let yojson_of_key_vault_key =
  (function
   | {
       linked_service_name = v_linked_service_name;
       secret_name = v_secret_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_linked_service_name
         in
         ("linked_service_name", arg) :: bnds
       in
       `Assoc bnds
    : key_vault_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_vault_key

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

type azurerm_data_factory_linked_service_azure_function = {
  additional_properties : string prop Tf_core.assoc option; [@option]
  annotations : string prop list option; [@option]
  data_factory_id : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  integration_runtime_name : string prop option; [@option]
  key : string prop option; [@option]
  name : string prop;
  parameters : string prop Tf_core.assoc option; [@option]
  url : string prop;
  key_vault_key : key_vault_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_data_factory_linked_service_azure_function) -> ()

let yojson_of_azurerm_data_factory_linked_service_azure_function =
  (function
   | {
       additional_properties = v_additional_properties;
       annotations = v_annotations;
       data_factory_id = v_data_factory_id;
       description = v_description;
       id = v_id;
       integration_runtime_name = v_integration_runtime_name;
       key = v_key;
       name = v_name;
       parameters = v_parameters;
       url = v_url;
       key_vault_key = v_key_vault_key;
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
         if Stdlib.( = ) [] v_key_vault_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_key_vault_key) v_key_vault_key
           in
           let bnd = "key_vault_key", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
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
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integration_runtime_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integration_runtime_name", arg in
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
    : azurerm_data_factory_linked_service_azure_function ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_linked_service_azure_function

[@@@deriving.end]

let key_vault_key ~linked_service_name ~secret_name () :
    key_vault_key =
  { linked_service_name; secret_name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_linked_service_azure_function
    ?additional_properties ?annotations ?description ?id
    ?integration_runtime_name ?key ?parameters ?(key_vault_key = [])
    ?timeouts ~data_factory_id ~name ~url () :
    azurerm_data_factory_linked_service_azure_function =
  {
    additional_properties;
    annotations;
    data_factory_id;
    description;
    id;
    integration_runtime_name;
    key;
    name;
    parameters;
    url;
    key_vault_key;
    timeouts;
  }

type t = {
  tf_name : string;
  additional_properties : string Tf_core.assoc prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  key : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
  url : string prop;
}

let make ?additional_properties ?annotations ?description ?id
    ?integration_runtime_name ?key ?parameters ?(key_vault_key = [])
    ?timeouts ~data_factory_id ~name ~url __id =
  let __type =
    "azurerm_data_factory_linked_service_azure_function"
  in
  let __attrs =
    ({
       tf_name = __id;
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       integration_runtime_name =
         Prop.computed __type __id "integration_runtime_name";
       key = Prop.computed __type __id "key";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_linked_service_azure_function
        (azurerm_data_factory_linked_service_azure_function
           ?additional_properties ?annotations ?description ?id
           ?integration_runtime_name ?key ?parameters ~key_vault_key
           ?timeouts ~data_factory_id ~name ~url ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_properties ?annotations
    ?description ?id ?integration_runtime_name ?key ?parameters
    ?(key_vault_key = []) ?timeouts ~data_factory_id ~name ~url __id
    =
  let (r : _ Tf_core.resource) =
    make ?additional_properties ?annotations ?description ?id
      ?integration_runtime_name ?key ?parameters ~key_vault_key
      ?timeouts ~data_factory_id ~name ~url __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
