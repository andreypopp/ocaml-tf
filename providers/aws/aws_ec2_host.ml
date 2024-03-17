(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_host = {
  asset_id : string prop option; [@option]  (** asset_id *)
  auto_placement : string prop option; [@option]
      (** auto_placement *)
  availability_zone : string prop;  (** availability_zone *)
  host_recovery : string prop option; [@option]  (** host_recovery *)
  id : string prop option; [@option]  (** id *)
  instance_family : string prop option; [@option]
      (** instance_family *)
  instance_type : string prop option; [@option]  (** instance_type *)
  outpost_arn : string prop option; [@option]  (** outpost_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_ec2_host *)

type t = {
  arn : string prop;
  asset_id : string prop;
  auto_placement : string prop;
  availability_zone : string prop;
  host_recovery : string prop;
  id : string prop;
  instance_family : string prop;
  instance_type : string prop;
  outpost_arn : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_ec2_host ?asset_id ?auto_placement ?host_recovery ?id
    ?instance_family ?instance_type ?outpost_arn ?tags ?tags_all
    ~availability_zone __resource_id =
  let __resource_type = "aws_ec2_host" in
  let __resource =
    ({
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
      : aws_ec2_host)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_host __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       asset_id =
         Prop.computed __resource_type __resource_id "asset_id";
       auto_placement =
         Prop.computed __resource_type __resource_id "auto_placement";
       availability_zone =
         Prop.computed __resource_type __resource_id
           "availability_zone";
       host_recovery =
         Prop.computed __resource_type __resource_id "host_recovery";
       id = Prop.computed __resource_type __resource_id "id";
       instance_family =
         Prop.computed __resource_type __resource_id
           "instance_family";
       instance_type =
         Prop.computed __resource_type __resource_id "instance_type";
       outpost_arn =
         Prop.computed __resource_type __resource_id "outpost_arn";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
