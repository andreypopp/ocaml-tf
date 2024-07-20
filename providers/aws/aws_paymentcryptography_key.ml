(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type key_attributes__key_modes_of_use = {
  decrypt : bool prop option; [@option]
  derive_key : bool prop option; [@option]
  encrypt : bool prop option; [@option]
  generate : bool prop option; [@option]
  no_restrictions : bool prop option; [@option]
  sign : bool prop option; [@option]
  unwrap : bool prop option; [@option]
  verify : bool prop option; [@option]
  wrap : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : key_attributes__key_modes_of_use) -> ()

let yojson_of_key_attributes__key_modes_of_use =
  (function
   | {
       decrypt = v_decrypt;
       derive_key = v_derive_key;
       encrypt = v_encrypt;
       generate = v_generate;
       no_restrictions = v_no_restrictions;
       sign = v_sign;
       unwrap = v_unwrap;
       verify = v_verify;
       wrap = v_wrap;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_wrap with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wrap", arg in
             bnd :: bnds
       in
       let bnds =
         match v_verify with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "verify", arg in
             bnd :: bnds
       in
       let bnds =
         match v_unwrap with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "unwrap", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sign with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sign", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_restrictions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_restrictions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_generate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "generate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encrypt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encrypt", arg in
             bnd :: bnds
       in
       let bnds =
         match v_derive_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "derive_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_decrypt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "decrypt", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : key_attributes__key_modes_of_use ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_attributes__key_modes_of_use

[@@@deriving.end]

type key_attributes = {
  key_algorithm : string prop;
  key_class : string prop;
  key_usage : string prop;
  key_modes_of_use : key_attributes__key_modes_of_use;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : key_attributes) -> ()

let yojson_of_key_attributes =
  (function
   | {
       key_algorithm = v_key_algorithm;
       key_class = v_key_class;
       key_usage = v_key_usage;
       key_modes_of_use = v_key_modes_of_use;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_key_attributes__key_modes_of_use
             v_key_modes_of_use
         in
         ("key_modes_of_use", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_usage in
         ("key_usage", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_class in
         ("key_class", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_algorithm in
         ("key_algorithm", arg) :: bnds
       in
       `Assoc bnds
    : key_attributes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_attributes

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type aws_paymentcryptography_key = {
  deletion_window_in_days : float prop option; [@option]
  enabled : bool prop option; [@option]
  exportable : bool prop;
  key_check_value_algorithm : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  key_attributes : key_attributes;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_paymentcryptography_key) -> ()

let yojson_of_aws_paymentcryptography_key =
  (function
   | {
       deletion_window_in_days = v_deletion_window_in_days;
       enabled = v_enabled;
       exportable = v_exportable;
       key_check_value_algorithm = v_key_check_value_algorithm;
       tags = v_tags;
       key_attributes = v_key_attributes;
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
         let arg = yojson_of_key_attributes v_key_attributes in
         ("key_attributes", arg) :: bnds
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
         match v_key_check_value_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_check_value_algorithm", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_exportable in
         ("exportable", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion_window_in_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "deletion_window_in_days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_paymentcryptography_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_paymentcryptography_key

[@@@deriving.end]

let key_attributes__key_modes_of_use ?decrypt ?derive_key ?encrypt
    ?generate ?no_restrictions ?sign ?unwrap ?verify ?wrap () :
    key_attributes__key_modes_of_use =
  {
    decrypt;
    derive_key;
    encrypt;
    generate;
    no_restrictions;
    sign;
    unwrap;
    verify;
    wrap;
  }

let key_attributes ~key_algorithm ~key_class ~key_usage
    ~key_modes_of_use () : key_attributes =
  { key_algorithm; key_class; key_usage; key_modes_of_use }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_paymentcryptography_key ?deletion_window_in_days ?enabled
    ?key_check_value_algorithm ?tags ?timeouts ~exportable
    ~key_attributes () : aws_paymentcryptography_key =
  {
    deletion_window_in_days;
    enabled;
    exportable;
    key_check_value_algorithm;
    tags;
    key_attributes;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  deletion_window_in_days : float prop;
  enabled : bool prop;
  exportable : bool prop;
  id : string prop;
  key_check_value : string prop;
  key_check_value_algorithm : string prop;
  key_origin : string prop;
  key_state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?deletion_window_in_days ?enabled ?key_check_value_algorithm
    ?tags ?timeouts ~exportable ~key_attributes __id =
  let __type = "aws_paymentcryptography_key" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       deletion_window_in_days =
         Prop.computed __type __id "deletion_window_in_days";
       enabled = Prop.computed __type __id "enabled";
       exportable = Prop.computed __type __id "exportable";
       id = Prop.computed __type __id "id";
       key_check_value = Prop.computed __type __id "key_check_value";
       key_check_value_algorithm =
         Prop.computed __type __id "key_check_value_algorithm";
       key_origin = Prop.computed __type __id "key_origin";
       key_state = Prop.computed __type __id "key_state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_paymentcryptography_key
        (aws_paymentcryptography_key ?deletion_window_in_days
           ?enabled ?key_check_value_algorithm ?tags ?timeouts
           ~exportable ~key_attributes ());
    attrs = __attrs;
  }

let register ?tf_module ?deletion_window_in_days ?enabled
    ?key_check_value_algorithm ?tags ?timeouts ~exportable
    ~key_attributes __id =
  let (r : _ Tf_core.resource) =
    make ?deletion_window_in_days ?enabled ?key_check_value_algorithm
      ?tags ?timeouts ~exportable ~key_attributes __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
