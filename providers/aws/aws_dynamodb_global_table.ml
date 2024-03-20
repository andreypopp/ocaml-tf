(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~name ~replica __id =
  let __type = "aws_dynamodb_global_table" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dynamodb_global_table
        (aws_dynamodb_global_table ?id ?timeouts ~name ~replica ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~replica __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~replica __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
