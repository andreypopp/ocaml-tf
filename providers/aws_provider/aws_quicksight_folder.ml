(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_folder__permissions = {
  actions: string list;  (** actions *)
  principal: string;  (** principal *)
} [@@deriving yojson_of]
(** aws_quicksight_folder__permissions *)

type aws_quicksight_folder__timeouts = {
  create: string option; [@option] (** create *)
  delete: string option; [@option] (** delete *)
  read: string option; [@option] (** read *)
  update: string option; [@option] (** update *)
} [@@deriving yojson_of]
(** aws_quicksight_folder__timeouts *)

type aws_quicksight_folder = {
  aws_account_id: string option; [@option] (** aws_account_id *)
  folder_id: string;  (** folder_id *)
  folder_type: string option; [@option] (** folder_type *)
  id: string option; [@option] (** id *)
  name: string option; [@option] (** name *)
  parent_folder_arn: string option; [@option] (** parent_folder_arn *)
  tags: (string * string) list option; [@option] (** tags *)
  tags_all: (string * string) list option; [@option] (** tags_all *)
  permissions: aws_quicksight_folder__permissions list;
  timeouts: aws_quicksight_folder__timeouts option;
} [@@deriving yojson_of]
(** aws_quicksight_folder *)

let aws_quicksight_folder ?aws_account_id ?folder_type ?id ?name ?parent_folder_arn ?tags ?tags_all ?timeouts ~folder_id ~permissions __resource_id =
  let __resource_type = "aws_quicksight_folder" in
  let __resource = {
    aws_account_id;
    folder_id;
    folder_type;
    id;
    name;
    parent_folder_arn;
    tags;
    tags_all;
    permissions;
    timeouts;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_folder __resource);
  ()
  ;;

