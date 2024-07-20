(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type service_principal_key = {
  linked_service_name : string prop;
  secret_name : string prop;
  secret_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_principal_key) -> ()

let yojson_of_service_principal_key =
  (function
   | {
       linked_service_name = v_linked_service_name;
       secret_name = v_secret_name;
       secret_version = v_secret_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_secret_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_version", arg in
             bnd :: bnds
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
    : service_principal_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_principal_key

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

type azurerm_data_factory_credential_service_principal = {
  annotations : string prop list option; [@option]
  data_factory_id : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  service_principal_id : string prop;
  tenant_id : string prop;
  service_principal_key : service_principal_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_data_factory_credential_service_principal) -> ()

let yojson_of_azurerm_data_factory_credential_service_principal =
  (function
   | {
       annotations = v_annotations;
       data_factory_id = v_data_factory_id;
       description = v_description;
       id = v_id;
       name = v_name;
       service_principal_id = v_service_principal_id;
       tenant_id = v_tenant_id;
       service_principal_key = v_service_principal_key;
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
         if Stdlib.( = ) [] v_service_principal_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service_principal_key)
               v_service_principal_key
           in
           let bnd = "service_principal_key", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_principal_id
         in
         ("service_principal_id", arg) :: bnds
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
       `Assoc bnds
    : azurerm_data_factory_credential_service_principal ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_credential_service_principal

[@@@deriving.end]

let service_principal_key ?secret_version ~linked_service_name
    ~secret_name () : service_principal_key =
  { linked_service_name; secret_name; secret_version }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_credential_service_principal ?annotations
    ?description ?id ?(service_principal_key = []) ?timeouts
    ~data_factory_id ~name ~service_principal_id ~tenant_id () :
    azurerm_data_factory_credential_service_principal =
  {
    annotations;
    data_factory_id;
    description;
    id;
    name;
    service_principal_id;
    tenant_id;
    service_principal_key;
    timeouts;
  }

type t = {
  tf_name : string;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  service_principal_id : string prop;
  tenant_id : string prop;
}

let make ?annotations ?description ?id ?(service_principal_key = [])
    ?timeouts ~data_factory_id ~name ~service_principal_id ~tenant_id
    __id =
  let __type = "azurerm_data_factory_credential_service_principal" in
  let __attrs =
    ({
       tf_name = __id;
       annotations = Prop.computed __type __id "annotations";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       service_principal_id =
         Prop.computed __type __id "service_principal_id";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_credential_service_principal
        (azurerm_data_factory_credential_service_principal
           ?annotations ?description ?id ~service_principal_key
           ?timeouts ~data_factory_id ~name ~service_principal_id
           ~tenant_id ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?description ?id
    ?(service_principal_key = []) ?timeouts ~data_factory_id ~name
    ~service_principal_id ~tenant_id __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?description ?id ~service_principal_key
      ?timeouts ~data_factory_id ~name ~service_principal_id
      ~tenant_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
