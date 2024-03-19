(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_prometheus_rule_group_namespace = {
  data : string prop;  (** data *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  workspace_id : string prop;  (** workspace_id *)
}
[@@deriving yojson_of]
(** aws_prometheus_rule_group_namespace *)

let aws_prometheus_rule_group_namespace ?id ~data ~name ~workspace_id
    () : aws_prometheus_rule_group_namespace =
  { data; id; name; workspace_id }

type t = {
  data : string prop;
  id : string prop;
  name : string prop;
  workspace_id : string prop;
}

let register ?tf_module ?id ~data ~name ~workspace_id __resource_id =
  let __resource_type = "aws_prometheus_rule_group_namespace" in
  let __resource =
    aws_prometheus_rule_group_namespace ?id ~data ~name ~workspace_id
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_prometheus_rule_group_namespace __resource);
  let __resource_attributes =
    ({
       data = Prop.computed __resource_type __resource_id "data";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       workspace_id =
         Prop.computed __resource_type __resource_id "workspace_id";
     }
      : t)
  in
  __resource_attributes
