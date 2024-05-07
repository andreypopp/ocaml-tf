(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
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
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_nginx_certificate = {
  id : string prop option; [@option]
  name : string prop;
  nginx_deployment_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_nginx_certificate) -> ()

let yojson_of_azurerm_nginx_certificate =
  (function
   | {
       id = v_id;
       name = v_name;
       nginx_deployment_id = v_nginx_deployment_id;
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
           yojson_of_prop yojson_of_string v_nginx_deployment_id
         in
         ("nginx_deployment_id", arg) :: bnds
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
       `Assoc bnds
    : azurerm_nginx_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_nginx_certificate

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_nginx_certificate ?id ?timeouts ~name
    ~nginx_deployment_id () : azurerm_nginx_certificate =
  { id; name; nginx_deployment_id; timeouts }

type t = {
  tf_name : string;
  certificate_virtual_path : string prop;
  id : string prop;
  key_vault_secret_id : string prop;
  key_virtual_path : string prop;
  name : string prop;
  nginx_deployment_id : string prop;
}

let make ?id ?timeouts ~name ~nginx_deployment_id __id =
  let __type = "azurerm_nginx_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_virtual_path =
         Prop.computed __type __id "certificate_virtual_path";
       id = Prop.computed __type __id "id";
       key_vault_secret_id =
         Prop.computed __type __id "key_vault_secret_id";
       key_virtual_path =
         Prop.computed __type __id "key_virtual_path";
       name = Prop.computed __type __id "name";
       nginx_deployment_id =
         Prop.computed __type __id "nginx_deployment_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_nginx_certificate
        (azurerm_nginx_certificate ?id ?timeouts ~name
           ~nginx_deployment_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~nginx_deployment_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~nginx_deployment_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
