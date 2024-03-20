(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
    ~role_arn () : aws_iot_logging_options =
  { default_log_level; disable_all_logs; id; role_arn }

type t = {
  default_log_level : string prop;
  disable_all_logs : bool prop;
  id : string prop;
  role_arn : string prop;
}

let make ?disable_all_logs ?id ~default_log_level ~role_arn __id =
  let __type = "aws_iot_logging_options" in
  let __attrs =
    ({
       default_log_level =
         Prop.computed __type __id "default_log_level";
       disable_all_logs =
         Prop.computed __type __id "disable_all_logs";
       id = Prop.computed __type __id "id";
       role_arn = Prop.computed __type __id "role_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_logging_options
        (aws_iot_logging_options ?disable_all_logs ?id
           ~default_log_level ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?disable_all_logs ?id ~default_log_level
    ~role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?disable_all_logs ?id ~default_log_level ~role_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
