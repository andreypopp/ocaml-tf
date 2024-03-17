(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_finspace_kx_dataview__segment_configurations = {
  db_paths : string prop list;  (** db_paths *)
  volume_name : string prop;  (** volume_name *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_dataview__segment_configurations *)

type aws_finspace_kx_dataview__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_dataview__timeouts *)

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
  segment_configurations :
    aws_finspace_kx_dataview__segment_configurations list;
  timeouts : aws_finspace_kx_dataview__timeouts option;
}
[@@deriving yojson_of]
(** aws_finspace_kx_dataview *)

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

let aws_finspace_kx_dataview ?availability_zone_id ?changeset_id
    ?description ?id ?tags ?tags_all ?timeouts ~auto_update ~az_mode
    ~database_name ~environment_id ~name ~segment_configurations
    __resource_id =
  let __resource_type = "aws_finspace_kx_dataview" in
  let __resource =
    ({
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
      : aws_finspace_kx_dataview)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_finspace_kx_dataview __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       auto_update =
         Prop.computed __resource_type __resource_id "auto_update";
       availability_zone_id =
         Prop.computed __resource_type __resource_id
           "availability_zone_id";
       az_mode =
         Prop.computed __resource_type __resource_id "az_mode";
       changeset_id =
         Prop.computed __resource_type __resource_id "changeset_id";
       created_timestamp =
         Prop.computed __resource_type __resource_id
           "created_timestamp";
       database_name =
         Prop.computed __resource_type __resource_id "database_name";
       description =
         Prop.computed __resource_type __resource_id "description";
       environment_id =
         Prop.computed __resource_type __resource_id "environment_id";
       id = Prop.computed __resource_type __resource_id "id";
       last_modified_timestamp =
         Prop.computed __resource_type __resource_id
           "last_modified_timestamp";
       name = Prop.computed __resource_type __resource_id "name";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
