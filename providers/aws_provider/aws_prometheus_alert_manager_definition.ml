(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_prometheus_alert_manager_definition = {
  definition : string prop;  (** definition *)
  id : string prop option; [@option]  (** id *)
  workspace_id : string prop;  (** workspace_id *)
}
[@@deriving yojson_of]
(** aws_prometheus_alert_manager_definition *)

type t = {
  definition : string prop;
  id : string prop;
  workspace_id : string prop;
}

let aws_prometheus_alert_manager_definition ?id ~definition
    ~workspace_id __resource_id =
  let __resource_type = "aws_prometheus_alert_manager_definition" in
  let __resource =
    ({ definition; id; workspace_id }
      : aws_prometheus_alert_manager_definition)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_prometheus_alert_manager_definition __resource);
  let __resource_attributes =
    ({
       definition =
         Prop.computed __resource_type __resource_id "definition";
       id = Prop.computed __resource_type __resource_id "id";
       workspace_id =
         Prop.computed __resource_type __resource_id "workspace_id";
     }
      : t)
  in
  __resource_attributes
