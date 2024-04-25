(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool = {
  value : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool) ->
  ()

let yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool
    =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_value in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool

[@@@deriving.end]

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double = {
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double) ->
  ()

let yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double
    =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double

[@@@deriving.end]

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum) ->
  ()

let yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum
    =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum

[@@@deriving.end]

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list = {
  value : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list) ->
  ()

let yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list
    =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_value
         in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list

[@@@deriving.end]

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int = {
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int) ->
  ()

let yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int
    =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int

[@@@deriving.end]

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list = {
  value : float prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list) ->
  ()

let yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list
    =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_float) v_value
         in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list

[@@@deriving.end]

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string) ->
  ()

let yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string
    =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string

[@@@deriving.end]

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list = {
  value : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list) ->
  ()

let yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list
    =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_value
         in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list

[@@@deriving.end]

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter = {
  name : string prop;
  value_type : string prop;
  bool_ :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool
    list;
      [@key "bool"]
  double :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double
    list;
  enum :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum
    list;
  enum_list :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list
    list;
  int_ :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int
    list;
      [@key "int"]
  int_list :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list
    list;
  string_ :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string
    list;
      [@key "string"]
  string_list :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter) ->
  ()

let yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter
    =
  (function
   | {
       name = v_name;
       value_type = v_value_type;
       bool_ = v_bool_;
       double = v_double;
       enum = v_enum;
       enum_list = v_enum_list;
       int_ = v_int_;
       int_list = v_int_list;
       string_ = v_string_;
       string_list = v_string_list;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list
             v_string_list
         in
         ("string_list", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string
             v_string_
         in
         ("string", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list
             v_int_list
         in
         ("int_list", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int
             v_int_
         in
         ("int", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list
             v_enum_list
         in
         ("enum_list", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum
             v_enum
         in
         ("enum", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double
             v_double
         in
         ("double", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool
             v_bool_
         in
         ("bool", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value_type in
         ("value_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter

[@@@deriving.end]

type configuration_policy__security_controls_configuration__security_control_custom_parameter = {
  security_control_id : string prop;
  parameter :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration_policy__security_controls_configuration__security_control_custom_parameter) ->
  ()

let yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter
    =
  (function
   | {
       security_control_id = v_security_control_id;
       parameter = v_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter
             v_parameter
         in
         ("parameter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_security_control_id
         in
         ("security_control_id", arg) :: bnds
       in
       `Assoc bnds
    : configuration_policy__security_controls_configuration__security_control_custom_parameter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter

[@@@deriving.end]

type configuration_policy__security_controls_configuration = {
  disabled_control_identifiers : string prop list option; [@option]
  enabled_control_identifiers : string prop list option; [@option]
  security_control_custom_parameter :
    configuration_policy__security_controls_configuration__security_control_custom_parameter
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : configuration_policy__security_controls_configuration) ->
  ()

let yojson_of_configuration_policy__security_controls_configuration =
  (function
   | {
       disabled_control_identifiers = v_disabled_control_identifiers;
       enabled_control_identifiers = v_enabled_control_identifiers;
       security_control_custom_parameter =
         v_security_control_custom_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration_policy__security_controls_configuration__security_control_custom_parameter
             v_security_control_custom_parameter
         in
         ("security_control_custom_parameter", arg) :: bnds
       in
       let bnds =
         match v_enabled_control_identifiers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "enabled_control_identifiers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled_control_identifiers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "disabled_control_identifiers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration_policy__security_controls_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration_policy__security_controls_configuration

[@@@deriving.end]

type configuration_policy = {
  enabled_standard_arns : string prop list;
  service_enabled : bool prop;
  security_controls_configuration :
    configuration_policy__security_controls_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration_policy) -> ()

let yojson_of_configuration_policy =
  (function
   | {
       enabled_standard_arns = v_enabled_standard_arns;
       service_enabled = v_service_enabled;
       security_controls_configuration =
         v_security_controls_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration_policy__security_controls_configuration
             v_security_controls_configuration
         in
         ("security_controls_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_service_enabled in
         ("service_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_enabled_standard_arns
         in
         ("enabled_standard_arns", arg) :: bnds
       in
       `Assoc bnds
    : configuration_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration_policy

[@@@deriving.end]

type aws_securityhub_configuration_policy = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  configuration_policy : configuration_policy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_securityhub_configuration_policy) -> ()

let yojson_of_aws_securityhub_configuration_policy =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       configuration_policy = v_configuration_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_configuration_policy
             v_configuration_policy
         in
         ("configuration_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_securityhub_configuration_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_securityhub_configuration_policy

[@@@deriving.end]

let configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool
    ~value () :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool
    =
  { value }

let configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double
    ~value () :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double
    =
  { value }

let configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum
    ~value () :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum
    =
  { value }

let configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list
    ~value () :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list
    =
  { value }

let configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int
    ~value () :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int
    =
  { value }

let configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list
    ~value () :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list
    =
  { value }

let configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string
    ~value () :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string
    =
  { value }

let configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list
    ~value () :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list
    =
  { value }

let configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter
    ?(bool_ = []) ?(double = []) ?(enum = []) ?(enum_list = [])
    ?(int_ = []) ?(int_list = []) ?(string_ = []) ?(string_list = [])
    ~name ~value_type () :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter
    =
  {
    name;
    value_type;
    bool_;
    double;
    enum;
    enum_list;
    int_;
    int_list;
    string_;
    string_list;
  }

let configuration_policy__security_controls_configuration__security_control_custom_parameter
    ~security_control_id ~parameter () :
    configuration_policy__security_controls_configuration__security_control_custom_parameter
    =
  { security_control_id; parameter }

let configuration_policy__security_controls_configuration
    ?disabled_control_identifiers ?enabled_control_identifiers
    ?(security_control_custom_parameter = []) () :
    configuration_policy__security_controls_configuration =
  {
    disabled_control_identifiers;
    enabled_control_identifiers;
    security_control_custom_parameter;
  }

let configuration_policy ?(security_controls_configuration = [])
    ~enabled_standard_arns ~service_enabled () : configuration_policy
    =
  {
    enabled_standard_arns;
    service_enabled;
    security_controls_configuration;
  }

let aws_securityhub_configuration_policy ?description ?id ~name
    ~configuration_policy () : aws_securityhub_configuration_policy =
  { description; id; name; configuration_policy }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

let make ?description ?id ~name ~configuration_policy __id =
  let __type = "aws_securityhub_configuration_policy" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securityhub_configuration_policy
        (aws_securityhub_configuration_policy ?description ?id ~name
           ~configuration_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~name ~configuration_policy
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~name ~configuration_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
