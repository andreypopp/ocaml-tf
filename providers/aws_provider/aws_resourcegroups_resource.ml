(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_resourcegroups_resource__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_resourcegroups_resource__timeouts *)

type aws_resourcegroups_resource = {
  group_arn : string;  (** group_arn *)
  resource_arn : string;  (** resource_arn *)
  timeouts : aws_resourcegroups_resource__timeouts option;
}
[@@deriving yojson_of]
(** aws_resourcegroups_resource *)

let aws_resourcegroups_resource ?timeouts ~group_arn ~resource_arn
    __resource_id =
  let __resource_type = "aws_resourcegroups_resource" in
  let __resource = { group_arn; resource_arn; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_resourcegroups_resource __resource);
  ()
