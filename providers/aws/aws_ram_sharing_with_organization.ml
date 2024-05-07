(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ram_sharing_with_organization = {
  id: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

let aws_ram_sharing_with_organization ?id () =
  ({
    id;
  } : aws_ram_sharing_with_organization);;

type t = {
  tf_name: string;
  id: string prop;
}

let make ?id __id =
  let __type = "aws_ram_sharing_with_organization" in
  let __attrs = ({
    tf_name = __id;
    id = Prop.computed __type __id "id";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_ram_sharing_with_organization (aws_ram_sharing_with_organization ?id ());
    attrs=__attrs;
  };;

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

