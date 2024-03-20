(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_mq_configuration = {
  authentication_strategy : string prop option; [@option]
  data : string prop;
  description : string prop option; [@option]
  engine_type : string prop;
  engine_version : string prop;
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_mq_configuration) -> ()

let yojson_of_aws_mq_configuration =
  (function
   | {
       authentication_strategy = v_authentication_strategy;
       data = v_data;
       description = v_description;
       engine_type = v_engine_type;
       engine_version = v_engine_version;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_engine_version
         in
         ("engine_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_engine_type in
         ("engine_type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_data in
         ("data", arg) :: bnds
       in
       let bnds =
         match v_authentication_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authentication_strategy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_mq_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_mq_configuration

[@@@deriving.end]

let aws_mq_configuration ?authentication_strategy ?description ?id
    ?tags ?tags_all ~data ~engine_type ~engine_version ~name () :
    aws_mq_configuration =
  {
    authentication_strategy;
    data;
    description;
    engine_type;
    engine_version;
    id;
    name;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  authentication_strategy : string prop;
  data : string prop;
  description : string prop;
  engine_type : string prop;
  engine_version : string prop;
  id : string prop;
  latest_revision : float prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?authentication_strategy ?description ?id ?tags ?tags_all
    ~data ~engine_type ~engine_version ~name __id =
  let __type = "aws_mq_configuration" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       authentication_strategy =
         Prop.computed __type __id "authentication_strategy";
       data = Prop.computed __type __id "data";
       description = Prop.computed __type __id "description";
       engine_type = Prop.computed __type __id "engine_type";
       engine_version = Prop.computed __type __id "engine_version";
       id = Prop.computed __type __id "id";
       latest_revision = Prop.computed __type __id "latest_revision";
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
      yojson_of_aws_mq_configuration
        (aws_mq_configuration ?authentication_strategy ?description
           ?id ?tags ?tags_all ~data ~engine_type ~engine_version
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?authentication_strategy ?description ?id
    ?tags ?tags_all ~data ~engine_type ~engine_version ~name __id =
  let (r : _ Tf_core.resource) =
    make ?authentication_strategy ?description ?id ?tags ?tags_all
      ~data ~engine_type ~engine_version ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
