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

type azurerm_spring_cloud_certificate = {
  certificate_content : string prop option; [@option]
  exclude_private_key : bool prop option; [@option]
  id : string prop option; [@option]
  key_vault_certificate_id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  service_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_spring_cloud_certificate) -> ()

let yojson_of_azurerm_spring_cloud_certificate =
  (function
   | {
       certificate_content = v_certificate_content;
       exclude_private_key = v_exclude_private_key;
       id = v_id;
       key_vault_certificate_id = v_key_vault_certificate_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       service_name = v_service_name;
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
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
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
         match v_key_vault_certificate_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_certificate_id", arg in
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
         match v_exclude_private_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_private_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_content", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_spring_cloud_certificate

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_spring_cloud_certificate ?certificate_content
    ?exclude_private_key ?id ?key_vault_certificate_id ?timeouts
    ~name ~resource_group_name ~service_name () :
    azurerm_spring_cloud_certificate =
  {
    certificate_content;
    exclude_private_key;
    id;
    key_vault_certificate_id;
    name;
    resource_group_name;
    service_name;
    timeouts;
  }

type t = {
  certificate_content : string prop;
  exclude_private_key : bool prop;
  id : string prop;
  key_vault_certificate_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  service_name : string prop;
  thumbprint : string prop;
}

let make ?certificate_content ?exclude_private_key ?id
    ?key_vault_certificate_id ?timeouts ~name ~resource_group_name
    ~service_name __id =
  let __type = "azurerm_spring_cloud_certificate" in
  let __attrs =
    ({
       certificate_content =
         Prop.computed __type __id "certificate_content";
       exclude_private_key =
         Prop.computed __type __id "exclude_private_key";
       id = Prop.computed __type __id "id";
       key_vault_certificate_id =
         Prop.computed __type __id "key_vault_certificate_id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_name = Prop.computed __type __id "service_name";
       thumbprint = Prop.computed __type __id "thumbprint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_certificate
        (azurerm_spring_cloud_certificate ?certificate_content
           ?exclude_private_key ?id ?key_vault_certificate_id
           ?timeouts ~name ~resource_group_name ~service_name ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_content ?exclude_private_key ?id
    ?key_vault_certificate_id ?timeouts ~name ~resource_group_name
    ~service_name __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_content ?exclude_private_key ?id
      ?key_vault_certificate_id ?timeouts ~name ~resource_group_name
      ~service_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
