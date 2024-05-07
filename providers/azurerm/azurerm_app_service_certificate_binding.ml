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

type azurerm_app_service_certificate_binding = {
  certificate_id : string prop;
  hostname_binding_id : string prop;
  id : string prop option; [@option]
  ssl_state : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_service_certificate_binding) -> ()

let yojson_of_azurerm_app_service_certificate_binding =
  (function
   | {
       certificate_id = v_certificate_id;
       hostname_binding_id = v_hostname_binding_id;
       id = v_id;
       ssl_state = v_ssl_state;
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
         let arg = yojson_of_prop yojson_of_string v_ssl_state in
         ("ssl_state", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_hostname_binding_id
         in
         ("hostname_binding_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_id
         in
         ("certificate_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_app_service_certificate_binding ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_service_certificate_binding

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_app_service_certificate_binding ?id ?timeouts
    ~certificate_id ~hostname_binding_id ~ssl_state () :
    azurerm_app_service_certificate_binding =
  { certificate_id; hostname_binding_id; id; ssl_state; timeouts }

type t = {
  tf_name : string;
  app_service_name : string prop;
  certificate_id : string prop;
  hostname : string prop;
  hostname_binding_id : string prop;
  id : string prop;
  ssl_state : string prop;
  thumbprint : string prop;
}

let make ?id ?timeouts ~certificate_id ~hostname_binding_id
    ~ssl_state __id =
  let __type = "azurerm_app_service_certificate_binding" in
  let __attrs =
    ({
       tf_name = __id;
       app_service_name =
         Prop.computed __type __id "app_service_name";
       certificate_id = Prop.computed __type __id "certificate_id";
       hostname = Prop.computed __type __id "hostname";
       hostname_binding_id =
         Prop.computed __type __id "hostname_binding_id";
       id = Prop.computed __type __id "id";
       ssl_state = Prop.computed __type __id "ssl_state";
       thumbprint = Prop.computed __type __id "thumbprint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_certificate_binding
        (azurerm_app_service_certificate_binding ?id ?timeouts
           ~certificate_id ~hostname_binding_id ~ssl_state ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~certificate_id
    ~hostname_binding_id ~ssl_state __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~certificate_id ~hostname_binding_id
      ~ssl_state __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
