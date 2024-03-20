(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_finspace_kx_scaling_group = {
  availability_zone_id : string prop;  (** availability_zone_id *)
  environment_id : string prop;  (** environment_id *)
  host_type : string prop;  (** host_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_finspace_kx_scaling_group *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_finspace_kx_scaling_group ?id ?tags ?tags_all ?timeouts
    ~availability_zone_id ~environment_id ~host_type ~name () :
    aws_finspace_kx_scaling_group =
  {
    availability_zone_id;
    environment_id;
    host_type;
    id;
    name;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  arn : string prop;
  availability_zone_id : string prop;
  clusters : string list prop;
  created_timestamp : string prop;
  environment_id : string prop;
  host_type : string prop;
  id : string prop;
  last_modified_timestamp : string prop;
  name : string prop;
  status : string prop;
  status_reason : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?timeouts ~availability_zone_id
    ~environment_id ~host_type ~name __id =
  let __type = "aws_finspace_kx_scaling_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       availability_zone_id =
         Prop.computed __type __id "availability_zone_id";
       clusters = Prop.computed __type __id "clusters";
       created_timestamp =
         Prop.computed __type __id "created_timestamp";
       environment_id = Prop.computed __type __id "environment_id";
       host_type = Prop.computed __type __id "host_type";
       id = Prop.computed __type __id "id";
       last_modified_timestamp =
         Prop.computed __type __id "last_modified_timestamp";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       status_reason = Prop.computed __type __id "status_reason";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_finspace_kx_scaling_group
        (aws_finspace_kx_scaling_group ?id ?tags ?tags_all ?timeouts
           ~availability_zone_id ~environment_id ~host_type ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~availability_zone_id ~environment_id ~host_type ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~availability_zone_id
      ~environment_id ~host_type ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
