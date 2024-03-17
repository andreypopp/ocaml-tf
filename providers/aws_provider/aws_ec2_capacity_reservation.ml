(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_capacity_reservation = {
  availability_zone : string;  (** availability_zone *)
  ebs_optimized : bool option; [@option]  (** ebs_optimized *)
  end_date : string option; [@option]  (** end_date *)
  end_date_type : string option; [@option]  (** end_date_type *)
  ephemeral_storage : bool option; [@option]
      (** ephemeral_storage *)
  instance_count : float;  (** instance_count *)
  instance_match_criteria : string option; [@option]
      (** instance_match_criteria *)
  instance_platform : string;  (** instance_platform *)
  instance_type : string;  (** instance_type *)
  outpost_arn : string option; [@option]  (** outpost_arn *)
  placement_group_arn : string option; [@option]
      (** placement_group_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  tenancy : string option; [@option]  (** tenancy *)
}
[@@deriving yojson_of]
(** aws_ec2_capacity_reservation *)

let aws_ec2_capacity_reservation ?ebs_optimized ?end_date
    ?end_date_type ?ephemeral_storage ?instance_match_criteria
    ?outpost_arn ?placement_group_arn ?tags ?tenancy
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
      instance_count;
      instance_match_criteria;
      instance_platform;
      instance_type;
      outpost_arn;
      placement_group_arn;
      tags;
      tenancy;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_capacity_reservation __resource);
  ()
