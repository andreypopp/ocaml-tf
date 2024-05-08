(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type appversion_lifecycle = {
  delete_source_from_s3 : bool prop option; [@option]
  max_age_in_days : float prop option; [@option]
  max_count : float prop option; [@option]
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
         match v_max_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_age_in_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_age_in_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_source_from_s3 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_source_from_s3", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : appversion_lifecycle -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_appversion_lifecycle

[@@@deriving.end]

type aws_elastic_beanstalk_application = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  appversion_lifecycle : appversion_lifecycle list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elastic_beanstalk_application) -> ()

let yojson_of_aws_elastic_beanstalk_application =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       appversion_lifecycle = v_appversion_lifecycle;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_appversion_lifecycle then bnds
         else
           let arg =
             (yojson_of_list yojson_of_appversion_lifecycle)
               v_appversion_lifecycle
           in
           let bnd = "appversion_lifecycle", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_elastic_beanstalk_application ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elastic_beanstalk_application

[@@@deriving.end]

let appversion_lifecycle ?delete_source_from_s3 ?max_age_in_days
    ?max_count ~service_role () : appversion_lifecycle =
  { delete_source_from_s3; max_age_in_days; max_count; service_role }

let aws_elastic_beanstalk_application ?description ?id ?tags
    ?tags_all ?(appversion_lifecycle = []) ~name () :
    aws_elastic_beanstalk_application =
  { description; id; name; tags; tags_all; appversion_lifecycle }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all
    ?(appversion_lifecycle = []) ~name __id =
  let __type = "aws_elastic_beanstalk_application" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elastic_beanstalk_application
        (aws_elastic_beanstalk_application ?description ?id ?tags
           ?tags_all ~appversion_lifecycle ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all
    ?(appversion_lifecycle = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~appversion_lifecycle ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
