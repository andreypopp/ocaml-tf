(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type ides = {
  name : string prop option; [@option]  (** name *)
  runtime : string prop option; [@option]  (** runtime *)
}
[@@deriving yojson_of]
(** ides *)

type persistent_storage = { size : float prop  (** size *) }
[@@deriving yojson_of]
(** persistent_storage *)

type repositories = {
  branch_name : string prop option; [@option]  (** branch_name *)
  repository_name : string prop;  (** repository_name *)
}
[@@deriving yojson_of]
(** repositories *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_codecatalyst_dev_environment = {
  alias : string prop option; [@option]  (** alias *)
  id : string prop option; [@option]  (** id *)
  inactivity_timeout_minutes : float prop option; [@option]
      (** inactivity_timeout_minutes *)
  instance_type : string prop;  (** instance_type *)
  project_name : string prop;  (** project_name *)
  space_name : string prop;  (** space_name *)
  ides : ides list;
  persistent_storage : persistent_storage list;
  repositories : repositories list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_codecatalyst_dev_environment *)

let ides ?name ?runtime () : ides = { name; runtime }
let persistent_storage ~size () : persistent_storage = { size }

let repositories ?branch_name ~repository_name () : repositories =
  { branch_name; repository_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_codecatalyst_dev_environment ?alias ?id
    ?inactivity_timeout_minutes ?timeouts ~instance_type
    ~project_name ~space_name ~ides ~persistent_storage ~repositories
    () : aws_codecatalyst_dev_environment =
  {
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

type t = {
  alias : string prop;
  id : string prop;
  inactivity_timeout_minutes : float prop;
  instance_type : string prop;
  project_name : string prop;
  space_name : string prop;
}

let register ?tf_module ?alias ?id ?inactivity_timeout_minutes
    ?timeouts ~instance_type ~project_name ~space_name ~ides
    ~persistent_storage ~repositories __resource_id =
  let __resource_type = "aws_codecatalyst_dev_environment" in
  let __resource =
    aws_codecatalyst_dev_environment ?alias ?id
      ?inactivity_timeout_minutes ?timeouts ~instance_type
      ~project_name ~space_name ~ides ~persistent_storage
      ~repositories ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
