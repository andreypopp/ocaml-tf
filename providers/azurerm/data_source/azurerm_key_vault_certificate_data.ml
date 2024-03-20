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

type azurerm_key_vault_certificate_data = {
  id : string prop option; [@option]
  key_vault_id : string prop;
  name : string prop;
  version : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_key_vault_certificate_data) -> ()

let yojson_of_azurerm_key_vault_certificate_data =
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
    : azurerm_key_vault_certificate_data ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_key_vault_certificate_data

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_key_vault_certificate_data ?id ?version ?timeouts
    ~key_vault_id ~name () : azurerm_key_vault_certificate_data =
  { id; key_vault_id; name; version; timeouts }

type t = {
  certificates_count : float prop;
  expires : string prop;
  hex : string prop;
  id : string prop;
  key : string prop;
  key_vault_id : string prop;
  name : string prop;
  not_before : string prop;
  pem : string prop;
  tags : (string * string) list prop;
  version : string prop;
}

let make ?id ?version ?timeouts ~key_vault_id ~name __id =
  let __type = "azurerm_key_vault_certificate_data" in
  let __attrs =
    ({
       certificates_count =
         Prop.computed __type __id "certificates_count";
       expires = Prop.computed __type __id "expires";
       hex = Prop.computed __type __id "hex";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       name = Prop.computed __type __id "name";
       not_before = Prop.computed __type __id "not_before";
       pem = Prop.computed __type __id "pem";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_certificate_data
        (azurerm_key_vault_certificate_data ?id ?version ?timeouts
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
