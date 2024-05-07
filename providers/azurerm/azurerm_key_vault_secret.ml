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

type azurerm_key_vault_secret = {
  content_type : string prop option; [@option]
  expiration_date : string prop option; [@option]
  id : string prop option; [@option]
  key_vault_id : string prop;
  name : string prop;
  not_before_date : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  value : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_key_vault_secret) -> ()

let yojson_of_azurerm_key_vault_secret =
  (function
   | {
       content_type = v_content_type;
       expiration_date = v_expiration_date;
       id = v_id;
       key_vault_id = v_key_vault_id;
       name = v_name;
       not_before_date = v_not_before_date;
       tags = v_tags;
       value = v_value;
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
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_not_before_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "not_before_date", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
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
         match v_expiration_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiration_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_key_vault_secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_key_vault_secret

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_secret ?content_type ?expiration_date ?id
    ?not_before_date ?tags ?timeouts ~key_vault_id ~name ~value () :
    azurerm_key_vault_secret =
  {
    content_type;
    expiration_date;
    id;
    key_vault_id;
    name;
    not_before_date;
    tags;
    value;
    timeouts;
  }

type t = {
  tf_name : string;
  content_type : string prop;
  expiration_date : string prop;
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  not_before_date : string prop;
  resource_id : string prop;
  resource_versionless_id : string prop;
  tags : (string * string) list prop;
  value : string prop;
  version : string prop;
  versionless_id : string prop;
}

let make ?content_type ?expiration_date ?id ?not_before_date ?tags
    ?timeouts ~key_vault_id ~name ~value __id =
  let __type = "azurerm_key_vault_secret" in
  let __attrs =
    ({
       tf_name = __id;
       content_type = Prop.computed __type __id "content_type";
       expiration_date = Prop.computed __type __id "expiration_date";
       id = Prop.computed __type __id "id";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       name = Prop.computed __type __id "name";
       not_before_date = Prop.computed __type __id "not_before_date";
       resource_id = Prop.computed __type __id "resource_id";
       resource_versionless_id =
         Prop.computed __type __id "resource_versionless_id";
       tags = Prop.computed __type __id "tags";
       value = Prop.computed __type __id "value";
       version = Prop.computed __type __id "version";
       versionless_id = Prop.computed __type __id "versionless_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_secret
        (azurerm_key_vault_secret ?content_type ?expiration_date ?id
           ?not_before_date ?tags ?timeouts ~key_vault_id ~name
           ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?content_type ?expiration_date ?id
    ?not_before_date ?tags ?timeouts ~key_vault_id ~name ~value __id
    =
  let (r : _ Tf_core.resource) =
    make ?content_type ?expiration_date ?id ?not_before_date ?tags
      ?timeouts ~key_vault_id ~name ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
