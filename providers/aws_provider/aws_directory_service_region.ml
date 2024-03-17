(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_directory_service_region__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_directory_service_region__timeouts *)

type aws_directory_service_region__vpc_settings = {
  subnet_ids : string list;  (** subnet_ids *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_directory_service_region__vpc_settings *)

type aws_directory_service_region = {
  desired_number_of_domain_controllers : float option; [@option]
      (** desired_number_of_domain_controllers *)
  directory_id : string;  (** directory_id *)
  id : string option; [@option]  (** id *)
  region_name : string;  (** region_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts : aws_directory_service_region__timeouts option;
  vpc_settings : aws_directory_service_region__vpc_settings list;
}
[@@deriving yojson_of]
(** aws_directory_service_region *)

let aws_directory_service_region
    ?desired_number_of_domain_controllers ?id ?tags ?tags_all
    ?timeouts ~directory_id ~region_name ~vpc_settings __resource_id
    =
  let __resource_type = "aws_directory_service_region" in
  let __resource =
    {
      desired_number_of_domain_controllers;
      directory_id;
      id;
      region_name;
      tags;
      tags_all;
      timeouts;
      vpc_settings;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_directory_service_region __resource);
  ()
