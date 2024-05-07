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

type azurerm_app_service_custom_hostname_binding = {
  app_service_name : string prop;
  hostname : string prop;
  id : string prop option; [@option]
  resource_group_name : string prop;
  ssl_state : string prop option; [@option]
  thumbprint : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_service_custom_hostname_binding) -> ()

let yojson_of_azurerm_app_service_custom_hostname_binding =
  (function
   | {
       app_service_name = v_app_service_name;
       hostname = v_hostname;
       id = v_id;
       resource_group_name = v_resource_group_name;
       ssl_state = v_ssl_state;
       thumbprint = v_thumbprint;
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
         match v_thumbprint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "thumbprint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssl_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_state", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_service_name
         in
         ("app_service_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_app_service_custom_hostname_binding ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_service_custom_hostname_binding

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_app_service_custom_hostname_binding ?id ?ssl_state
    ?thumbprint ?timeouts ~app_service_name ~hostname
    ~resource_group_name () :
    azurerm_app_service_custom_hostname_binding =
  {
    app_service_name;
    hostname;
    id;
    resource_group_name;
    ssl_state;
    thumbprint;
    timeouts;
  }

type t = {
  tf_name : string;
  app_service_name : string prop;
  hostname : string prop;
  id : string prop;
  resource_group_name : string prop;
  ssl_state : string prop;
  thumbprint : string prop;
  virtual_ip : string prop;
}

let make ?id ?ssl_state ?thumbprint ?timeouts ~app_service_name
    ~hostname ~resource_group_name __id =
  let __type = "azurerm_app_service_custom_hostname_binding" in
  let __attrs =
    ({
       tf_name = __id;
       app_service_name =
         Prop.computed __type __id "app_service_name";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       ssl_state = Prop.computed __type __id "ssl_state";
       thumbprint = Prop.computed __type __id "thumbprint";
       virtual_ip = Prop.computed __type __id "virtual_ip";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_custom_hostname_binding
        (azurerm_app_service_custom_hostname_binding ?id ?ssl_state
           ?thumbprint ?timeouts ~app_service_name ~hostname
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ssl_state ?thumbprint ?timeouts
    ~app_service_name ~hostname ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ssl_state ?thumbprint ?timeouts ~app_service_name
      ~hostname ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
