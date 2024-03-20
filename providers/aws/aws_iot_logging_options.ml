(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iot_logging_options = {
  default_log_level : string prop;
  disable_all_logs : bool prop option; [@option]
  id : string prop option; [@option]
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_logging_options) -> ()

let yojson_of_aws_iot_logging_options =
  (function
   | {
       default_log_level = v_default_log_level;
       disable_all_logs = v_disable_all_logs;
       id = v_id;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
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
         match v_disable_all_logs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_all_logs", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_log_level
         in
         ("default_log_level", arg) :: bnds
       in
       `Assoc bnds
    : aws_iot_logging_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_logging_options

[@@@deriving.end]

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
