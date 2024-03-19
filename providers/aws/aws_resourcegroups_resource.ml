(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_resourcegroups_resource = {
  group_arn : string prop;  (** group_arn *)
  id : string prop option; [@option]  (** id *)
  resource_arn : string prop;  (** resource_arn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_resourcegroups_resource *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_resourcegroups_resource ?id ?timeouts ~group_arn
    ~resource_arn () : aws_resourcegroups_resource =
  { group_arn; id; resource_arn; timeouts }

type t = {
  group_arn : string prop;
  id : string prop;
  resource_arn : string prop;
  resource_type : string prop;
}

let register ?tf_module ?id ?timeouts ~group_arn ~resource_arn
    __resource_id =
  let __resource_type = "aws_resourcegroups_resource" in
  let __resource =
    aws_resourcegroups_resource ?id ?timeouts ~group_arn
      ~resource_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_resourcegroups_resource __resource);
  let __resource_attributes =
    ({
       group_arn =
         Prop.computed __resource_type __resource_id "group_arn";
       id = Prop.computed __resource_type __resource_id "id";
       resource_arn =
         Prop.computed __resource_type __resource_id "resource_arn";
       resource_type =
         Prop.computed __resource_type __resource_id "resource_type";
     }
      : t)
  in
  __resource_attributes
