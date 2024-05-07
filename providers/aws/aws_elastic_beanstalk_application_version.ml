(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_elastic_beanstalk_application_version = {
  application : string prop;
  bucket : string prop;
  description : string prop option; [@option]
  force_delete : bool prop option; [@option]
  id : string prop option; [@option]
  key : string prop;
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elastic_beanstalk_application_version) -> ()

let yojson_of_aws_elastic_beanstalk_application_version =
  (function
   | {
       application = v_application;
       bucket = v_bucket;
       description = v_description;
       force_delete = v_force_delete;
       id = v_id;
       key = v_key;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
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
         match v_force_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_delete", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_application in
         ("application", arg) :: bnds
       in
       `Assoc bnds
    : aws_elastic_beanstalk_application_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elastic_beanstalk_application_version

[@@@deriving.end]

let aws_elastic_beanstalk_application_version ?description
    ?force_delete ?id ?tags ?tags_all ~application ~bucket ~key ~name
    () : aws_elastic_beanstalk_application_version =
  {
    application;
    bucket;
    description;
    force_delete;
    id;
    key;
    name;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  application : string prop;
  arn : string prop;
  bucket : string prop;
  description : string prop;
  force_delete : bool prop;
  id : string prop;
  key : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?force_delete ?id ?tags ?tags_all ~application
    ~bucket ~key ~name __id =
  let __type = "aws_elastic_beanstalk_application_version" in
  let __attrs =
    ({
       tf_name = __id;
       application = Prop.computed __type __id "application";
       arn = Prop.computed __type __id "arn";
       bucket = Prop.computed __type __id "bucket";
       description = Prop.computed __type __id "description";
       force_delete = Prop.computed __type __id "force_delete";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
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
      yojson_of_aws_elastic_beanstalk_application_version
        (aws_elastic_beanstalk_application_version ?description
           ?force_delete ?id ?tags ?tags_all ~application ~bucket
           ~key ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?force_delete ?id ?tags
    ?tags_all ~application ~bucket ~key ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?force_delete ?id ?tags ?tags_all ~application
      ~bucket ~key ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
