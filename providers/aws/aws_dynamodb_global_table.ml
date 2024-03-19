(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type replica = { region_name : string prop  (** region_name *) }
[@@deriving yojson_of]
(** replica *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_dynamodb_global_table = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  replica : replica list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_dynamodb_global_table *)

let replica ~region_name () : replica = { region_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_dynamodb_global_table ?id ?timeouts ~name ~replica () :
    aws_dynamodb_global_table =
  { id; name; replica; timeouts }

type t = { arn : string prop; id : string prop; name : string prop }

let register ?tf_module ?id ?timeouts ~name ~replica __resource_id =
  let __resource_type = "aws_dynamodb_global_table" in
  let __resource =
    aws_dynamodb_global_table ?id ?timeouts ~name ~replica ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dynamodb_global_table __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
