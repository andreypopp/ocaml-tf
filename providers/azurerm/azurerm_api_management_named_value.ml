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

type value_from_key_vault = {
  identity_client_id : string prop option; [@option]
  secret_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : value_from_key_vault) -> ()

let yojson_of_value_from_key_vault =
  (function
   | {
       identity_client_id = v_identity_client_id;
       secret_id = v_secret_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_id in
         ("secret_id", arg) :: bnds
       in
       let bnds =
         match v_identity_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_client_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : value_from_key_vault -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_value_from_key_vault

[@@@deriving.end]

type azurerm_api_management_named_value = {
  api_management_name : string prop;
  display_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  secret : bool prop option; [@option]
  tags : string prop list option; [@option]
  value : string prop option; [@option]
  timeouts : timeouts option;
  value_from_key_vault : value_from_key_vault list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_named_value) -> ()

let yojson_of_azurerm_api_management_named_value =
  (function
   | {
       api_management_name = v_api_management_name;
       display_name = v_display_name;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       secret = v_secret;
       tags = v_tags;
       value = v_value;
       timeouts = v_timeouts;
       value_from_key_vault = v_value_from_key_vault;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_value_from_key_vault then bnds
         else
           let arg =
             (yojson_of_list yojson_of_value_from_key_vault)
               v_value_from_key_vault
           in
           let bnd = "value_from_key_vault", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "secret", arg in
             bnd :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_name
         in
         ("api_management_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_named_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_named_value

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let value_from_key_vault ?identity_client_id ~secret_id () :
    value_from_key_vault =
  { identity_client_id; secret_id }

let azurerm_api_management_named_value ?id ?secret ?tags ?value
    ?timeouts ?(value_from_key_vault = []) ~api_management_name
    ~display_name ~name ~resource_group_name () :
    azurerm_api_management_named_value =
  {
    api_management_name;
    display_name;
    id;
    name;
    resource_group_name;
    secret;
    tags;
    value;
    timeouts;
    value_from_key_vault;
  }

type t = {
  tf_name : string;
  api_management_name : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  secret : bool prop;
  tags : string list prop;
  value : string prop;
}

let make ?id ?secret ?tags ?value ?timeouts
    ?(value_from_key_vault = []) ~api_management_name ~display_name
    ~name ~resource_group_name __id =
  let __type = "azurerm_api_management_named_value" in
  let __attrs =
    ({
       tf_name = __id;
       api_management_name =
         Prop.computed __type __id "api_management_name";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secret = Prop.computed __type __id "secret";
       tags = Prop.computed __type __id "tags";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_named_value
        (azurerm_api_management_named_value ?id ?secret ?tags ?value
           ?timeouts ~value_from_key_vault ~api_management_name
           ~display_name ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?secret ?tags ?value ?timeouts
    ?(value_from_key_vault = []) ~api_management_name ~display_name
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?secret ?tags ?value ?timeouts ~value_from_key_vault
      ~api_management_name ~display_name ~name ~resource_group_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
