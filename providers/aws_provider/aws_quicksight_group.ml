(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_group = {
  aws_account_id: string prop option; [@option] (** aws_account_id *)
  description: string prop option; [@option] (** description *)
  group_name: string prop;  (** group_name *)
  id: string prop option; [@option] (** id *)
  namespace: string prop option; [@option] (** namespace *)
} [@@deriving yojson_of]
(** aws_quicksight_group *)

let aws_quicksight_group ?aws_account_id ?description ?id ?namespace  ~group_name  __resource_id =
  let __resource_type = "aws_quicksight_group" in
  let __resource = {
    aws_account_id;
    description;
    group_name;
    id;
    namespace;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_group __resource);
  ()
  ;;

