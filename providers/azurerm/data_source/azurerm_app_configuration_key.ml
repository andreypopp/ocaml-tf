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

type azurerm_app_configuration_key = {
  configuration_store_id : string prop;
  id : string prop option; [@option]
  key : string prop;
  label : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_configuration_key) -> ()

let yojson_of_azurerm_app_configuration_key =
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

let timeouts ?read () : timeouts = { read }

let azurerm_app_configuration_key ?id ?label ?timeouts
    ~configuration_store_id ~key () : azurerm_app_configuration_key =
  { configuration_store_id; id; key; label; timeouts }

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

let make ?id ?label ?timeouts ~configuration_store_id ~key __id =
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
        (azurerm_app_configuration_key ?id ?label ?timeouts
           ~configuration_store_id ~key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?label ?timeouts ~configuration_store_id
    ~key __id =
  let (r : _ Tf_core.resource) =
    make ?id ?label ?timeouts ~configuration_store_id ~key __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
