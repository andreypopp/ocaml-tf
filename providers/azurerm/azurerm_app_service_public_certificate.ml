(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type azurerm_app_service_public_certificate = {
  app_service_name : string prop;
  blob : string prop;
  certificate_location : string prop;
  certificate_name : string prop;
  id : string prop option; [@option]
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_service_public_certificate) -> ()

let yojson_of_azurerm_app_service_public_certificate =
  (function
   | {
       app_service_name = v_app_service_name;
       blob = v_blob;
       certificate_location = v_certificate_location;
       certificate_name = v_certificate_name;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_name
         in
         ("certificate_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_location
         in
         ("certificate_location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_blob in
         ("blob", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_service_name
         in
         ("app_service_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_app_service_public_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_service_public_certificate

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_app_service_public_certificate ?id ?timeouts
    ~app_service_name ~blob ~certificate_location ~certificate_name
    ~resource_group_name () : azurerm_app_service_public_certificate
    =
  {
    app_service_name;
    blob;
    certificate_location;
    certificate_name;
    id;
    resource_group_name;
    timeouts;
  }

type t = {
  tf_name : string;
  app_service_name : string prop;
  blob : string prop;
  certificate_location : string prop;
  certificate_name : string prop;
  id : string prop;
  resource_group_name : string prop;
  thumbprint : string prop;
}

let make ?id ?timeouts ~app_service_name ~blob ~certificate_location
    ~certificate_name ~resource_group_name __id =
  let __type = "azurerm_app_service_public_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       app_service_name =
         Prop.computed __type __id "app_service_name";
       blob = Prop.computed __type __id "blob";
       certificate_location =
         Prop.computed __type __id "certificate_location";
       certificate_name =
         Prop.computed __type __id "certificate_name";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       thumbprint = Prop.computed __type __id "thumbprint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_public_certificate
        (azurerm_app_service_public_certificate ?id ?timeouts
           ~app_service_name ~blob ~certificate_location
           ~certificate_name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~app_service_name ~blob
    ~certificate_location ~certificate_name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~app_service_name ~blob ~certificate_location
      ~certificate_name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
