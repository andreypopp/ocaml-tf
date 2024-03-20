(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
    ~instance_type () : aws_ec2_capacity_reservation =
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

type t = {
  arn : string prop;
  availability_zone : string prop;
  ebs_optimized : bool prop;
  end_date : string prop;
  end_date_type : string prop;
  ephemeral_storage : bool prop;
  id : string prop;
  instance_count : float prop;
  instance_match_criteria : string prop;
  instance_platform : string prop;
  instance_type : string prop;
  outpost_arn : string prop;
  owner_id : string prop;
  placement_group_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tenancy : string prop;
}

let make ?ebs_optimized ?end_date ?end_date_type ?ephemeral_storage
    ?id ?instance_match_criteria ?outpost_arn ?placement_group_arn
    ?tags ?tags_all ?tenancy ~availability_zone ~instance_count
    ~instance_platform ~instance_type __id =
  let __type = "aws_ec2_capacity_reservation" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       ebs_optimized = Prop.computed __type __id "ebs_optimized";
       end_date = Prop.computed __type __id "end_date";
       end_date_type = Prop.computed __type __id "end_date_type";
       ephemeral_storage =
         Prop.computed __type __id "ephemeral_storage";
       id = Prop.computed __type __id "id";
       instance_count = Prop.computed __type __id "instance_count";
       instance_match_criteria =
         Prop.computed __type __id "instance_match_criteria";
       instance_platform =
         Prop.computed __type __id "instance_platform";
       instance_type = Prop.computed __type __id "instance_type";
       outpost_arn = Prop.computed __type __id "outpost_arn";
       owner_id = Prop.computed __type __id "owner_id";
       placement_group_arn =
         Prop.computed __type __id "placement_group_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       tenancy = Prop.computed __type __id "tenancy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_capacity_reservation
        (aws_ec2_capacity_reservation ?ebs_optimized ?end_date
           ?end_date_type ?ephemeral_storage ?id
           ?instance_match_criteria ?outpost_arn ?placement_group_arn
           ?tags ?tags_all ?tenancy ~availability_zone
           ~instance_count ~instance_platform ~instance_type ());
    attrs = __attrs;
  }

let register ?tf_module ?ebs_optimized ?end_date ?end_date_type
    ?ephemeral_storage ?id ?instance_match_criteria ?outpost_arn
    ?placement_group_arn ?tags ?tags_all ?tenancy ~availability_zone
    ~instance_count ~instance_platform ~instance_type __id =
  let (r : _ Tf_core.resource) =
    make ?ebs_optimized ?end_date ?end_date_type ?ephemeral_storage
      ?id ?instance_match_criteria ?outpost_arn ?placement_group_arn
      ?tags ?tags_all ?tenancy ~availability_zone ~instance_count
      ~instance_platform ~instance_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
