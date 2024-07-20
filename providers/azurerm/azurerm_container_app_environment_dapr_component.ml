(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  name : string prop;
  secret_name : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | { name = v_name; secret_name = v_secret_name; value = v_value }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type secret = {
  identity : string prop option; [@option]
  key_vault_secret_id : string prop option; [@option]
  name : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secret) -> ()

let yojson_of_secret =
  (function
   | {
       identity = v_identity;
       key_vault_secret_id = v_key_vault_secret_id;
       name = v_name;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_key_vault_secret_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_secret_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret

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

type azurerm_container_app_environment_dapr_component = {
  component_type : string prop;
  container_app_environment_id : string prop;
  id : string prop option; [@option]
  ignore_errors : bool prop option; [@option]
  init_timeout : string prop option; [@option]
  name : string prop;
  scopes : string prop list option; [@option]
  version : string prop;
  metadata : metadata list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secret : secret list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_container_app_environment_dapr_component) -> ()

let yojson_of_azurerm_container_app_environment_dapr_component =
  (function
   | {
       component_type = v_component_type;
       container_app_environment_id = v_container_app_environment_id;
       id = v_id;
       ignore_errors = v_ignore_errors;
       init_timeout = v_init_timeout;
       name = v_name;
       scopes = v_scopes;
       version = v_version;
       metadata = v_metadata;
       secret = v_secret;
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
         if Stdlib.( = ) [] v_secret then bnds
         else
           let arg = (yojson_of_list yojson_of_secret) v_secret in
           let bnd = "secret", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metadata then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metadata) v_metadata
           in
           let bnd = "metadata", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         match v_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "scopes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_init_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "init_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_errors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_errors", arg in
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
         let arg =
           yojson_of_prop yojson_of_string
             v_container_app_environment_id
         in
         ("container_app_environment_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_component_type
         in
         ("component_type", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_container_app_environment_dapr_component ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_container_app_environment_dapr_component

[@@@deriving.end]

let metadata ?secret_name ?value ~name () : metadata =
  { name; secret_name; value }

let secret ?identity ?key_vault_secret_id ?value ~name () : secret =
  { identity; key_vault_secret_id; name; value }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_app_environment_dapr_component ?id
    ?ignore_errors ?init_timeout ?scopes ?(metadata = []) ?timeouts
    ~component_type ~container_app_environment_id ~name ~version
    ~secret () : azurerm_container_app_environment_dapr_component =
  {
    component_type;
    container_app_environment_id;
    id;
    ignore_errors;
    init_timeout;
    name;
    scopes;
    version;
    metadata;
    secret;
    timeouts;
  }

type t = {
  tf_name : string;
  component_type : string prop;
  container_app_environment_id : string prop;
  id : string prop;
  ignore_errors : bool prop;
  init_timeout : string prop;
  name : string prop;
  scopes : string list prop;
  version : string prop;
}

let make ?id ?ignore_errors ?init_timeout ?scopes ?(metadata = [])
    ?timeouts ~component_type ~container_app_environment_id ~name
    ~version ~secret __id =
  let __type = "azurerm_container_app_environment_dapr_component" in
  let __attrs =
    ({
       tf_name = __id;
       component_type = Prop.computed __type __id "component_type";
       container_app_environment_id =
         Prop.computed __type __id "container_app_environment_id";
       id = Prop.computed __type __id "id";
       ignore_errors = Prop.computed __type __id "ignore_errors";
       init_timeout = Prop.computed __type __id "init_timeout";
       name = Prop.computed __type __id "name";
       scopes = Prop.computed __type __id "scopes";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_app_environment_dapr_component
        (azurerm_container_app_environment_dapr_component ?id
           ?ignore_errors ?init_timeout ?scopes ~metadata ?timeouts
           ~component_type ~container_app_environment_id ~name
           ~version ~secret ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ignore_errors ?init_timeout ?scopes
    ?(metadata = []) ?timeouts ~component_type
    ~container_app_environment_id ~name ~version ~secret __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ignore_errors ?init_timeout ?scopes ~metadata ?timeouts
      ~component_type ~container_app_environment_id ~name ~version
      ~secret __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
