(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_config_configuration_recorder_status = {
  id : string prop option; [@option]
  is_enabled : bool prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_config_configuration_recorder_status) -> ()

let yojson_of_aws_config_configuration_recorder_status =
  (function
   | { id = v_id; is_enabled = v_is_enabled; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_enabled in
         ("is_enabled", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_config_configuration_recorder_status ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_config_configuration_recorder_status

[@@@deriving.end]

let aws_config_configuration_recorder_status ?id ~is_enabled ~name ()
    : aws_config_configuration_recorder_status =
  { id; is_enabled; name }

type t = {
  tf_name : string;
  id : string prop;
  is_enabled : bool prop;
  name : string prop;
}

let make ?id ~is_enabled ~name __id =
  let __type = "aws_config_configuration_recorder_status" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       is_enabled = Prop.computed __type __id "is_enabled";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_config_configuration_recorder_status
        (aws_config_configuration_recorder_status ?id ~is_enabled
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~is_enabled ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~is_enabled ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
