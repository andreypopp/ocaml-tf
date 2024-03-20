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

type azurerm_key_vault_key = {
  id : string prop option; [@option]
  key_vault_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_key_vault_key) -> ()

let yojson_of_azurerm_key_vault_key =
  (function
   | {
       id = v_id;
       key_vault_id = v_key_vault_id;
       name = v_name;
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
    : azurerm_key_vault_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_key_vault_key

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_key_vault_key ?id ?timeouts ~key_vault_id ~name () :
    azurerm_key_vault_key =
  { id; key_vault_id; name; timeouts }

type t = {
  curve : string prop;
  e : string prop;
  id : string prop;
  key_opts : string list prop;
  key_size : float prop;
  key_type : string prop;
  key_vault_id : string prop;
  n : string prop;
  name : string prop;
  public_key_openssh : string prop;
  public_key_pem : string prop;
  resource_id : string prop;
  resource_versionless_id : string prop;
  tags : (string * string) list prop;
  version : string prop;
  versionless_id : string prop;
  x : string prop;
  y : string prop;
}

let make ?id ?timeouts ~key_vault_id ~name __id =
  let __type = "azurerm_key_vault_key" in
  let __attrs =
    ({
       curve = Prop.computed __type __id "curve";
       e = Prop.computed __type __id "e";
       id = Prop.computed __type __id "id";
       key_opts = Prop.computed __type __id "key_opts";
       key_size = Prop.computed __type __id "key_size";
       key_type = Prop.computed __type __id "key_type";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       n = Prop.computed __type __id "n";
       name = Prop.computed __type __id "name";
       public_key_openssh =
         Prop.computed __type __id "public_key_openssh";
       public_key_pem = Prop.computed __type __id "public_key_pem";
       resource_id = Prop.computed __type __id "resource_id";
       resource_versionless_id =
         Prop.computed __type __id "resource_versionless_id";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
       versionless_id = Prop.computed __type __id "versionless_id";
       x = Prop.computed __type __id "x";
       y = Prop.computed __type __id "y";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_key
        (azurerm_key_vault_key ?id ?timeouts ~key_vault_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~key_vault_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~key_vault_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
