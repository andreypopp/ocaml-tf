(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_grafana_workspace_api_key = {
  id : string prop option; [@option]  (** id *)
  key_name : string prop;  (** key_name *)
  key_role : string prop;  (** key_role *)
  seconds_to_live : float prop;  (** seconds_to_live *)
  workspace_id : string prop;  (** workspace_id *)
}
[@@deriving yojson_of]
(** aws_grafana_workspace_api_key *)

type t = {
  id : string prop;
  key : string prop;
  key_name : string prop;
  key_role : string prop;
  seconds_to_live : float prop;
  workspace_id : string prop;
}

let aws_grafana_workspace_api_key ?id ~key_name ~key_role
    ~seconds_to_live ~workspace_id __resource_id =
  let __resource_type = "aws_grafana_workspace_api_key" in
  let __resource =
    ({ id; key_name; key_role; seconds_to_live; workspace_id }
      : aws_grafana_workspace_api_key)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_grafana_workspace_api_key __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       key = Prop.computed __resource_type __resource_id "key";
       key_name =
         Prop.computed __resource_type __resource_id "key_name";
       key_role =
         Prop.computed __resource_type __resource_id "key_role";
       seconds_to_live =
         Prop.computed __resource_type __resource_id
           "seconds_to_live";
       workspace_id =
         Prop.computed __resource_type __resource_id "workspace_id";
     }
      : t)
  in
  __resource_attributes
