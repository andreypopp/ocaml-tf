(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloud9_environment_ec2 = {
  automatic_stop_time_minutes : float prop option; [@option]
  connection_type : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  image_id : string prop;
  instance_type : string prop;
  name : string prop;
  owner_arn : string prop option; [@option]
  subnet_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloud9_environment_ec2) -> ()

let yojson_of_aws_cloud9_environment_ec2 =
  (function
   | {
       automatic_stop_time_minutes = v_automatic_stop_time_minutes;
       connection_type = v_connection_type;
       description = v_description;
       id = v_id;
       image_id = v_image_id;
       instance_type = v_instance_type;
       name = v_name;
       owner_arn = v_owner_arn;
       subnet_id = v_subnet_id;
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
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_owner_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_id in
         ("image_id", arg) :: bnds
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
       let bnds =
         match v_connection_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_automatic_stop_time_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "automatic_stop_time_minutes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloud9_environment_ec2 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloud9_environment_ec2

[@@@deriving.end]

let aws_cloud9_environment_ec2 ?automatic_stop_time_minutes
    ?connection_type ?description ?id ?owner_arn ?subnet_id ?tags
    ?tags_all ~image_id ~instance_type ~name () :
    aws_cloud9_environment_ec2 =
  {
    automatic_stop_time_minutes;
    connection_type;
    description;
    id;
    image_id;
    instance_type;
    name;
    owner_arn;
    subnet_id;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  automatic_stop_time_minutes : float prop;
  connection_type : string prop;
  description : string prop;
  id : string prop;
  image_id : string prop;
  instance_type : string prop;
  name : string prop;
  owner_arn : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?automatic_stop_time_minutes ?connection_type ?description
    ?id ?owner_arn ?subnet_id ?tags ?tags_all ~image_id
    ~instance_type ~name __id =
  let __type = "aws_cloud9_environment_ec2" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       automatic_stop_time_minutes =
         Prop.computed __type __id "automatic_stop_time_minutes";
       connection_type = Prop.computed __type __id "connection_type";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       image_id = Prop.computed __type __id "image_id";
       instance_type = Prop.computed __type __id "instance_type";
       name = Prop.computed __type __id "name";
       owner_arn = Prop.computed __type __id "owner_arn";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloud9_environment_ec2
        (aws_cloud9_environment_ec2 ?automatic_stop_time_minutes
           ?connection_type ?description ?id ?owner_arn ?subnet_id
           ?tags ?tags_all ~image_id ~instance_type ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?automatic_stop_time_minutes ?connection_type
    ?description ?id ?owner_arn ?subnet_id ?tags ?tags_all ~image_id
    ~instance_type ~name __id =
  let (r : _ Tf_core.resource) =
    make ?automatic_stop_time_minutes ?connection_type ?description
      ?id ?owner_arn ?subnet_id ?tags ?tags_all ~image_id
      ~instance_type ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
