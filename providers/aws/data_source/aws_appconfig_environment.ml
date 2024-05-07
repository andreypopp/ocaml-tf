(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type monitor = {
  alarm_arn : string prop;
  alarm_role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitor) -> ()

let yojson_of_monitor =
  (function
   | { alarm_arn = v_alarm_arn; alarm_role_arn = v_alarm_role_arn }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_alarm_role_arn
         in
         ("alarm_role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_alarm_arn in
         ("alarm_arn", arg) :: bnds
       in
       `Assoc bnds
    : monitor -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitor

[@@@deriving.end]

type aws_appconfig_environment = {
  application_id : string prop;
  environment_id : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appconfig_environment) -> ()

let yojson_of_aws_appconfig_environment =
  (function
   | {
       application_id = v_application_id;
       environment_id = v_environment_id;
       id = v_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_environment_id
         in
         ("environment_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_appconfig_environment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appconfig_environment

[@@@deriving.end]

let aws_appconfig_environment ?id ?tags ~application_id
    ~environment_id () : aws_appconfig_environment =
  { application_id; environment_id; id; tags }

type t = {
  tf_name : string;
  application_id : string prop;
  arn : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  monitor : monitor list prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~application_id ~environment_id __id =
  let __type = "aws_appconfig_environment" in
  let __attrs =
    ({
       tf_name = __id;
       application_id = Prop.computed __type __id "application_id";
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       environment_id = Prop.computed __type __id "environment_id";
       id = Prop.computed __type __id "id";
       monitor = Prop.computed __type __id "monitor";
       name = Prop.computed __type __id "name";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appconfig_environment
        (aws_appconfig_environment ?id ?tags ~application_id
           ~environment_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~application_id ~environment_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~application_id ~environment_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
