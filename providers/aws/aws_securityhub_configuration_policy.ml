(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool = {
  value : bool prop;  (** value *)
}
[@@deriving yojson_of]
(** configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool *)

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double = {
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double *)

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum *)

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list = {
  value : string prop list;  (** value *)
}
[@@deriving yojson_of]
(** configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list *)

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int = {
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int *)

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list = {
  value : float prop list;  (** value *)
}
[@@deriving yojson_of]
(** configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list *)

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string *)

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list = {
  value : string prop list;  (** value *)
}
[@@deriving yojson_of]
(** configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list *)

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter = {
  name : string prop;  (** name *)
  value_type : string prop;  (** value_type *)
  bool :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool
    list;
  double :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double
    list;
  enum :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum
    list;
  enum_list :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list
    list;
  int :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int
    list;
  int_list :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list
    list;
  string :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string
    list;
  string_list :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list
    list;
}
[@@deriving yojson_of]
(** configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter *)

type configuration_policy__security_controls_configuration__security_control_custom_parameter = {
  security_control_id : string prop;  (** security_control_id *)
  parameter :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter
    list;
}
[@@deriving yojson_of]
(** configuration_policy__security_controls_configuration__security_control_custom_parameter *)

type configuration_policy__security_controls_configuration = {
  disabled_control_identifiers : string prop list option; [@option]
      (** disabled_control_identifiers *)
  enabled_control_identifiers : string prop list option; [@option]
      (** enabled_control_identifiers *)
  security_control_custom_parameter :
    configuration_policy__security_controls_configuration__security_control_custom_parameter
    list;
}
[@@deriving yojson_of]
(** configuration_policy__security_controls_configuration *)

type configuration_policy = {
  enabled_standard_arns : string prop list;
      (** enabled_standard_arns *)
  service_enabled : bool prop;  (** service_enabled *)
  security_controls_configuration :
    configuration_policy__security_controls_configuration list;
}
[@@deriving yojson_of]
(** configuration_policy *)

type aws_securityhub_configuration_policy = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  configuration_policy : configuration_policy list;
}
[@@deriving yojson_of]
(** aws_securityhub_configuration_policy *)

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
    ~name ~value_type ~bool ~double ~enum ~enum_list ~int ~int_list
    ~string ~string_list () :
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter
    =
  {
    name;
    value_type;
    bool;
    double;
    enum;
    enum_list;
    int;
    int_list;
    string;
    string_list;
  }

let configuration_policy__security_controls_configuration__security_control_custom_parameter
    ~security_control_id ~parameter () :
    configuration_policy__security_controls_configuration__security_control_custom_parameter
    =
  { security_control_id; parameter }

let configuration_policy__security_controls_configuration
    ?disabled_control_identifiers ?enabled_control_identifiers
    ~security_control_custom_parameter () :
    configuration_policy__security_controls_configuration =
  {
    disabled_control_identifiers;
    enabled_control_identifiers;
    security_control_custom_parameter;
  }

let configuration_policy ~enabled_standard_arns ~service_enabled
    ~security_controls_configuration () : configuration_policy =
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
