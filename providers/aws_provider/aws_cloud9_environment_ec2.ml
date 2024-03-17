(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloud9_environment_ec2 = {
  automatic_stop_time_minutes : float option; [@option]
      (** automatic_stop_time_minutes *)
  connection_type : string option; [@option]  (** connection_type *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  image_id : string;  (** image_id *)
  instance_type : string;  (** instance_type *)
  name : string;  (** name *)
  owner_arn : string option; [@option]  (** owner_arn *)
  subnet_id : string option; [@option]  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_cloud9_environment_ec2 *)

let aws_cloud9_environment_ec2 ?automatic_stop_time_minutes
    ?connection_type ?description ?id ?owner_arn ?subnet_id ?tags
    ?tags_all ~image_id ~instance_type ~name __resource_id =
  let __resource_type = "aws_cloud9_environment_ec2" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloud9_environment_ec2 __resource);
  ()
