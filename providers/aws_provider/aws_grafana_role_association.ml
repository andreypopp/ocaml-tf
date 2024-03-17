(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_grafana_role_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_grafana_role_association__timeouts *)

type aws_grafana_role_association = {
  group_ids : string prop list option; [@option]  (** group_ids *)
  id : string prop option; [@option]  (** id *)
  role : string prop;  (** role *)
  user_ids : string prop list option; [@option]  (** user_ids *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts : aws_grafana_role_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_grafana_role_association *)

type t = {
  group_ids : string list prop;
  id : string prop;
  role : string prop;
  user_ids : string list prop;
  workspace_id : string prop;
}

let aws_grafana_role_association ?group_ids ?id ?user_ids ?timeouts
    ~role ~workspace_id __resource_id =
  let __resource_type = "aws_grafana_role_association" in
  let __resource =
    ({ group_ids; id; role; user_ids; workspace_id; timeouts }
      : aws_grafana_role_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_grafana_role_association __resource);
  let __resource_attributes =
    ({
       group_ids =
         Prop.computed __resource_type __resource_id "group_ids";
       id = Prop.computed __resource_type __resource_id "id";
       role = Prop.computed __resource_type __resource_id "role";
       user_ids =
         Prop.computed __resource_type __resource_id "user_ids";
       workspace_id =
         Prop.computed __resource_type __resource_id "workspace_id";
     }
      : t)
  in
  __resource_attributes
