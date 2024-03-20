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

type azurerm_app_configuration_key = {
  configuration_store_id : string prop;
  content_type : string prop option; [@option]
  etag : string prop option; [@option]
  id : string prop option; [@option]
  key : string prop;
  label : string prop option; [@option]
  locked : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  value : string prop option; [@option]
  vault_key_reference : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_configuration_key) -> ()

let yojson_of_azurerm_app_configuration_key =
  (function
   | {
       configuration_store_id = v_configuration_store_id;
       content_type = v_content_type;
       etag = v_etag;
       id = v_id;
       key = v_key;
       label = v_label;
       locked = v_locked;
       tags = v_tags;
       type_ = v_type_;
       value = v_value;
       vault_key_reference = v_vault_key_reference;
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
         match v_vault_key_reference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vault_key_reference", arg in
             bnd :: bnds
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
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
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
         match v_locked with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "locked", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
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
         match v_etag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "etag", arg in
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_configuration_store_id
         in
         ("configuration_store_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_app_configuration_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_configuration_key

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_configuration_key ?content_type ?etag ?id ?label
    ?locked ?tags ?type_ ?value ?vault_key_reference ?timeouts
    ~configuration_store_id ~key () : azurerm_app_configuration_key =
  {
    configuration_store_id;
    content_type;
    etag;
    id;
    key;
    label;
    locked;
    tags;
    type_;
    value;
    vault_key_reference;
    timeouts;
  }

type t = {
  configuration_store_id : string prop;
  content_type : string prop;
  etag : string prop;
  id : string prop;
  key : string prop;
  label : string prop;
  locked : bool prop;
  tags : (string * string) list prop;
  type_ : string prop;
  value : string prop;
  vault_key_reference : string prop;
}

let make ?content_type ?etag ?id ?label ?locked ?tags ?type_ ?value
    ?vault_key_reference ?timeouts ~configuration_store_id ~key __id
    =
  let __type = "azurerm_app_configuration_key" in
  let __attrs =
    ({
       configuration_store_id =
         Prop.computed __type __id "configuration_store_id";
       content_type = Prop.computed __type __id "content_type";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       label = Prop.computed __type __id "label";
       locked = Prop.computed __type __id "locked";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       value = Prop.computed __type __id "value";
       vault_key_reference =
         Prop.computed __type __id "vault_key_reference";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_configuration_key
        (azurerm_app_configuration_key ?content_type ?etag ?id ?label
           ?locked ?tags ?type_ ?value ?vault_key_reference ?timeouts
           ~configuration_store_id ~key ());
    attrs = __attrs;
  }

let register ?tf_module ?content_type ?etag ?id ?label ?locked ?tags
    ?type_ ?value ?vault_key_reference ?timeouts
    ~configuration_store_id ~key __id =
  let (r : _ Tf_core.resource) =
    make ?content_type ?etag ?id ?label ?locked ?tags ?type_ ?value
      ?vault_key_reference ?timeouts ~configuration_store_id ~key
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
