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

type azurerm_iothub_enrichment = {
  endpoint_names : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  id : string prop option; [@option]
  iothub_name : string prop;
  key : string prop;
  resource_group_name : string prop;
  value : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_iothub_enrichment) -> ()

let yojson_of_azurerm_iothub_enrichment =
  (function
   | {
       endpoint_names = v_endpoint_names;
       id = v_id;
       iothub_name = v_iothub_name;
       key = v_key;
       resource_group_name = v_resource_group_name;
       value = v_value;
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
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iothub_name in
         ("iothub_name", arg) :: bnds
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
         if [] = v_endpoint_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_endpoint_names
           in
           let bnd = "endpoint_names", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : azurerm_iothub_enrichment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_iothub_enrichment

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_enrichment ?id ?timeouts ~endpoint_names
    ~iothub_name ~key ~resource_group_name ~value () :
    azurerm_iothub_enrichment =
  {
    endpoint_names;
    id;
    iothub_name;
    key;
    resource_group_name;
    value;
    timeouts;
  }

type t = {
  tf_name : string;
  endpoint_names : string list prop;
  id : string prop;
  iothub_name : string prop;
  key : string prop;
  resource_group_name : string prop;
  value : string prop;
}

let make ?id ?timeouts ~endpoint_names ~iothub_name ~key
    ~resource_group_name ~value __id =
  let __type = "azurerm_iothub_enrichment" in
  let __attrs =
    ({
       tf_name = __id;
       endpoint_names = Prop.computed __type __id "endpoint_names";
       id = Prop.computed __type __id "id";
       iothub_name = Prop.computed __type __id "iothub_name";
       key = Prop.computed __type __id "key";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_enrichment
        (azurerm_iothub_enrichment ?id ?timeouts ~endpoint_names
           ~iothub_name ~key ~resource_group_name ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~endpoint_names ~iothub_name
    ~key ~resource_group_name ~value __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~endpoint_names ~iothub_name ~key
      ~resource_group_name ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
