(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool

val configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool :
  value:bool prop ->
  unit ->
  configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double

val configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double :
  value:float prop ->
  unit ->
  configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum

val configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum :
  value:string prop ->
  unit ->
  configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list

val configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list :
  value:string prop list ->
  unit ->
  configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int

val configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int :
  value:float prop ->
  unit ->
  configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list

val configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list :
  value:float prop list ->
  unit ->
  configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string

val configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string :
  value:string prop ->
  unit ->
  configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list

val configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list :
  value:string prop list ->
  unit ->
  configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list

type configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter

val configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter :
  name:string prop ->
  value_type:string prop ->
  bool_:
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool
    list ->
  double:
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double
    list ->
  enum:
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum
    list ->
  enum_list:
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list
    list ->
  int_:
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int
    list ->
  int_list:
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list
    list ->
  string_:
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string
    list ->
  string_list:
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list
    list ->
  unit ->
  configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter

type configuration_policy__security_controls_configuration__security_control_custom_parameter

val configuration_policy__security_controls_configuration__security_control_custom_parameter :
  security_control_id:string prop ->
  parameter:
    configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter
    list ->
  unit ->
  configuration_policy__security_controls_configuration__security_control_custom_parameter

type configuration_policy__security_controls_configuration

val configuration_policy__security_controls_configuration :
  ?disabled_control_identifiers:string prop list ->
  ?enabled_control_identifiers:string prop list ->
  security_control_custom_parameter:
    configuration_policy__security_controls_configuration__security_control_custom_parameter
    list ->
  unit ->
  configuration_policy__security_controls_configuration

type configuration_policy

val configuration_policy :
  enabled_standard_arns:string prop list ->
  service_enabled:bool prop ->
  security_controls_configuration:
    configuration_policy__security_controls_configuration list ->
  unit ->
  configuration_policy

type aws_securityhub_configuration_policy

val aws_securityhub_configuration_policy :
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  configuration_policy:configuration_policy list ->
  unit ->
  aws_securityhub_configuration_policy

val yojson_of_aws_securityhub_configuration_policy :
  aws_securityhub_configuration_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  configuration_policy:configuration_policy list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  configuration_policy:configuration_policy list ->
  string ->
  t Tf_core.resource
