(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type nas1_configuration = {
  size : float prop;  (** size *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** nas1_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type attached_clusters = {
  cluster_name : string prop;  (** cluster_name *)
  cluster_status : string prop;  (** cluster_status *)
  cluster_type : string prop;  (** cluster_type *)
}
[@@deriving yojson_of]

type aws_finspace_kx_volume = {
  availability_zones : string prop list;  (** availability_zones *)
  az_mode : string prop;  (** az_mode *)
  description : string prop option; [@option]  (** description *)
  environment_id : string prop;  (** environment_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
  nas1_configuration : nas1_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_finspace_kx_volume *)

let nas1_configuration ~size ~type_ () : nas1_configuration =
  { size; type_ }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_finspace_kx_volume ?description ?id ?tags ?tags_all ?timeouts
    ~availability_zones ~az_mode ~environment_id ~name ~type_
    ~nas1_configuration () : aws_finspace_kx_volume =
  {
    availability_zones;
    az_mode;
    description;
    environment_id;
    id;
    name;
    tags;
    tags_all;
    type_;
    nas1_configuration;
    timeouts;
  }

type t = {
  arn : string prop;
  attached_clusters : attached_clusters list prop;
  availability_zones : string list prop;
  az_mode : string prop;
  created_timestamp : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  last_modified_timestamp : string prop;
  name : string prop;
  status : string prop;
  status_reason : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?description ?id ?tags ?tags_all ?timeouts
    ~availability_zones ~az_mode ~environment_id ~name ~type_
    ~nas1_configuration __id =
  let __type = "aws_finspace_kx_volume" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       attached_clusters =
         Prop.computed __type __id "attached_clusters";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       az_mode = Prop.computed __type __id "az_mode";
       created_timestamp =
         Prop.computed __type __id "created_timestamp";
       description = Prop.computed __type __id "description";
       environment_id = Prop.computed __type __id "environment_id";
       id = Prop.computed __type __id "id";
       last_modified_timestamp =
         Prop.computed __type __id "last_modified_timestamp";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       status_reason = Prop.computed __type __id "status_reason";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_finspace_kx_volume
        (aws_finspace_kx_volume ?description ?id ?tags ?tags_all
           ?timeouts ~availability_zones ~az_mode ~environment_id
           ~name ~type_ ~nas1_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ?timeouts
    ~availability_zones ~az_mode ~environment_id ~name ~type_
    ~nas1_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ?timeouts
      ~availability_zones ~az_mode ~environment_id ~name ~type_
      ~nas1_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
