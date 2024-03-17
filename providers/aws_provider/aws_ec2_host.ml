(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_host = {
  asset_id : string option; [@option]  (** asset_id *)
  auto_placement : string option; [@option]  (** auto_placement *)
  availability_zone : string;  (** availability_zone *)
  host_recovery : string option; [@option]  (** host_recovery *)
  id : string option; [@option]  (** id *)
  instance_family : string option; [@option]  (** instance_family *)
  instance_type : string option; [@option]  (** instance_type *)
  outpost_arn : string option; [@option]  (** outpost_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_ec2_host *)

let aws_ec2_host ?asset_id ?auto_placement ?host_recovery ?id
    ?instance_family ?instance_type ?outpost_arn ?tags ?tags_all
    ~availability_zone __resource_id =
  let __resource_type = "aws_ec2_host" in
  let __resource =
    {
      asset_id;
      auto_placement;
      availability_zone;
      host_recovery;
      id;
      instance_family;
      instance_type;
      outpost_arn;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_host __resource);
  ()
