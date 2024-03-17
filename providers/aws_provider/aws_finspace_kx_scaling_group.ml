(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_finspace_kx_scaling_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_scaling_group__timeouts *)

type aws_finspace_kx_scaling_group = {
  availability_zone_id : string prop;  (** availability_zone_id *)
  environment_id : string prop;  (** environment_id *)
  host_type : string prop;  (** host_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_finspace_kx_scaling_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_finspace_kx_scaling_group *)

let aws_finspace_kx_scaling_group ?id ?tags ?tags_all ?timeouts
    ~availability_zone_id ~environment_id ~host_type ~name
    __resource_id =
  let __resource_type = "aws_finspace_kx_scaling_group" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_finspace_kx_scaling_group __resource);
  ()
