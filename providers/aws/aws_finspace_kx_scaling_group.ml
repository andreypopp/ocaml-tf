(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~availability_zone_id ~environment_id ~host_type ~name
    __resource_id =
  let __resource_type = "aws_finspace_kx_scaling_group" in
  let __resource =
    aws_finspace_kx_scaling_group ?id ?tags ?tags_all ?timeouts
      ~availability_zone_id ~environment_id ~host_type ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_finspace_kx_scaling_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       availability_zone_id =
         Prop.computed __resource_type __resource_id
           "availability_zone_id";
       clusters =
         Prop.computed __resource_type __resource_id "clusters";
       created_timestamp =
         Prop.computed __resource_type __resource_id
           "created_timestamp";
       environment_id =
         Prop.computed __resource_type __resource_id "environment_id";
       host_type =
         Prop.computed __resource_type __resource_id "host_type";
       id = Prop.computed __resource_type __resource_id "id";
       last_modified_timestamp =
         Prop.computed __resource_type __resource_id
           "last_modified_timestamp";
       name = Prop.computed __resource_type __resource_id "name";
       status = Prop.computed __resource_type __resource_id "status";
       status_reason =
         Prop.computed __resource_type __resource_id "status_reason";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
