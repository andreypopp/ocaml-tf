(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let aws_ec2_host ?asset_id ?auto_placement ?host_recovery ?id
    ?instance_family ?instance_type ?outpost_arn ?tags ?tags_all
    ~availability_zone () : aws_ec2_host =
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

let make ?asset_id ?auto_placement ?host_recovery ?id
    ?instance_family ?instance_type ?outpost_arn ?tags ?tags_all
    ~availability_zone __id =
  let __type = "aws_ec2_host" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       asset_id = Prop.computed __type __id "asset_id";
       auto_placement = Prop.computed __type __id "auto_placement";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       host_recovery = Prop.computed __type __id "host_recovery";
       id = Prop.computed __type __id "id";
       instance_family = Prop.computed __type __id "instance_family";
       instance_type = Prop.computed __type __id "instance_type";
       outpost_arn = Prop.computed __type __id "outpost_arn";
       owner_id = Prop.computed __type __id "owner_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_host
        (aws_ec2_host ?asset_id ?auto_placement ?host_recovery ?id
           ?instance_family ?instance_type ?outpost_arn ?tags
           ?tags_all ~availability_zone ());
    attrs = __attrs;
  }

let register ?tf_module ?asset_id ?auto_placement ?host_recovery ?id
    ?instance_family ?instance_type ?outpost_arn ?tags ?tags_all
    ~availability_zone __id =
  let (r : _ Tf_core.resource) =
    make ?asset_id ?auto_placement ?host_recovery ?id
      ?instance_family ?instance_type ?outpost_arn ?tags ?tags_all
      ~availability_zone __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
