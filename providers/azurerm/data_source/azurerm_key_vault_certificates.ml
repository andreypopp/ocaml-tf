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

type certificates = {
  enabled : bool prop;
  id : string prop;
  name : string prop;
  tags : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificates) -> ()

let yojson_of_certificates =
  (function
   | { enabled = v_enabled; id = v_id; name = v_name; tags = v_tags }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : certificates -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificates

[@@@deriving.end]

type azurerm_key_vault_certificates = {
  id : string prop option; [@option]
  include_pending : bool prop option; [@option]
  key_vault_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_key_vault_certificates) -> ()

let yojson_of_azurerm_key_vault_certificates =
  (function
   | {
       id = v_id;
       include_pending = v_include_pending;
       key_vault_id = v_key_vault_id;
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
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
       in
       let bnds =
         match v_include_pending with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_pending", arg in
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
       `Assoc bnds
    : azurerm_key_vault_certificates ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_key_vault_certificates

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_key_vault_certificates ?id ?include_pending ?timeouts
    ~key_vault_id () : azurerm_key_vault_certificates =
  { id; include_pending; key_vault_id; timeouts }

type t = {
  tf_name : string;
  certificates : certificates list prop;
  id : string prop;
  include_pending : bool prop;
  key_vault_id : string prop;
  names : string list prop;
}

let make ?id ?include_pending ?timeouts ~key_vault_id __id =
  let __type = "azurerm_key_vault_certificates" in
  let __attrs =
    ({
       tf_name = __id;
       certificates = Prop.computed __type __id "certificates";
       id = Prop.computed __type __id "id";
       include_pending = Prop.computed __type __id "include_pending";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       names = Prop.computed __type __id "names";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_certificates
        (azurerm_key_vault_certificates ?id ?include_pending
           ?timeouts ~key_vault_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?include_pending ?timeouts ~key_vault_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?include_pending ?timeouts ~key_vault_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
