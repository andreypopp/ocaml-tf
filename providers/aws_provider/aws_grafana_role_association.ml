(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_grafana_role_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_grafana_role_association__timeouts *)

type aws_grafana_role_association = {
  group_ids : string list option; [@option]  (** group_ids *)
  id : string option; [@option]  (** id *)
  role : string;  (** role *)
  user_ids : string list option; [@option]  (** user_ids *)
  workspace_id : string;  (** workspace_id *)
  timeouts : aws_grafana_role_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_grafana_role_association *)

let aws_grafana_role_association ?group_ids ?id ?user_ids ?timeouts
    ~role ~workspace_id __resource_id =
  let __resource_type = "aws_grafana_role_association" in
  let __resource =
    { group_ids; id; role; user_ids; workspace_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_grafana_role_association __resource);
  ()
