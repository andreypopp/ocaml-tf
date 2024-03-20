(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type appversion_lifecycle = {
  delete_source_from_s3 : bool prop;
  max_age_in_days : float prop;
  max_count : float prop;
  service_role : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : appversion_lifecycle) -> ()

let yojson_of_appversion_lifecycle =
  (function
   | {
       delete_source_from_s3 = v_delete_source_from_s3;
       max_age_in_days = v_max_age_in_days;
       max_count = v_max_count;
       service_role = v_service_role;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_role in
         ("service_role", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_count in
         ("max_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_age_in_days
         in
         ("max_age_in_days", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_delete_source_from_s3
         in
         ("delete_source_from_s3", arg) :: bnds
       in
       `Assoc bnds
    : appversion_lifecycle -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_appversion_lifecycle

[@@@deriving.end]

type aws_elastic_beanstalk_application = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elastic_beanstalk_application) -> ()

let yojson_of_aws_elastic_beanstalk_application =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : aws_elastic_beanstalk_application ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elastic_beanstalk_application

[@@@deriving.end]

let aws_elastic_beanstalk_application ?id ~name () :
    aws_elastic_beanstalk_application =
  { id; name }

type t = {
  appversion_lifecycle : appversion_lifecycle list prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ~name __id =
  let __type = "aws_elastic_beanstalk_application" in
  let __attrs =
    ({
       appversion_lifecycle =
         Prop.computed __type __id "appversion_lifecycle";
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elastic_beanstalk_application
        (aws_elastic_beanstalk_application ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
