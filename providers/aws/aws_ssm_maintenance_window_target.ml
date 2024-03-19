(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type targets = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** targets *)

type aws_ssm_maintenance_window_target = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  owner_information : string prop option; [@option]
      (** owner_information *)
  resource_type : string prop;  (** resource_type *)
  window_id : string prop;  (** window_id *)
  targets : targets list;
}
[@@deriving yojson_of]
(** aws_ssm_maintenance_window_target *)

let targets ~key ~values () : targets = { key; values }

let aws_ssm_maintenance_window_target ?description ?id ?name
    ?owner_information ~resource_type ~window_id ~targets () :
    aws_ssm_maintenance_window_target =
  {
    description;
    id;
    name;
    owner_information;
    resource_type;
    window_id;
    targets;
  }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  owner_information : string prop;
  resource_type : string prop;
  window_id : string prop;
}

let register ?tf_module ?description ?id ?name ?owner_information
    ~resource_type ~window_id ~targets __resource_id =
  let __resource_type = "aws_ssm_maintenance_window_target" in
  let __resource =
    aws_ssm_maintenance_window_target ?description ?id ?name
      ?owner_information ~resource_type ~window_id ~targets ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_maintenance_window_target __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       owner_information =
         Prop.computed __resource_type __resource_id
           "owner_information";
       resource_type =
         Prop.computed __resource_type __resource_id "resource_type";
       window_id =
         Prop.computed __resource_type __resource_id "window_id";
     }
      : t)
  in
  __resource_attributes
