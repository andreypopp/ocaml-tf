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

type azurerm_key_vault_encrypted_value = {
  algorithm : string prop;
  encrypted_data : string prop option; [@option]
  id : string prop option; [@option]
  key_vault_key_id : string prop;
  plain_text_value : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_key_vault_encrypted_value) -> ()

let yojson_of_azurerm_key_vault_encrypted_value =
  (function
   | {
       algorithm = v_algorithm;
       encrypted_data = v_encrypted_data;
       id = v_id;
       key_vault_key_id = v_key_vault_key_id;
       plain_text_value = v_plain_text_value;
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
         match v_plain_text_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "plain_text_value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_key_id
         in
         ("key_vault_key_id", arg) :: bnds
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
         match v_encrypted_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encrypted_data", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_algorithm in
         ("algorithm", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_key_vault_encrypted_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_key_vault_encrypted_value

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_key_vault_encrypted_value ?encrypted_data ?id
    ?plain_text_value ?timeouts ~algorithm ~key_vault_key_id () :
    azurerm_key_vault_encrypted_value =
  {
    algorithm;
    encrypted_data;
    id;
    key_vault_key_id;
    plain_text_value;
    timeouts;
  }

type t = {
  algorithm : string prop;
  decoded_plain_text_value : string prop;
  encrypted_data : string prop;
  id : string prop;
  key_vault_key_id : string prop;
  plain_text_value : string prop;
}

let make ?encrypted_data ?id ?plain_text_value ?timeouts ~algorithm
    ~key_vault_key_id __id =
  let __type = "azurerm_key_vault_encrypted_value" in
  let __attrs =
    ({
       algorithm = Prop.computed __type __id "algorithm";
       decoded_plain_text_value =
         Prop.computed __type __id "decoded_plain_text_value";
       encrypted_data = Prop.computed __type __id "encrypted_data";
       id = Prop.computed __type __id "id";
       key_vault_key_id =
         Prop.computed __type __id "key_vault_key_id";
       plain_text_value =
         Prop.computed __type __id "plain_text_value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_encrypted_value
        (azurerm_key_vault_encrypted_value ?encrypted_data ?id
           ?plain_text_value ?timeouts ~algorithm ~key_vault_key_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?encrypted_data ?id ?plain_text_value
    ?timeouts ~algorithm ~key_vault_key_id __id =
  let (r : _ Tf_core.resource) =
    make ?encrypted_data ?id ?plain_text_value ?timeouts ~algorithm
      ~key_vault_key_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
