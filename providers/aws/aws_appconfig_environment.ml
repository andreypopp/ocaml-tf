(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type monitor = {
  alarm_arn : string prop;
  alarm_role_arn : string prop option; [@option]
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
         match v_alarm_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alarm_role_arn", arg in
             bnd :: bnds
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
  description : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  monitor : monitor list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appconfig_environment) -> ()

let yojson_of_aws_appconfig_environment =
  (function
   | {
       application_id = v_application_id;
       description = v_description;
       name = v_name;
       tags = v_tags;
       monitor = v_monitor;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_monitor then bnds
         else
           let arg = (yojson_of_list yojson_of_monitor) v_monitor in
           let bnd = "monitor", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
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

let monitor ?alarm_role_arn ~alarm_arn () : monitor =
  { alarm_arn; alarm_role_arn }

let aws_appconfig_environment ?description ?tags ~application_id
    ~name ~monitor () : aws_appconfig_environment =
  { application_id; description; name; tags; monitor }

type t = {
  tf_name : string;
  application_id : string prop;
  arn : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  name : string prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?description ?tags ~application_id ~name ~monitor __id =
  let __type = "aws_appconfig_environment" in
  let __attrs =
    ({
       tf_name = __id;
       application_id = Prop.computed __type __id "application_id";
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       environment_id = Prop.computed __type __id "environment_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appconfig_environment
        (aws_appconfig_environment ?description ?tags ~application_id
           ~name ~monitor ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?tags ~application_id ~name
    ~monitor __id =
  let (r : _ Tf_core.resource) =
    make ?description ?tags ~application_id ~name ~monitor __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
