(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type input_asset = {
  label : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input_asset) -> ()

let yojson_of_input_asset =
  (function
   | { label = v_label; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_asset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_asset

[@@@deriving.end]

type output_asset = {
  label : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output_asset) -> ()

let yojson_of_output_asset =
  (function
   | { label = v_label; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output_asset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output_asset

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

type azurerm_media_job = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  media_services_account_name : string prop;
  name : string prop;
  priority : string prop option; [@option]
  resource_group_name : string prop;
  transform_name : string prop;
  input_asset : input_asset list;
  output_asset : output_asset list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_media_job) -> ()

let yojson_of_azurerm_media_job =
  (function
   | {
       description = v_description;
       id = v_id;
       media_services_account_name = v_media_services_account_name;
       name = v_name;
       priority = v_priority;
       resource_group_name = v_resource_group_name;
       transform_name = v_transform_name;
       input_asset = v_input_asset;
       output_asset = v_output_asset;
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
           yojson_of_list yojson_of_output_asset v_output_asset
         in
         ("output_asset", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_input_asset v_input_asset
         in
         ("input_asset", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_transform_name
         in
         ("transform_name", arg) :: bnds
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
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_media_services_account_name
         in
         ("media_services_account_name", arg) :: bnds
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
       `Assoc bnds
    : azurerm_media_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_media_job

[@@@deriving.end]

let input_asset ?label ~name () : input_asset = { label; name }
let output_asset ?label ~name () : output_asset = { label; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_media_job ?description ?id ?priority ?timeouts
    ~media_services_account_name ~name ~resource_group_name
    ~transform_name ~input_asset ~output_asset () : azurerm_media_job
    =
  {
    description;
    id;
    media_services_account_name;
    name;
    priority;
    resource_group_name;
    transform_name;
    input_asset;
    output_asset;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  priority : string prop;
  resource_group_name : string prop;
  transform_name : string prop;
}

let make ?description ?id ?priority ?timeouts
    ~media_services_account_name ~name ~resource_group_name
    ~transform_name ~input_asset ~output_asset __id =
  let __type = "azurerm_media_job" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       media_services_account_name =
         Prop.computed __type __id "media_services_account_name";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       transform_name = Prop.computed __type __id "transform_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_media_job
        (azurerm_media_job ?description ?id ?priority ?timeouts
           ~media_services_account_name ~name ~resource_group_name
           ~transform_name ~input_asset ~output_asset ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?priority ?timeouts
    ~media_services_account_name ~name ~resource_group_name
    ~transform_name ~input_asset ~output_asset __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?priority ?timeouts
      ~media_services_account_name ~name ~resource_group_name
      ~transform_name ~input_asset ~output_asset __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
