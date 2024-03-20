(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_config_retention_configuration = {
  retention_period_in_days : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_config_retention_configuration) -> ()

let yojson_of_aws_config_retention_configuration =
  (function
   | { retention_period_in_days = v_retention_period_in_days } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_retention_period_in_days
         in
         ("retention_period_in_days", arg) :: bnds
       in
       `Assoc bnds
    : aws_config_retention_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_config_retention_configuration

[@@@deriving.end]

let aws_config_retention_configuration ~retention_period_in_days () :
    aws_config_retention_configuration =
  { retention_period_in_days }

type t = {
  id : string prop;
  name : string prop;
  retention_period_in_days : float prop;
}

let make ~retention_period_in_days __id =
  let __type = "aws_config_retention_configuration" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       retention_period_in_days =
         Prop.computed __type __id "retention_period_in_days";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_config_retention_configuration
        (aws_config_retention_configuration ~retention_period_in_days
           ());
    attrs = __attrs;
  }

let register ?tf_module ~retention_period_in_days __id =
  let (r : _ Tf_core.resource) =
    make ~retention_period_in_days __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
