(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool = {
  value : bool;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool *)

type aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double = {
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double *)

type aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum *)

type aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list = {
  value : string list;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list *)

type aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int = {
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int *)

type aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list = {
  value : float list;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list *)

type aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string *)

type aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list = {
  value : string list;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list *)

type aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter = {
  name : string;  (** name *)
  value_type : string;  (** value_type *)
  bool :
    aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__bool
    list;
  double :
    aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__double
    list;
  enum :
    aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum
    list;
  enum_list :
    aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__enum_list
    list;
  int :
    aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int
    list;
  int_list :
    aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__int_list
    list;
  string :
    aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string
    list;
  string_list :
    aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter__string_list
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter *)

type aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter = {
  security_control_id : string;  (** security_control_id *)
  parameter :
    aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter__parameter
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter *)

type aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration = {
  disabled_control_identifiers : string list option; [@option]
      (** disabled_control_identifiers *)
  enabled_control_identifiers : string list option; [@option]
      (** enabled_control_identifiers *)
  security_control_custom_parameter :
    aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration__security_control_custom_parameter
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration *)

type aws_securityhub_configuration_policy__configuration_policy = {
  enabled_standard_arns : string list;  (** enabled_standard_arns *)
  service_enabled : bool;  (** service_enabled *)
  security_controls_configuration :
    aws_securityhub_configuration_policy__configuration_policy__security_controls_configuration
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_configuration_policy__configuration_policy *)

type aws_securityhub_configuration_policy = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  configuration_policy :
    aws_securityhub_configuration_policy__configuration_policy list;
}
[@@deriving yojson_of]
(** aws_securityhub_configuration_policy *)

let aws_securityhub_configuration_policy ?description ~name
    ~configuration_policy __resource_id =
  let __resource_type = "aws_securityhub_configuration_policy" in
  let __resource = { description; name; configuration_policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_configuration_policy __resource);
  ()
