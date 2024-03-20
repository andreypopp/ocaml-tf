(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type segment_configurations = {
  db_paths : string prop list;  (** db_paths *)
  volume_name : string prop;  (** volume_name *)
}
[@@deriving yojson_of]
(** segment_configurations *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_finspace_kx_dataview = {
  auto_update : bool prop;  (** auto_update *)
  availability_zone_id : string prop option; [@option]
      (** availability_zone_id *)
  az_mode : string prop;  (** az_mode *)
  changeset_id : string prop option; [@option]  (** changeset_id *)
  database_name : string prop;  (** database_name *)
  description : string prop option; [@option]  (** description *)
  environment_id : string prop;  (** environment_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  segment_configurations : segment_configurations list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_finspace_kx_dataview *)

let segment_configurations ~db_paths ~volume_name () :
    segment_configurations =
  { db_paths; volume_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_finspace_kx_dataview ?availability_zone_id ?changeset_id
    ?description ?id ?tags ?tags_all ?timeouts ~auto_update ~az_mode
    ~database_name ~environment_id ~name ~segment_configurations () :
    aws_finspace_kx_dataview =
  {
    auto_update;
    availability_zone_id;
    az_mode;
    changeset_id;
    database_name;
    description;
    environment_id;
    id;
    name;
    tags;
    tags_all;
    segment_configurations;
    timeouts;
  }

type t = {
  arn : string prop;
  auto_update : bool prop;
  availability_zone_id : string prop;
  az_mode : string prop;
  changeset_id : string prop;
  created_timestamp : string prop;
  database_name : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  last_modified_timestamp : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?availability_zone_id ?changeset_id ?description ?id ?tags
    ?tags_all ?timeouts ~auto_update ~az_mode ~database_name
    ~environment_id ~name ~segment_configurations __id =
  let __type = "aws_finspace_kx_dataview" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       auto_update = Prop.computed __type __id "auto_update";
       availability_zone_id =
         Prop.computed __type __id "availability_zone_id";
       az_mode = Prop.computed __type __id "az_mode";
       changeset_id = Prop.computed __type __id "changeset_id";
       created_timestamp =
         Prop.computed __type __id "created_timestamp";
       database_name = Prop.computed __type __id "database_name";
       description = Prop.computed __type __id "description";
       environment_id = Prop.computed __type __id "environment_id";
       id = Prop.computed __type __id "id";
       last_modified_timestamp =
         Prop.computed __type __id "last_modified_timestamp";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_finspace_kx_dataview
        (aws_finspace_kx_dataview ?availability_zone_id ?changeset_id
           ?description ?id ?tags ?tags_all ?timeouts ~auto_update
           ~az_mode ~database_name ~environment_id ~name
           ~segment_configurations ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_zone_id ?changeset_id
    ?description ?id ?tags ?tags_all ?timeouts ~auto_update ~az_mode
    ~database_name ~environment_id ~name ~segment_configurations __id
    =
  let (r : _ Tf_core.resource) =
    make ?availability_zone_id ?changeset_id ?description ?id ?tags
      ?tags_all ?timeouts ~auto_update ~az_mode ~database_name
      ~environment_id ~name ~segment_configurations __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
