(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_capacity_reservation = {
  availability_zone : string prop;  (** availability_zone *)
  ebs_optimized : bool prop option; [@option]  (** ebs_optimized *)
  end_date : string prop option; [@option]  (** end_date *)
  end_date_type : string prop option; [@option]  (** end_date_type *)
  ephemeral_storage : bool prop option; [@option]
      (** ephemeral_storage *)
  id : string prop option; [@option]  (** id *)
  instance_count : float prop;  (** instance_count *)
  instance_match_criteria : string prop option; [@option]
      (** instance_match_criteria *)
  instance_platform : string prop;  (** instance_platform *)
  instance_type : string prop;  (** instance_type *)
  outpost_arn : string prop option; [@option]  (** outpost_arn *)
  placement_group_arn : string prop option; [@option]
      (** placement_group_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  tenancy : string prop option; [@option]  (** tenancy *)
}
[@@deriving yojson_of]
(** aws_ec2_capacity_reservation *)

let aws_ec2_capacity_reservation ?ebs_optimized ?end_date
    ?end_date_type ?ephemeral_storage ?id ?instance_match_criteria
    ?outpost_arn ?placement_group_arn ?tags ?tags_all ?tenancy
    ~availability_zone ~instance_count ~instance_platform
    ~instance_type __resource_id =
  let __resource_type = "aws_ec2_capacity_reservation" in
  let __resource =
    {
      availability_zone;
      ebs_optimized;
      end_date;
      end_date_type;
      ephemeral_storage;
      id;
      instance_count;
      instance_match_criteria;
      instance_platform;
      instance_type;
      outpost_arn;
      placement_group_arn;
      tags;
      tags_all;
      tenancy;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_capacity_reservation __resource);
  ()
