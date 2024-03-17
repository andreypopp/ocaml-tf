(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_directory_service_region__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_directory_service_region__timeouts *)

type aws_directory_service_region__vpc_settings = {
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_directory_service_region__vpc_settings *)

type aws_directory_service_region = {
  desired_number_of_domain_controllers : float prop option; [@option]
      (** desired_number_of_domain_controllers *)
  directory_id : string prop;  (** directory_id *)
  id : string prop option; [@option]  (** id *)
  region_name : string prop;  (** region_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_directory_service_region__timeouts option;
  vpc_settings : aws_directory_service_region__vpc_settings list;
}
[@@deriving yojson_of]
(** aws_directory_service_region *)

type t = {
  desired_number_of_domain_controllers : float prop;
  directory_id : string prop;
  id : string prop;
  region_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_directory_service_region
    ?desired_number_of_domain_controllers ?id ?tags ?tags_all
    ?timeouts ~directory_id ~region_name ~vpc_settings __resource_id
    =
  let __resource_type = "aws_directory_service_region" in
  let __resource =
    ({
       desired_number_of_domain_controllers;
       directory_id;
       id;
       region_name;
       tags;
       tags_all;
       timeouts;
       vpc_settings;
     }
      : aws_directory_service_region)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_directory_service_region __resource);
  let __resource_attributes =
    ({
       desired_number_of_domain_controllers =
         Prop.computed __resource_type __resource_id
           "desired_number_of_domain_controllers";
       directory_id =
         Prop.computed __resource_type __resource_id "directory_id";
       id = Prop.computed __resource_type __resource_id "id";
       region_name =
         Prop.computed __resource_type __resource_id "region_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
