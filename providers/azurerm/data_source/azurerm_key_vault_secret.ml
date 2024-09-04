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

type azurerm_key_vault_secret = {
  id : string prop option; [@option]
  key_vault_id : string prop;
  name : string prop;
  version : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_key_vault_secret) -> ()

let yojson_of_azurerm_key_vault_secret =
  (function
   | {
       id = v_id;
       key_vault_id = v_key_vault_id;
       name = v_name;
       version = v_version;
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
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
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
       `Assoc bnds
    : azurerm_key_vault_secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_key_vault_secret

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_key_vault_secret ?id ?version ?timeouts ~key_vault_id
    ~name () : azurerm_key_vault_secret =
  { id; key_vault_id; name; version; timeouts }

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
  tags : string Tf_core.assoc prop;
  value : string prop;
  version : string prop;
  versionless_id : string prop;
}

let make ?id ?version ?timeouts ~key_vault_id ~name __id =
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
        (azurerm_key_vault_secret ?id ?version ?timeouts
           ~key_vault_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?version ?timeouts ~key_vault_id ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?version ?timeouts ~key_vault_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
