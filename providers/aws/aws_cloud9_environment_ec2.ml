(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloud9_environment_ec2 = {
  automatic_stop_time_minutes : float prop option; [@option]
      (** automatic_stop_time_minutes *)
  connection_type : string prop option; [@option]
      (** connection_type *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  image_id : string prop;  (** image_id *)
  instance_type : string prop;  (** instance_type *)
  name : string prop;  (** name *)
  owner_arn : string prop option; [@option]  (** owner_arn *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_cloud9_environment_ec2 *)

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
