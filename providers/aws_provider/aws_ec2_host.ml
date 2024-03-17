(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_host = {
  auto_placement : string option; [@option]  (** auto_placement *)
  availability_zone : string;  (** availability_zone *)
  host_recovery : string option; [@option]  (** host_recovery *)
  instance_family : string option; [@option]  (** instance_family *)
  instance_type : string option; [@option]  (** instance_type *)
  outpost_arn : string option; [@option]  (** outpost_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_ec2_host *)

let aws_ec2_host ?auto_placement ?host_recovery ?instance_family
    ?instance_type ?outpost_arn ?tags ~availability_zone
    __resource_id =
  let __resource_type = "aws_ec2_host" in
  let __resource =
    {
      auto_placement;
      availability_zone;
      host_recovery;
      instance_family;
      instance_type;
      outpost_arn;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_host __resource);
  ()
