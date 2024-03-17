(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_group_membership = {
  aws_account_id: string option; [@option] (** aws_account_id *)
  group_name: string;  (** group_name *)
  id: string option; [@option] (** id *)
  member_name: string;  (** member_name *)
  namespace: string option; [@option] (** namespace *)
} [@@deriving yojson_of]
(** aws_quicksight_group_membership *)

let aws_quicksight_group_membership ?aws_account_id ?id ?namespace  ~group_name ~member_name  __resource_id =
  let __resource_type = "aws_quicksight_group_membership" in
  let __resource = {
    aws_account_id;
    group_name;
    id;
    member_name;
    namespace;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_group_membership __resource);
  ()
  ;;

