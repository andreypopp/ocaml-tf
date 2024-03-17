(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_resourcegroups_resource__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_resourcegroups_resource__timeouts *)

type aws_resourcegroups_resource = {
  group_arn : string prop;  (** group_arn *)
  id : string prop option; [@option]  (** id *)
  resource_arn : string prop;  (** resource_arn *)
  timeouts : aws_resourcegroups_resource__timeouts option;
}
[@@deriving yojson_of]
(** aws_resourcegroups_resource *)

let aws_resourcegroups_resource ?id ?timeouts ~group_arn
    ~resource_arn __resource_id =
  let __resource_type = "aws_resourcegroups_resource" in
  let __resource = { group_arn; id; resource_arn; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_resourcegroups_resource __resource);
  ()
