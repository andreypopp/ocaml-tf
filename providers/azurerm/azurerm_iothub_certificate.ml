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

type azurerm_iothub_certificate = {
  certificate_content : string prop;
  id : string prop option; [@option]
  iothub_name : string prop;
  is_verified : bool prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_iothub_certificate) -> ()

let yojson_of_azurerm_iothub_certificate =
  (function
   | {
       certificate_content = v_certificate_content;
       id = v_id;
       iothub_name = v_iothub_name;
       is_verified = v_is_verified;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_is_verified with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_verified", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_certificate_content
         in
         ("certificate_content", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_iothub_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_iothub_certificate

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_certificate ?id ?is_verified ?timeouts
    ~certificate_content ~iothub_name ~name ~resource_group_name () :
    azurerm_iothub_certificate =
  {
    certificate_content;
    id;
    iothub_name;
    is_verified;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  tf_name : string;
  certificate_content : string prop;
  id : string prop;
  iothub_name : string prop;
  is_verified : bool prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?id ?is_verified ?timeouts ~certificate_content ~iothub_name
    ~name ~resource_group_name __id =
  let __type = "azurerm_iothub_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_content =
         Prop.computed __type __id "certificate_content";
       id = Prop.computed __type __id "id";
       iothub_name = Prop.computed __type __id "iothub_name";
       is_verified = Prop.computed __type __id "is_verified";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_certificate
        (azurerm_iothub_certificate ?id ?is_verified ?timeouts
           ~certificate_content ~iothub_name ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?is_verified ?timeouts
    ~certificate_content ~iothub_name ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?is_verified ?timeouts ~certificate_content ~iothub_name
      ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
