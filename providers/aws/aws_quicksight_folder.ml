(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_folder__permissions = {
  actions : string prop list;  (** actions *)
  principal : string prop;  (** principal *)
}
[@@deriving yojson_of]
(** aws_quicksight_folder__permissions *)

type aws_quicksight_folder__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_quicksight_folder__timeouts *)

type aws_quicksight_folder = {
  aws_account_id : string prop option; [@option]
      (** aws_account_id *)
  folder_id : string prop;  (** folder_id *)
  folder_type : string prop option; [@option]  (** folder_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  parent_folder_arn : string prop option; [@option]
      (** parent_folder_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  permissions : aws_quicksight_folder__permissions list;
  timeouts : aws_quicksight_folder__timeouts option;
}
[@@deriving yojson_of]
(** aws_quicksight_folder *)

type t = {
  arn : string prop;
  aws_account_id : string prop;
  created_time : string prop;
  folder_id : string prop;
  folder_path : string list prop;
  folder_type : string prop;
  id : string prop;
  last_updated_time : string prop;
  name : string prop;
  parent_folder_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_quicksight_folder ?aws_account_id ?folder_type ?id ?name
    ?parent_folder_arn ?tags ?tags_all ?timeouts ~folder_id
    ~permissions __resource_id =
  let __resource_type = "aws_quicksight_folder" in
  let __resource =
    ({
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
     }
      : aws_quicksight_folder)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_folder __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       aws_account_id =
         Prop.computed __resource_type __resource_id "aws_account_id";
       created_time =
         Prop.computed __resource_type __resource_id "created_time";
       folder_id =
         Prop.computed __resource_type __resource_id "folder_id";
       folder_path =
         Prop.computed __resource_type __resource_id "folder_path";
       folder_type =
         Prop.computed __resource_type __resource_id "folder_type";
       id = Prop.computed __resource_type __resource_id "id";
       last_updated_time =
         Prop.computed __resource_type __resource_id
           "last_updated_time";
       name = Prop.computed __resource_type __resource_id "name";
       parent_folder_arn =
         Prop.computed __resource_type __resource_id
           "parent_folder_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
