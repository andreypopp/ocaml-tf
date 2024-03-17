(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_resourcegroups_group__configuration__parameters = {
  name : string;  (** name *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_resourcegroups_group__configuration__parameters *)

type aws_resourcegroups_group__configuration = {
  type_ : string; [@key "type"]  (** type *)
  parameters :
    aws_resourcegroups_group__configuration__parameters list;
}
[@@deriving yojson_of]
(** aws_resourcegroups_group__configuration *)

type aws_resourcegroups_group__resource_query = {
  query : string;  (** query *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_resourcegroups_group__resource_query *)

type aws_resourcegroups_group__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_resourcegroups_group__timeouts *)

type aws_resourcegroups_group = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  configuration : aws_resourcegroups_group__configuration list;
  resource_query : aws_resourcegroups_group__resource_query list;
  timeouts : aws_resourcegroups_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_resourcegroups_group *)

let aws_resourcegroups_group ?description ?id ?tags ?tags_all
    ?timeouts ~name ~configuration ~resource_query __resource_id =
  let __resource_type = "aws_resourcegroups_group" in
  let __resource =
    {
      description;
      id;
      name;
      tags;
      tags_all;
      configuration;
      resource_query;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_resourcegroups_group __resource);
  ()
