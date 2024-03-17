(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_finspace_kx_dataview__segment_configurations = {
  db_paths : string list;  (** db_paths *)
  volume_name : string;  (** volume_name *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_dataview__segment_configurations *)

type aws_finspace_kx_dataview__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_dataview__timeouts *)

type aws_finspace_kx_dataview = {
  auto_update : bool;  (** auto_update *)
  availability_zone_id : string option; [@option]
      (** availability_zone_id *)
  az_mode : string;  (** az_mode *)
  changeset_id : string option; [@option]  (** changeset_id *)
  database_name : string;  (** database_name *)
  description : string option; [@option]  (** description *)
  environment_id : string;  (** environment_id *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  segment_configurations :
    aws_finspace_kx_dataview__segment_configurations list;
  timeouts : aws_finspace_kx_dataview__timeouts option;
}
[@@deriving yojson_of]
(** aws_finspace_kx_dataview *)

let aws_finspace_kx_dataview ?availability_zone_id ?changeset_id
    ?description ?id ?tags ?tags_all ?timeouts ~auto_update ~az_mode
    ~database_name ~environment_id ~name ~segment_configurations
    __resource_id =
  let __resource_type = "aws_finspace_kx_dataview" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_finspace_kx_dataview __resource);
  ()
