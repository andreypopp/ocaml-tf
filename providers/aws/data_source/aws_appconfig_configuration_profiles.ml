(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appconfig_configuration_profiles = {
  application_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appconfig_configuration_profiles) -> ()

let yojson_of_aws_appconfig_configuration_profiles =
  (function
   | { application_id = v_application_id; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_appconfig_configuration_profiles ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appconfig_configuration_profiles

[@@@deriving.end]

let aws_appconfig_configuration_profiles ?id ~application_id () :
    aws_appconfig_configuration_profiles =
  { application_id; id }

type t = {
  tf_name : string;
  application_id : string prop;
  configuration_profile_ids : string list prop;
  id : string prop;
}

let make ?id ~application_id __id =
  let __type = "aws_appconfig_configuration_profiles" in
  let __attrs =
    ({
       tf_name = __id;
       application_id = Prop.computed __type __id "application_id";
       configuration_profile_ids =
         Prop.computed __type __id "configuration_profile_ids";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appconfig_configuration_profiles
        (aws_appconfig_configuration_profiles ?id ~application_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~application_id __id =
  let (r : _ Tf_core.resource) = make ?id ~application_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
