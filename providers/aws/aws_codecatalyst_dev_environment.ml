(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codecatalyst_dev_environment__ides = {
  name : string prop option; [@option]  (** name *)
  runtime : string prop option; [@option]  (** runtime *)
}
[@@deriving yojson_of]
(** aws_codecatalyst_dev_environment__ides *)

type aws_codecatalyst_dev_environment__persistent_storage = {
  size : float prop;  (** size *)
}
[@@deriving yojson_of]
(** aws_codecatalyst_dev_environment__persistent_storage *)

type aws_codecatalyst_dev_environment__repositories = {
  branch_name : string prop option; [@option]  (** branch_name *)
  repository_name : string prop;  (** repository_name *)
}
[@@deriving yojson_of]
(** aws_codecatalyst_dev_environment__repositories *)

type aws_codecatalyst_dev_environment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_codecatalyst_dev_environment__timeouts *)

type aws_codecatalyst_dev_environment = {
  alias : string prop option; [@option]  (** alias *)
  id : string prop option; [@option]  (** id *)
  inactivity_timeout_minutes : float prop option; [@option]
      (** inactivity_timeout_minutes *)
  instance_type : string prop;  (** instance_type *)
  project_name : string prop;  (** project_name *)
  space_name : string prop;  (** space_name *)
  ides : aws_codecatalyst_dev_environment__ides list;
  persistent_storage :
    aws_codecatalyst_dev_environment__persistent_storage list;
  repositories : aws_codecatalyst_dev_environment__repositories list;
  timeouts : aws_codecatalyst_dev_environment__timeouts option;
}
[@@deriving yojson_of]
(** aws_codecatalyst_dev_environment *)

type t = {
  alias : string prop;
  id : string prop;
  inactivity_timeout_minutes : float prop;
  instance_type : string prop;
  project_name : string prop;
  space_name : string prop;
}

let aws_codecatalyst_dev_environment ?alias ?id
    ?inactivity_timeout_minutes ?timeouts ~instance_type
    ~project_name ~space_name ~ides ~persistent_storage ~repositories
    __resource_id =
  let __resource_type = "aws_codecatalyst_dev_environment" in
  let __resource =
    ({
       alias;
       id;
       inactivity_timeout_minutes;
       instance_type;
       project_name;
       space_name;
       ides;
       persistent_storage;
       repositories;
       timeouts;
     }
      : aws_codecatalyst_dev_environment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codecatalyst_dev_environment __resource);
  let __resource_attributes =
    ({
       alias = Prop.computed __resource_type __resource_id "alias";
       id = Prop.computed __resource_type __resource_id "id";
       inactivity_timeout_minutes =
         Prop.computed __resource_type __resource_id
           "inactivity_timeout_minutes";
       instance_type =
         Prop.computed __resource_type __resource_id "instance_type";
       project_name =
         Prop.computed __resource_type __resource_id "project_name";
       space_name =
         Prop.computed __resource_type __resource_id "space_name";
     }
      : t)
  in
  __resource_attributes
