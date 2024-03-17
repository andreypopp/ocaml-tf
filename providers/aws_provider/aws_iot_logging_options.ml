(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_logging_options = {
  default_log_level : string prop;  (** default_log_level *)
  disable_all_logs : bool prop option; [@option]
      (** disable_all_logs *)
  id : string prop option; [@option]  (** id *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_iot_logging_options *)

let aws_iot_logging_options ?disable_all_logs ?id ~default_log_level
    ~role_arn __resource_id =
  let __resource_type = "aws_iot_logging_options" in
  let __resource =
    { default_log_level; disable_all_logs; id; role_arn }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_logging_options __resource);
  ()
