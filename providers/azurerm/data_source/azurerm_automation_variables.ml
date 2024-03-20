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

type bool_ = {
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  name : string prop;
  value : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bool_) -> ()

let yojson_of_bool_ =
  (function
   | {
       description = v_description;
       encrypted = v_encrypted;
       id = v_id;
       name = v_name;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_value in
         ("value", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_bool v_encrypted in
         ("encrypted", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : bool_ -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bool_

[@@@deriving.end]

type datetime = {
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : datetime) -> ()

let yojson_of_datetime =
  (function
   | {
       description = v_description;
       encrypted = v_encrypted;
       id = v_id;
       name = v_name;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_bool v_encrypted in
         ("encrypted", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : datetime -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_datetime

[@@@deriving.end]

type encrypted = {
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encrypted) -> ()

let yojson_of_encrypted =
  (function
   | {
       description = v_description;
       encrypted = v_encrypted;
       id = v_id;
       name = v_name;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_bool v_encrypted in
         ("encrypted", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : encrypted -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encrypted

[@@@deriving.end]

type int_ = {
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  name : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : int_) -> ()

let yojson_of_int_ =
  (function
   | {
       description = v_description;
       encrypted = v_encrypted;
       id = v_id;
       name = v_name;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_bool v_encrypted in
         ("encrypted", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : int_ -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_int_

[@@@deriving.end]

type null = {
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : null) -> ()

let yojson_of_null =
  (function
   | {
       description = v_description;
       encrypted = v_encrypted;
       id = v_id;
       name = v_name;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_bool v_encrypted in
         ("encrypted", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : null -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_null

[@@@deriving.end]

type object_ = {
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : object_) -> ()

let yojson_of_object_ =
  (function
   | {
       description = v_description;
       encrypted = v_encrypted;
       id = v_id;
       name = v_name;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_bool v_encrypted in
         ("encrypted", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : object_ -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_object_

[@@@deriving.end]

type string_ = {
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : string_) -> ()

let yojson_of_string_ =
  (function
   | {
       description = v_description;
       encrypted = v_encrypted;
       id = v_id;
       name = v_name;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_bool v_encrypted in
         ("encrypted", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : string_ -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_string_

[@@@deriving.end]

type azurerm_automation_variables = {
  automation_account_id : string prop;
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_automation_variables) -> ()

let yojson_of_azurerm_automation_variables =
  (function
   | {
       automation_account_id = v_automation_account_id;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_automation_account_id
         in
         ("automation_account_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_automation_variables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_automation_variables

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_automation_variables ?id ?timeouts ~automation_account_id
    () : azurerm_automation_variables =
  { automation_account_id; id; timeouts }

type t = {
  automation_account_id : string prop;
  bool_ : bool_ list prop;
  datetime : datetime list prop;
  encrypted : encrypted list prop;
  id : string prop;
  int_ : int_ list prop;
  null : null list prop;
  object_ : object_ list prop;
  string_ : string_ list prop;
}

let make ?id ?timeouts ~automation_account_id __id =
  let __type = "azurerm_automation_variables" in
  let __attrs =
    ({
       automation_account_id =
         Prop.computed __type __id "automation_account_id";
       bool_ = Prop.computed __type __id "bool";
       datetime = Prop.computed __type __id "datetime";
       encrypted = Prop.computed __type __id "encrypted";
       id = Prop.computed __type __id "id";
       int_ = Prop.computed __type __id "int";
       null = Prop.computed __type __id "null";
       object_ = Prop.computed __type __id "object";
       string_ = Prop.computed __type __id "string";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_variables
        (azurerm_automation_variables ?id ?timeouts
           ~automation_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~automation_account_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~automation_account_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
