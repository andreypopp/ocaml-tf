(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_workspaces_ip_group__rules = {
  description : string option; [@option]  (** description *)
  source : string;  (** source *)
}
[@@deriving yojson_of]
(** aws_workspaces_ip_group__rules *)

type aws_workspaces_ip_group = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  rules : aws_workspaces_ip_group__rules list;
}
[@@deriving yojson_of]
(** aws_workspaces_ip_group *)

let aws_workspaces_ip_group ?description ?tags ~name ~rules
    __resource_id =
  let __resource_type = "aws_workspaces_ip_group" in
  let __resource = { description; name; tags; rules } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_workspaces_ip_group __resource);
  ()
