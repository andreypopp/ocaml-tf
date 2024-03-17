(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_grafana_workspace_api_key = {
  id : string option; [@option]  (** id *)
  key_name : string;  (** key_name *)
  key_role : string;  (** key_role *)
  seconds_to_live : float;  (** seconds_to_live *)
  workspace_id : string;  (** workspace_id *)
}
[@@deriving yojson_of]
(** aws_grafana_workspace_api_key *)

let aws_grafana_workspace_api_key ?id ~key_name ~key_role
    ~seconds_to_live ~workspace_id __resource_id =
  let __resource_type = "aws_grafana_workspace_api_key" in
  let __resource =
    { id; key_name; key_role; seconds_to_live; workspace_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_grafana_workspace_api_key __resource);
  ()
