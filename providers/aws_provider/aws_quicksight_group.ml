(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_group = {
  description: string option; [@option] (** description *)
  group_name: string;  (** group_name *)
  namespace: string option; [@option] (** namespace *)
} [@@deriving yojson_of]
(** aws_quicksight_group *)

let aws_quicksight_group ?description ?namespace  ~group_name  __resource_id =
  let __resource_type = "aws_quicksight_group" in
  let __resource = {
    description;
    group_name;
    namespace;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_group __resource);
  ()
  ;;

