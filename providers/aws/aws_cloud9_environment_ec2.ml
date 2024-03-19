(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?automatic_stop_time_minutes ?connection_type
    ?description ?id ?owner_arn ?subnet_id ?tags ?tags_all ~image_id
    ~instance_type ~name __resource_id =
  let __resource_type = "aws_cloud9_environment_ec2" in
  let __resource =
    aws_cloud9_environment_ec2 ?automatic_stop_time_minutes
      ?connection_type ?description ?id ?owner_arn ?subnet_id ?tags
      ?tags_all ~image_id ~instance_type ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloud9_environment_ec2 __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       automatic_stop_time_minutes =
         Prop.computed __resource_type __resource_id
           "automatic_stop_time_minutes";
       connection_type =
         Prop.computed __resource_type __resource_id
           "connection_type";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       image_id =
         Prop.computed __resource_type __resource_id "image_id";
       instance_type =
         Prop.computed __resource_type __resource_id "instance_type";
       name = Prop.computed __resource_type __resource_id "name";
       owner_arn =
         Prop.computed __resource_type __resource_id "owner_arn";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
