(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ram_resource_association = {
  id : string prop option; [@option]  (** id *)
  resource_arn : string prop;  (** resource_arn *)
  resource_share_arn : string prop;  (** resource_share_arn *)
}
[@@deriving yojson_of]
(** aws_ram_resource_association *)

let aws_ram_resource_association ?id ~resource_arn
    ~resource_share_arn () : aws_ram_resource_association =
  { id; resource_arn; resource_share_arn }

type t = {
  id : string prop;
  resource_arn : string prop;
  resource_share_arn : string prop;
}

let make ?id ~resource_arn ~resource_share_arn __id =
  let __type = "aws_ram_resource_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       resource_arn = Prop.computed __type __id "resource_arn";
       resource_share_arn =
         Prop.computed __type __id "resource_share_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ram_resource_association
        (aws_ram_resource_association ?id ~resource_arn
           ~resource_share_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~resource_arn ~resource_share_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ~resource_arn ~resource_share_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
