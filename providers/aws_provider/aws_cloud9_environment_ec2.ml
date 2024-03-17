(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloud9_environment_ec2 = {
  automatic_stop_time_minutes : float option; [@option]
      (** automatic_stop_time_minutes *)
  connection_type : string option; [@option]  (** connection_type *)
  description : string option; [@option]  (** description *)
  image_id : string;  (** image_id *)
  instance_type : string;  (** instance_type *)
  name : string;  (** name *)
  subnet_id : string option; [@option]  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_cloud9_environment_ec2 *)

let aws_cloud9_environment_ec2 ?automatic_stop_time_minutes
    ?connection_type ?description ?subnet_id ?tags ~image_id
    ~instance_type ~name __resource_id =
  let __resource_type = "aws_cloud9_environment_ec2" in
  let __resource =
    {
      automatic_stop_time_minutes;
      connection_type;
      description;
      image_id;
      instance_type;
      name;
      subnet_id;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloud9_environment_ec2 __resource);
  ()
