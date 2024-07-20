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

type azurerm_container_app_custom_domain = {
  certificate_binding_type : string prop option; [@option]
  container_app_environment_certificate_id : string prop option;
      [@option]
  container_app_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_container_app_custom_domain) -> ()

let yojson_of_azurerm_container_app_custom_domain =
  (function
   | {
       certificate_binding_type = v_certificate_binding_type;
       container_app_environment_certificate_id =
         v_container_app_environment_certificate_id;
       container_app_id = v_container_app_id;
       id = v_id;
       name = v_name;
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
         let arg =
           yojson_of_prop yojson_of_string v_container_app_id
         in
         ("container_app_id", arg) :: bnds
       in
       let bnds =
         match v_container_app_environment_certificate_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "container_app_environment_certificate_id", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_binding_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_binding_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_container_app_custom_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_container_app_custom_domain

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_container_app_custom_domain ?certificate_binding_type
    ?container_app_environment_certificate_id ?id ?timeouts
    ~container_app_id ~name () : azurerm_container_app_custom_domain
    =
  {
    certificate_binding_type;
    container_app_environment_certificate_id;
    container_app_id;
    id;
    name;
    timeouts;
  }

type t = {
  tf_name : string;
  certificate_binding_type : string prop;
  container_app_environment_certificate_id : string prop;
  container_app_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?certificate_binding_type
    ?container_app_environment_certificate_id ?id ?timeouts
    ~container_app_id ~name __id =
  let __type = "azurerm_container_app_custom_domain" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_binding_type =
         Prop.computed __type __id "certificate_binding_type";
       container_app_environment_certificate_id =
         Prop.computed __type __id
           "container_app_environment_certificate_id";
       container_app_id =
         Prop.computed __type __id "container_app_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_app_custom_domain
        (azurerm_container_app_custom_domain
           ?certificate_binding_type
           ?container_app_environment_certificate_id ?id ?timeouts
           ~container_app_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_binding_type
    ?container_app_environment_certificate_id ?id ?timeouts
    ~container_app_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_binding_type
      ?container_app_environment_certificate_id ?id ?timeouts
      ~container_app_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
