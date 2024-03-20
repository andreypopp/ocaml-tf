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

type items = {
  content_type : string prop;
  etag : string prop;
  key : string prop;
  label : string prop;
  locked : bool prop;
  tags : (string * string prop) list;
  type_ : string prop; [@key "type"]
  value : string prop;
  vault_key_reference : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : items) -> ()

let yojson_of_items =
  (function
   | {
       content_type = v_content_type;
       etag = v_etag;
       key = v_key;
       label = v_label;
       locked = v_locked;
       tags = v_tags;
       type_ = v_type_;
       value = v_value;
       vault_key_reference = v_vault_key_reference;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vault_key_reference
         in
         ("vault_key_reference", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_locked in
         ("locked", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_label in
         ("label", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_etag in
         ("etag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content_type in
         ("content_type", arg) :: bnds
       in
       `Assoc bnds
    : items -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_items

[@@@deriving.end]

type azurerm_app_configuration_keys = {
  configuration_store_id : string prop;
  id : string prop option; [@option]
  key : string prop option; [@option]
  label : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_configuration_keys) -> ()

let yojson_of_azurerm_app_configuration_keys =
  (function
   | {
       configuration_store_id = v_configuration_store_id;
       id = v_id;
       key = v_key;
       label = v_label;
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
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
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
           yojson_of_prop yojson_of_string v_configuration_store_id
         in
         ("configuration_store_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_app_configuration_keys ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_configuration_keys

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_app_configuration_keys ?id ?key ?label ?timeouts
    ~configuration_store_id () : azurerm_app_configuration_keys =
  { configuration_store_id; id; key; label; timeouts }

type t = {
  configuration_store_id : string prop;
  id : string prop;
  items : items list prop;
  key : string prop;
  label : string prop;
}

let make ?id ?key ?label ?timeouts ~configuration_store_id __id =
  let __type = "azurerm_app_configuration_keys" in
  let __attrs =
    ({
       configuration_store_id =
         Prop.computed __type __id "configuration_store_id";
       id = Prop.computed __type __id "id";
       items = Prop.computed __type __id "items";
       key = Prop.computed __type __id "key";
       label = Prop.computed __type __id "label";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_configuration_keys
        (azurerm_app_configuration_keys ?id ?key ?label ?timeouts
           ~configuration_store_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?key ?label ?timeouts
    ~configuration_store_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?key ?label ?timeouts ~configuration_store_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
