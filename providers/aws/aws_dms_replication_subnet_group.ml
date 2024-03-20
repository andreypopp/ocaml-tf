(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dms_replication_subnet_group = {
  id : string prop option; [@option]  (** id *)
  replication_subnet_group_description : string prop;
      (** replication_subnet_group_description *)
  replication_subnet_group_id : string prop;
      (** replication_subnet_group_id *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_dms_replication_subnet_group *)

let aws_dms_replication_subnet_group ?id ?tags ?tags_all
    ~replication_subnet_group_description
    ~replication_subnet_group_id ~subnet_ids () :
    aws_dms_replication_subnet_group =
  {
    id;
    replication_subnet_group_description;
    replication_subnet_group_id;
    subnet_ids;
    tags;
    tags_all;
  }

type t = {
  id : string prop;
  replication_subnet_group_arn : string prop;
  replication_subnet_group_description : string prop;
  replication_subnet_group_id : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?id ?tags ?tags_all ~replication_subnet_group_description
    ~replication_subnet_group_id ~subnet_ids __id =
  let __type = "aws_dms_replication_subnet_group" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       replication_subnet_group_arn =
         Prop.computed __type __id "replication_subnet_group_arn";
       replication_subnet_group_description =
         Prop.computed __type __id
           "replication_subnet_group_description";
       replication_subnet_group_id =
         Prop.computed __type __id "replication_subnet_group_id";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dms_replication_subnet_group
        (aws_dms_replication_subnet_group ?id ?tags ?tags_all
           ~replication_subnet_group_description
           ~replication_subnet_group_id ~subnet_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ~replication_subnet_group_description
    ~replication_subnet_group_id ~subnet_ids __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~replication_subnet_group_description
      ~replication_subnet_group_id ~subnet_ids __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
