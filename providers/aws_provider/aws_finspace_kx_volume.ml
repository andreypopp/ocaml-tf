(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_finspace_kx_volume__nas1_configuration = {
  size : float prop;  (** size *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_volume__nas1_configuration *)

type aws_finspace_kx_volume__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_volume__timeouts *)

type aws_finspace_kx_volume__attached_clusters = {
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
  nas1_configuration :
    aws_finspace_kx_volume__nas1_configuration list;
  timeouts : aws_finspace_kx_volume__timeouts option;
}
[@@deriving yojson_of]
(** aws_finspace_kx_volume *)

let aws_finspace_kx_volume ?description ?id ?tags ?tags_all ?timeouts
    ~availability_zones ~az_mode ~environment_id ~name ~type_
    ~nas1_configuration __resource_id =
  let __resource_type = "aws_finspace_kx_volume" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_finspace_kx_volume __resource);
  ()
