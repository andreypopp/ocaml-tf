(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_workspaces_ip_group__rules = {
  description : string prop option; [@option]  (** description *)
  source : string prop;  (** source *)
}
[@@deriving yojson_of]
(** aws_workspaces_ip_group__rules *)

type aws_workspaces_ip_group = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  rules : aws_workspaces_ip_group__rules list;
}
[@@deriving yojson_of]
(** aws_workspaces_ip_group *)

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_workspaces_ip_group ?description ?id ?tags ?tags_all ~name
    ~rules __resource_id =
  let __resource_type = "aws_workspaces_ip_group" in
  let __resource =
    ({ description; id; name; tags; tags_all; rules }
      : aws_workspaces_ip_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_workspaces_ip_group __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
