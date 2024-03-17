(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_finspace_kx_scaling_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_scaling_group__timeouts *)

type aws_finspace_kx_scaling_group = {
  availability_zone_id : string;  (** availability_zone_id *)
  environment_id : string;  (** environment_id *)
  host_type : string;  (** host_type *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_finspace_kx_scaling_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_finspace_kx_scaling_group *)

let aws_finspace_kx_scaling_group ?tags ?timeouts
    ~availability_zone_id ~environment_id ~host_type ~name
    __resource_id =
  let __resource_type = "aws_finspace_kx_scaling_group" in
  let __resource =
    {
      availability_zone_id;
      environment_id;
      host_type;
      name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_finspace_kx_scaling_group __resource);
  ()
